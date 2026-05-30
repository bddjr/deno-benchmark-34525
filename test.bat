@echo off
echo+
echo [Before]
@echo on
.\deno-2.8.1.exe run --allow-all test.mjs asciiSlice 50MB-ascii
.\deno-2.8.1.exe run --allow-all test.mjs asciiSlice 50MB-latin1
.\deno-2.8.1.exe run --allow-all test.mjs ucs2Slice 50MB-utf16le

@echo off
echo+
echo -------------------
echo [Now]
timeout /t 2 /NOBREAK >nul
@echo on
.\deno-pr34525-20260530-1035.exe run --allow-all test.mjs asciiSlice 50MB-ascii
.\deno-pr34525-20260530-1035.exe run --allow-all test.mjs asciiSlice 50MB-latin1
.\deno-pr34525-20260530-1035.exe run --allow-all test.mjs ucs2Slice 50MB-utf16le
