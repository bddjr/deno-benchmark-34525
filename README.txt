```
PS D:\code\bddjr\deno-benchmark-34525> .\benchmark.bat

[Deno 2.8.1]

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs asciiSlice 50MB-ascii
asciiSlice 50MB-ascii: 3868ms

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs asciiSlice 50MB-latin1
asciiSlice 50MB-latin1: 3865ms

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs ucs2Slice 50MB-utf16le
ucs2Slice 50MB-utf16le: 3737ms

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs latin1Slice 50MB-latin1
latin1Slice 50MB-latin1: 3789ms

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs hexSlice 50MB-latin1
hexSlice 50MB-latin1: 4362ms

-------------------
[Deno PR 34525]

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-release.exe run --allow-all test.mjs asciiSlice 50MB-ascii
asciiSlice 50MB-ascii: 19.3ms

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-release.exe run --allow-all test.mjs asciiSlice 50MB-latin1
asciiSlice 50MB-latin1: 19.0ms

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-release.exe run --allow-all test.mjs ucs2Slice 50MB-utf16le
ucs2Slice 50MB-utf16le: 8.09ms

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-release.exe run --allow-all test.mjs latin1Slice 50MB-latin1
latin1Slice 50MB-latin1: 8.01ms

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-release.exe run --allow-all test.mjs hexSlice 50MB-latin1
hexSlice 50MB-latin1: 59.2ms

-------------------
[Node.js]

D:\code\bddjr\deno-benchmark-34525>node test.mjs asciiSlice 50MB-ascii
asciiSlice 50MB-ascii: 9.887ms

D:\code\bddjr\deno-benchmark-34525>node test.mjs asciiSlice 50MB-latin1
asciiSlice 50MB-latin1: 9.107ms

D:\code\bddjr\deno-benchmark-34525>node test.mjs ucs2Slice 50MB-utf16le
ucs2Slice 50MB-utf16le: 8.01ms

D:\code\bddjr\deno-benchmark-34525>node test.mjs latin1Slice 50MB-latin1
latin1Slice 50MB-latin1: 7.884ms

D:\code\bddjr\deno-benchmark-34525>node test.mjs hexSlice 50MB-latin1
hexSlice 50MB-latin1: 38.912ms
```
