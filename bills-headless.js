function countTheBills(bills, n, sum) {
	if (sum == 0) {
		return 1
	}
	else if (n <= 0 || sum < 0) {
		return 0
	}
	else {
		return countTheBills(bills, n, sum - bills[n - 1]) + countTheBills(bills, n - 1, sum)
	}
}

var bills = [1, 2, 5, 10, 20, 50, 100]
var n = bills.length
var sum = 300

WScript.Echo("Input configured for: " + sum)
WScript.Echo("Done: " + countTheBills(bills, n, sum))