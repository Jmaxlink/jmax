.class final Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# direct methods
.method private static incompleteStateFor(I)I
    .locals 1
    .param p0, "byte1"    # I

    .line 323
    const/16 v0, -0xc

    if-le p0, v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method private static incompleteStateFor(II)I
    .locals 1
    .param p0, "byte1"    # I
    .param p1, "byte2"    # I

    .line 328
    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private static incompleteStateFor(III)I
    .locals 2
    .param p0, "byte1"    # I
    .param p1, "byte2"    # I
    .param p2, "byte3"    # I

    .line 334
    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-gt p1, v0, :cond_1

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0x10

    xor-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private static incompleteStateFor([BII)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .line 341
    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    .line 342
    .local v0, "byte1":I
    sub-int v1, p2, p1

    packed-switch v1, :pswitch_data_0

    .line 346
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 345
    :pswitch_0
    aget-byte v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    invoke-static {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->incompleteStateFor(III)I

    move-result v1

    return v1

    .line 344
    :pswitch_1
    aget-byte v1, p0, p1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->incompleteStateFor(II)I

    move-result v1

    return v1

    .line 343
    :pswitch_2
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->incompleteStateFor(I)I

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isValidUtf8([B)Z
    .locals 2
    .param p0, "bytes"    # [B

    .line 109
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v0

    return v0
.end method

.method public static isValidUtf8([BII)Z
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .line 122
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->partialIsValidUtf8([BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static partialIsValidUtf8(I[BII)I
    .locals 7
    .param p0, "state"    # I
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "limit"    # I

    .line 145
    if-eqz p0, :cond_11

    .line 153
    if-lt p2, p3, :cond_0

    .line 154
    return p0

    .line 156
    :cond_0
    int-to-byte v0, p0

    .line 158
    .local v0, "byte1":I
    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_3

    .line 163
    const/16 v1, -0x3e

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "index":I
    .local v1, "index":I
    aget-byte p2, p1, p2

    if-le p2, v3, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v1

    goto/16 :goto_4

    .line 166
    .end local v1    # "index":I
    .restart local p2    # "index":I
    :cond_2
    :goto_0
    return v2

    .line 168
    :cond_3
    const/16 v4, -0x10

    if-ge v0, v4, :cond_a

    .line 172
    shr-int/lit8 v4, p0, 0x8

    not-int v4, v4

    int-to-byte v4, v4

    .line 173
    .local v4, "byte2":I
    if-nez v4, :cond_5

    .line 174
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "index":I
    .local v5, "index":I
    aget-byte v4, p1, p2

    .line 175
    if-lt v5, p3, :cond_4

    .line 176
    invoke-static {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p2

    return p2

    .line 175
    :cond_4
    move p2, v5

    .line 179
    .end local v5    # "index":I
    .restart local p2    # "index":I
    :cond_5
    if-gt v4, v3, :cond_9

    const/16 v5, -0x60

    if-ne v0, v1, :cond_6

    if-lt v4, v5, :cond_9

    :cond_6
    const/16 v1, -0x13

    if-ne v0, v1, :cond_7

    if-ge v4, v5, :cond_9

    :cond_7
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "index":I
    .restart local v1    # "index":I
    aget-byte p2, p1, p2

    if-le p2, v3, :cond_8

    move p2, v1

    goto :goto_1

    .line 188
    .end local v4    # "byte2":I
    :cond_8
    move p2, v1

    goto :goto_4

    .line 186
    .end local v1    # "index":I
    .restart local v4    # "byte2":I
    .restart local p2    # "index":I
    :cond_9
    :goto_1
    return v2

    .line 192
    .end local v4    # "byte2":I
    :cond_a
    shr-int/lit8 v1, p0, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    .line 193
    .local v1, "byte2":I
    const/4 v4, 0x0

    .line 194
    .local v4, "byte3":I
    if-nez v1, :cond_c

    .line 195
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "index":I
    .restart local v5    # "index":I
    aget-byte v1, p1, p2

    .line 196
    if-lt v5, p3, :cond_b

    .line 197
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p2

    return p2

    .line 196
    :cond_b
    move p2, v5

    goto :goto_2

    .line 200
    .end local v5    # "index":I
    .restart local p2    # "index":I
    :cond_c
    shr-int/lit8 v5, p0, 0x10

    int-to-byte v4, v5

    .line 202
    :goto_2
    if-nez v4, :cond_e

    .line 203
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "index":I
    .restart local v5    # "index":I
    aget-byte v4, p1, p2

    .line 204
    if-lt v5, p3, :cond_d

    .line 205
    invoke-static {v0, v1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->incompleteStateFor(III)I

    move-result p2

    return p2

    .line 204
    :cond_d
    move p2, v5

    .line 213
    .end local v5    # "index":I
    .restart local p2    # "index":I
    :cond_e
    if-gt v1, v3, :cond_10

    shl-int/lit8 v5, v0, 0x1c

    add-int/lit8 v6, v1, 0x70

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1e

    if-nez v5, :cond_10

    if-gt v4, v3, :cond_10

    add-int/lit8 v5, p2, 0x1

    .end local p2    # "index":I
    .restart local v5    # "index":I
    aget-byte p2, p1, p2

    if-le p2, v3, :cond_f

    move p2, v5

    goto :goto_3

    :cond_f
    move p2, v5

    goto :goto_4

    .line 223
    .end local v5    # "index":I
    .restart local p2    # "index":I
    :cond_10
    :goto_3
    return v2

    .line 228
    .end local v0    # "byte1":I
    .end local v1    # "byte2":I
    .end local v4    # "byte3":I
    :cond_11
    :goto_4
    invoke-static {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->partialIsValidUtf8([BII)I

    move-result v0

    return v0
.end method

.method public static partialIsValidUtf8([BII)I
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .line 252
    nop

    :goto_0
    if-ge p1, p2, :cond_0

    aget-byte v0, p0, p1

    if-ltz v0, :cond_0

    .line 253
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 256
    :cond_0
    if-lt p1, p2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->partialIsValidUtf8NonAscii([BII)I

    move-result v0

    :goto_1
    return v0
.end method

.method private static partialIsValidUtf8NonAscii([BII)I
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .line 267
    nop

    :goto_0
    if-lt p1, p2, :cond_0

    .line 268
    const/4 v0, 0x0

    return v0

    .line 270
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    aget-byte p1, p0, p1

    move v1, p1

    .local v1, "byte1":I
    if-gez p1, :cond_d

    .line 272
    const/16 p1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v1, p1, :cond_3

    .line 275
    if-lt v0, p2, :cond_1

    .line 276
    return v1

    .line 281
    :cond_1
    const/16 p1, -0x3e

    if-lt v1, p1, :cond_2

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    aget-byte v0, p0, v0

    if-le v0, v3, :cond_b

    move v0, p1

    .line 283
    .end local p1    # "index":I
    .restart local v0    # "index":I
    :cond_2
    return v2

    .line 285
    :cond_3
    const/16 v4, -0x10

    if-ge v1, v4, :cond_8

    .line 288
    add-int/lit8 v4, p2, -0x1

    if-lt v0, v4, :cond_4

    .line 289
    invoke-static {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->incompleteStateFor([BII)I

    move-result p1

    return p1

    .line 291
    :cond_4
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "index":I
    .local v4, "index":I
    aget-byte v0, p0, v0

    move v5, v0

    .local v5, "byte2":I
    if-gt v0, v3, :cond_7

    const/16 v0, -0x60

    if-ne v1, p1, :cond_5

    if-lt v5, v0, :cond_7

    :cond_5
    const/16 p1, -0x13

    if-ne v1, p1, :cond_6

    if-ge v5, v0, :cond_7

    :cond_6
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "index":I
    .restart local p1    # "index":I
    aget-byte v0, p0, v4

    if-le v0, v3, :cond_b

    move v4, p1

    .line 298
    .end local p1    # "index":I
    .restart local v4    # "index":I
    :cond_7
    return v2

    .line 303
    .end local v4    # "index":I
    .end local v5    # "byte2":I
    .restart local v0    # "index":I
    :cond_8
    add-int/lit8 p1, p2, -0x2

    if-lt v0, p1, :cond_9

    .line 304
    invoke-static {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->incompleteStateFor([BII)I

    move-result p1

    return p1

    .line 306
    :cond_9
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    aget-byte v0, p0, v0

    move v4, v0

    .local v4, "byte2":I
    if-gt v0, v3, :cond_a

    shl-int/lit8 v0, v1, 0x1c

    add-int/lit8 v5, v4, 0x70

    add-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_a

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .restart local v0    # "index":I
    aget-byte p1, p0, p1

    if-gt p1, v3, :cond_c

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    aget-byte v0, p0, v0

    if-le v0, v3, :cond_b

    :cond_a
    goto :goto_1

    .line 319
    .end local v1    # "byte1":I
    .end local v4    # "byte2":I
    :cond_b
    goto :goto_0

    .line 306
    .end local p1    # "index":I
    .restart local v0    # "index":I
    .restart local v1    # "byte1":I
    .restart local v4    # "byte2":I
    :cond_c
    move p1, v0

    .line 316
    .end local v0    # "index":I
    .restart local p1    # "index":I
    :goto_1
    return v2

    .line 270
    .end local v4    # "byte2":I
    .end local p1    # "index":I
    .restart local v0    # "index":I
    :cond_d
    move p1, v0

    goto :goto_0
.end method
