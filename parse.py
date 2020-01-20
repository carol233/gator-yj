#!/usr/bin/env python3
from common import *
import xml.etree.ElementTree as ET
import csv

HEADER = ["view type", "view id", "view idname", "event and handler"]


def remove_dup(a):
    b = []
    for item in a:
        if item not in b:
            b.append(item)
    return b

def parse_onetree(in_file, CSVPATH):
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
    res = remove_dup(res)

    with open(CSVPATH + "/" + os.path.split(in_file)[-1][:-4] + ".csv", 'w', newline="") as f:
        writer = csv.writer(f)
        writer.writerow(HEADER)
        for item in res:
            writer.writerow(item)


def parse_xml(XML, CSVPATH):
    if not os.path.exists(CSVPATH):
        os.mkdir(CSVPATH)
    xmllist = getFileList(XML, ".xml")
    for xml in xmllist:
        parse_onetree(xml, CSVPATH)
