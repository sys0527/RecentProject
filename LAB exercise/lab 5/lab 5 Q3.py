def flightSchedule():
    schedulesLocal = []
    for i in range(5):
        schedule = []
        flightNum = input('Enter flight number: ')
        schedule.append(flightNum)
        depTime = input('Enter departure time: ')
        schedule.append(depTime)
        arrTime = input("Enter arrival time: ")
        schedule.append(arrTime)
        depCity = input("Departure City: ")
        schedule.append(depCity)
        arrCity = input("Arrival City: ")
        schedule.append(arrCity)
        schedulesLocal.append(schedule)
    return schedulesLocal

def saveFlightSchedules():
    try:
        fileHandler = open('flight_schedules.txt','w')
    except:
        print('File cannot be opened')
        exit()
        
    schedules = flightSchedule()
    
    for schedule in schedules:
        for item in schedule:
            fileHandler.write(item)
            fileHandler.write('\t')
        fileHandler.write('\n')
    fileHandler.close()

def printFlightSchedules():
    try:
        fileHandler = open('flight_schedules.txt','r')
    except:
        print('File cannot be opened')
        exit()
    for line in fileHandler:
        print(line)
    fileHandler.close()

def searchFlightSchedules():
    try:
        fileHandler = open('flight_schedules.txt','r')
    except:
        print('File cannot be opened')
        exit()

    search = input('Type the things that you want to search:')

    for line in fileHandler:
        line = line.rstrip()
        if not search.lower() in line.lower():
            continue
        print(line)
    fileHandler.close()

def menu():
    print('Welcome to use the system!')
    while True: 
        print('1.save schedules\n2.print all Flight schedules\n3.Search for Flight Schedules\n4.Exit')
        choice = int(input('choose the service you want:[enter number [1-4]'))
        if choice == 1:
            saveFlightSchedules()
        elif choice == 2:
            printFlightSchedules()
        elif choice == 3:
            searchFlightSchedules()
        elif choice == 4:
            print('Thank you for using!')
            break
        else:
            print('Invalid input')
            
menu()
