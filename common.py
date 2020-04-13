#!/usr/bin/env python3
import csv
import os

CLIENT = "GUIHierarchyPrinterClient"
ANDROID_SDK = "~/Library/Android/sdk/"
JADX_TOOL_PATH = "jadx"

XMLPATH = "GATOR2XML"
APKPATH = "APK"
CSVPATH = "XML2CSV"
JADXPATH = "JADXOUTPUT"
MAPPATH = "MAPPING"
CODEPATH = "FOCUSED_CODE"
TrainingSet = "TrainingSet"
RES = "FINAL_RES"

def getFileList(rootDir, pickstr):
    filePath = []
    for parent, dirnames, filenames in os.walk(rootDir):
        for filename in filenames:
            if pickstr in filename:
                file = os.path.join(parent, filename)
                filePath.append(file)
    return filePath


def check_and_mkdir(path):
    if not os.path.exists(path):
        os.mkdir(path)


check_and_mkdir(RES)
THIRD_PARTY_LIB_record = RES + "/third_party_libs.csv"
fw_lib = open(THIRD_PARTY_LIB_record, "w", newline="")
writer_lib = csv.writer(fw_lib)


