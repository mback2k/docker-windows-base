# escape=`

ARG BASE_TAG=1803

FROM mcr.microsoft.com/windowsservercore:${BASE_TAG}

SHELL ["powershell", "-command"]

ENV DOCKER_ENTRYPOINT_DIR C:\ProgramData\docker-entrypoint.d
ADD docker-entrypoint.ps1 C:\ProgramData\docker-entrypoint.ps1

ENTRYPOINT powershell -file C:\ProgramData\docker-entrypoint.ps1 --%
CMD ["powershell"]
