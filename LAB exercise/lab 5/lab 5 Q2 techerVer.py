#进行索引前的把资料分割
fileHandler = open('flight_schedules.txt','r')
data = fileHandler.readlines()# list is use for easy to take the data and replace it
for line in data:
    line= line.rstrip()#去除全部多余的空格
    newLine = line.split('\t')#以tab的地方来进行分割
    print(newLine)
fileHandler.close()

