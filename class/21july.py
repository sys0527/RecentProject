choice = int(input('Enter 1 to start, -1 to END'))
while choice ==1:
    total = 0
    for subjects in range(5):
        marks=int(input('enter marks:'))
        total = total + marks
    average = total/5
    print(average)
    choice = int(input('Enter 1 to start, -1 to END'))

