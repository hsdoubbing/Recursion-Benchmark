$commands = ".\bills-headless.ps1",
			"cscript bills-headless.vbs",
			"cscript bills-headless.js",
			".\bills-headless.vb6.exe",
			".\BillsHeadlessVBNET.exe",
			"py bills-headless.py",
			"php bills-headless.php",
			".\BillsHeadlessCSNET.exe",
			".\bills-headless.cpp.exe",
			".\bills-headless.c.exe"

$descriptions = "PowerShell",
				"Visual Basic Script (Windows Script Host)",
				"JScript (Windows Script Host)",
				"Classic Visual Basic (Visual Studio 6)",
				"Visual Basic.NET (Visual Studio 2022)",
				"Python 3",
				"PHP: Hypertext Preprocessor",
				"C#.NET (Visual Studio 2022)",
				"C++ (g++)",
				"C (gcc)"

for ($i = 0; $i -lt $commands.length; $i++) {
	Write-Host "`nRunning benchmark:" $descriptions[$i]
	if ($descriptions[$i] -ieq "PowerShell") {
		$choice = Read-Host "Really run the PowerShell benchmark?`nIt takes a very, VERY long time to complete. (Y/N)"
		if ($choice -ieq "N") {
			Write-Host "Skipping PowerShell benchmark.`n"
			continue
		}
		Write-Host "Continuing with PowerShell benchmark."
	}
	$timeTaken = Measure-Command {Invoke-Expression $commands[$i] | Out-Default}
	Write-Host "Took" $timeTaken.TotalSeconds "seconds"
}