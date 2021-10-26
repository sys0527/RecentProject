newFlight = input("Enter Flight: ")
fileHandler = open('flight_schedules.txt','r')

data = fileHandler.readlines()
newData = []
for line in data:
    line = line.rstrip()#删除每行最后一个数据后的空格或/n
    newLine = line.split("\t")#把line里的数据依据tab进行分割
    if newLine[4] == "KL":
        newLine[0] = newFlight
    newData.append(newLine)
    print(newLine)
    #print(line)
fileHandler.close()

#不放就不会更新txt里面的资料
fileHandler = open('flight_schedules.txt','w')
for data in newData:
    for item in data:
        fileHandler.write(item)
        fileHandler.write('\t')
    fileHandler.write('\n')
fileHandler.close()


