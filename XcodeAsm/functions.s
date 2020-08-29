//
//  functions.s
//  XcodeAsm
//
//  Created by Peter Olsen on 7/4/19.
//  Copyright © 2019 Peter Olsen. All rights reserved.
//

.text

.global _and
.p2align 2
_and:
and    x0, x0, x1
ret

.global _or
.p2align 2
_or:
orr    x0, x0, x1
ret

.global _eor
.p2align 2
_eor:
eor    x0, x0, x1
ret

.global _getByte
.p2align 2
_getByte:
adrp   x9, _str@PAGE
add    x9, x9, _str@PAGEOFF
add    x9, x9, x0    // first argument is the index
eor    x0, x0, x0
ldurb  w0, [x9]
ret
_str:
.asciz "hello, world!"

.global _getDoubleWord
.p2align 2
_getDoubleWord:
adrp    x9, _arr@PAGE
add     x9, x9, _arr@PAGEOFF
lsl     x0, x0, 3
add     x9, x9, x0
ldur    x0, [x9]
ret
_arr:
.quad   1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024
