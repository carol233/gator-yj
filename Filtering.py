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
                feature = line[0].strip()
                code = line[1].strip()
                libs = line[2].strip('\"[]')

                if not "JADXOUTPUT/" in feature:
                    continue
                if code == "":
                    continue
                if not libs:
                    continue
                lib = libs.split(",")
                flag = 0
                for item in lib:
                    item = item.strip("\'")
                    if item.startswith("android") or item.startswith("java"):
                        flag = 0
                    else:
                        flag = 1
                        break
                if flag == 1:
                    new_lines.append(line)

        if not new_lines:
            return

        new_lines = [list(t) for t in set(tuple(_) for _ in new_lines)]

        with open(os.path.join(New_dir, filename), "w") as fw:
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




