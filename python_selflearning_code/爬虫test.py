#get 使用方法

#import requests
#query = input("输入你要搜的歌名")
#url = f'https://www.baidu.com/s?wd={query}'
#head = {"user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36"}

#resp = requests.get(url, headers=head)
#print(resp.text)#页面源代码

#post 爬翻译
#import requests
#url = 'https://fanyi.baidu.com/sug'
#s = input('请输入要翻译的词')
#dat = {"kw": s}
#resp = requests.post(url,data=dat) #要搜的放在data里面
#print(resp.json())

#