from turtle import *
import time
from time import time as my_timer
# import webbrowser
don = "ok"
start = my_timer()
forward(160)
right(350)
forward(120)
circle(75)

done()
print(don)

# webbrowser.open("https://www.google.com")

end = my_timer()
print("Time started at ",time.strftime("%X", time.localtime(start)))
print("Time ended at ", time.strftime("%X", time.localtime(end)))
print("total taken time is {} seconds ".format(end-start))

print("Epoch time", time.strftime("%c", time.gmtime(0)))
print("Current time zone {0} with an offset of {1} ".format(time.tzname[0], time.timezone))
if time.daylight != 0:
    print("DST in effect for this zone")
    print("DST for this zone is {}".format(time.tzname[1]))
else:
    print("DST is not in effect in {}".format(time.tzname[1]))

print("Local time is: ", time.strftime("%d-%m-%Y  %H:%M:%S", time.localtime()))
print(" UTC time is: ", time.strftime("%d-%m-%Y   %H:%M:%S", time.gmtime()))

