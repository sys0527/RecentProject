employee = 1
while employee <= 10:
    salary=int(input('Enter Salary:'))
    if salary>=9000:
        tax = 40
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
    netSalary = salary-(salary*tax/100)
    print('net salary = ' , '%.2f' % netSalary)
    employee = employee + 1
    
         
