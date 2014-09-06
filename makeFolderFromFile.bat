@echo off

for /f "tokens=*" %%a in (file.txt) do (
	mkdir "%%a"
)