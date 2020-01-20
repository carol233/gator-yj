#!/usr/bin/env python3
import sys
import subprocess
import re
from common import *
from parse import *
from decompile import *
from mapping import *


CLIENT = "GUIHierarchyPrinterClient"
ANDROID_SDK = "/Users/yzha0544/Library/Android/sdk"
XMLPATH = "XML"
APKPATH = "APK"
CSVPATH = "CSV"
JADXPATH = "JADX"
MAPPATH = "MAPPING"

if __name__ == '__main__':
    if not os.path.exists(XMLPATH):
        os.mkdir(XMLPATH)
    apklist = getFileList(APKPATH, ".apk")
    for apk in apklist:
        apk_name = os.path.split(apk)[-1][:-4]
        try:
            CMD = "./gator/gator a --sdk " + ANDROID_SDK + " -p " + apk + " -client " + CLIENT
            out_bytes = subprocess.check_output(CMD, shell=True)
        except subprocess.CalledProcessError as e:
            out_bytes = e.output  # Output generated before error
            code = e.returncode  # Return code
        out_text = out_bytes.decode('utf-8')
        # print(out_text)
        res = re.findall(r'XML\s+file:\s+(\S+)\s+', out_text)
        if res:
            xml_file = res[0]
            print("XML file: ", xml_file)
            subprocess.call(["cp", xml_file, XMLPATH + "/" + apk_name + ".xml"])
        else:
            print("No XML file!")

    parse_xml(XMLPATH, CSVPATH)
    jadx_compile(APKPATH, JADXPATH)
    mapping(CSVPATH, JADXPATH, MAPPATH)

