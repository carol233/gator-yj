import csv
import re
import subprocess

from common import *

index = 4
CSVPATH = "MAPPING"
CODEPATH = "CODE"
RES = "RES"
JADX = "JADX"


def get_code(apk_name, activities):
    res = []
    for item in activities:
        item = item[1:-1]
        path = item.split(":")[0].strip()
        function = item.split(":")[1].strip()

        pathlist = path.split(".")
        codepath = JADX + "/" + apk_name + "/sources/"
        for i in range(len(pathlist)):
            if i != len(pathlist) - 1:
                codepath += pathlist[i] + "/"
            else:
                if '$' in pathlist[i]:
                    codepath += pathlist[i].split('$')[0] + ".java"
                else:
                    codepath += pathlist[i] + ".java"

        if os.path.exists(codepath):
            res.append(codepath)

        return res


def extract_one(codefile, apk_name):
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
                if (package_name != "" and item.startswith(package_name)) or item.startswith(apk_name)\
                        or item.startswith("android.") or item.startswith("java."):
                    continue
                else:
                    lib.append(item)
    return lib


def extract_if(codefile):
    ifs = []
    package_name = ""
    with open(codefile, "r") as fr:
        content = fr.read()
        # res = re.findall(r'if\s*\(([\w\s!=|&^]*)\)\s*{[^}]*}(\s*else(\s*if\([\w\s!=|&^]*\))*\s*{[^}]*})* ', content)
        res = re.findall(r'if\s*\(([\w\s!=|&^]*)\)\s*', content)
        if res:
            for item in res:
                ifs.append(item)
    return ifs


"""
<com.virsir.android.chinamobile10086.news.News$4: void onClick(android.view.View)>
sources/com/virsir/android/chinamobile10086/news/News.java
"""


def solve_one(CODEPATH, file, writer, writerif):
    apk_name = os.path.split(file)[-1][:-4]
    apk_dir_path = CODEPATH + "/" + apk_name
    if not os.path.exists(apk_dir_path):
        os.mkdir(apk_dir_path)
    with open(file, "r") as f:
        reader = csv.reader(f)
        lib_list = []
        if_statements = []
        for line in reader:
            activities = []
            length = len(line)
            for i in range(index, length - 2):
                if i % 2 == 0:
                    activities.append(line[i])
                    res = get_code(apk_name, activities)
                    for item in res:
                        try:
                            lib_list.extend(extract_one(item, apk_name))
                            if_statements.extend(extract_if(item))
                            CMD = "cp " + item + " " + CODEPATH + "/" + apk_name + "/"
                            out_bytes = subprocess.check_output(CMD, shell=True)
                        except subprocess.CalledProcessError as e:
                            out_bytes = e.output  # Output generated before error
                            code = e.returncode  # Return code
        lib_list = list(set(lib_list))
        if_statements = list(set(if_statements))
        if lib_list:
            line = [apk_name]
            line.extend(lib_list)
            writer.writerow(line)

        if if_statements:
            line = [apk_name]
            line.extend(if_statements)
            writerif.writerow(line)


if __name__ == '__main__':
    if not os.path.exists(CODEPATH):
        os.mkdir(CODEPATH)
    if not os.path.exists(RES):
        os.mkdir(RES)
    csvfiles = getFileList(CSVPATH, ".csv")

    THIRD_PARTY_LIB_record = RES + "/third_party_libs.csv"
    fw = open(THIRD_PARTY_LIB_record, "w", newline="")
    writer = csv.writer(fw)

    IF_statement = RES + "/if_statement.csv"
    fw1 = open(IF_statement, "w", newline="")
    writerif = csv.writer(fw1)

    for file in csvfiles:
        solve_one(CODEPATH, file, writer, writerif)
    fw.close()


