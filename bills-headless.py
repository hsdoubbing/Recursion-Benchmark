def countTheBills(bills, n, theSum):
    if theSum == 0:
        return 1
    elif n <= 0 or theSum < 0:
        return 0
    else:
        return countTheBills(bills, n, theSum - bills[n - 1]) + countTheBills(bills, n - 1, theSum)
        
bills = [1, 2, 5, 10, 20, 50, 100]
n = len(bills)
sum = 300

print("Input configured for: " + str(sum))
print("Done: " + str(countTheBills(bills, n, sum)))