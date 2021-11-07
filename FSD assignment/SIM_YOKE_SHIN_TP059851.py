#SIM YOKE SHIN
#TP059851
def inventory():
    inventoryLocal =[]
    for i in range(1):
        parts=[]
        partName=input('Enter name of part: ')
        parts.append(partName)
        partId=input('Enter Part ID:')
        parts.append(partId)
        partQuantity=input("Enter Quantity of part: ")
        parts.append(partQuantity)
        partSupplier=input("Enter the company of supplier : ")
        parts.append(partSupplier)
        inventoryLocal.append(parts)
    return inventoryLocal

def supplier():
    supplierLocal = []
    for i in range(1):
        supplierParts=[]
        supplierName= input('Enter name of company of supplier: ')
        supplierParts.append(supplierName)
        supplierContect=input('Enter company\'s contact number: ')
        supplierParts.append(supplierContect)
        supplierSupplied=input("Enter part's Section code with warehouse code of supplier supplied:[ex:ESWBS]")
        supplierParts.append(supplierSupplied)
        supplierLocal.append(supplierParts)
    return supplierLocal

def update(newData, fileHandler):
    for data in newData:
        for item in data:
            fileHandler.write(item)
            fileHandler.write('\t')
        fileHandler.write('\n')

def saveInventoryWBS():
    print('-----Adding parts into WBS warehouse-----')
    sellectedSection=int(input('Add to which section?[1.Engine Section(ES), 2.Air-conditioning Section(AS), 3.Safety and Cockpit section(SC)]'))
    try:
        if sellectedSection == 1:
            fileHandlerWBS = open('ES-WBS.txt','a')
        elif sellectedSection == 2:
            fileHandlerWBS = open('AS-WBS.txt','a')
        elif sellectedSection == 3:
            fileHandlerWBS = open('SC-WBS.txt','a')
        inventoryWBS = inventory()
        updateWBS = update(inventoryWBS, fileHandlerWBS)
        fileHandlerWBS.close()
    except:
        print('Wrong Typing')
    
    

def saveInventoryWAY():
    print('-----Adding parts into WAY warehouse-----')
    sellectedSection=int(input('Add to which section?[1.Engine Section(ES), 2.Air-conditioning Section(AS), 3.Safety and Cockpit section(SC)]'))
    try:
        if sellectedSection == 1:
            fileHandlerWAY = open('ES-WAY.txt','a')
        elif sellectedSection == 2:
            fileHandlerWAY = open('AS-WAY.txt','a')
        elif sellectedSection == 3:
            fileHandlerWAY = open('SC-WAY.txt','a')
        wayInventory = inventory()
        updateWAY = update(wayInventory, fileHandlerWAY)
        fileHandlerWAY.close()
    except:
        print('Wrong Typing')
    

def saveInventoryWBR():
    print('-----Adding parts into WBR warehouse-----')
    sellectedSection=int(input('Add to which section?[1.Engine Section(ES), 2.Air-conditioning Section(AS), 3.Safety and Cockpit section(SC)]'))
    try:
        if sellectedSection == 1:
            fileHandlerWBR = open('ES-WBR.txt','a')
        elif sellectedSection == 2:
            fileHandlerWBR = open('AS-WBR.txt','a')
        elif sellectedSection == 3:
            fileHandlerWBR = open('SC-WBR.txt','a')
        wbrInventory = inventory()
        updateWBR = update(wbrInventory, fileHandlerWBR)
        fileHandlerWBR.close()
    except:
        print('Wrong Typing')


def editQuantityWBS():
    print('Engine Section(ES), Air-conditioning Section(AS), Safety and Cockpit section(SC)')
    secCode= input('which sections:[Enter Code]')
    try:
        if secCode == 'ES':
            fileHandlerWBS = open('ES-WBS.txt','r')
            pardIdForSearch=input('Which part you need to edit?[Enter Part Id]')
            newQuantity=input('What is the new quantity of it')
            newData=[]
            data = fileHandlerWBS.readlines()
            for line in data:
                line = line.rstrip()
                newLine = line.split("\t")
                if newLine[1] == pardIdForSearch:
                    newLine[2] = newQuantity
                newData.append(newLine)
                print(newLine)
            fileHandlerWBS.close()
            
            fileHandlerWBS1 = open('ES-WBS.txt','w')
            for data in newData:
                for item in data:
                    fileHandlerWBS1.write(item)
                    fileHandlerWBS1.write('\t')
                fileHandlerWBS1.write('\n')
            fileHandlerWBS1.close()
        elif secCode == 'AS':
            fileHandlerWBS = open('AS-WBS.txt','r')
            pardIdForSearch=input('Which part you need to edit?[Enter Part Id]')
            newQuantity=input('What is the new quantity of it')
            newData=[]
            data = fileHandlerWBS.readlines()
            for line in data:
                line = line.rstrip()
                newLine = line.split("\t")
                if newLine[1] == pardIdForSearch:
                    newLine[2] = newQuantity
                newData.append(newLine)
                print(newLine)
            fileHandlerWBS.close()
            
            fileHandlerWBS1 = open('AS-WBS.txt','w')
            for data in newData:
                for item in data:
                    fileHandlerWBS1.write(item)
                    fileHandlerWBS1.write('\t')
                fileHandlerWBS1.write('\n')
            fileHandlerWBS1.close()
        elif secCode == 'SC':
            fileHandlerWBS = open('SC-WBS.txt','r')
            pardIdForSearch=input('Which part you need to edit?[Enter Part Id]')
            newQuantity=input('What is the new quantity of it')
            newData=[]
            data = fileHandlerWBS.readlines()
            for line in data:
                line = line.rstrip()
                newLine = line.split("\t")
                if newLine[1] == pardIdForSearch:
                    newLine[2] = newQuantity
                newData.append(newLine)
                print(newLine)
            fileHandlerWBS.close()
            
            fileHandlerWBS1 = open('SC-WBS.txt','w')
            for data in newData:
                for item in data:
                    fileHandlerWBS1.write(item)
                    fileHandlerWBS1.write('\t')
                fileHandlerWBS1.write('\n')
            fileHandlerWBS1.close()
    except:
        print('Wrong Typing')

def editQuantityWAY():
    print('Engine Section(ES), Air-conditioning Section(AS), Safety and Cockpit section(SC)')
    secCode= input('which sections:[Enter Code]')
    try:
        if secCode == 'ES':
            fileHandlerWAY = open('ES-WAY.txt','r')
            pardIdForSearch=input('Which part you need to edit?[Enter Part Id]')
            newQuantity=input('What is the new quantity of it')
            newData=[]
            data = fileHandlerWAY.readlines()
            for line in data:
                line = line.rstrip()
                newLine = line.split("\t")
                if newLine[1] == pardIdForSearch:
                    newLine[2] = newQuantity
                newData.append(newLine)
                print(newLine)
            fileHandlerWAY.close()
            
            fileHandlerWAY1 = open('ES-WAY.txt','w')
            for data in newData:
                for item in data:
                    fileHandlerWAY1.write(item)
                    fileHandlerWAY1.write('\t')
                fileHandlerWAY1.write('\n')
            fileHandlerWAY1.close()
        elif secCode == 'AS':
            fileHandlerWAY = open('AS-WAY.txt','r')
            pardIdForSearch=input('Which part you need to edit?[Enter Part Id]')
            newQuantity=input('What is the new quantity of it')
            newData=[]
            data = fileHandlerWAY.readlines()
            for line in data:
                line = line.rstrip()
                newLine = line.split("\t")
                if newLine[1] == pardIdForSearch:
                    newLine[2] = newQuantity
                newData.append(newLine)
                print(newLine)
            fileHandlerWAY.close()
            
            fileHandlerWAY1 = open('AS-WAY.txt','w')
            for data in newData:
                for item in data:
                    fileHandlerWAY1.write(item)
                    fileHandlerWAY1.write('\t')
                fileHandlerWAY1.write('\n')
            fileHandlerWAY1.close()
        elif secCode == 'SC':
            fileHandlerWAY = open('SC-WAY.txt','r')
            pardIdForSearch=input('Which part you need to edit?[Enter Part Id]')
            newQuantity=input('What is the new quantity of it')
            newData=[]
            data = fileHandlerWAY.readlines()
            for line in data:
                line = line.rstrip()
                newLine = line.split("\t")
                if newLine[1] == pardIdForSearch:
                    newLine[2] = newQuantity
                newData.append(newLine)
                print(newLine)
            fileHandlerWAY.close()
            
            fileHandlerWAY1 = open('SC-WAY.txt','w')
            for data in newData:
                for item in data:
                    fileHandlerWAY1.write(item)
                    fileHandlerWAY1.write('\t')
                fileHandlerWAY1.write('\n')
            fileHandlerWAY1.close()
    except:
        print('Wrong Typing')

def editQuantityWBR():
    print('Engine Section(ES), Air-conditioning Section(AS), Safety and Cockpit section(SC)')
    secCode= input('which sections:[Enter Code]')
    try:
        if secCode == 'ES':
            fileHandlerWBR = open('ES-WBR.txt','r')
            pardIdForSearch=input('Which part you need to edit?[Enter Part Id]')
            newQuantity=input('What is the new quantity of it')
            newData=[]
            data = fileHandlerWBR.readlines()
            for line in data:
                line = line.rstrip()
                newLine = line.split("\t")
                if newLine[1] == pardIdForSearch:
                    newLine[2] = newQuantity
                newData.append(newLine)
                print(newLine)
            fileHandlerWBR.close()
            
            fileHandlerWBR1 = open('ES-WBR.txt','w')
            for data in newData:
                for item in data:
                    fileHandlerWBR1.write(item)
                    fileHandlerWBR1.write('\t')
                fileHandlerWBR1.write('\n')
            fileHandlerWBR1.close()
        elif secCode == 'AS':
            fileHandlerWBR = open('AS-WBR.txt','r')
            pardIdForSearch=input('Which part you need to edit?[Enter Part Id]')
            newQuantity=input('What is the new quantity of it')
            newData=[]
            data = fileHandlerWBR.readlines()
            for line in data:
                line = line.rstrip()
                newLine = line.split("\t")
                if newLine[1] == pardIdForSearch:
                    newLine[2] = newQuantity
                newData.append(newLine)
                print(newLine)
            fileHandlerWBR.close()
            
            fileHandlerWBR1 = open('AS-WBR.txt','w')
            for data in newData:
                for item in data:
                    fileHandlerWBR1.write(item)
                    fileHandlerWBR1.write('\t')
                fileHandlerWBR1.write('\n')
            fileHandlerWBR1.close()
        elif secCode == 'SC':
            fileHandlerWBR = open('SC-WBR.txt','r')
            pardIdForSearch=input('Which part you need to edit?[Enter Part Id]')
            newQuantity=input('What is the new quantity of it')
            newData=[]
            data = fileHandlerWBR.readlines()
            for line in data:
                line = line.rstrip()
                newLine = line.split("\t")
                if newLine[1] == pardIdForSearch:
                    newLine[2] = newQuantity
                newData.append(newLine)
                print(newLine)
            fileHandlerWBR.close()
            
            fileHandlerWBR1 = open('SC-WBR.txt','w')
            for data in newData:
                for item in data:
                    fileHandlerWBR1.write(item)
                    fileHandlerWBR1.write('\t')
                fileHandlerWBR1.write('\n')
            fileHandlerWBR1.close()
    except:
        print('Wrong Typing')

def updateInventory():
    print('WBS warehouse,WAY warehouse, WBR warehouse')
    warCode = input('Which warehouse：[Enter code in Capital Letter]')
    try:
        if warCode == 'WBS':
            service=int(input('Which service you want:\n1.Add part\n2.Edit stock of parts'))
            try:
                if service == 1:
                    content = saveInventoryWBS()
                elif service == 2:
                    content = editQuantityWBS()
            except:
                print('Wrong Typing')
        if warCode == 'WAY':
            service=int(input('Which service you want:\n1.Add part\n2.Edit stock of parts'))
            try:
                if service == 1:
                    content = saveInventoryWAY()
                elif service == 2:
                    content = editQuantityWAY()
            except:
                print('Wrong Typing')
        if warCode == 'WBR':
            service=int(input('Which service you want:\n1.Add part\n2.Edit stock of parts'))
            try:
                if service == 1:
                    content = saveInventoryWBR()
                elif service == 2:
                    content = editQuantityWBR()
            except:
                print('Wrong Typing')
    except:
        print('Wrong Typing')

def saveSupplier():
    fileHandlerSup = open('supplierDetails.txt','a')
    print('-----Adding supplier details-----')
    supplierDetails = supplier()
    updateSup = update(supplierDetails , fileHandlerSup)
    fileHandlerSup.close()

def printWhole():
    try:
        fileHandlerESWBS = open('ES-WBS.txt','r')
        fileHandlerASWBS = open('AS-WBS.txt','r')
        fileHandlerSCWBS = open('SC-WBS.txt','r')
        fileHandlerESWAY = open('ES-WAY.txt','r')
        fileHandlerASWAY = open('AS-WAY.txt','r')
        fileHandlerSCWAY = open('SC-WAY.txt','r')
        fileHandlerESWBR = open('ES-WBR.txt','r')
        fileHandlerASWBR = open('AS-WBR.txt','r')
        fileHandlerSCWBR = open('SC-WBR.txt','r')
    except:
        print('cannot read')
    print('Name''\t''ID''\t''Quantity''\t''Supplier')
    for lineWBS in fileHandlerESWBS:
        print(lineWBS)
    for lineWBS in fileHandlerASWBS:
        print(lineWBS)
    for lineWBS in fileHandlerSCWBS:
        print(lineWBS)
    for lineWAY in fileHandlerESWAY:
        print(lineWAY)
    for lineWAY in fileHandlerASWAY:
        print(lineWAY)
    for lineWAY in fileHandlerSCWAY:
        print(lineWAY)
    for lineWBR in fileHandlerESWBR:
        print(lineWBR)
    for lineWBR in fileHandlerASWBR:
        print(lineWBR)
    for lineWBR in fileHandlerSCWBR:
        print(lineWBR)
    fileHandlerESWBS.close()
    fileHandlerASWBS.close()
    fileHandlerSCWBS.close()
    fileHandlerESWAY.close()
    fileHandlerASWAY.close()
    fileHandlerSCWAY.close()
    fileHandlerESWBR.close()
    fileHandlerASWBR.close()
    fileHandlerSCWBR.close()


def printLesser():
    try:
        fileHandlerESWBS = open('ES-WBS.txt','r')
        fileHandlerASWBS = open('AS-WBS.txt','r')
        fileHandlerSCWBS = open('SC-WBS.txt','r')
        fileHandlerESWAY = open('ES-WAY.txt','r')
        fileHandlerASWAY = open('AS-WAY.txt','r')
        fileHandlerSCWAY = open('SC-WAY.txt','r')
        fileHandlerESWBR = open('ES-WBR.txt','r')
        fileHandlerASWBR = open('AS-WBR.txt','r')
        fileHandlerSCWBR = open('SC-WBR.txt','r')
        lesser = ['0','1','2','3','4','5','6','7','8','9']
    except:
        print('read file error')
        
    print('Parts that quantity less then 10')
    print('Name''\t''ID''\t''Quantity''\t''Supplier')
    try:
        for lineWBS in fileHandlerESWBS:
            lineWBS = lineWBS.rstrip()
            newLineWBS = lineWBS.split("\t")
            if not newLineWBS[2] in lesser:
                continue
            print(lineWBS)
        for lineWBS in fileHandlerASWBS:
            lineWBS = lineWBS.rstrip()
            newLineWBS = lineWBS.split("\t")
            if not newLineWBS[2] in lesser:
                continue
            print(lineWBS)
        for lineWBS in fileHandlerSCWBS:
            lineWBS = lineWBS.rstrip()
            newLineWBS = lineWBS.split("\t")
            if not newLineWBS[2] in lesser:
                continue
            print(lineWBS)
        for lineWAY in fileHandlerESWAY:
            lineWAY = lineWAY.rstrip()
            newLineWAY = lineWAY.split("\t")
            if not newLineWAY[2] in lesser:
                continue
            print(lineWAY)
        for lineWAY in fileHandlerASWAY:
            lineWAY = lineWAY.rstrip()
            newLineWAY = lineWAY.split("\t")
            if not newLineWAY[2] in lesser:
                continue
            print(lineWAY)
        for lineWAY in fileHandlerSCWAY:
            lineWAY = lineWAY.rstrip()
            newLineWAY = lineWAY.split("\t")
            if not newLineWAY[2] in lesser:
                continue
            print(lineWAY)
        for lineWBR in fileHandlerESWBR:
            lineWBR = lineWBR.rstrip()
            newLineWBR = lineWBR.split("\t")
            if not newLineWBR[2] in lesser:
                continue
            print(lineWBR)
        
        for lineWBR in fileHandlerASWBR:
            lineWBR = lineWBR.rstrip()
            newLineWBR = lineWBR.split("\t")
            if not newLineWBR[2] in lesser:
                continue
            print(lineWBR)
        for lineWBR in fileHandlerSCWBR:
            lineWBR = lineWBR.rstrip()
            newLineWBR = lineWBR.split("\t")
            if not newLineWBR[2] in lesser:
                continue
            print(lineWBR)
    except:
        print('print error')
    fileHandlerESWBS.close()
    fileHandlerASWBS.close()
    fileHandlerSCWBS.close()
    fileHandlerESWAY.close()
    fileHandlerASWAY.close()
    fileHandlerSCWAY.close()
    fileHandlerESWBR.close()
    fileHandlerASWBR.close()
    fileHandlerSCWBR.close()         

def printWarehouseParts():
    warehouseChoosed=int(input('Enter number of warehouse you want to print(1.WBS,2.WAY,3.WBR)'))
    try:
        print('Name''\t''ID''\t''Quantity''\t''Supplier')
        if warehouseChoosed == 1:
            fileHandlerESWBS = open('ES-WBS.txt','r')
            fileHandlerASWBS = open('AS-WBS.txt','r')
            fileHandlerSCWBS = open('SC-WBS.txt','r')
            print('the parts of engine section(ES)')
            for lineWBS in fileHandlerESWBS:
                print(lineWBS)
            print('the parts of air-conditioning section(AS)')
            for lineWBS in fileHandlerASWBS:
                print(lineWBS)
            print('the parts of safety and cockpit section(SC)')
            for lineWBS in fileHandlerSCWBS:
                print(lineWBS)
            fileHandlerESWBS.close()
            fileHandlerASWBS.close()
            fileHandlerSCWBS.close()
        elif warehouseChoosed == 2:
            fileHandlerESWAY = open('ES-WAY.txt','r')
            fileHandlerASWAY = open('AS-WAY.txt','r')
            fileHandlerSCWAY = open('SC-WAY.txt','r')
            print('the parts of engine section(ES)')
            for lineWAY in fileHandlerESWAY:
                print(lineWAY)
            print('the parts of air-conditioning section(AS)')
            for lineWAY in fileHandlerASWAY:
                print(lineWAY)
            print('the parts of safety and cockpit section(SC)')
            for lineWAY in fileHandlerSCWAY:
                print(lineWAY)
            fileHandlerESWAY.close()
            fileHandlerASWAY.close()
            fileHandlerSCWAY.close()
        elif warehouseChoosed == 3:
            fileHandlerESWBR = open('ES-WBR.txt','r')
            fileHandlerASWBR = open('AS-WBR.txt','r')
            fileHandlerSCWBR = open('SC-WBR.txt','r')
            print('the parts of engine section(ES)')
            for lineWBR in fileHandlerESWBR:
                print(lineWBR)
            print('the parts of air-conditioning section(AS)')
            for lineWBR in fileHandlerASWBR:
                print(lineWBR)
            print('the parts of safety and cockpit section(SC)')
            for lineWBR in fileHandlerSCWBR:
                print(lineWBR)
            fileHandlerESWBR.close()
            fileHandlerASWBR.close()
            fileHandlerSCWBR.close()
    except:
        print('Wrong Typing')

def searchParts():
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
    try:
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
    except:
        print('Searching error')
    fileHandlerESWBS.close()
    fileHandlerASWBS.close()
    fileHandlerSCWBS.close()
    fileHandlerESWAY.close()
    fileHandlerASWAY.close()
    fileHandlerSCWAY.close()
    fileHandlerESWBR.close()
    fileHandlerASWBR.close()
    fileHandlerSCWBR.close()
    
def searchSupplier():
    try:
        supplierInfo = open('supplierDetails.txt','r')
    except:
        print('Error while open file')
    keywordOfSup = input('Enter the part that it supplied to search the company of supplier:[ex:ESWBS]')
    for lineSup in supplierInfo:
        lineSup = lineSup.rstrip()
        newLineSup = lineSup.split('\t')
        if not keywordOfSup in newLineSup:
            continue
        print(lineSup)
    supplierInfo.close()

def searchPartSupplied():
    try:
        supplierInfo = open('supplierDetails.txt','r')
    except:
        print('Error while open file')
    supName= input('Enter suppier\'s company name who want to search for:')
    for lineSup in supplierInfo:
        lineSup = lineSup.rstrip()
        newLineSup = lineSup.split('\t')
        if not supName in newLineSup:
            continue
        print(lineSup)
    supplierInfo.close()

def menu():
    print('Welcome to use Automobile Parts Inventory Management System')
    while True:
        choice=int(input('What you want to do?\n1.Update parts inventory\n2.Parts Inventory Tracking\n3.Search\n4.Exit'))
        try:
            if choice == 1:
                optionUpdate=int(input('What you want to do?\n1.update inventory\n2.update Supplier'))
                if optionUpdate == 1:
                    updateInventory()
                elif optionUpdate == 2:
                    saveSupplier()
                else:
                    print('wrong typing')
            elif choice == 2:
                optionUpdate2=int(input('What you want to do?\n1.print whole availabile quantity\n2.print all part that quantity less then 10 units\n3.print the whole parts of sections in warehouse'))
                if optionUpdate2 == 1:
                    printWhole()
                elif optionUpdate2 == 2:
                    printLesser()
                elif optionUpdate2 == 3:
                    printWarehouseParts()
                else:
                    print('wrong typing')
            elif choice == 3:
                optionUpdate3=int(input('What you want to do?\n1.search parts record\n2.search supplier detail\n3.search parts that supplied by supplier'))
                if optionUpdate3 == 1:
                    searchParts()
                elif optionUpdate3 == 2:
                    searchSupplier()
                elif optionUpdate3 == 3:
                    searchPartSupplied()
                else:
                    print('wrong typing')
            elif choice == 4:
                print('THANK YOU FOR USING SYSTEM!')
                break
        except:
            print('wrong typing')

menu()
