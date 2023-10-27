<?php
function countTheBills($bills, $n, $sum) {
    if ($sum == 0) {
        return 1;
    }
    elseif ($n <= 0 || $sum < 0) {
        return 0;
    }
    else {
        return countTheBills($bills, $n, $sum - $bills[$n - 1]) + countTheBills($bills, $n - 1, $sum);
    }
}

$bills = array(1, 2, 5, 10, 20, 50, 100);
$n = count($bills);
$sum = 300;

echo "Input configured for: " . $sum . "
";
echo "Done: " . countTheBills($bills, $n, $sum) . "
";
?>