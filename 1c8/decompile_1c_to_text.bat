echo off
REM Decompile epf- and cf-files to src/* directory
REM
REM Author: Alex Kalinin (login.hedin@gmail.com)
REM Kyrgyzstan, Bishkek, January 2016.
echo on
cd C:\prj\ws-soap-rails-1c\1c8
REM libs\V8Unpack.exe -PARSE ones_import_from_excel.epf  src/
rmdir /S /Q src_cf
libs\V8Unpack.exe -P src.cf  src_cf/
libs\V8Unpack.exe -P extforms\HTTPSendReceiveFile.epf extforms\HTTPSendReceiveFile_epf
pause