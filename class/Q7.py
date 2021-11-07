richPpl = 0
totalTax = 0
salary = int(input('Enter salary:[-1 to end]'))
while salary != -1:
    if salary>=9000:
        tax = 40
        richPpl = richPpl +1
    else:
        if salary>=8000:
            tax = 16
        else:
            if salary>=7000:
                tax = 12
            else:
                if salary>=5000:
                    tax = 8
                else:
                    if salary>=3000:
                        tax = 6
                    else:
                        tax = 0
    empTax = salary*tax/100
    totalTax = totalTax + empTax
    netSalary = salary - empTax
    print ('net salary = ',netSalary)
    salary = int(input('Enter salary:[-1 to end]'))
    
print('number of employee earning more than 9000 is',richPpl)
print('total tax collect is %.2f'%totalTax)
         
