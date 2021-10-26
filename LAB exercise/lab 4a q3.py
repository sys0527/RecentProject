def add(num1,num2):
    return num1 + num2
def subtract(num1,num2):
    if num1 > num2:
        return num1 - num2
    else:
        return num2 - num1
def multiply(num1,num2):
    return num1 * num2
def devide(num1,num2):
    if num1 > num2:
        return num1 / num2
    else:
        return num2 / num1

operation = int(input(' Calculator Program \n  1.ADD\n  2.SUBTRACT\n  3.MULTIPLY\n  4.DIVIDE \n Choose the operation from the given options: '))
firstNum =int(input('Enter first number: '))
secondNum =int(input('Enter second number: '))
if operation == 1:
    total = add(firstNum,secondNum)
    print('sum of %d and %d is %d'%(firstNum,secondNum,total))
if operation == 2:
    minus= subtract(firstNum,secondNum)
    print('Difference of the given two numbers is',minus)
if operation == 3:
    multi= multiply(firstNum,secondNum)
    print('Product of  %d and %d is %d'%(firstNum,secondNum,multi))
if operation == 4:
    devided= devide(firstNum,secondNum)
    print('Devide of the given two numbers is',devided)
