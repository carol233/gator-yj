#!/usr/bin/env python3
import os
import subprocess
from common import *


def jadx_compile(APKPATH, CSVPATH, JADXPATH):
    if not os.path.exists(JADXPATH):
        os.mkdir(JADXPATH)
    apks = getFileList(APKPATH, ".apk")
    csvs = getFileList(CSVPATH, ".csv")
    for apk in apks:
        apkname = os.path.split(apk)[-1][:-4]
        csv_name = os.path.join(CSVPATH, apkname + ".xml")
        if csv_name not in csvs:
            continue
        if os.path.exists(JADXPATH + "/" + apkname):
            continue
        try:
            print("[+] Decompiling " + apkname)
            CMD = "~/jadx/build/jadx/bin/jadx -d " + JADXPATH + "/" + apkname + " " + apk
            out_bytes = subprocess.check_output(CMD, shell=True, timeout=20)
        except subprocess.TimeoutExpired as exc:
            print("Command timed out: {}".format(exc))
            continue
        except subprocess.CalledProcessError as e:
            out_bytes = e.output  # Output generated before error
            code = e.returncode  # Return code
        out_text = out_bytes.decode('utf-8')
