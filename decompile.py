#!/usr/bin/env python3
import os
import subprocess
import threadpool
from common import *

def compile_one(apk):
    apkname = os.path.split(apk)[-1][:-4]
    if os.path.exists(JADXPATH + "/" + apkname):
        return
    try:
        print("[+] Decompiling " + apkname)
        # CMD = "~/jadx/build/jadx/bin/jadx -d " + JADXPATH + "/" + apkname + " " + apk
        CMD = JADX_TOOL_PATH + " -d " + JADXPATH + "/" + apkname + " " + apk
        out_bytes = subprocess.check_output(CMD, shell=True, timeout=40)
    except subprocess.TimeoutExpired as exc:
        print("Command timed out: {}".format(exc))
        return
    except subprocess.CalledProcessError as e:
        out_bytes = e.output  # Output generated before error
        code = e.returncode  # Return code
    out_text = out_bytes.decode('utf-8')


def jadx_compile():
    print("[+] Decompiling with JADX...")
    check_and_mkdir(JADXPATH)
    apk_tmp = getFileList(APKPATH, ".apk")
    csvs = getFileList(CSVPATH, ".csv")
    apks = []
    for apk in apk_tmp:
        apkname = os.path.split(apk)[-1][:-4]
        csv_name = os.path.join(CSVPATH, apkname + ".csv")
        if csv_name in csvs:
            apks.append(apk)
    print("[+] Decompiling " + str(len(apks)) + " files...")

    args = [(apk) for apk in apks]
    pool = threadpool.ThreadPool(15)
    requests = threadpool.makeRequests(compile_one, args)
    [pool.putRequest(req) for req in requests]
    pool.wait()



