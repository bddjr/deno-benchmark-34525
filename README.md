CPU: i5-10600KF  
RAM: 32G×2 DDR4 3333MT/s  

```
PS D:\code\bddjr\deno-benchmark-34525> .\benchmark.bat

[Deno 2.8.1]

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs asciiSlice 50MB-ascii
asciiSlice 50MB-ascii: 3899ms

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs asciiSlice 50MB-latin1
asciiSlice 50MB-latin1: 3986ms

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs ucs2Slice 50MB-utf16le
ucs2Slice 50MB-utf16le: 3455ms

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs latin1Slice 50MB-latin1
latin1Slice 50MB-latin1: 3796ms

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs hexSlice 50MB-latin1
hexSlice 50MB-latin1: 3880ms

-------------------
[Deno PR 34525]

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-release.exe run --allow-all test.mjs asciiSlice 50MB-ascii
asciiSlice 50MB-ascii: 9.37ms

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-release.exe run --allow-all test.mjs asciiSlice 50MB-latin1
asciiSlice 50MB-latin1: 9.04ms

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-release.exe run --allow-all test.mjs ucs2Slice 50MB-utf16le
ucs2Slice 50MB-utf16le: 8.72ms

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-release.exe run --allow-all test.mjs latin1Slice 50MB-latin1
latin1Slice 50MB-latin1: 8.93ms

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-release.exe run --allow-all test.mjs hexSlice 50MB-latin1
hexSlice 50MB-latin1: 16.6ms

-------------------
[Node.js]

D:\code\bddjr\deno-benchmark-34525>node test.mjs asciiSlice 50MB-ascii
asciiSlice 50MB-ascii: 9.768ms

D:\code\bddjr\deno-benchmark-34525>node test.mjs asciiSlice 50MB-latin1
asciiSlice 50MB-latin1: 9.026ms

D:\code\bddjr\deno-benchmark-34525>node test.mjs ucs2Slice 50MB-utf16le
ucs2Slice 50MB-utf16le: 8.224ms

D:\code\bddjr\deno-benchmark-34525>node test.mjs latin1Slice 50MB-latin1
latin1Slice 50MB-latin1: 7.684ms

D:\code\bddjr\deno-benchmark-34525>node test.mjs hexSlice 50MB-latin1
hexSlice 50MB-latin1: 39.209ms
```

---

## Setup

```
git clone --depth 1 https://github.com/bddjr/deno-benchmark-34525
cd deno-benchmark-34525

curl.exe --ssl-revoke-best-effort -Lo deno-2.8.1.zip https://dl.deno.land/release/v2.8.1/deno-x86_64-pc-windows-msvc.zip
tar.exe xf deno-2.8.1.zip
ren deno.exe deno-2.8.1.exe

git init deno-pr-34525
cd deno-pr-34525
git remote add origin https://github.com/denoland/deno.git
git fetch origin pull/34525/head:pr-34525
git checkout pr-34525
git submodule update --init --recursive
cargo test unit_node::buffer_test --release
cd ..
copy deno-pr-34525\target\release\deno.exe deno-pr34525-release.exe

.\benchmark.bat
```
