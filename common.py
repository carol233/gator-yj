#!/usr/bin/env python3
import csv
import os

CLIENT = "GUIHierarchyPrinterClient"
ANDROID_SDK = "~/Library/Android/sdk/"
JADX_TOOL_PATH = "jadx"
XMLPATH = "XML"
APKPATH = "APK"
CSVPATH = "CSV"
JADXPATH = "JADX"
MAPPATH = "MAPPING"
CODEPATH = "CODE"
RES = "RES"

THIRD_PARTY_LIB_record = RES + "/third_party_libs.csv"
fw_lib = open(THIRD_PARTY_LIB_record, "w", newline="")
writer_lib = csv.writer(fw_lib)

IF_statement = RES + "/if_statement.csv"
fw_if = open(IF_statement, "w", newline="")
writer_if = csv.writer(fw_if)


def getFileList(rootDir, pickstr):
    filePath = []
    for parent, dirnames, filenames in os.walk(rootDir):
        for filename in filenames:
            if pickstr in filename:
                file = os.path.join(parent, filename)
                filePath.append(file)
    return filePath

