qualified =input('is you qualified?(y/n)')
experience=input('is your experience more than 5 years?:(y/n)')
age=input('is your age more than 30 years?:(y/n)')
if qualified == 'y':
    if experience == 'y':
        print('interview')
    else:
        if experience == 'n':
            print('keep in file')
else:
    if experience == 'y':
        if age=='y':
            print('interview')
        else:
            if age=='n':
                print('keep in file')
    else:
        if experience == 'n':
            print('reject')

