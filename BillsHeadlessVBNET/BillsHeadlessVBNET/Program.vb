Imports System

Module Program
    Function CountTheBills(Bills As Array, n As Integer, Sum As Integer)
        If Sum = 0 Then
            CountTheBills = 1
        ElseIf n <= 0 Or Sum < 0 Then
            CountTheBills = 0
        Else
            CountTheBills = CountTheBills(Bills, n, Sum - Bills(n - 1)) + CountTheBills(Bills, n - 1, Sum)
        End If
    End Function

    Sub Main(args As String())
        Dim Bills = New Integer() {1, 2, 5, 10, 20, 50, 100}
        Dim n = Bills.Length
        Dim Sum = 300

        Console.WriteLine("Input configured for: " & Sum)
        Console.WriteLine("Done: " & CountTheBills(Bills, n, Sum))
    End Sub
End Module
