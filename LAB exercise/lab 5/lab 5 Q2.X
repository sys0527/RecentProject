fileHandler = open('flight_schedules.txt','r')
data = fileHandler.readlines()
print('Flight''\t''出发时间''\t''抵达时间''\t''从''\t''目的地')
for line in data:
    line= line.rstrip()
    newLine = line.split('\t')
    print(line)
fileHandler.close()

