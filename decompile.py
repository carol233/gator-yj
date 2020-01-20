#!/usr/bin/env python3
import os
import subprocess

from common import *


def jadx_compile(APKPATH, JADXPATH):
    if not os.path.exists(JADXPATH):
        os.mkdir(JADXPATH)
    apks = getFileList(APKPATH, ".apk")
    for apk in apks:
        apkname = os.path.split(apk)[-1][:-4]
        try:
            CMD = "jadx -d " + JADXPATH + "/" + apkname + " " + apk
            out_bytes = subprocess.check_output(CMD, shell=True)
        except subprocess.CalledProcessError as e:
            out_bytes = e.output  # Output generated before error
            code = e.returncode  # Return code
        out_text = out_bytes.decode('utf-8')

