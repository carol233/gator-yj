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
                flag = 0

                if not "JADXOUTPUT/" in PIC_TRUE_PATH:
                    continue

                lst = [".png", ".jpg"]
                for item in lst:
                    if item in PIC_TRUE_PATH:
                        flag = 1
                if flag == 1:
                    new_lines.append(line)

        if not new_lines:
            return

        new_lines = [list(t) for t in set(tuple(_) for _ in new_lines)]

        with open(os.path.join(New_dir, filename), "w", newline="") as fw:
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




