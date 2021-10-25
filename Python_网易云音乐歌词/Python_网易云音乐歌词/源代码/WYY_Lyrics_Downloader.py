# 网易云音乐歌手热门50单曲歌词下载器
# 作者：python
# 公众号：python工程狮
import requests
import json
import re
import cookies
import random
import time
import os
from bs4 import BeautifulSoup
import win_unicode_console
import pandas as pd
import numpy as np
win_unicode_console.enable()


class Downloader():
	def __init__(self):
		self.headers = {
			'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3355.4 Safari/537.36',
			'Cookie': cookies.cookies[random.randint(0, len(cookies.cookies)-1)],
			'Referer': 'http://music.163.com',
			'Host': 'music.163.com'
			}
		# self.f = open('6452.txt', 'a', encoding='utf-8')
	# 调用接口
	def run(self):
		input_file_name = pd.read_csv(r'C:\Users\Owner\Downloads\Python_网易云音乐歌词\Python_网易云音乐歌词\源代码\all_singer.csv')
		input_file_name = np.array(input_file_name)
		SingerName = input('输入要找的歌手名字：')
		for item in input_file_name:
			sh = item[1]
			if SingerName == sh:
				SingerId = item[2]
		url = 'http://music.163.com/artist?id={}'.format(SingerId)
		Info = self._GetSongsInfo(url)
		IDs = Info['ID']
		i = 0
		for ID in IDs:
			lyric = self._GetLyrics(ID)
			self._SaveLyrics(Info['NAME'][i], lyric)
			i += 1
			time.sleep(random.random() * 3)
		print('[INFO]:All Done...')
		# self.f.close()
	# 网页源码获取
	def _GetHtml(self, url):
		try:
			res = requests.get(url, headers=self.headers)
		except:
			print('[ERROR]:_GetHtml <Requests> Error...')
			return None
		return res.text
	# 获得歌曲信息
	def _GetSongsInfo(self, url):
		print('[INFO]:Getting Songs Info...')
		html = self._GetHtml(url)
		soup = BeautifulSoup(html, 'lxml')
		links = soup.find('ul', class_='f-hide').find_all('a')
		if len(links) < 1:
			print('[Warning]:_GetSongsInfo <links> not find...')
			return None
		Info = {'ID': [], 'NAME': []}
		for link in links:
			SongID = link.get('href').split('=')[-1]
			SongName = link.get_text()
			Info['ID'].append(SongID)
			Info['NAME'].append(SongName)
		return Info
	# 获取歌词
	def _GetLyrics(self, SongID):
		print('[INFO]:Getting %s lyric...' % SongID)
		ApiUrl = 'http://music.163.com/api/song/lyric?id={}&lv=1&kv=1&tv=-1'.format(SongID)
		html = self._GetHtml(ApiUrl)
		html_json = json.loads(html)
		temp = html_json['lrc']['lyric']
		rule = re.compile(r'\[.*\]')
		lyric = re.sub(rule, '', temp).strip()
		return lyric
	def _SaveLyrics(self, SongName, lyric):
		print('[INFO]: Start to Save {}...'.format(SongName))
		if not os.path.isdir('./results'):
			os.makedirs('./results')
		with open('./results/{}.txt'.format(SongName), 'w', encoding='utf-8') as f:
			f.write(lyric)
			f.close()
		# self.f.write(lyric)


if __name__ == '__main__':
	dl = Downloader()
	dl.run()