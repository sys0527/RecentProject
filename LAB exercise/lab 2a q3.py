mark =float(input('Please enter your marks:'))
if mark >= 0 and mark <=100:
    status = 'Pass'
    if mark >= 80:
        grade = 'A'
    else:
        if mark >= 70:
            grade = 'B'
        else:
            if mark >= 60:
                grade = 'C'
            else:
                if mark >= 50:
                    grade = 'D'
                else:
                    grade = 'F'
                    status = 'Fail'
    print('Your grade is :',grade)
    print('Your are ',status)
else:
    print('Invalid entry')
