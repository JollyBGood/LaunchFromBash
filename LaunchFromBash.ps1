# Parameter help description
Param(
    [string]$Command
)
# Change path to wherever you have VcXsrv installed.
$VcXsrvFullPath = "C:\Program Files\VcXsrv\VcXsrv.exe"

# Path you would like bash to open up to (in case it matters)
# "C:\" will be as /mnt/c in bash, otherwise you can leave it an emptystring, "",
# quotes need to be escaped as actual double-double quotes need to be passed
# as an argument if being left empty.
$WorkingDir = ""

if (! (Get-Process -Name "vcxsrv" -ErrorAction SilentlyContinue)) {
    Start-Process -FilePath $VcXsrvFullPath -ArgumentList "-multiwindow"
}

$Bash = New-Object -ComObject Shell.Application
$Bash.ShellExecute("bash", "-l -c `"DISPLAY=:0 $Command`"", $WorkingDir, "open", 0)
