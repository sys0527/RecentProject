student =1
while student <=3:
    total = 0
    subjects = 1
    for subjects in range(1,6,1):
        marks=float(input('enter marks:'))
        total = total + marks
    average = total/5
    print(average)
    student = student+1

