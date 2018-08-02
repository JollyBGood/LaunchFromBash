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
$WorkingDir = "C:\"

if (! (Get-Process -Name "vcxsrv" -ErrorAction SilentlyContinue)) {
    #    $VcXsrv = New-Object -ComObject Shell.Application
    #    $VcXsrv.ShellExecute("C:\Program Files\VcXsrv\config.xlaunch",
    #                         "","","open", 0)
    # Need to test below string before removing above "legacy" script.
    Start-Process -FilePath $VcXsrvFullPath -ArgumentList "-multiwindow"
}

$Args = @("-c","-l", "DISPLAY=:0 $Command")
$Bash = New-Object -ComObject Shell.Application
$Bash.ShellExecute("bash", $Args, $WorkingDir, "open", 0)