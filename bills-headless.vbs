Function CountTheBills(Bills, n, Sum)
	If Sum = 0 Then
		CountTheBills = 1
	ElseIf n <= 0 Or Sum < 0 Then
		CountTheBills = 0
	Else
		CountTheBills = CountTheBills(Bills, n, Sum - Bills(n - 1)) + CountTheBills(Bills, n - 1, Sum)
	End If
End Function

Dim Bills, n, sum

Bills = Array(1, 2, 5, 10, 20, 50, 100)
n = UBound(Bills) + 1
Sum = 300

WScript.Echo "Input configured for: " & Sum
WScript.Echo "Done: " & CountTheBills(Bills, n, Sum)