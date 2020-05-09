#!/usr/bin/env python3
import csv
import os
import hashlib

CLIENT = "GUIHierarchyPrinterClient"
# ANDROID_SDK = "~/Library/Android/sdk/"
ANDROID_SDK = "/home/yanjie/android-sdk-linux/"
# JADX_TOOL_PATH = "jadx"
JADX_TOOL_PATH = "/home/yanjie/jadx/build/jadx/bin/jadx"

XMLPATH = "GATOR2XML"
APKPATH = "/mnt/fit-Knowledgezoo/yanjie/OSS_APK/"
CSVPATH = "XML2CSV"
JADXPATH = "JADXOUTPUT"
TrainingSet = "TrainingSet"
CODE_ICON_PATH = "ICON_CODE"
DEFAULT_MAX_JOB = 15

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


def get_md5(s):
    m = hashlib.md5()
    m.update(s)
    return m.hexdigest()