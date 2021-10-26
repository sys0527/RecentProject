#<ul class="f-hide">
 # <li><a href="/song?id=29848657">手心的蔷薇</a></li>
  #<li><a href="/song?id=1804879213">过</a></li>
  #<li><a href="/song?id=26305527">江南</a></li><li><a href="/song?id=27731362">背对背拥抱</a></li><li><a href="/song?id=29814898">可惜没如果</a></li><li><a href="/song?id=26305545">期待爱</a></li><li><a href="/song?id=486194136">不为谁而作的歌</a></li><li><a href="/song?id=108138">那些你很冒险的梦</a></li><li><a href="/song?id=25727803">修炼爱情</a></li><li><a href="/song?id=25638767">她说</a></li><li><a href="/song?id=26305540">不潮不用花钱</a></li><li><a href="/song?id=25794009">裂缝中的阳光</a></li><li><a href="/song?id=26305534">曹操</a></li><li><a href="/song?id=1479003964">交换余生</a></li><li><a href="/song?id=108931">美人鱼</a></li><li><a href="/song?id=108485">Always Online</a></li><li><a href="/song?id=26305550">爱笑的眼睛</a></li><li><a href="/song?id=108263">心墙</a></li><li><a href="/song?id=108493">我还想她</a></li><li><a href="/song?id=26305541">小酒窝</a></li><li><a href="/song?id=108251">当你</a></li><li><a href="/song?id=5252767">사랑해요只对你说</a></li><li><a href="/song?id=108478">醉赤壁</a></li><li><a href="/song?id=25638971">记得</a></li><li><a href="/song?id=26305549">加油！</a></li><li><a href="/song?id=26305531">一千年以后</a></li><li><a href="/song?id=108134">学不会</a></li><li><a href="/song?id=26305535">原来</a></li><li><a href="/song?id=247579">被风吹过的夏天</a></li><li><a href="/song?id=108428">爱不会绝迹</a></li><li><a href="/song?id=108136">故事细腻</a></li><li><a href="/song?id=29850685">生生</a></li><li><a href="/song?id=108473">黑武士</a></li><li><a href="/song?id=108983">会有那么一天</a></li><li><a href="/song?id=108248">只对你有感觉</a></li><li><a href="/song?id=1391477429">将故事写成我们</a></li><li><a href="/song?id=454828886">Love U U</a></li><li><a href="/song?id=520532431">伟大的渺小</a></li><li><a href="/song?id=25794008">黑暗骑士</a></li><li><a href="/song?id=108260">握不住的他</a></li><li><a href="/song?id=108265">我很想爱他</a></li><li><a href="/song?id=108254">一眼万年</a></li><li><a href="/song?id=108543">杀手</a></li><li><a href="/song?id=525278976">黑夜问白天</a></li><li><a href="/song?id=108910">豆浆油条</a></li><li><a href="/song?id=108965">冻结</a></li><li><a href="/song?id=25729074">因你而在</a></li><li><a href="/song?id=40147554">关键词</a></li><li><a href="/song?id=108810">不死之身</a></li><li><a href="/song?id=29850683">浪漫血液</a></li></ul>

import requests
import json
music_id=input("请输入歌手的id：")

headers={"User-Agent" : "Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.1.6) ",
  "Accept" : "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
  "Accept-Language" : "en-us",
  "Connection" : "keep-alive",
  "Accept-Charset" : "GB2312,utf-8;q=0.7,*;q=0.7"}
url = 'http://music.163.com/api/song/lyric?'+ 'id=' + music_id+ '&lv=1&kv=1&tv=-1'
r = requests.get(url,headers=headers,allow_redirects=False)
#allow_redirects设置为重定向的参数
#headers=headers添加请求头的参数，冒充请求头








'''
import requests
import re
import csv
import json


class SingerSpider(object):
    def __init__(self):
        self.headers = {
            'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
            'Accept-Encoding': 'gzip, deflate',
            'Accept-Language': 'zh-CN,zh;q=0.9',
            'Connection': 'keep-alive',
            'Host': 'music.163.com',
            'Referer': 'http://music.163.com/',
            'Upgrade-Insecure-Requests': '1',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) '
                          'Chrome/66.0.3359.181 Safari/537.36'
        }

    def get_index(self, url):
        '请求模块'
        try:
            resp = requests.get(url,headers=self.headers)
            if resp.status_code == 200:
                self.parse_re(resp.text)
            else:
                print('error')
        except ConnectionError:
            self.get_index(url)

    def parse_re(self, resp):
        '解析模块'
        print('start parse {}'.format(url))
        tags = re.findall(r'<a href=".*?/artist\?id=(\d+)" class="nm nm-icn f-thide s-fc0" title=".*?的音乐">(.*?)</a>', resp, re.S)
        title = re.findall(r'<title>(.*?)-.*?</title>', resp, re.S)
        for tag in tags:
            # print(tag[0],tag[1])
            # self.save_json(tag, title)
            self.save_csv(tag, title)

    def save_csv(self, tag, title):
        '存储模块'
        print('start save {}'.format(url))
        with open('all_singer.csv', 'a+', newline='', encoding='utf-8') as f:
            writer = csv.writer(f)
            writer.writerow((tag[0], tag[1], title[0]))
        print('finish spider {}'.format(url))

    def save_json(self, tag, title):
        print('start save {}'.format(url))
        s = json.dumps({'id': tag[0], 'name': tag[1], 'title': title[0]},ensure_ascii=False)
        with open('all_singer.json', 'a+', newline='', encoding='utf-8') as f:
            f.write(s)
        print('finish spider {}'.format(url))
        print(s)


if __name__ == '__main__':
    # 歌手分类id
    list1 = [1001, 1002, 1003, 2001, 2002, 2003, 6001, 6002, 6003, 7001, 7002, 7003, 4001, 4002, 4003]
    # initial的值
    list2 = [0,65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90]
    for i in list1:
        for j in list2:
            url = 'http://music.163.com/discover/artist/cat?id=' + str(i) + '&initial=' + str(j)
            print('start spider {}'.format(url))
            SingerSpider().get_index(url)

'''