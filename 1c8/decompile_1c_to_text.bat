echo off
REM Decompile epf- and cf-files to src/* directory
REM
REM Author: Alex Kalinin (login.hedin@gmail.com)
REM Kyrgyzstan, Bishkek, March 2014.
echo on
cd C:\prj\ws-soap-rails-1c\1c8\
REM libs\V8Unpack.exe -PARSE ones_import_from_excel.epf  src/
libs\V8Unpack.exe -PARSE src.cf  src_cf/
pause