import subprocess
import threadpool
from common import *
import csv
import re
from JADXdecompile import JADXdecompile
import shutil
# import javalang


class Icon2Code:
    def solve_one(self, csvfile):
        apkname = os.path.split(csvfile)[-1][:-4]
        print("[+] Mapping " + apkname)
        output_trainingset = os.path.join(TrainingSet, apkname + ".csv")

        valid_rows = self.get_valid_lines(csvfile)
        if not valid_rows:
            return
        if os.path.exists(output_trainingset):
            return
        jadxobject = JADXdecompile()
        sta = jadxobject.compile_one(os.path.join(APKPATH, apkname + ".apk"))
        if not os.path.exists(os.path.join(JADXPATH, apkname)):
            print("no jadx dir!")
            return

        codepath_apkname = os.path.join(CODE_ICON_PATH, apkname)
        check_and_mkdir(codepath_apkname)

        jadxfilelist = getFileList(os.path.join(JADXPATH, apkname), "")

        with open(output_trainingset, "w", newline="") as fw:
            writer = csv.writer(fw)
            for row in valid_rows:
                # 有效行写入新的csv
                ID = row[1]
                IDname = row[2]

                pic_path, text_of_icon = self.get_icon_text(IDname, JADXPATH, apkname)
                if not pic_path:
                    continue

                PIC_NAME = ";".join(pic_path)
                ICON_TYPE = row[0]
                pics = []
                for item in pic_path:
                    subpaths = item.strip("@").split("/")
                    folder = subpaths[0]
                    filename = subpaths[-1]
                    for f in jadxfilelist:
                        if filename + "." in f and folder in f:
                            pics.append(f)
                if not pics:
                    continue

                for f in pics:
                    try:
                        icon_type = os.path.splitext(f)[-1]  # start with .
                        new_icon_name = get_md5(f) + icon_type
                        CMD = "cp " + f + " " + os.path.join(codepath_apkname, new_icon_name)
                        out_bytes = subprocess.check_output(CMD, shell=True)
                    except subprocess.CalledProcessError as e:
                        out_bytes = e.output  # Output generated before error
                        code = e.returncode  # Return code

                PIC_TRUE_PATH = ";".join(pics)
                TEXT_Of_ICON = text_of_icon

                handlers = []
                events = []
                length = len(row)
                if length - 2 < 3:
                    continue

                for i in range(3, length):
                    if i % 2 == 0:
                        handlers.append(row[i])
                    else:
                        events.append(row[i])

                # for i in range(len(handlers)):
                #     handler = handlers[i]
                #     event = events[i]
                #     code_file, funcName = self.get_code_path(apkname, handler)
                #     if not code_file or not funcName:
                #         continue
                #     code_body = self.extract_one(code_file, apkname, funcName)
                #     libs = self.extract_lib(code_file, apkname)
                #
                #     try:
                #         file_type = os.path.splitext(code_file)[-1]
                #         new_code_name = get_md5(code_file) + file_type
                #         CMD = "cp " + code_file + " " + os.path.join(codepath_apkname, new_code_name)
                #         out_bytes = subprocess.check_output(CMD, shell=True)
                #     except subprocess.CalledProcessError as e:
                #         out_bytes = e.output  # Output generated before error
                #         code = e.returncode  # Return code

                writer.writerow([PIC_NAME, IDname, ICON_TYPE, TEXT_Of_ICON,
                                 apkname, ";".join(events), ";".join(handlers), PIC_TRUE_PATH])

        shutil.rmtree(os.path.join(JADXPATH, apkname))
        if not os.path.getsize(output_trainingset):
            os.remove(output_trainingset)
            shutil.rmtree(codepath_apkname)

    def extract_one(self, codefile, apkname, funcName):
        try:
            CMD = "java -jar ExtractCode.jar " + codefile + " \"" + funcName + "\""
            out_bytes = subprocess.check_output(CMD, shell=True)
        except subprocess.TimeoutExpired as exc:
            print("Command timed out: {}".format(exc))
            return
        except subprocess.CalledProcessError as e:
            out_bytes = e.output  # Output generated before error
            code = e.returncode  # Return code
        codes = out_bytes.decode('utf-8')
        return codes

    def get_code_path(self, apk_name, activity):
        res = ""
        item = activity.strip('\"<>')
        path = item.split(":")[0].strip()
        function = item.split(":")[1].strip()

        # "void onFocusChange(android.view.View,boolean)"
        index = function.find('(')
        func = function[:index]
        func += "("

        pathlist = path.split(".")
        codepath = JADXPATH + "/" + apk_name + "/sources/"
        for i in range(len(pathlist)):
            if i != len(pathlist) - 1:
                codepath += pathlist[i] + "/"
            else:
                if '$' in pathlist[i]:
                    codepath += pathlist[i].split('$')[0] + ".java"
                else:
                    codepath += pathlist[i] + ".java"
        if os.path.exists(codepath):
            res = codepath
        else:
            return res, None

        return res, func

    def get_valid_lines(self, csvfile):
        res = []
        with open(csvfile, "r") as f:
            reader = csv.reader(f)
            rows = [row for row in reader]
        for row in rows[1:]:  # drop the first line
            if len(row) > 3 and row[2] != "ANONYMOUS" and row[1] != "-1":
                res.append(row)
        return res

    def get_icon_text(self, IDname, JADXPATH, apkname):
        try:
            CMD = "grep -r id/" + IDname + " " + JADXPATH + "/" + apkname
            out_bytes = subprocess.check_output(CMD, shell=True)
        except subprocess.CalledProcessError as e:
            out_bytes = e.output  # Output generated before error
            code = e.returncode  # Return code
        out_text = out_bytes.decode('utf-8')
        """
        android:src="@drawable/xxx"
        android:background="@drawable/xxx" # sometimes is just color
        "Detecting Behaviour Anomalies in Graphical User Interfaces"
        """
        possible_path = []
        contentDescription = ""
        res = re.findall(r'android:src="(\S+)"', out_text)
        if res:
            possible_path.append(res[0])
        res = re.findall(r'android:background="(\S+)"', out_text)
        if res:
            possible_path.append(res[0])
        res = re.findall(r'android:drawableRight="(\S+)"', out_text)
        if res:
            possible_path.append(res[0])
        res = re.findall(r'android:drawableTop="(\S+)"', out_text)
        if res:
            possible_path.append(res[0])
        res = re.findall(r'android:drawableLeft="(\S+)"', out_text)
        if res:
            possible_path.append(res[0])
        res = re.findall(r'android:drawableBottom="(\S+)"', out_text)
        if res:
            possible_path.append(res[0])
        res = re.findall(r'android:drawableEnd="(\S+)"', out_text)
        if res:
            possible_path.append(res[0])
        res = re.findall(r'android:drawableStart="(\S+)"', out_text)
        if res:
            possible_path.append(res[0])

        res = re.findall(r'android:contentDescription="(\S+)"', out_text)
        if res:
            contentDescription = res[0]

        return possible_path, contentDescription

    def extract_lib(self, codefile, apk_name):
        lib = []
        package_name = ""
        with open(codefile, "r") as fr:
            content = fr.read()
            res_package = re.findall(r'package\s+(\S+);', content)
            if res_package:
                package_name = res_package[0]
            res = re.findall(r'import\s+(\S+);', content)
            if res:
                for item in res:
                    if (package_name != "" and item.startswith(package_name)) or item.startswith(apk_name) \
                            or item.startswith("android") or item.startswith("java."):
                    # if (package_name != "" and item.startswith(package_name)) or item.startswith(apk_name):
                        continue
                    else:
                        lib.append(item)
        return lib

    def extract_if(self, codefile):
        ifs = []
        with open(codefile, "r") as fr:
            content = fr.read()
            # res = re.findall(r'if\s*\(([\w\s!=|&^]*)\)\s*{[^}]*}(\s*else(\s*if\([\w\s!=|&^]*\))*\s*{[^}]*})* ', content)
            res = re.findall(r'if\s*\(([\w\s!=|&^]*)\)\s*', content)
            if res:
                for item in res:
                    ifs.append(item)
        return ifs

    def start(self):
        csvfiles = getFileList(CSVPATH, ".csv")
        args = [(file) for file in csvfiles]
        pool = threadpool.ThreadPool(DEFAULT_MAX_JOB)
        requests = threadpool.makeRequests(self.solve_one, args)
        [pool.putRequest(req) for req in requests]
        pool.wait()
