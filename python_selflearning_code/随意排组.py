import random
offices = [[],[],[]]
names = ['Adam','Bili','Calista','Dandy','Elpha','Felica','Gear','Hero','Idol','Jerry']

# put all name into random office
for name in names:
    index = random.randint(0,2)
    offices[index].append(name) #在offices列表里面的第【n】里加组员

count = 1
for office in offices:
    print('办公室%d的人数为：%d'%(count,len(office)))   #len show the number of item in the list
    count += 1
    for name in office:
        print(name,end='\t')
    print('\n')
    print('-'*20)