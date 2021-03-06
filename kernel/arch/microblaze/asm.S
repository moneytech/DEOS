/*
 * Copyright (c) 2015 Travis Geiselbrecht
 * Copyright 2018 The DEOS Authors
 */
#include <asm.h>

/* void microblaze_context_switch(
    struct microblaze_context_switch_frame *oldcs,
    struct microblaze_context_switch_frame *newcs); */
FUNCTION(microblaze_context_switch)
    # r5 = oldcs
    # r6 = newcs
    swi     r1, r5, 0x0
    swi     r2, r5, 0x4
    swi     r13, r5, 0x8
    swi     r14, r5, 0xc
    swi     r15, r5, 0x10
    swi     r16, r5, 0x14
    swi     r17, r5, 0x18
    swi     r18, r5, 0x1c
    swi     r19, r5, 0x20
    swi     r20, r5, 0x24
    swi     r21, r5, 0x28
    swi     r22, r5, 0x2c
    swi     r23, r5, 0x30
    swi     r24, r5, 0x34
    swi     r25, r5, 0x38
    swi     r26, r5, 0x3c
    swi     r27, r5, 0x40
    swi     r28, r5, 0x44
    swi     r29, r5, 0x48
    swi     r30, r5, 0x4c
    swi     r31, r5, 0x50

    # restore the new context
    lwi     r31, r6, 0x50
    lwi     r30, r6, 0x4c
    lwi     r29, r6, 0x48
    lwi     r28, r6, 0x44
    lwi     r27, r6, 0x40
    lwi     r26, r6, 0x3c
    lwi     r25, r6, 0x38
    lwi     r24, r6, 0x34
    lwi     r23, r6, 0x30
    lwi     r22, r6, 0x2c
    lwi     r21, r6, 0x28
    lwi     r20, r6, 0x24
    lwi     r19, r6, 0x20
    lwi     r18, r6, 0x1c
    lwi     r17, r6, 0x18
    lwi     r16, r6, 0x14
    lwi     r15, r6, 0x10
    lwi     r14, r6, 0xc
    lwi     r13, r6, 0x8
    lwi     r2, r6, 0x4
    lwi     r1, r6, 0x0

    rtsd    r15, 8
    nop

