```
PS D:\code\bddjr\deno-benchmark-34525> .\test.bat

[Before]

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs asciiSlice 50MB-ascii
asciiSlice 50MB-ascii: 3883ms

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs asciiSlice 50MB-latin1
asciiSlice 50MB-latin1: 3881ms

D:\code\bddjr\deno-benchmark-34525>.\deno-2.8.1.exe run --allow-all test.mjs ucs2Slice 50MB-utf16le
ucs2Slice 50MB-utf16le: 3427ms

-------------------
[Now]

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-20260530-1035.exe run --allow-all test.mjs asciiSlice 50MB-ascii
asciiSlice 50MB-ascii: 79.9ms

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-20260530-1035.exe run --allow-all test.mjs asciiSlice 50MB-latin1
asciiSlice 50MB-latin1: 382ms

D:\code\bddjr\deno-benchmark-34525>.\deno-pr34525-20260530-1035.exe run --allow-all test.mjs ucs2Slice 50MB-utf16le
ucs2Slice 50MB-utf16le: 1279ms
```
