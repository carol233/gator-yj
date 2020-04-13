import subprocess
import threadpool
from common import *
import csv
import re
import javalang

class Icon2Code:
    def __init__(self):
        self.maxjob = 15

    def solve_one(self, csvfile):
        apkname = os.path.split(csvfile)[-1][:-4]
        print("[+] Mapping " + apkname)
        valid_rows = self.get_valid_lines(csvfile)
        if not valid_rows:
            return
        if os.path.exists(TrainingSet + "/" + apkname + ".csv"):
            return
        with open(TrainingSet + "/" + apkname + ".csv", "w", newline="") as fw:
            writer = csv.writer(fw)
            for row in valid_rows:
                # 有效行写入新的csv
                ID = row[1]
                IDname = row[2]
                pic_path = self.get_jadx_path(IDname, JADXPATH, apkname)
                if not pic_path:
                    continue
                tmp = [row[0], IDname]
                for pic_str in pic_path:
                    tmp.append(pic_str)
                feature = " ".join(tmp)

                activities = []
                length = len(row)
                if length - 2 < 3:
                    continue
                for i in range(4, length):
                    if i % 2 == 0:
                        activities.append(row[i])
                for activity in activities:
                    code_file, funcName = self.get_code_path(apkname, activity)
                    if not code_file or not funcName:
                        continue
                    answer = self.extract_one(code_file, apkname, funcName)

                    # try:
                    #     CMD = "cp " + code_file + " " + CODEPATH + "/" + apkname + "/"
                    #     out_bytes = subprocess.check_output(CMD, shell=True)
                    # except subprocess.CalledProcessError as e:
                    #     out_bytes = e.output  # Output generated before error
                    #     code = e.returncode  # Return code

                    writer.writerow([feature, answer])

    def extract_one(self, codefile, apkname, funcName):
        codes = ""
        try:
            print("[+] Parsing " + apkname)
            # CMD = ""
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

    def get_jadx_path(self, IDname, JADXPATH, apkname):
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
        android:icon="@mipmap/ic_launcher"
        android:roundIcon="@mipmap/ic_launcher_round"
        """
        possible_path = []
        res = re.findall(r'android:src="(\S+)"', out_text)
        if res: possible_path.append(res[0])
        res = re.findall(r'android:background="(\S+)"', out_text)
        if res: possible_path.append(res[0])
        res = re.findall(r'android:icon="(\S+)"', out_text)
        if res: possible_path.append(res[0])
        res = re.findall(r'android:roundIcon="(\S+)"', out_text)
        if res: possible_path.append(res[0])

        return possible_path

    def start(self):
        check_and_mkdir(TrainingSet)
        csvfiles = getFileList(CSVPATH, ".csv")
        args = [(file) for file in csvfiles]
        pool = threadpool.ThreadPool(self.maxjob)
        requests = threadpool.makeRequests(self.solve_one, args)
        [pool.putRequest(req) for req in requests]
        pool.wait()
