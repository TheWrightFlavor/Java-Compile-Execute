@echo off
title JavaC&E
set jfile=NO_FILE
set jrun=NO_FILE
cls

:main
cls
echo 1)Compile Java
echo 2)Execute Java
echo.
echo.
set /p mchoice=What would you like to do?:

if %mchoice%==1 goto javacompiler
if %mchoice%==2 goto execute

color 0c
echo Sytem: INVALIDE. PLEASE CHOOSE A VALIDE RESPONSE.
pause
color
goto main

:javacompiler
cls
cd c:\users\owner\desktop
dir *.java
echo.
echo To go back to the MainMenu, type: main
echo DO NOT INCLUDE EXTENSION.
echo.
set /p jfile=Which file would you like to compile?:

cls
set yn=n
if %jfile%==main goto main
javac %jfile%.java
pause
echo If you do not wish to run this file, press 'enter'
set /p yn=Do you also need to run this code?(y/n):

if NOT %yn%==n goto execute
