function countTheBills($bills, $n, $sum) {
    if ($sum -eq 0) {
        return 1
    }
    elseif (($n -le 0) -or ($sum -lt 0)) {
        return 0
    }
    else {
        return ((countTheBills -bills $bills -n $n -sum ($sum - $bills[$n - 1])) + (countTheBills -bills $bills -n ($n - 1) -sum $sum))
    }
}

$bills = 1, 2, 5, 10, 20, 50, 100
$n = $bills.length
$sum = 300

Write-Host "Input configured for:" $sum
$result = countTheBills $bills $n $sum
Write-Host "Done:" $result