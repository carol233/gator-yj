from common import *

if __name__ == '__main__':
    files = getFileList(CODE_ICON_PATH, "")
    count1 = 0
    count2 = 0
    count3 = 0
    count4 = 0
    count5 = 0

    with open("wrong_name.txt", "w") as fw:
        for file in files:
            if (file.endswith(".jpg")) or (file.endswith(".JPG")):
                fw.write(file + "\n")
                count1 += 1
            elif (file.endswith(".gif")) or (file.endswith(".GIF")):
                fw.write(file + "\n")
                count2 += 1
            elif (file.endswith(".webp")) or (file.endswith(".WEBP")):
                fw.write(file + "\n")
                count3 += 1
            elif (file.endswith(".png")) or (file.endswith(".PNG")):
                count4 += 1
            elif (file.endswith(".xml")) or (file.endswith(".XML")):
                count5 += 1
    print(len(files), count1, count2, count3, count4, count5)
