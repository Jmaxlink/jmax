.class public final Lio/ktor/utils/io/core/BufferCompatibilityKt;
.super Ljava/lang/Object;
.source "BufferCompatibility.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferCompatibility.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferCompatibility.kt\nio/ktor/utils/io/core/BufferCompatibilityKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 4 Numbers.kt\nio/ktor/utils/io/core/internal/NumbersKt\n+ 5 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 6 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 7 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 8 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n*L\n1#1,177:1\n1#2:178\n74#3:179\n74#3:180\n6#4,2:181\n390#5,7:183\n390#5,5:190\n395#5,2:223\n372#5,5:225\n377#5,2:232\n319#6,3:195\n322#6,4:200\n326#6,18:205\n37#7,2:198\n26#7:231\n99#8:204\n84#8:230\n*S KotlinDebug\n*F\n+ 1 BufferCompatibility.kt\nio/ktor/utils/io/core/BufferCompatibilityKt\n*L\n15#1:179\n16#1:180\n37#1:181,2\n79#1:183,7\n94#1:190,5\n94#1:223,2\n165#1:225,5\n165#1:232,2\n95#1:195,3\n95#1:200,4\n95#1:205,18\n95#1:198,2\n171#1:231\n95#1:204\n171#1:230\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\u0014\u0010\u0004\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u001a$\u0010\u0004\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0003H\u0007\u001a\u0016\u0010\u0004\u001a\u00020\u0005*\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u000cH\u0007\u001a&\u0010\u0004\u001a\u00020\u0005*\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0003H\u0007\u001a(\u0010\r\u001a\u00020\u0003*\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003H\u0000\u001a\u001a\u0010\u000e\u001a\u00020\u000f*\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0012\u001a\'\u0010\u000e\u001a\u00020\u000f*\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0013\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u001a\u001c\u0010\u000e\u001a\u00020\u000f*\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0012H\u0007\u001a\u000c\u0010\u0019\u001a\u00020\u000f*\u00020\u0005H\u0007\u001a\u000c\u0010\u001a\u001a\u00020\u0005*\u00020\u0005H\u0007\u001a\u000c\u0010\u001a\u001a\u00020\u001b*\u00020\u001bH\u0007\u001a\u0014\u0010\u001c\u001a\u00020\u000f*\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0003H\u0007\u001a1\u0010\u001d\u001a\u00020\u000f*\u00020\u00052\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010!\u001a6\u0010\"\u001a\u00020\u0003*\u00020\u00052\n\u0010#\u001a\u00060$j\u0002`%2\n\u0010&\u001a\u00060\'j\u0002`(2\u0006\u0010)\u001a\u00020*2\u0008\u0008\u0002\u0010+\u001a\u00020\u0003H\u0007\u001a\u000c\u0010,\u001a\u00020\u0003*\u00020\u0005H\u0007\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006-"
    }
    d2 = {
        "appendFailed",
        "",
        "length",
        "",
        "append",
        "Lio/ktor/utils/io/core/Buffer;",
        "c",
        "",
        "csq",
        "",
        "start",
        "end",
        "",
        "appendChars",
        "fill",
        "",
        "times",
        "value",
        "",
        "Lkotlin/UByte;",
        "fill-sEu17AQ",
        "(Lio/ktor/utils/io/core/Buffer;IB)V",
        "n",
        "",
        "v",
        "flush",
        "makeView",
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "pushBack",
        "readFully",
        "dst",
        "",
        "offset",
        "(Lio/ktor/utils/io/core/Buffer;[Ljava/lang/Byte;II)V",
        "readText",
        "decoder",
        "Ljava/nio/charset/CharsetDecoder;",
        "Lio/ktor/utils/io/charsets/CharsetDecoder;",
        "out",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "lastBuffer",
        "",
        "max",
        "tryPeek",
        "ktor-io"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final append(Lio/ktor/utils/io/core/Buffer;C)Lio/ktor/utils/io/core/Buffer;
    .locals 17
    .param p0, "$this$append"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "c"    # C
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "This is no longer supported. Use a packet builder to append characters instead."
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    move-object/from16 v1, p0

    .local v1, "$this$write$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 190
    .local v2, "$i$f$write":I
    nop

    .line 194
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v3

    .local v3, "memory":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    .local v4, "start":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v5

    .local v5, "endExclusive":I
    const/4 v6, 0x0

    .line 95
    .local v6, "$i$a$-write-BufferCompatibilityKt$append$1":I
    move-object v7, v3

    .local v7, "$this$putUtf8Char_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    move/from16 v8, p1

    .local v8, "v$iv":I
    const/4 v9, 0x0

    .line 195
    .local v9, "$i$f$putUtf8Char-62zg_DM":I
    nop

    .line 196
    const/16 v10, 0x80

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ltz v8, :cond_0

    if-ge v8, v10, :cond_0

    move v13, v12

    goto :goto_0

    :cond_0
    move v13, v11

    :goto_0
    if-eqz v13, :cond_1

    .line 197
    int-to-byte v10, v8

    .local v10, "value$iv$iv":B
    const/4 v11, 0x0

    .line 198
    .local v11, "$i$f$storeAt-impl":I
    invoke-virtual {v7, v4, v10}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 199
    nop

    .line 200
    .end local v10    # "value$iv$iv":B
    .end local v11    # "$i$f$storeAt-impl":I
    move v10, v12

    goto/16 :goto_3

    .line 202
    :cond_1
    const/16 v13, 0x800

    if-gt v10, v8, :cond_2

    if-ge v8, v13, :cond_2

    move v14, v12

    goto :goto_1

    :cond_2
    move v14, v11

    :goto_1
    if-eqz v14, :cond_3

    .line 203
    shr-int/lit8 v11, v8, 0x6

    and-int/lit8 v11, v11, 0x1f

    or-int/lit16 v11, v11, 0xc0

    int-to-byte v11, v11

    .local v11, "value$iv$iv":B
    move-object v13, v7

    .local v13, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v14, 0x0

    .line 204
    .local v14, "$i$f$set-62zg_DM":I
    const/4 v15, 0x0

    .line 198
    .local v15, "$i$f$storeAt-impl":I
    invoke-virtual {v13, v4, v11}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 199
    nop

    .line 204
    .end local v15    # "$i$f$storeAt-impl":I
    nop

    .line 205
    .end local v11    # "value$iv$iv":B
    .end local v13    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v14    # "$i$f$set-62zg_DM":I
    add-int/lit8 v11, v4, 0x1

    .local v11, "index$iv$iv":I
    and-int/lit8 v13, v8, 0x3f

    or-int/2addr v10, v13

    int-to-byte v10, v10

    .restart local v10    # "value$iv$iv":B
    move-object v13, v7

    .restart local v13    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v14, 0x0

    .line 204
    .restart local v14    # "$i$f$set-62zg_DM":I
    const/4 v15, 0x0

    .line 198
    .restart local v15    # "$i$f$storeAt-impl":I
    invoke-virtual {v13, v11, v10}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 199
    nop

    .line 204
    .end local v15    # "$i$f$storeAt-impl":I
    nop

    .line 206
    .end local v10    # "value$iv$iv":B
    .end local v11    # "index$iv$iv":I
    .end local v13    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v14    # "$i$f$set-62zg_DM":I
    const/4 v10, 0x2

    goto/16 :goto_3

    .line 208
    :cond_3
    const/high16 v14, 0x10000

    if-gt v13, v8, :cond_4

    if-ge v8, v14, :cond_4

    move v13, v12

    goto :goto_2

    :cond_4
    move v13, v11

    :goto_2
    if-eqz v13, :cond_5

    .line 209
    shr-int/lit8 v11, v8, 0xc

    and-int/lit8 v11, v11, 0xf

    or-int/lit16 v11, v11, 0xe0

    int-to-byte v11, v11

    .local v11, "value$iv$iv":B
    move-object v13, v7

    .restart local v13    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v14, 0x0

    .line 204
    .restart local v14    # "$i$f$set-62zg_DM":I
    const/4 v15, 0x0

    .line 198
    .restart local v15    # "$i$f$storeAt-impl":I
    invoke-virtual {v13, v4, v11}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 199
    nop

    .line 204
    .end local v15    # "$i$f$storeAt-impl":I
    nop

    .line 210
    .end local v11    # "value$iv$iv":B
    .end local v13    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v14    # "$i$f$set-62zg_DM":I
    add-int/lit8 v11, v4, 0x1

    .local v11, "index$iv$iv":I
    shr-int/lit8 v13, v8, 0x6

    and-int/lit8 v13, v13, 0x3f

    or-int/2addr v13, v10

    int-to-byte v13, v13

    .local v13, "value$iv$iv":B
    move-object v14, v7

    .local v14, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v15, 0x0

    .line 204
    .local v15, "$i$f$set-62zg_DM":I
    const/16 v16, 0x0

    .line 198
    .local v16, "$i$f$storeAt-impl":I
    invoke-virtual {v14, v11, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 199
    nop

    .line 204
    .end local v16    # "$i$f$storeAt-impl":I
    nop

    .line 211
    .end local v11    # "index$iv$iv":I
    .end local v13    # "value$iv$iv":B
    .end local v14    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v15    # "$i$f$set-62zg_DM":I
    add-int/lit8 v11, v4, 0x2

    .restart local v11    # "index$iv$iv":I
    and-int/lit8 v13, v8, 0x3f

    or-int/2addr v10, v13

    int-to-byte v10, v10

    .restart local v10    # "value$iv$iv":B
    move-object v13, v7

    .local v13, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v14, 0x0

    .line 204
    .local v14, "$i$f$set-62zg_DM":I
    const/4 v15, 0x0

    .line 198
    .local v15, "$i$f$storeAt-impl":I
    invoke-virtual {v13, v11, v10}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 199
    nop

    .line 204
    .end local v15    # "$i$f$storeAt-impl":I
    nop

    .line 212
    .end local v10    # "value$iv$iv":B
    .end local v11    # "index$iv$iv":I
    .end local v13    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v14    # "$i$f$set-62zg_DM":I
    const/4 v10, 0x3

    goto :goto_3

    .line 214
    :cond_5
    if-gt v14, v8, :cond_6

    const/high16 v13, 0x110000

    if-ge v8, v13, :cond_6

    move v11, v12

    :cond_6
    if-eqz v11, :cond_8

    .line 215
    shr-int/lit8 v11, v8, 0x12

    and-int/lit8 v11, v11, 0x7

    or-int/lit16 v11, v11, 0xf0

    int-to-byte v11, v11

    .local v11, "value$iv$iv":B
    move-object v13, v7

    .restart local v13    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v14, 0x0

    .line 204
    .restart local v14    # "$i$f$set-62zg_DM":I
    const/4 v15, 0x0

    .line 198
    .restart local v15    # "$i$f$storeAt-impl":I
    invoke-virtual {v13, v4, v11}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 199
    nop

    .line 204
    .end local v15    # "$i$f$storeAt-impl":I
    nop

    .line 216
    .end local v11    # "value$iv$iv":B
    .end local v13    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v14    # "$i$f$set-62zg_DM":I
    add-int/lit8 v11, v4, 0x1

    .local v11, "index$iv$iv":I
    shr-int/lit8 v13, v8, 0xc

    and-int/lit8 v13, v13, 0x3f

    or-int/2addr v13, v10

    int-to-byte v13, v13

    .local v13, "value$iv$iv":B
    move-object v14, v7

    .local v14, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v15, 0x0

    .line 204
    .local v15, "$i$f$set-62zg_DM":I
    const/16 v16, 0x0

    .line 198
    .restart local v16    # "$i$f$storeAt-impl":I
    invoke-virtual {v14, v11, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 199
    nop

    .line 204
    .end local v16    # "$i$f$storeAt-impl":I
    nop

    .line 217
    .end local v11    # "index$iv$iv":I
    .end local v13    # "value$iv$iv":B
    .end local v14    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v15    # "$i$f$set-62zg_DM":I
    add-int/lit8 v11, v4, 0x2

    .restart local v11    # "index$iv$iv":I
    shr-int/lit8 v13, v8, 0x6

    and-int/lit8 v13, v13, 0x3f

    or-int/2addr v13, v10

    int-to-byte v13, v13

    .restart local v13    # "value$iv$iv":B
    .restart local v14    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v15, 0x0

    .line 204
    .restart local v15    # "$i$f$set-62zg_DM":I
    const/16 v16, 0x0

    .line 198
    .restart local v16    # "$i$f$storeAt-impl":I
    invoke-virtual {v14, v11, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 199
    nop

    .line 204
    .end local v16    # "$i$f$storeAt-impl":I
    nop

    .line 218
    .end local v11    # "index$iv$iv":I
    .end local v13    # "value$iv$iv":B
    .end local v14    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v15    # "$i$f$set-62zg_DM":I
    add-int/lit8 v11, v4, 0x3

    .restart local v11    # "index$iv$iv":I
    and-int/lit8 v13, v8, 0x3f

    or-int/2addr v10, v13

    int-to-byte v10, v10

    .restart local v10    # "value$iv$iv":B
    move-object v13, v7

    .local v13, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v14, 0x0

    .line 204
    .local v14, "$i$f$set-62zg_DM":I
    const/4 v15, 0x0

    .line 198
    .local v15, "$i$f$storeAt-impl":I
    invoke-virtual {v13, v11, v10}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 199
    nop

    .line 204
    .end local v15    # "$i$f$storeAt-impl":I
    nop

    .line 219
    .end local v10    # "value$iv$iv":B
    .end local v11    # "index$iv$iv":I
    .end local v13    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v14    # "$i$f$set-62zg_DM":I
    const/4 v10, 0x4

    .line 222
    :goto_3
    nop

    .line 95
    .end local v7    # "$this$putUtf8Char_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "v$iv":I
    .end local v9    # "$i$f$putUtf8Char-62zg_DM":I
    move v7, v10

    .line 96
    .local v7, "size":I
    nop

    .line 97
    sub-int v8, v5, v4

    if-gt v7, v8, :cond_7

    .line 98
    nop

    .line 96
    nop

    .line 194
    .end local v3    # "memory":Ljava/nio/ByteBuffer;
    .end local v4    # "start":I
    .end local v5    # "endExclusive":I
    .end local v6    # "$i$a$-write-BufferCompatibilityKt$append$1":I
    .end local v7    # "size":I
    move v3, v7

    .line 223
    .local v3, "rc$iv":I
    invoke-virtual {v1, v3}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 224
    nop

    .line 102
    .end local v1    # "$this$write$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$write":I
    .end local v3    # "rc$iv":I
    return-object v0

    .line 97
    .restart local v1    # "$this$write$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v2    # "$i$f$write":I
    .local v3, "memory":Ljava/nio/ByteBuffer;
    .restart local v4    # "start":I
    .restart local v5    # "endExclusive":I
    .restart local v6    # "$i$a$-write-BufferCompatibilityKt$append$1":I
    .restart local v7    # "size":I
    :cond_7
    invoke-static {v12}, Lio/ktor/utils/io/core/BufferCompatibilityKt;->appendFailed(I)Ljava/lang/Void;

    new-instance v8, Lkotlin/KotlinNothingValueException;

    invoke-direct {v8}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v8

    .line 221
    .local v7, "$this$putUtf8Char_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .restart local v8    # "v$iv":I
    .restart local v9    # "$i$f$putUtf8Char-62zg_DM":I
    :cond_8
    invoke-static {v8}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v10, Lkotlin/KotlinNothingValueException;

    invoke-direct {v10}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v10
.end method

.method public static final append(Lio/ktor/utils/io/core/Buffer;Ljava/lang/CharSequence;)Lio/ktor/utils/io/core/Buffer;
    .locals 2
    .param p0, "$this$append"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "This is no longer supported. Use a packet builder to append characters instead."
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 111
    const-string v1, "This is no longer supported. Use a packet builder to append characters instead."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final append(Lio/ktor/utils/io/core/Buffer;Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/Buffer;
    .locals 4
    .param p0, "$this$append"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "This is no longer supported. Use a packet builder to append characters instead."
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    move-object v0, p0

    .local v0, "$this$append_u24lambda_u244":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .local v1, "$i$a$-apply-BufferCompatibilityKt$append$2":I
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 120
    const-string v3, "This is no longer supported. Use a packet builder to append characters instead."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final append(Lio/ktor/utils/io/core/Buffer;[CII)Lio/ktor/utils/io/core/Buffer;
    .locals 2
    .param p0, "$this$append"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "csq"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "This is no longer supported. Use a packet builder to append characters instead."
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "csq"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 133
    const-string v1, "This is no longer supported. Use a packet builder to append characters instead."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final appendChars(Lio/ktor/utils/io/core/Buffer;Ljava/lang/CharSequence;II)I
    .locals 12
    .param p0, "$this$appendChars"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "csq"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "charactersWritten":I
    move-object v1, p0

    .local v1, "$this$write$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 183
    .local v2, "$i$f$write":I
    nop

    .line 187
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v3

    .local v3, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v9

    .local v9, "dstStart":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v10

    .local v10, "dstEndExclusive":I
    const/4 v11, 0x0

    .line 80
    .local v11, "$i$a$-write-BufferCompatibilityKt$appendChars$1":I
    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, v9

    move v8, v10

    invoke-static/range {v3 .. v8}, Lio/ktor/utils/io/core/internal/UTF8Kt;->encodeUTF8-lBXzO7A(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIII)I

    move-result v4

    .line 81
    .local v4, "result":I
    invoke-static {v4}, Lio/ktor/utils/io/core/internal/EncodeResult;->getCharacters-Mh2AYeg(I)S

    move-result v5

    const v6, 0xffff

    and-int v0, v5, v6

    .line 82
    invoke-static {v4}, Lio/ktor/utils/io/core/internal/EncodeResult;->getBytes-Mh2AYeg(I)S

    move-result v5

    and-int/2addr v5, v6

    .line 187
    .end local v3    # "dst":Ljava/nio/ByteBuffer;
    .end local v4    # "result":I
    .end local v9    # "dstStart":I
    .end local v10    # "dstEndExclusive":I
    .end local v11    # "$i$a$-write-BufferCompatibilityKt$appendChars$1":I
    move v3, v5

    .line 188
    .local v3, "rc$iv":I
    invoke-virtual {v1, v3}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 189
    nop

    .line 85
    .end local v1    # "$this$write$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$write":I
    .end local v3    # "rc$iv":I
    add-int v1, p2, v0

    return v1
.end method

.method public static synthetic appendChars$default(Lio/ktor/utils/io/core/Buffer;Ljava/lang/CharSequence;IIILjava/lang/Object;)I
    .locals 0

    .line 76
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferCompatibilityKt;->appendChars(Lio/ktor/utils/io/core/Buffer;Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method private static final appendFailed(I)Ljava/lang/Void;
    .locals 3
    .param p0, "length"    # I

    .line 124
    new-instance v0, Lio/ktor/utils/io/core/BufferLimitExceededException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough free space available to write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " character(s)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/utils/io/core/BufferLimitExceededException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final fill(Lio/ktor/utils/io/core/Buffer;IB)V
    .locals 6
    .param p0, "$this$fill"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "times"    # I
    .param p2, "value"    # B

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 15
    move-object v2, p0

    .local v2, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 179
    .local v3, "$i$f$getWriteRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    sub-int/2addr v4, v5

    .end local v2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getWriteRemaining":I
    if-gt p1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 15
    :goto_1
    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    invoke-static {v0, v1, p1, p2}, Lio/ktor/utils/io/bits/MemoryJvmKt;->fill-JT6ljtQ(Ljava/nio/ByteBuffer;IIB)V

    .line 20
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 21
    return-void

    .line 15
    :cond_2
    const/4 v0, 0x0

    .line 16
    .local v0, "$i$a$-require-BufferCompatibilityKt$fill$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "times shouldn\'t be greater than the write remaining space: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, p0

    .restart local v2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 180
    .restart local v3    # "$i$f$getWriteRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 16
    .end local v2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getWriteRemaining":I
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    .end local v0    # "$i$a$-require-BufferCompatibilityKt$fill$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_3
    const/4 v0, 0x0

    .line 14
    .local v0, "$i$a$-require-BufferCompatibilityKt$fill$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "times shouldn\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferCompatibilityKt$fill$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final fill(Lio/ktor/utils/io/core/Buffer;JB)V
    .locals 6
    .param p0, "$this$fill"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "n"    # J
    .param p3, "v"    # B
    .annotation runtime Lkotlin/Deprecated;
        message = "Use fill with n with type Int"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const-string v0, "n"

    .local v0, "name$iv":Ljava/lang/String;
    move-wide v1, p1

    .local v1, "$this$toIntOrFail$iv":J
    const/4 v3, 0x0

    .line 181
    .local v3, "$i$f$toIntOrFail":I
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 182
    long-to-int v0, v1

    .line 37
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v1    # "$this$toIntOrFail$iv":J
    .end local v3    # "$i$f$toIntOrFail":I
    invoke-static {p0, v0, p3}, Lio/ktor/utils/io/core/BufferCompatibilityKt;->fill(Lio/ktor/utils/io/core/Buffer;IB)V

    .line 38
    return-void

    .line 181
    .restart local v0    # "name$iv":Ljava/lang/String;
    .restart local v1    # "$this$toIntOrFail$iv":J
    .restart local v3    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v1, v2, v0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4
.end method

.method public static final fill-sEu17AQ(Lio/ktor/utils/io/core/Buffer;IB)V
    .locals 1
    .param p0, "$this$fill_u2dsEu17AQ"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "times"    # I
    .param p2, "value"    # B

    const-string v0, "$this$fill"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/BufferCompatibilityKt;->fill(Lio/ktor/utils/io/core/Buffer;IB)V

    .line 29
    return-void
.end method

.method public static final flush(Lio/ktor/utils/io/core/Buffer;)V
    .locals 1
    .param p0, "$this$flush"    # Lio/ktor/utils/io/core/Buffer;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Does nothing."
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static final makeView(Lio/ktor/utils/io/core/Buffer;)Lio/ktor/utils/io/core/Buffer;
    .locals 1
    .param p0, "$this$makeView"    # Lio/ktor/utils/io/core/Buffer;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use duplicate instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "duplicate()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->duplicate()Lio/ktor/utils/io/core/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public static final makeView(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1
    .param p0, "$this$makeView"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use duplicate instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "duplicate()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->duplicate()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static final pushBack(Lio/ktor/utils/io/core/Buffer;I)V
    .locals 1
    .param p0, "$this$pushBack"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "n"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use rewind instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "rewind(n)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Buffer;->rewind(I)V

    return-void
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Buffer;[Ljava/lang/Byte;II)V
    .locals 12
    .param p0, "$this$readFully"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # [Ljava/lang/Byte;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    move-object v0, p0

    .local v0, "$this$read$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 225
    .local v1, "$i$f$read":I
    nop

    .line 229
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    .local v2, "memory":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    .local v3, "start":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    .local v4, "endExclusive":I
    const/4 v5, 0x0

    .line 166
    .local v5, "$i$a$-read-BufferCompatibilityKt$readFully$1":I
    sub-int v6, v4, v3

    if-lt v6, p3, :cond_1

    .line 170
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_0
    if-ge v6, p3, :cond_0

    .line 171
    add-int v7, v6, p2

    add-int v8, v6, v3

    .local v8, "index$iv":I
    move-object v9, v2

    .local v9, "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v10, 0x0

    .line 230
    .local v10, "$i$f$get-eY85DW0":I
    const/4 v11, 0x0

    .line 231
    .local v11, "$i$f$loadAt-impl":I
    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    .line 230
    .end local v11    # "$i$f$loadAt-impl":I
    nop

    .end local v8    # "index$iv":I
    .end local v9    # "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v10    # "$i$f$get-eY85DW0":I
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, p1, v7

    .line 170
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 174
    .end local v6    # "index":I
    :cond_0
    nop

    .line 229
    .end local v2    # "memory":Ljava/nio/ByteBuffer;
    .end local v3    # "start":I
    .end local v4    # "endExclusive":I
    .end local v5    # "$i$a$-read-BufferCompatibilityKt$readFully$1":I
    move v2, p3

    .line 232
    .local v2, "rc$iv":I
    invoke-virtual {v0, v2}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 233
    nop

    .line 176
    .end local v0    # "$this$read$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$read":I
    .end local v2    # "rc$iv":I
    return-void

    .line 167
    .restart local v0    # "$this$read$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v1    # "$i$f$read":I
    .local v2, "memory":Ljava/nio/ByteBuffer;
    .restart local v3    # "start":I
    .restart local v4    # "endExclusive":I
    .restart local v5    # "$i$a$-read-BufferCompatibilityKt$readFully$1":I
    :cond_1
    new-instance v6, Ljava/io/EOFException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not enough bytes available to read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Buffer;[Ljava/lang/Byte;IIILjava/lang/Object;)V
    .locals 0

    .line 164
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferCompatibilityKt;->readFully(Lio/ktor/utils/io/core/Buffer;[Ljava/lang/Byte;II)V

    return-void
.end method

.method public static final readText(Lio/ktor/utils/io/core/Buffer;Ljava/nio/charset/CharsetDecoder;Ljava/lang/Appendable;ZI)I
    .locals 1
    .param p0, "$this$readText"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "decoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p2, "out"    # Ljava/lang/Appendable;
    .param p3, "lastBuffer"    # Z
    .param p4, "max"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "This is no longer supported. Read from a packet instead."
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-static {p1, p0, p2, p3, p4}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->decodeBuffer(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Buffer;Ljava/lang/Appendable;ZI)I

    move-result v0

    return v0
.end method

.method public static synthetic readText$default(Lio/ktor/utils/io/core/Buffer;Ljava/nio/charset/CharsetDecoder;Ljava/lang/Appendable;ZIILjava/lang/Object;)I
    .locals 0

    .line 141
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 145
    const p4, 0x7fffffff

    .line 141
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/core/BufferCompatibilityKt;->readText(Lio/ktor/utils/io/core/Buffer;Ljava/nio/charset/CharsetDecoder;Ljava/lang/Appendable;ZI)I

    move-result p0

    return p0
.end method

.method public static final tryPeek(Lio/ktor/utils/io/core/Buffer;)I
    .locals 1
    .param p0, "$this$tryPeek"    # Lio/ktor/utils/io/core/Buffer;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use tryPeekByte instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "tryPeekByte()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->tryPeekByte()I

    move-result v0

    return v0
.end method
