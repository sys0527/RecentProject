#BMI练习
h = float(input('请输入身高：【以m为单位】'))
w = float(input('请输入体重：'))
if w/h**2 < 18.5:
    print('过轻')
elif w/h**2 > 32:
    print('严重肥胖')
elif 18.5 <= w/h**2 < 25:
    print('正常')
elif 25 <= w/h**2 < 28:
    print('过重')
elif 28 <= w/h**2 < 32:
    print('肥胖')
