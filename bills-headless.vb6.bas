Attribute VB_Name = "MainModule"
Private Function CountTheBills(Bills, n, Sum)
    If Sum = 0 Then
        CountTheBills = 1
    ElseIf n <= 0 Or Sum < 0 Then
        CountTheBills = 0
    Else
        CountTheBills = CountTheBills(Bills, n, Sum - Bills(n - 1)) + CountTheBills(Bills, n - 1, Sum)
    End If
End Function

Sub Main()
    Dim FSO As New Scripting.FileSystemObject
    Dim Sin As Scripting.TextStream
    Dim Sout As Scripting.TextStream
    Dim StrWord As String
    
    Set Sin = FSO.GetStandardStream(StdIn)
    Set Sout = FSO.GetStandardStream(StdOut)
    
    'Start fun part
    Dim Bills, n, Sum
    Bills = Array(1, 2, 5, 10, 20, 50, 100)
    n = UBound(Bills) + 1
    Sum = 300
    
    Sout.WriteLine "Input configured for: " & Sum
    Sout.WriteLine "Done: " & CountTheBills(Bills, n, Sum)
    
    
    'End fun part
    
    Set Sout = Nothing
    Set Sin = Nothing
End Sub
