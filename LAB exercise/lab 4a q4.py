import math
def diameter(r):
    return r*2
def circumference(r):
    return 2*3.14159*r*r
def area(r):
    return 3.14159*r**2
def menu():
    choice = int(input('1.diameter  \n2.circumference  \n3.area  \nenter which function you want to use:'))
    radius = float(input('Enter the radius of a circle:'))
    if choice == 1:
        print('The diameter is', diameter(radius))
    elif choice == 2:
        print('The circumference is', circumference(radius))
    elif choice == 3:
        print('The area is', area(radius))
    else:
        print('Wrong typing,please enter number 1 to 3')

menu()
    
