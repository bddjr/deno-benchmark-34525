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
