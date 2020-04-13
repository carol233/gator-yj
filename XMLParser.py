#!/usr/bin/env python3
import threadpool
from common import *
import xml.etree.ElementTree as ET
import csv


class XMLParser:
    def __init__(self):
        self.HEADER = ["view type", "view id", "view idname", "event and handler"]

    def remove_dup(self, a):
        b = []
        for item in a:
            if item not in b:
                b.append(item)
        return b

    def parse_onetree(self, in_file):
        csv_path = CSVPATH + "/" + os.path.split(in_file)[-1][:-4] + ".csv"
        if os.path.exists(csv_path):
            return
        res = []
        tree = ET.parse(in_file)
        root = tree.getroot()
        """
        iter(): 递归的查找，会查找当前节点，它的子节点。子节点......
        findall(): 只会查找当前节点的子节点那一级目录
        find():只是查找第一个，查找到后，可以用get('attribute_name')获取属性的值
        """
        for view in root.iter('View'):
            view_record = []
            view_attr = view.attrib
            view_record.append(view_attr['type'])
            view_record.append(view_attr['id'])
            view_record.append(view_attr['idName'])
            for event in view.findall('EventAndHandler'):
                event_attr = event.attrib
                view_record.append(event_attr['event'])
                view_record.append(event_attr['handler'])
            res.append(view_record)
        res = self.remove_dup(res)

        with open(csv_path, 'w', newline="") as f:
            writer = csv.writer(f)
            writer.writerow(self.HEADER)
            for item in res:
                writer.writerow(item)

    def start(self):
        check_and_mkdir(CSVPATH)
        xmllist = getFileList(XMLPATH, ".xml")
        print("[+] Parsing " + str(len(xmllist)) + " XML files...")
        args = [(xml) for xml in xmllist]
        pool = threadpool.ThreadPool(15)
        requests = threadpool.makeRequests(self.parse_onetree, args)
        [pool.putRequest(req) for req in requests]
        pool.wait()
