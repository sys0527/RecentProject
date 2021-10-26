#字符串高级用法
Test = 'python'
print('获取第一个字%s' % Test[0])
print('获取第三个字%s' % Test[2])

name = 'peter'
print('首字母变大写%s'%name.capitalize())

a='      hello     '
b=a.strip()#删除前后空格
print(b)
print(a.lstrip())
print(a.rstrip())