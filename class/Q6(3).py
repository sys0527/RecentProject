marks=int(input('enter marks for first student,999 to end'))
while marks != 999:
    total = marks
    subjects = 1
    while subjects <=4:
        marks=int(input('enter marks:'))
        total = total + marks
        subjects = subjects +1
    average = total/5
    print(average)
    marks=int(input('enter marks for second student,999 to end'))
