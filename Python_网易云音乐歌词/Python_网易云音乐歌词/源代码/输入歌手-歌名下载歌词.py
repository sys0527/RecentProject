import os

import pandas as pd
import numpy as np
import requests
import json
import re
from bs4 import BeautifulSoup
class danmushuchugeci():
    def search_artist_id(self):

        #依据名字找id
        input_file_name = pd.read_csv(r'C:\Users\Owner\Desktop\自学\Python_网易云音乐歌词\Python_网易云音乐歌词\源代码\all_singer.csv')
        input_file_name = np.array(input_file_name)
        singer_name = input('输入要找的歌手名字：')
        for item in input_file_name:
            sh = item[1]
            if singer_name == sh:
                singer_id = item[0]
        #获取歌曲讯息
        wanted_song_name = input('请输入要找的歌名')
        singer_url = 'http://music.163.com/artist?id={}'.format(singer_id)
        web_data = requests.get(singer_url)
        soup = BeautifulSoup(web_data.text,'lxml')
        singer_name = soup.select("#artist-name")
        r = soup.find('ul',{'class' : 'f-hide'}).find_all('a')
        if len(r) < 1:
            print('[Warning]:_GetSongsInfo <links> not find...')
            return None
        Songs_Detail = open('songDetails.txt', 'w', encoding='utf-8')
        for each in r:
            song_name = each.text
            song_id = each.get('href').split('=')[-1]
            Songs_Detail.write(song_id)
            Songs_Detail.write('\t')
            Songs_Detail.write(song_name)
            Songs_Detail.write('\n')
        Songs_Detail.close()
        SearchSongId = open('songDetails.txt', 'r', encoding='utf-8')
        for lineSongId in SearchSongId:
            lineSongId = lineSongId.rstrip()
            newLineSongId = lineSongId.split("\t")
            if newLineSongId[1] == wanted_song_name:
                print(newLineSongId[0])#找到歌曲了！
                wanted_song = newLineSongId

        #爬歌词
        url = 'https://music.163.com/api/song/lyric?id={}&lv=-1&kv=-1&tv=-1'.format(wanted_song[0])
        headers = {
            'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36'
        }
        print('== 下载{}的歌词...'.format(wanted_song[1]))
        # rc = r.get(url)
        rc = requests.get(url, headers=headers)
        if rc.status_code == 200:
            result = rc.json()
            if result.get('uncollected', False) or result.get('nolyric', False):
                print('暂无歌词')
                return ''
            lyric = rc.json()['lrc']['lyric']
            reg = re.compile(r'\[.*\]')
            lyric = re.sub(reg, '', lyric).strip()

        #写入文档
        with open('{}.txt'.format(wanted_song[1]),'a',encoding='utf-8')as fp:
            fp.write(lyric)



if __name__ == '__main__':
    dl = danmushuchugeci()
    dl.search_artist_id()