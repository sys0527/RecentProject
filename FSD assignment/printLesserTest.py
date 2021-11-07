def searchPart():
    fileHandlerESWBS = open('ES-WBS.txt','r')
    fileHandlerASWBS = open('AS-WBS.txt','r')
    fileHandlerSCWBS = open('SC-WBS.txt','r')
    fileHandlerESWAY = open('ES-WAY.txt','r')
    fileHandlerASWAY = open('AS-WAY.txt','r')
    fileHandlerSCWAY = open('SC-WAY.txt','r')
    fileHandlerESWBR = open('ES-WBR.txt','r')
    fileHandlerASWBR = open('AS-WBR.txt','r')
    fileHandlerSCWBR = open('SC-WBR.txt','r')
    keyword=input('Enter Part Id you want to search')
    print('Name''\t''ID''\t''Quantity''\t''Supplier')
    for lineWBS in fileHandlerESWBS:
        lineWBS = lineWBS.rstrip()
        newLineWBS = lineWBS.split("\t")
        if newLineWBS[1] == keyword:
            print(newLineWBS)
    for lineWBS in fileHandlerASWBS:
        lineWBS = lineWBS.rstrip()
        newLineWBS = lineWBS.split("\t")
        if newLineWBS[1] == keyword:
            print(newLineWBS)
    for lineWBS in fileHandlerSCWBS:
        lineWBS = lineWBS.rstrip()
        newLineWBS = lineWBS.split("\t")
        if newLineWBS[1] == keyword:
            print(newLineWBS)
    for lineWAY in fileHandlerESWAY:
        lineWAY = lineWAY.rstrip()
        newLineWAY = lineWAY.split("\t")
        if newLineWAY[1] == keyword:
            print(newLineWAY)
    for lineWAY in fileHandlerASWAY:
        lineWAY = lineWAY.rstrip()
        newLineWAY = lineWAY.split("\t")
        if newLineWAY[1] == keyword:
            print(newLineWAY)
    for lineWAY in fileHandlerSCWAY:
        lineWAY = lineWAY.rstrip()
        newLineWAY = lineWAY.split("\t")
        if newLineWAY[1] == keyword:
            print(newLineWAY)
    for lineWBR in fileHandlerESWBR:
        lineWBR = lineWBR.rstrip()
        newLineWBR = lineWBR.split("\t")
        if newLineWBR[1] == keyword:
            print(newLineWBR)
    for lineWBR in fileHandlerASWBR:
        lineWBR = lineWBR.rstrip()
        newLineWBR = lineWBR.split("\t")
        if newLineWBR[1] == keyword:
            print(newLineWBR)
    for lineWBR in fileHandlerSCWBR:
        lineWBR = lineWBR.rstrip()
        newLineWBR = lineWBR.split("\t")
        if newLineWBR[1] == keyword:
            print(newLineWBR)
    fileHandlerESWBS.close()
    fileHandlerASWBS.close()
    fileHandlerSCWBS.close()
    fileHandlerESWAY.close()
    fileHandlerASWAY.close()
    fileHandlerSCWAY.close()
    fileHandlerESWBR.close()
    fileHandlerASWBR.close()
    fileHandlerSCWBR.close()
searchPart()
