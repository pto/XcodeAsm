//
//  do_it.s
//  XcodeAsm
//
//  Created by Peter Olsen on 7/4/19.
//  Copyright © 2019 Peter Olsen. All rights reserved.
//

.text

.global    _do_it
.p2align    2
_do_it:
sub    sp, sp, #16
str    x0, [sp, #8]
str    x1, [sp]
ldr    x0, [sp, #8]
ldr    x1, [sp]

and    x0, x0, x1

add    sp, sp, #16
ret
