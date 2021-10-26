info= {'name':'沈钰芯','her':'hy'} #字典定义
'''
print(info['name']) #沈钰芯
print(info['her'])
print(info.get('gender'))  #使用get来找有没有，否则默认返回none
print(info.get('gender','找没有')) #逗号后面是如没有返回什么
'''
'''
#add
newFeel = input('你对她感觉如何：')
info['feel'] = newFeel
print(info['feel'])
#reduce
    #del
del info['name']
print(info) #{'her': 'hy', 'feel': '喜欢'}（name删了）

#clear（清空字典里的东西）
print(info)
info.clear()
print(info)#有字典，里面空
'''
'''
#edit
print(info)
info['her']='桥本奈奈未'
print(info)
'''
#search（变成列）
print(info.keys())# 得到所以键
print(info.values())#得到所以值
print(info.items())#每个键值对是一个元组
for key in info.keys():
    print(key)
for key in info.values():
    print(key)
for key,value in info.items():
    print('key = %s, value = %s'%(key,value))

#set 可以用来过滤重复的元素