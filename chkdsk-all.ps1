# Get all available drives
$drives = Get-WmiObject -Class Win32_LogicalDisk | Where-Object { $_.DriveType -eq 3 }

# Loop through each drive and run chkdsk /f
foreach ($drive in $drives) {
    $driveLetter = $drive.DeviceID
    Write-Host "Running chkdsk /f on drive $driveLetter" -ForegroundColor Yellow

    # Run chkdsk /f and display progress
    Start-Process -FilePath "chkdsk.exe" -ArgumentList "/f $driveLetter" -Wait -NoNewWindow -PassThru | ForEach-Object {
        Write-Progress -Activity "Running chkdsk on $driveLetter" -Status $_ -Id 1 -ParentId 0 -Verbose
    }

    # Display chkdsk exit code and wait for user input
    Write-Host "chkdsk completed on drive $driveLetter. Exit code: $($_.ExitCode)" -ForegroundColor Green
    Read-Host "Press Enter to continue"
}

# Pause to view output
Read-Host "Press Enter to exit"