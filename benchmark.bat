@echo off
echo+
echo [Deno 2.8.1]
@echo on
.\deno-2.8.1.exe run --allow-all test.mjs asciiSlice 50MB-ascii
.\deno-2.8.1.exe run --allow-all test.mjs asciiSlice 50MB-latin1
.\deno-2.8.1.exe run --allow-all test.mjs ucs2Slice 50MB-utf16le
.\deno-2.8.1.exe run --allow-all test.mjs latin1Slice 50MB-latin1
.\deno-2.8.1.exe run --allow-all test.mjs hexSlice 50MB-latin1

@echo off
echo+
echo -------------------
echo [Deno PR 34525]
timeout /t 2 /NOBREAK >nul
@echo on
.\deno-pr34525-release.exe run --allow-all test.mjs asciiSlice 50MB-ascii
.\deno-pr34525-release.exe run --allow-all test.mjs asciiSlice 50MB-latin1
.\deno-pr34525-release.exe run --allow-all test.mjs ucs2Slice 50MB-utf16le
.\deno-pr34525-release.exe run --allow-all test.mjs latin1Slice 50MB-latin1
.\deno-pr34525-release.exe run --allow-all test.mjs hexSlice 50MB-latin1

@echo off
echo+
echo -------------------
echo [Node.js]
timeout /t 2 /NOBREAK >nul
@echo on
node test.mjs asciiSlice 50MB-ascii
node test.mjs asciiSlice 50MB-latin1
node test.mjs ucs2Slice 50MB-utf16le
node test.mjs latin1Slice 50MB-latin1
node test.mjs hexSlice 50MB-latin1
