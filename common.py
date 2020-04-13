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
TrainingSet = "TrainingSet"

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

