#!/usr/bin/env python3
import subprocess
from common import *
import csv
import re


def get_valid_lines(csvfile):
    res = []
    with open(csvfile, "r") as f:
        reader = csv.reader(f)
        rows = [row for row in reader]
    for row in rows[1:]:  # drop the first line
        if len(row) > 3 and row[2] != "ANONYMOUS" and row[1] != "-1":
            res.append(row)
    return res


def get_jadx_path(IDname, JADXPATH, apkname):
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


def solve_one(csvfile, apkname, JADXPATH, MAPPATH):
    valid_rows = get_valid_lines(csvfile)
    with open(MAPPATH + "/" + apkname + ".csv", "w", newline="") as fw:
        writer = csv.writer(fw)
        for row in valid_rows:
            # 有效行写入新的csv
            ID = row[1]
            IDname = row[2]
            pic_path = get_jadx_path(IDname, JADXPATH, apkname)
            extracted = ';'.join(pic_path)
            if not pic_path:
                continue
            jadxfilelist = getFileList(JADXPATH, "")
            pics = []
            for item in pic_path:
                filename = item.split("/")[-1]
                for f in jadxfilelist:
                    if filename + "." in f:
                        pics.append(f)
            pics2str = ';'.join(pics)
            tmp = row
            tmp.append(extracted)
            tmp.append(pics2str)
            writer.writerow(tmp)


def mapping(CSVPATH, JADXPATH, MAPPATH):
    if not os.path.exists(MAPPATH):
        os.mkdir(MAPPATH)
    csvlist = getFileList(CSVPATH, ".csv")
    for csvfile in csvlist:
        if "daysmaster" not in csvfile:
            continue
        apkname = os.path.split(csvfile)[-1][:-4]
        solve_one(csvfile, apkname, JADXPATH, MAPPATH)
