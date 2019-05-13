# escape=`

ARG BASE_TAG=1803

FROM microsoft/windowsservercore:${BASE_TAG}

ENV DOCKER_ENTRYPOINT_DIR C:\ProgramData\docker-entrypoint.d
ADD docker-entrypoint.ps1 C:\ProgramData\docker-entrypoint.ps1

SHELL ["powershell", "-command"]
ENTRYPOINT powershell -file C:\ProgramData\docker-entrypoint.ps1 --%
CMD ["powershell"]
