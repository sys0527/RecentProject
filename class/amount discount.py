noOfDays=float(input('how many days has taken to make the payment:'))
paymentAmount = float(input('enter payment amount:'))
discount = 0

if noOfDays <=10:
    if paymentAmount >1000:
        discount = 4
    else:
        if paymentAmount >=500 and paymentAmount <= 1000:
            discount = 2
discountedAmount = paymentAmount-(paymentAmount*discount/100)
print('the payable amount is:',discountedAmount)
