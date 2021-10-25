filePrint= open('年轮说.txt','r')
for lineLyric in filePrint:
    lineLyric = lineLyric.rstrip()
    newLineLyric = lineLyric.split("\n")
    print(newLineLyric)