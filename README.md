```
PS D:\code\bddjr\deno-benchmark-34525> .\benchmark.bat

[Deno 2.8.1]

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs asciiSlice 50MB-ascii
asciiSlice 50MB-ascii: 3761ms

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs asciiSlice 50MB-latin1
asciiSlice 50MB-latin1: 3733ms

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs ucs2Slice 50MB-utf16le
ucs2Slice 50MB-utf16le: 3560ms

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs latin1Slice 50MB-latin1
latin1Slice 50MB-latin1: 3655ms

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs hexSlice 50MB-latin1
hexSlice 50MB-latin1: 3686ms

-------------------
[Deno PR 34525]

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-release.exe run --allow-all test.mjs asciiSlice 50MB-ascii
asciiSlice 50MB-ascii: 9.19ms

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-release.exe run --allow-all test.mjs asciiSlice 50MB-latin1
asciiSlice 50MB-latin1: 9.26ms

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-release.exe run --allow-all test.mjs ucs2Slice 50MB-utf16le
ucs2Slice 50MB-utf16le: 8.36ms

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-release.exe run --allow-all test.mjs latin1Slice 50MB-latin1
latin1Slice 50MB-latin1: 8.38ms

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-release.exe run --allow-all test.mjs hexSlice 50MB-latin1
hexSlice 50MB-latin1: 15.8ms

-------------------
[Node.js]

D:\code\bddjr\deno-benchmark-34525>node test.mjs asciiSlice 50MB-ascii
asciiSlice 50MB-ascii: 9.527ms

D:\code\bddjr\deno-benchmark-34525>node test.mjs asciiSlice 50MB-latin1
asciiSlice 50MB-latin1: 8.875ms

D:\code\bddjr\deno-benchmark-34525>node test.mjs ucs2Slice 50MB-utf16le
ucs2Slice 50MB-utf16le: 7.499ms

D:\code\bddjr\deno-benchmark-34525>node test.mjs latin1Slice 50MB-latin1
latin1Slice 50MB-latin1: 7.762ms

D:\code\bddjr\deno-benchmark-34525>node test.mjs hexSlice 50MB-latin1
hexSlice 50MB-latin1: 37.563ms
```
