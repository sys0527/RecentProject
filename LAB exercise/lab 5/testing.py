fileHandler = open('C:/Users/Owner/Desktop/LAB exercise/lab 5/testing.txt','a+')
def informationOfFlight():
    fileHandler.write(input('Enter the flight schedules on Saturday :[ XX:XX | CODE ]'))
informationOfFlight()
fileHandler.close()
