student =1
for student in range(1,4):
    total = 0
    subjects = 1
    for subjects in range(1,6,1):
        marks=float(input('enter marks:'))
        total = total + marks
    average = total/5
    print(average)

