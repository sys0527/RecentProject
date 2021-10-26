def diffOfTwoNumber(num1,num2):
    if num1 > num2:
        return num1 - num2
    else:
        return num2 - num1

firstNum =int(input('Enter first number: '))
secondNum =int(input('Enter second number: '))
diff = diffOfTwoNumber(firstNum, secondNum)
print('Difference of the given two numbers is:', diff)
