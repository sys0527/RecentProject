student =1
for student in range(1,4):
    total = 0
    subjects = 1
    while subjects <=5:
        marks=float(input('enter marks:'))
        total = total + marks
        subjects = subjects +1
    average = total/5
    print(average)

