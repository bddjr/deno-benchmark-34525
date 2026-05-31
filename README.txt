```
PS D:\code\bddjr\deno-benchmark-34525> .\test.bat

[Deno 2.8.1]

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs asciiSlice 50MB-ascii
asciiSlice 50MB-ascii: 4050ms

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs asciiSlice 50MB-latin1
asciiSlice 50MB-latin1: 3890ms

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs ucs2Slice 50MB-utf16le
ucs2Slice 50MB-utf16le: 3753ms

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs latin1Slice 50MB-latin1
latin1Slice 50MB-latin1: 3774ms

-------------------
[Deno PR 34525]

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-release.exe run --allow-all test.mjs asciiSlice 50MB-ascii
asciiSlice 50MB-ascii: 19.2ms

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-release.exe run --allow-all test.mjs asciiSlice 50MB-latin1
asciiSlice 50MB-latin1: 19.3ms

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-release.exe run --allow-all test.mjs ucs2Slice 50MB-utf16le
ucs2Slice 50MB-utf16le: 8.46ms

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-release.exe run --allow-all test.mjs latin1Slice 50MB-latin1
latin1Slice 50MB-latin1: 8.07ms

-------------------
[Node.js]

D:\code\bddjr\deno-benchmark-34525>node test.mjs asciiSlice 50MB-ascii
asciiSlice 50MB-ascii: 9.663ms

D:\code\bddjr\deno-benchmark-34525>node test.mjs asciiSlice 50MB-latin1
asciiSlice 50MB-latin1: 9.205ms

D:\code\bddjr\deno-benchmark-34525>node test.mjs ucs2Slice 50MB-utf16le
ucs2Slice 50MB-utf16le: 7.879ms

D:\code\bddjr\deno-benchmark-34525>node test.mjs latin1Slice 50MB-latin1
latin1Slice 50MB-latin1: 7.737ms
```
