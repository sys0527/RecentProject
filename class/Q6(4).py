marks=int(input('enter marks for first student,999 to end'))
while marks != 999:
    total = marks
    subjects = 2
    for subjucts in range(2,6,1):
        marks=int(input('enter marks:'))
        total = total + marks
    average = total/5
    print(average)
    marks=int(input('enter marks for second student,999 to end'))
