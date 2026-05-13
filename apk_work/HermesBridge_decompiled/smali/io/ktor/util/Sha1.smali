.class public final Lio/ktor/util/Sha1;
.super Ljava/lang/Object;
.source "HashFunction.kt"

# interfaces
.implements Lio/ktor/util/HashFunction;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\u000cH\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J\u0008\u0010\u0015\u001a\u00020\u0012H\u0002J \u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lio/ktor/util/Sha1;",
        "Lio/ktor/util/HashFunction;",
        "()V",
        "h0",
        "",
        "h1",
        "h2",
        "h3",
        "h4",
        "messageLength",
        "",
        "unprocessed",
        "",
        "unprocessedLimit",
        "words",
        "",
        "digest",
        "processChunk",
        "",
        "input",
        "pos",
        "reset",
        "update",
        "offset",
        "length",
        "ktor-utils"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private h0:I

.field private h1:I

.field private h2:I

.field private h3:I

.field private h4:I

.field private messageLength:J

.field private final unprocessed:[B

.field private unprocessedLimit:I

.field private final words:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lio/ktor/util/Sha1;->unprocessed:[B

    .line 25
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lio/ktor/util/Sha1;->words:[I

    .line 27
    const v0, 0x67452301

    iput v0, p0, Lio/ktor/util/Sha1;->h0:I

    .line 28
    const v0, -0x10325477

    iput v0, p0, Lio/ktor/util/Sha1;->h1:I

    .line 29
    const v0, -0x67452302

    iput v0, p0, Lio/ktor/util/Sha1;->h2:I

    .line 30
    const v0, 0x10325476

    iput v0, p0, Lio/ktor/util/Sha1;->h3:I

    .line 31
    const v0, -0x3c2d1e10

    iput v0, p0, Lio/ktor/util/Sha1;->h4:I

    .line 21
    return-void
.end method

.method private final processChunk([BI)V
    .locals 13
    .param p1, "input"    # [B
    .param p2, "pos"    # I

    .line 73
    iget-object v0, p0, Lio/ktor/util/Sha1;->words:[I

    .line 75
    .local v0, "words":[I
    move v1, p2

    .line 76
    .local v1, "currentPosition":I
    const/4 v2, 0x0

    .local v2, "w":I
    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 77
    nop

    .line 78
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "currentPosition":I
    .local v4, "currentPosition":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 79
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "currentPosition":I
    .local v5, "currentPosition":I
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v3, v4, 0x10

    .line 78
    or-int/2addr v1, v3

    .line 80
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "currentPosition":I
    .local v3, "currentPosition":I
    aget-byte v4, p1, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    .line 78
    or-int/2addr v1, v4

    .line 81
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "currentPosition":I
    .restart local v4    # "currentPosition":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 78
    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 76
    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_0

    .line 84
    .end local v2    # "w":I
    .end local v4    # "currentPosition":I
    .restart local v1    # "currentPosition":I
    :cond_0
    const/16 v2, 0x10

    .restart local v2    # "w":I
    :goto_1
    const/16 v3, 0x50

    if-ge v2, v3, :cond_1

    .line 85
    add-int/lit8 v3, v2, -0x3

    aget v3, v0, v3

    add-int/lit8 v4, v2, -0x8

    aget v4, v0, v4

    xor-int/2addr v3, v4

    add-int/lit8 v4, v2, -0xe

    aget v4, v0, v4

    xor-int/2addr v3, v4

    add-int/lit8 v4, v2, -0x10

    aget v4, v0, v4

    xor-int/2addr v3, v4

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lio/ktor/util/HashFunctionKt;->access$leftRotate(II)I

    move-result v3

    aput v3, v0, v2

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 88
    .end local v2    # "w":I
    :cond_1
    iget v2, p0, Lio/ktor/util/Sha1;->h0:I

    .line 89
    .local v2, "a":I
    iget v4, p0, Lio/ktor/util/Sha1;->h1:I

    .line 90
    .local v4, "b":I
    iget v5, p0, Lio/ktor/util/Sha1;->h2:I

    .line 91
    .local v5, "c":I
    iget v6, p0, Lio/ktor/util/Sha1;->h3:I

    .line 92
    .local v6, "d":I
    iget v7, p0, Lio/ktor/util/Sha1;->h4:I

    .line 94
    .local v7, "e":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v3, :cond_5

    .line 95
    nop

    .line 96
    const/16 v9, 0x14

    const/4 v10, 0x5

    if-ge v8, v9, :cond_2

    .line 97
    xor-int v9, v5, v6

    and-int/2addr v9, v4

    xor-int/2addr v9, v6

    .line 98
    .local v9, "f":I
    const v11, 0x5a827999

    .line 99
    .local v11, "k":I
    invoke-static {v2, v10}, Lio/ktor/util/HashFunctionKt;->access$leftRotate(II)I

    move-result v10

    add-int/2addr v10, v9

    add-int/2addr v10, v7

    add-int/2addr v10, v11

    aget v12, v0, v8

    add-int/2addr v10, v12

    .end local v9    # "f":I
    .end local v11    # "k":I
    goto :goto_3

    .line 101
    :cond_2
    const/16 v9, 0x28

    if-ge v8, v9, :cond_3

    .line 102
    xor-int v9, v4, v5

    xor-int/2addr v9, v6

    .line 103
    .restart local v9    # "f":I
    const v11, 0x6ed9eba1

    .line 104
    .restart local v11    # "k":I
    invoke-static {v2, v10}, Lio/ktor/util/HashFunctionKt;->access$leftRotate(II)I

    move-result v10

    add-int/2addr v10, v9

    add-int/2addr v10, v7

    add-int/2addr v10, v11

    aget v12, v0, v8

    add-int/2addr v10, v12

    .end local v9    # "f":I
    .end local v11    # "k":I
    goto :goto_3

    .line 106
    :cond_3
    const/16 v9, 0x3c

    if-ge v8, v9, :cond_4

    .line 107
    and-int v9, v4, v5

    and-int v11, v4, v6

    or-int/2addr v9, v11

    and-int v11, v5, v6

    or-int/2addr v9, v11

    .line 108
    .restart local v9    # "f":I
    const v11, -0x70e44324

    .line 109
    .restart local v11    # "k":I
    invoke-static {v2, v10}, Lio/ktor/util/HashFunctionKt;->access$leftRotate(II)I

    move-result v10

    add-int/2addr v10, v9

    add-int/2addr v10, v7

    add-int/2addr v10, v11

    aget v12, v0, v8

    add-int/2addr v10, v12

    .end local v9    # "f":I
    .end local v11    # "k":I
    goto :goto_3

    .line 112
    :cond_4
    xor-int v9, v4, v5

    xor-int/2addr v9, v6

    .line 113
    .restart local v9    # "f":I
    const v11, -0x359d3e2a    # -3715189.5f

    .line 114
    .restart local v11    # "k":I
    invoke-static {v2, v10}, Lio/ktor/util/HashFunctionKt;->access$leftRotate(II)I

    move-result v10

    add-int/2addr v10, v9

    add-int/2addr v10, v7

    add-int/2addr v10, v11

    aget v12, v0, v8

    add-int/2addr v10, v12

    .line 95
    .end local v9    # "f":I
    .end local v11    # "k":I
    :goto_3
    move v9, v10

    .line 118
    .local v9, "a2":I
    move v7, v6

    .line 119
    move v6, v5

    .line 120
    const/16 v10, 0x1e

    invoke-static {v4, v10}, Lio/ktor/util/HashFunctionKt;->access$leftRotate(II)I

    move-result v5

    .line 121
    move v4, v2

    .line 122
    move v2, v9

    .line 94
    .end local v9    # "a2":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 125
    .end local v8    # "i":I
    :cond_5
    iget v3, p0, Lio/ktor/util/Sha1;->h0:I

    add-int/2addr v3, v2

    iput v3, p0, Lio/ktor/util/Sha1;->h0:I

    .line 126
    iget v3, p0, Lio/ktor/util/Sha1;->h1:I

    add-int/2addr v3, v4

    iput v3, p0, Lio/ktor/util/Sha1;->h1:I

    .line 127
    iget v3, p0, Lio/ktor/util/Sha1;->h2:I

    add-int/2addr v3, v5

    iput v3, p0, Lio/ktor/util/Sha1;->h2:I

    .line 128
    iget v3, p0, Lio/ktor/util/Sha1;->h3:I

    add-int/2addr v3, v6

    iput v3, p0, Lio/ktor/util/Sha1;->h3:I

    .line 129
    iget v3, p0, Lio/ktor/util/Sha1;->h4:I

    add-int/2addr v3, v7

    iput v3, p0, Lio/ktor/util/Sha1;->h4:I

    .line 130
    return-void
.end method

.method private final reset()V
    .locals 8

    .line 188
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/ktor/util/Sha1;->messageLength:J

    .line 189
    iget-object v2, p0, Lio/ktor/util/Sha1;->unprocessed:[B

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/collections/ArraysKt;->fill$default([BBIIILjava/lang/Object;)V

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lio/ktor/util/Sha1;->unprocessedLimit:I

    .line 191
    iget-object v1, p0, Lio/ktor/util/Sha1;->words:[I

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    .line 193
    const v0, 0x67452301

    iput v0, p0, Lio/ktor/util/Sha1;->h0:I

    .line 194
    const v0, -0x10325477

    iput v0, p0, Lio/ktor/util/Sha1;->h1:I

    .line 195
    const v0, -0x67452302

    iput v0, p0, Lio/ktor/util/Sha1;->h2:I

    .line 196
    const v0, 0x10325476

    iput v0, p0, Lio/ktor/util/Sha1;->h3:I

    .line 197
    const v0, -0x3c2d1e10

    iput v0, p0, Lio/ktor/util/Sha1;->h4:I

    .line 198
    return-void
.end method


# virtual methods
.method public digest()[B
    .locals 31

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/ktor/util/Sha1;->unprocessed:[B

    .line 134
    .local v1, "unprocessed":[B
    iget v2, v0, Lio/ktor/util/Sha1;->unprocessedLimit:I

    .line 135
    .local v2, "unprocessedLimit":I
    iget-wide v3, v0, Lio/ktor/util/Sha1;->messageLength:J

    const/16 v5, 0x8

    int-to-long v6, v5

    mul-long/2addr v3, v6

    .line 137
    .local v3, "messageLengthBits":J
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "unprocessedLimit":I
    .local v6, "unprocessedLimit":I
    const/16 v7, -0x80

    aput-byte v7, v1, v2

    .line 138
    const/4 v2, 0x0

    const/16 v7, 0x38

    if-le v6, v7, :cond_0

    .line 139
    const/16 v8, 0x40

    invoke-static {v1, v2, v6, v8}, Lkotlin/collections/ArraysKt;->fill([BBII)V

    .line 140
    invoke-direct {v0, v1, v2}, Lio/ktor/util/Sha1;->processChunk([BI)V

    .line 141
    invoke-static {v1, v2, v2, v6}, Lkotlin/collections/ArraysKt;->fill([BBII)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {v1, v2, v6, v7}, Lkotlin/collections/ArraysKt;->fill([BBII)V

    .line 145
    :goto_0
    ushr-long v8, v3, v7

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 146
    const/16 v7, 0x30

    ushr-long v7, v3, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    const/16 v8, 0x39

    aput-byte v7, v1, v8

    .line 147
    const/16 v7, 0x28

    ushr-long v7, v3, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    const/16 v8, 0x3a

    aput-byte v7, v1, v8

    .line 148
    const/16 v7, 0x20

    ushr-long v7, v3, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    const/16 v8, 0x3b

    aput-byte v7, v1, v8

    .line 149
    const/16 v7, 0x18

    ushr-long v7, v3, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    const/16 v8, 0x3c

    aput-byte v7, v1, v8

    .line 150
    const/16 v7, 0x10

    ushr-long v8, v3, v7

    long-to-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x3d

    aput-byte v8, v1, v9

    .line 151
    ushr-long v8, v3, v5

    long-to-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x3e

    aput-byte v8, v1, v9

    .line 152
    long-to-int v8, v3

    int-to-byte v8, v8

    const/16 v9, 0x3f

    aput-byte v8, v1, v9

    .line 153
    invoke-direct {v0, v1, v2}, Lio/ktor/util/Sha1;->processChunk([BI)V

    .line 155
    iget v8, v0, Lio/ktor/util/Sha1;->h0:I

    .line 156
    .local v8, "a":I
    iget v9, v0, Lio/ktor/util/Sha1;->h1:I

    .line 157
    .local v9, "b":I
    iget v10, v0, Lio/ktor/util/Sha1;->h2:I

    .line 158
    .local v10, "c":I
    iget v11, v0, Lio/ktor/util/Sha1;->h3:I

    .line 159
    .local v11, "d":I
    iget v12, v0, Lio/ktor/util/Sha1;->h4:I

    .line 161
    .local v12, "e":I
    invoke-direct/range {p0 .. p0}, Lio/ktor/util/Sha1;->reset()V

    .line 164
    shr-int/lit8 v13, v8, 0x18

    int-to-byte v13, v13

    .line 165
    shr-int/lit8 v14, v8, 0x10

    int-to-byte v14, v14

    .line 164
    nop

    .line 166
    shr-int/lit8 v15, v8, 0x8

    int-to-byte v15, v15

    .line 164
    nop

    .line 167
    int-to-byte v7, v8

    .line 164
    nop

    .line 168
    shr-int/lit8 v5, v9, 0x18

    int-to-byte v5, v5

    .line 164
    nop

    .line 169
    shr-int/lit8 v2, v9, 0x10

    int-to-byte v2, v2

    .line 164
    nop

    .line 170
    shr-int/lit8 v0, v9, 0x8

    int-to-byte v0, v0

    .line 164
    nop

    .line 171
    move-object/from16 v17, v1

    .end local v1    # "unprocessed":[B
    .local v17, "unprocessed":[B
    int-to-byte v1, v9

    .line 164
    nop

    .line 172
    move-wide/from16 v18, v3

    .end local v3    # "messageLengthBits":J
    .local v18, "messageLengthBits":J
    shr-int/lit8 v3, v10, 0x18

    int-to-byte v3, v3

    .line 164
    nop

    .line 173
    shr-int/lit8 v4, v10, 0x10

    int-to-byte v4, v4

    .line 164
    nop

    .line 174
    move/from16 v20, v6

    .end local v6    # "unprocessedLimit":I
    .local v20, "unprocessedLimit":I
    shr-int/lit8 v6, v10, 0x8

    int-to-byte v6, v6

    .line 164
    nop

    .line 175
    move/from16 v21, v8

    .end local v8    # "a":I
    .local v21, "a":I
    int-to-byte v8, v10

    .line 164
    nop

    .line 176
    move/from16 v22, v9

    .end local v9    # "b":I
    .local v22, "b":I
    shr-int/lit8 v9, v11, 0x18

    int-to-byte v9, v9

    .line 164
    nop

    .line 177
    move/from16 v23, v10

    .end local v10    # "c":I
    .local v23, "c":I
    shr-int/lit8 v10, v11, 0x10

    int-to-byte v10, v10

    .line 164
    nop

    .line 178
    move/from16 v24, v10

    shr-int/lit8 v10, v11, 0x8

    int-to-byte v10, v10

    .line 164
    nop

    .line 179
    move/from16 v25, v10

    int-to-byte v10, v11

    .line 164
    nop

    .line 180
    move/from16 v26, v11

    .end local v11    # "d":I
    .local v26, "d":I
    shr-int/lit8 v11, v12, 0x18

    int-to-byte v11, v11

    .line 164
    nop

    .line 181
    move/from16 v27, v11

    shr-int/lit8 v11, v12, 0x10

    int-to-byte v11, v11

    .line 164
    nop

    .line 182
    move/from16 v28, v11

    shr-int/lit8 v11, v12, 0x8

    int-to-byte v11, v11

    .line 164
    nop

    .line 183
    move/from16 v29, v11

    int-to-byte v11, v12

    move/from16 v30, v12

    .end local v12    # "e":I
    .local v30, "e":I
    const/16 v12, 0x14

    new-array v12, v12, [B

    const/16 v16, 0x0

    aput-byte v13, v12, v16

    const/4 v13, 0x1

    aput-byte v14, v12, v13

    const/4 v13, 0x2

    aput-byte v15, v12, v13

    const/4 v13, 0x3

    aput-byte v7, v12, v13

    const/4 v7, 0x4

    aput-byte v5, v12, v7

    const/4 v5, 0x5

    aput-byte v2, v12, v5

    const/4 v2, 0x6

    aput-byte v0, v12, v2

    const/4 v0, 0x7

    aput-byte v1, v12, v0

    const/16 v0, 0x8

    aput-byte v3, v12, v0

    const/16 v0, 0x9

    aput-byte v4, v12, v0

    const/16 v0, 0xa

    aput-byte v6, v12, v0

    const/16 v0, 0xb

    aput-byte v8, v12, v0

    const/16 v0, 0xc

    aput-byte v9, v12, v0

    const/16 v0, 0xd

    aput-byte v24, v12, v0

    const/16 v0, 0xe

    aput-byte v25, v12, v0

    const/16 v0, 0xf

    aput-byte v10, v12, v0

    const/16 v0, 0x10

    aput-byte v27, v12, v0

    const/16 v0, 0x11

    aput-byte v28, v12, v0

    const/16 v0, 0x12

    aput-byte v29, v12, v0

    const/16 v0, 0x13

    aput-byte v11, v12, v0

    .line 164
    nop

    .line 163
    return-object v12
.end method

.method public update([BII)V
    .locals 7
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-wide v0, p0, Lio/ktor/util/Sha1;->messageLength:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/ktor/util/Sha1;->messageLength:J

    .line 35
    move v0, p2

    .line 36
    .local v0, "pos":I
    add-int v1, v0, p3

    .line 37
    .local v1, "limit":I
    iget-object v2, p0, Lio/ktor/util/Sha1;->unprocessed:[B

    .line 38
    .local v2, "unprocessed":[B
    iget v3, p0, Lio/ktor/util/Sha1;->unprocessedLimit:I

    .line 40
    .local v3, "unprocessedLimit":I
    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 41
    add-int v5, v3, p3

    const/16 v6, 0x40

    if-ge v5, v6, :cond_0

    .line 43
    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 44
    add-int v4, v3, p3

    iput v4, p0, Lio/ktor/util/Sha1;->unprocessedLimit:I

    .line 45
    return-void

    .line 49
    :cond_0
    rsub-int/lit8 v5, v3, 0x40

    .line 50
    .local v5, "consumeByteCount":I
    add-int v6, v0, v5

    invoke-static {p1, v2, v3, v0, v6}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 51
    invoke-direct {p0, v2, v4}, Lio/ktor/util/Sha1;->processChunk([BI)V

    .line 52
    iput v4, p0, Lio/ktor/util/Sha1;->unprocessedLimit:I

    .line 53
    add-int/2addr v0, v5

    .line 56
    .end local v5    # "consumeByteCount":I
    :cond_1
    :goto_0
    if-ge v0, v1, :cond_3

    .line 57
    add-int/lit8 v5, v0, 0x40

    .line 59
    .local v5, "nextPos":I
    if-le v5, v1, :cond_2

    .line 61
    invoke-static {p1, v2, v4, v0, v1}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 62
    sub-int v4, v1, v0

    iput v4, p0, Lio/ktor/util/Sha1;->unprocessedLimit:I

    .line 63
    return-void

    .line 67
    :cond_2
    invoke-direct {p0, p1, v0}, Lio/ktor/util/Sha1;->processChunk([BI)V

    .line 68
    move v0, v5

    .end local v5    # "nextPos":I
    goto :goto_0

    .line 70
    :cond_3
    return-void
.end method
