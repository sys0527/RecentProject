car = []
while True:
    products = [['iphone','6888'],['MacPro','14800'],['小米6','2499'],['Coffee','31'],['Book','60'],['Nike','699']]
    print('-----商品列表-----')
    #使用枚举函数（i=下标，x是内容）
    for i,x in enumerate(products):
        print(i,x)
    choice=int(input('What you want to buy: [enter"999"to quit]'))
    if choice == 0:
        car.append(products[0])
    elif choice == 1:
        car.append(products[1])
    elif choice == 2:
        car.append(products[2])
    elif choice == 3:
        car.append(products[3])
    elif choice == 4:
        car.append(products[4])
    elif choice == 5:
        car.append(products[5])
    elif choice == 999:
        break
print(car)