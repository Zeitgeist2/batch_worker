REM searching for a String in *.txt files and export the filename in a protocol

@echo off & setlocal
   (for %%f in ("*.txt") do (
      type "%%~f" | findstr /c:"STRING" > NUL && (
      echo %%~f
      )
   )) > "Protokoll.txt"
