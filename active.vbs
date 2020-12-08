Dim WshShell, FSO, secs

Set WshShell = WScript.CreateObject("WScript.Shell")
Set FSO = CreateObject("Scripting.FileSystemObject")

secs = 60
' Enter the path of the kill switch file.
' Below is the sample path
kill_file = "C:\Users\abhimdwi\Desktop\switch.txt"

Do While True
WScript.Sleep(secs * 1000)
if FSO.FileExists(kill_file) then exit do
WshShell.SendKeys "Hey"
Loop