name = input('enter your name:  ( " " to end)')
score = int(input('enter your exam score:  (999 to end)'))
totalScore = 0
numOfStudent = 0
while name != ' ' and score != 999:
    if score >= 0 or score <= 100:
        totalScore = totalScore + score
        numOfStudent = numOfStudent + 1
    else:
        print('wrong typing')
    name = input('enter your name:  ( " " to end)')
    score = int(input('enter your exam score:  (999 to end)'))
average = totalScore / numOfStudent
print('class average is ', average)

