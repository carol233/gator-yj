#!/usr/bin/env python3
import re
import subprocess
from XMLParser import *
from Icon2Code import Icon2Code


class GatorCaller:
    def call_gator(self, apk):
        apk_name = os.path.split(apk)[-1][:-4]
        print("[+] Analysing " + apk_name)
        if os.path.exists(XMLPATH + "/" + apk_name + ".xml"):
            return
        try:
            CMD = "./gator/gator a --sdk " + ANDROID_SDK + " -p " + apk + " -client " + CLIENT
            out_bytes = subprocess.check_output(CMD, shell=True, timeout=100)
        except subprocess.TimeoutExpired as exc:
            print("Command timed out: {}".format(exc))
            return
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

    def start(self):
        apklist = getFileList(APKPATH, ".apk")
        args = [(apk) for apk in apklist]
        pool = threadpool.ThreadPool(DEFAULT_MAX_JOB)
        requests = threadpool.makeRequests(self.call_gator, args)
        [pool.putRequest(req) for req in requests]
        pool.wait()
        print("Extract GUI widgets done.")


if __name__ == '__main__':
    check_and_mkdir(XMLPATH)
    check_and_mkdir(CSVPATH)
    check_and_mkdir(CODE_ICON_PATH)
    check_and_mkdir(TrainingSet)

    gatorCaller = GatorCaller()
    gatorCaller.start()

    parse_xml = XMLParser()
    parse_xml.start()  # convert the output files of Gator to csv files

    icon2code = Icon2Code()
    icon2code.start()  # get the training set


