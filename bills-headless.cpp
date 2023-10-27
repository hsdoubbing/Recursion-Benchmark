#include <iostream>

using namespace std;

int countTheBills(int bills[], int n, int sum) {
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

int main(void) {
	int bills[] = {1, 2, 5, 10, 20, 50, 100};
	int n = sizeof(bills) / sizeof(bills[0]);
	int sum = 300;
	
	cout<<"Input configured for: "<<sum<<endl;
	cout<<"Done: "<<countTheBills(bills, n, sum)<<endl;
	
	return 0;
}