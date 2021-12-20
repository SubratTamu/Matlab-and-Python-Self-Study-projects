import pytz
import datetime

country = 'Asia/India'
# country2 = "USA"

timezone1 = pytz.timezone(country)
# timezone2 = pytz.timezone(country2)
localtime = datetime.datetime.now(tz=timezone1)
# localtime2= datetime.datetime.now(tz=timezone2)
print("The timezone for {} is {}".format(country, localtime))
# print("The timezone for {} is {}".format(country2, localtime2))
