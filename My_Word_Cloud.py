import numpy as np
import pandas as pd
from os import path
from PIL import Image
from wordcloud import WordCloud, STOPWORDS, ImageColorGenerator
import matplotlib.pyplot as plt

df = pd.read_csv("My cloud.txt", names=["description"])
text = " ".join(word for word in df.description)
# print(text)
my_mask = np.array(Image.open("my_name.png"))


def transform_format(val):
    if val == 0:
        return 255
    else:
        return val


wc = WordCloud(height=50,collocations=False,min_font_size=5,max_words=1000,background_color="white", mask=my_mask, contour_width=1, contour_color='black')
wc.generate(text)
wc.to_file("my_word_cloud3.png")
#
plt.figure(figsize=[15,10])
plt.imshow(wc, interpolation='bilinear')
plt.axis("off")
plt.show()
# wordcloud = WordCloud(width =500,height=500,max_font_size=50, max_words=100, background_color="white").generate(text)
# plt.figure()
# plt.imshow(wordcloud, interpolation="bilinear")
# plt.axis("off")
# plt.show()
