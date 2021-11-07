def searchSupplier():
    try:
        supplierInfo = open('supplierDetails.txt','r')
    except:
        print('Error while open file')
    keywordOfSup = input('Enter the name of part that it supplied to search the company of supplier:')
    try:
        for lineSup in supplierInfo:
            lineSup = lineSup.rstrip()
            newLineSup = lineSup.split('\t')
            if not keywordOfSup in newLineSup:
                continue
            print(lineSup)
    except:
        print('error while searching')
    supplierInfo.close()
    
searchSupplier()


'''keywordOfSup = input('Enter the name of part to search the company of supplier:')
fileHandler = open('supplierDetails.txt','r')

data = fileHandler.readlines()
newData = []
for line in data:
    line = line.rstrip()#删除每行最后一个数据后的空格或/n
    newLine = line.split("\t")#把line里的数据依据tab进行分割
    if newLine[4] == "KL":
        newLine[0] = 
    newData.append(newLine)
    print(newLine)
    #print(line)
fileHandler.close()
'''
'''
        for line in data:
            line = line.rstrip()
            newLineSup = line.split("\t")
            try:
                if newLineSup[2] == keywordOfSup:
                    print(newLineSep)
            except:
                prinnt('error while search')
    except:
'''
