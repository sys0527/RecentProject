count = 0
while count == 0 :
    aMark = int(input('Enter your assignment marks: '))
    if aMark > 25:
        tMark = int(input('Enter your test marks: '))
        if tMark >25:
            eMark = int(input('Enter your exam marks: '))
            if eMark >50:
                print('You have passed the module')
            else:
                print('Resit exam ')
        else:
                print('Resit the test ')
    else:
                print('Redo the assignment')
    count = int(input('want continue? [enter 0 to next, 999 to end]'))
    if count == 999:
        break
