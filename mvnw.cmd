@echo off
rem Maven Wrapper for Windows

setlocal

set MAVEN_HOME=%~dp0\.mvn\wra
set MAVEN_OPTS=-Dmaven.repo.local=%~dp0\.mvn\repository

if not exist "%MAVEN_HOME%\bin\mvn" (
    echo "Maven wrapper not found. Please ensure the .mvn directory is present."
    exit /b 1
)

"%MAVEN_HOME%\bin\mvn" %* 

endlocal
exit /b %errorlevel%