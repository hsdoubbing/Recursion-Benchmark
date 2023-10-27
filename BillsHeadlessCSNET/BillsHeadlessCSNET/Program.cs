// See https://aka.ms/new-console-template for more information

int countTheBills(int[] bills, int n, int sum) {
    if (sum == 0) {
        return 1;
    }
    else if (n <= 0 || sum < 0) {
        return 0;
    }
    else {
        return countTheBills(bills, n, sum - bills[n - 1]) + countTheBills(bills, n - 1, sum);
    }
}

int[] bills = { 1, 2, 5, 10, 20, 50, 100 };
int n = bills.Length;
int sum = 300;

Console.WriteLine("Input configured for: " + sum.ToString());
Console.WriteLine("Done: " + countTheBills(bills, n, sum).ToString());