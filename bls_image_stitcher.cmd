@echo off

:: Script variables
set base_filename="BLS_2022_2023"
set base_extension=.png

set output_file="%base_filename:"=%%base_extension%"
if exist %output_file% (
  echo Deleting existing stitched file...
  del /f %output_file%
)

echo Stitching images together...
convert -append "%base_filename:"=%[0-9][0-9]*" "%output_file:"=%"

echo Deleting image parts...
for /f "tokens=*" %%a in ('dir /b ^| findstr "%base_filename:"=%[0-9][0-9]*"') do (
  if "%%a" neq %output_file% (
    del /f "%%a"
  )
)