@echo off

REM The directory to search for files to format
set dir= .

REM Find all .cpp and .h files in the directory and its subdirectories
for /r "%dir%" %%f in (*.cpp *.h) do (

    REM Run clang-format on each file
    clang-format.exe -style=file -fallback-style=Microsoft -i "%%f"
)

echo Formatting completed.
pause
