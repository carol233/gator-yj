import threadpool

from common import *

TrainingSet_dir = "/home/yanjie/gator-3.8/TrainingSet/"
New_dir = "/home/yanjie/gator-3.8/FilteringDataset/"

class Filtering:
    def process_one(self, file):
        filename = os.path.split(file)[-1][:-4]
        with open(file, "r") as fr:
            reader = csv.reader(fr)
            new_lines = []
            for line in reader:
                PIC_TRUE_PATH = line[-1]
                if not "JADXOUTPUT/" in PIC_TRUE_PATH:
                    continue

                pics = PIC_TRUE_PATH.split(";")
                new_pics = []
                flag = 0
                for pic in pics:
                    if ".xml" in pic:
                        continue
                    elif (".png" in pic) or (".jpg" in pic):
                        flag = 1
                        new_pics.append(pic)

                newline = line[:-1]
                newline.append(";".join(new_pics))
                if flag == 1:
                    new_lines.append(newline)

        if not new_lines:
            return

        new_lines = [list(t) for t in set(tuple(_) for _ in new_lines)]

        with open(os.path.join(New_dir, filename + ".csv"), "w", newline="") as fw:
            writer = csv.writer(fw)
            for line in new_lines:
                writer.writerow(line)


    def start(self):
        apklist = getFileList(TrainingSet_dir, ".csv")
        args = [(apk) for apk in apklist]
        pool = threadpool.ThreadPool(DEFAULT_MAX_JOB)
        requests = threadpool.makeRequests(self.process_one, args)
        [pool.putRequest(req) for req in requests]
        pool.wait()


if __name__ == "__main__":
    check_and_mkdir(New_dir)
    filter = Filtering()
    filter.start()
