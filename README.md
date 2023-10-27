# Recursion Benchmark  
A crude performance benchmark of various programming languages.  
## Why?  
One of my professors wrote a simple recursive function to calculate how many different ways you can count back change for a given sum of money and an array of bill denominations. It's written a little weirdly since he wrote it during class, but I liked the way his code exercised a few essential parts of any language's syntax when written out. I kept it as-is for that reason.  
While I was sitting in class, for kicks, I decided to write his example program in VBS instead of Python. I immediately noticed how much slower VBS was, and thus this idea was born.  
I'll probably keep adding to it as I discover new languages that I can do dumb things in.  
## Benchmarks Included  
Each benchmark is hard-coded to calculate for $300.
- C, compiled with gcc
- C++, compiled with g++
- C#.NET, compiled with Visual Studio 2022
- JScript, for use with Windows Script Host
- PHP
- PowerShell (really, *REALLY* slow!)
- Python 3
- VBScript, for use with Windows Script Host
- Visual Basic 6, compiled on Windows 2000 in Visual Studio 6
- Visual Basic .NET, compiled with Visual Studio 2022  

The benchmarks run in order of estimated speed, starting with the slowest.  
PowerShell is *so* slow, in fact, that you will be asked if you even want to bother running that particular benchmark when the program starts.
## Building  
...is a mess. Not every file in here *needs* to be built, for one thing. Secondly, every different language has its own build process and its own requirements. Some of them even require ancient IDEs that you probably can't run on your modern computer.  
I would recommend just downloading the release, but I'm on Windows, so everything is compiled for that.  
Some notes:  
- JScript is not entirely compatible with JavaScript. That script is specifically written to run on Windows Script Host, and it won't run in another environment without modification.
- Visual Basic 6 wasn't really designed for console applications. To compile the VB6 file in this repository, you will have to build the executable file first, then relink it using LINK.EXE (included with VS6) to run in console mode.
## Running  
Open a PowerShell window in the folder where you have all the programs, and run `.\run-speedtests.ps1`.  
**PowerShell 7 is highly recommended!** PowerShell 5 is quite slow.
### Dependencies  
For execution, you must have cscript, PHP, and Python 3 available at the command line.  
On any modern Windows system, cscript should always be available. The other two will have to be installed.
