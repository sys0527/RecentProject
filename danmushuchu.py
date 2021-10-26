# coding:utf-8
import requests
import time
from tkinter import *
import random
#['小R最宠雷雷','小R最棒！‘,'小R值得！！']
lis_text = ['各位新朋友喜欢的可以给主播点个关注!','新朋友带牌不亏！！！','欢迎新朋友 投喂B克拉带牌牌随缘点歌 上舰一起玩！','新朋友投喂B克拉带牌牌点歌！上舰解锁5月福利！','关注收藏直播间不走丢！甜甜主播等你上船一起玩！','欢迎新朋友关注收藏不走丢~','带牌点歌 随便点歌 随缘唱歌~','新朋友送b克拉可以有粉丝牌牌','五月直播时间:周三~周日 下午三点，随缘下播']

def sleeptime(hour, min, sec):
 return hour * 3600 + min * 60 + sec


second = sleeptime(0,1,50)
 
def send():
 a = 0
 while True:
  time.sleep(second)
  send_meg = random.choice(lis_text)
  roomid = 22493642
  ti = int(time.time())
  url = 'https://api.live.bilibili.com/msg/send'
  data = {
   'color': '4546550',
   'fontsize': '25',
   'mode':'1',
   'msg': send_meg,
   'rnd': '{}'.format(ti),
   'roomid': '{}'.format(roomid),
   'bubble': '0',
   'csrf_token': 'c96f37399f2f97520b66683a5e0dcf9c',
   'csrf': 'c96f37399f2f97520b66683a5e0dcf9c',
  }
 
  headers = {
   'cookie': '_uuid=11737B3E-851E-EF57-DD2B-CA7F03B148E723133infoc; CURRENT_FNVAL=80; rpdid=|(kR~lu~llJ0J\'uY||)YRl~m; LIVE_BUVID=AUTO2316029425762078; fingerprint3=88ce3fde392f68385a693501d16e6f22; buivd_fp=20E9CB95-428A-49BB-AF21-531E39361B1E138399infoc; blackside_state=0; canvasFp=c87149379caf9bedaae02da9b9d58c00; feSign=17af3c096ce2665e875c1f1b0b68c61b; screenInfo=1536*864*24; webglFp=f778224e711039fb41ec4da51efcf829; payParams=%7B%22uid%22%3A149251813%2C%22orderId%22%3A%221352922641132494848%22%2C%22serviceType%22%3A11%2C%22orderCreateTime%22%3A%221611396868391%22%2C%22orderExpire%22%3A900%2C%22feeType%22%3A%22CNY%22%2C%22payAmount%22%3A19800%2C%22originalAmount%22%3A19800%2C%22deviceType%22%3A1%2C%22notifyUrl%22%3A%22http%3A//api.live.bilibili.co/xlive/internal/revenue/v1/order/notifyPay%3Forder_id%3D2101231814283892118132772%22%2C%22productId%22%3A%22goods%22%2C%22showTitle%22%3A%22%u8230%u957F%22%2C%22returnUrl%22%3A%22https%3A//link.bilibili.com/p/center/index%23/user-center/my-info/operation%22%2C%22traceId%22%3A%221f4b9045f5600bf7%22%2C%22timestamp%22%3A%221611396868391%22%2C%22defaultChoose%22%3A%22paypal%22%2C%22createUa%22%3A%22%22%2C%22showContent%22%3A%22%22%2C%22productUrl%22%3A%22%22%2C%22deviceInfo%22%3A%22%22%2C%22version%22%3A%221.0%22%2C%22customerId%22%3A10005%2C%22signType%22%3A%22MD5%22%2C%22extParams%22%3A%22%22%2C%22planId%22%3A0%2C%22displayAccount%22%3A%22%22%2C%22signUrl%22%3A%22%22%2C%22sign%22%3A%224cac7ab46ca16a84a7ac3905df0bb658%22%7D; bsource=search_google; buvid3=933CBF9F-C1B2-4FD3-824D-68EDE4F9F89118555infoc; buvid_fp=933CBF9F-C1B2-4FD3-824D-68EDE4F9F89118555infoc; buvid_fp_plain=933CBF9F-C1B2-4FD3-824D-68EDE4F9F89118555infoc; CURRENT_QUALITY=16; fingerprint_s=0c185f90cb29519dd789ef8dbf8c03ad; Hm_lvt_8a6e55dbd2870f0f5bc9194cddf32a02=1615302511,1615400133,1615401218,1615562236; SESSDATA=908c1a55%2C1631191315%2C1532a%2A31; bili_jct=c96f37399f2f97520b66683a5e0dcf9c; DedeUserID=149251813; DedeUserID__ckMd5=c85cff4d166f3a06; sid=hsxph698; bp_t_offset_149251813=503547905729558546; fingerprint=684bbf10441e8cdf73186bd38335f63d; bp_video_offset_149251813=505391318580779261; Hm_lpvt_8a6e55dbd2870f0f5bc9194cddf32a02=1616753745; _dfcaptcha=107adf57ae9d0b96e89b1c4017981a6c; PVID=6',
   'origin': 'https://live.bilibili.com',
   'referer': 'https://live.bilibili.com/',
   'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36',
  }
  a += 1
  response = requests.post(url=url, data=data, headers=headers)
  print(response)
  text.insert(END, '第{}条弹幕发送成功'.format(a))
  # 文本框滚动
  text.see(END)
  # 更新
  text.update()
  text.insert(END, '发送内容：{}'.format(send_meg))
 
 
root = Tk()
root.title('B站自动发送弹幕')
root.geometry('560x450+400+200')
 
label = Label(root, text='雷雷房管输出', font=('华文行楷', 20))
label.grid()

#entry = Entry(root,text='22493642', font=('隶书', 20))
#entry.grid(row=0, column=1)
 
text = Listbox(root, font=('隶书', 16), width=50, heigh=15)
text.grid(row=2, columnspan=2)
 
button1 = Button(root, text='开始发送', font=('隶书', 15), command=send)
button1.grid(row=3, column=0)
 
button2 = Button(root, text='退出程序', font=('隶书', 15), command=root.quit)
button2.grid(row=3, column=1)
 
root.mainloop()
