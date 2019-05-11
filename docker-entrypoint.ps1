Get-ChildItem $Env:DOCKER_ENTRYPOINT_DIR -ErrorAction Ignore | % { & $_.FullName }
if ($env:DOCKER_ENV_HIDEVARS) { $env:DOCKER_ENV_HIDEVARS.Split() | % { Remove-Item -Force env:$_ -ErrorAction Ignore } }
Invoke-Expression ($Args -Join " ")
