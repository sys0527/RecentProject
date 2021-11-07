student = 1
while student <=3:
    total = 0
    subjects = 1
    while subjects <=5:
        marks=int(input('enter marks'))
        total = total + marks
        subjects = subjects +1
    average = total/5
    print(average)
    student = student +1
