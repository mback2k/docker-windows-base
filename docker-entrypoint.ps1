Get-ChildItem "C:\ProgramData\docker-entrypoint.d" -ErrorAction Ignore | % { & $_.FullName }
Invoke-Expression ($Args -Join " ")
