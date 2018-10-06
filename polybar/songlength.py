import math
import sys

time = int(sys.argv[1])
time = time / 60e6
minutes = math.floor(time)
seconds = round(time % 1 * 60)
if seconds<10:
    seconds = "0"+str(seconds)

print(str(minutes)+":"+str(seconds))
