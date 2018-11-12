Get-ChildItem $Env:DOCKER_ENTRYPOINT_DIR -ErrorAction Ignore | % { & $_.FullName }
Invoke-Expression ($Args -Join " ")
