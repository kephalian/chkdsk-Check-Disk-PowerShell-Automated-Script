# chkdsk-Check-Disk-PowerShell-Automated-Script
A PowerShell script to automate the process of Chkdsk /f to all available drives on the Windows System.
# Disk Check Script

This PowerShell script runs `chkdsk /f` on all available drives of type 3 (local disks). It is designed to be verbose, providing real-time updates on the progress of the disk check operation.

## Features

- Automatically detects all local disks.
- Runs `chkdsk /f` on each detected drive.
- Displays progress and exit code for each drive check.
- Provides user prompts to continue between checks.

## Requirements

- This script must be run with Administrator privileges to function correctly.
- PowerShell version 5.1 or later.

## Usage

1. **Open PowerShell as Administrator**:
    - Right-click on the PowerShell icon and select "Run as administrator".

2. **Run the Script**:
    - Save the script to a `.ps1` file (e.g., `CheckDisks.ps1`).
    - Navigate to the directory containing the script.
    - Execute the script by typing:
      ```powershell
      .\CheckDisks.ps1
      ```

3. **Follow Prompts**:
    - The script will prompt you to continue after each `chkdsk` operation is completed.

## Example
Running chkdsk /f on drive C: ... (progress updates) ... chkdsk completed on drive C:. Exit code: 0 Press Enter to continue


## Notes

- The script uses the `Get-WmiObject` cmdlet to retrieve information about the local disks.
- The `Start-Process` cmdlet runs `chkdsk.exe` with the `/f` flag to fix any detected errors.
- Progress updates and exit codes are displayed in the console to keep the user informed.
- Ensure all work is saved before running this script, as `chkdsk` may require a restart to complete the operation on some drives.

#See Troubleshooting guide here [https://github.com/kephalian/chkdsk-Check-Disk-PowerShell-Automated-Script/blob/main/Troubleshooting.md]
## License

This project is licensed under the GPL3 License, attribution is mandatory and derivative work must be released in same GPL3 license.

