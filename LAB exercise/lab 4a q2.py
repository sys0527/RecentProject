def averageOfThreeNum(num1,num2,num3):
    return (num1+num2+num3)/3

firstNum =int(input('Enter first number: '))
secondNum =int(input('Enter second number: '))
thirdNum = int(input('Enter third number:'))
average = averageOfThreeNum(firstNum,secondNum,thirdNum)
print('Average of the given three numbers is: ',average)
