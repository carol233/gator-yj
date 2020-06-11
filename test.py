import subprocess

CLIENT = "WTGDemoClient"
ANDROID_SDK = "~/Library/Android/sdk/"
# ANDROID_SDK = "/home/yanjie/android-sdk-linux/"
JADX_TOOL_PATH = "jadx"
# JADX_TOOL_PATH = "/home/yanjie/jadx/build/jadx/bin/jadx"
apk = "/Users/yzha0544/PycharmProjects/gator-3.8/AndroidBench/APKs/CGO14ASE15/barcodescanner.apk"

try:
    CMD = "./gator/gator a --sdk " + ANDROID_SDK + " -p " + apk + " -client " + CLIENT
    out_bytes = subprocess.check_output(CMD, shell=True, timeout=100)
except subprocess.TimeoutExpired as exc:
    print("Command timed out: {}".format(exc))
    out_bytes = "error"
except subprocess.CalledProcessError as e:
    out_bytes = e.output  # Output generated before error
    code = e.returncode  # Return code
out_text = out_bytes.decode('utf-8')
print(out_text)