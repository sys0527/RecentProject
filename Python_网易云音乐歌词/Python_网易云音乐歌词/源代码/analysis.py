# 简单分析歌手歌词
# 公众号：python工程狮
# 作者：python
import jieba
import jieba.analyse
import xlwt
from wordcloud import WordCloud
import matplotlib.pyplot as plt
from snownlp import SnowNLP
import numpy as np


# 词频统计并保存到Excel中
def GetWordFrequency():
	words = []
	words_fre = {}
	wb = xlwt.Workbook(encoding='ascii')
	sheet = wb.add_sheet('WordCount')
	for line in open('./6452.txt', encoding='utf-8'):
		temp = line.strip()
		tags = jieba.analyse.extract_tags(temp)
		for t in tags:
			words.append(t)
	for w in words:
		if w not in words_fre:
			words_fre[w] = 1
		else:
			words_fre[w] += 1
	i = 1
	sheet.write(0, 0, '单词')
	sheet.write(0, 1, '频率')
	for key in words_fre:
		sheet.write(i, 0, key)
		sheet.write(i, 1, words_fre[key])
		i += 1
	wb.save('WordCount.xls')


# 制作词云
def make_wordcloud():
	lyrics = open('./6452.txt', 'r', encoding='utf-8').read()
	temp = " ".join(jieba.cut(lyrics))
	wc = WordCloud(font_path='./simkai.ttf').generate(temp)
	plt.imshow(wc)
	plt.show()
	wc.to_file('result_cloud.jpg')


# 简单的情感分析
def Get_Emotion():
	lyrics = open('./6452.txt', 'r', encoding='utf-8').readlines()
	marks_list = []
	for lyric in lyrics:
		lyric = lyric.strip()
		if not lyric:
			continue
		mark = SnowNLP(lyric)
		marks_list.append(mark.sentiments)
	plt.hist(marks_list, bins=np.arange(0, 1, 0.02))
	plt.show()

if __name__ == '__main__':
	# GetWordFrequency()
	# make_wordcloud()
	Get_Emotion()