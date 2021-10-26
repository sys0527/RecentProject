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

fileHandler = open('flight_schedules.txt','w')
schedules = flightSchedule()

for schedule in schedules:
    for item in schedule:
        fileHandler.write(item)
        fileHandler.write('\t')
    fileHandler.write('\n')
fileHandler.close()
