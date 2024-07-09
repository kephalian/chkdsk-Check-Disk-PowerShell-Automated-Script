## Troubleshooting: Script Execution Disabled

If you encounter an error message stating that "running scripts is disabled 
on this system" when attempting to run the script, 
it means that PowerShell's execution policy is preventing 
the script from running. This section provides steps to diagnose and resolve this issue.

### Diagnosing the Issue

 **Error Message**: You may see an error similar to the following:
 ****File C:\path\to\script.ps1 cannot be loaded because running scripts is disabled on this system by the administrator.***

**Check Current Execution Policy**:
Open PowerShell as an administrator and run the following command to check your current execution policy:
```powershell
Get-ExecutionPolicy -List
```


This will display the execution policies set at different scopes (MachinePolicy, ```UserPolicy, Process, CurrentUser, LocalMachine```

.Resolving the IssueTo run the script, you need to change the execution policy. Here are the steps to do so:Open PowerShell as Administrator:Search for "PowerShell" in the Start menu.


Right-click on "Windows PowerShell" or "Windows PowerShell (Admin)" and select "Run as administrator".Set the Execution Policy:

Run the following command to change the execution policy to allow running scripts.


This example sets the policy to RemoteSigned, which allows local scripts to run and requires downloaded scripts to be signed by a trusted publisher:

```powershell 
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

You may be prompted to confirm the change. Type Y (for Yes) and press Enter.
Verify the Execution Policy:To
ensure the policy has been updated, 
run:


```powershell 
Get-ExecutionPolicy -ListVerify 
```

that the CurrentUser scope is set to RemoteSigned (or the desired policy).
