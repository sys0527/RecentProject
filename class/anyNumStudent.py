for student in range(3):
    marks=int(input('enter marks, -1 to end'))
    total = 0
    subject = 0
    while marks != -1:
        total = total + marks
        subject = subject + 1
        marks=int(input('enter marks,-1 to end'))
    if total > 0:
        average = total / subject
        print('average is:',average)
        print('total is:',total)
       

