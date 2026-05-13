.class public final Lio/ktor/utils/io/core/internal/UTF8Kt;
.super Ljava/lang/Object;
.source "UTF8.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUTF8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 3 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 4 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 5 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 6 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,379:1\n123#1,5:401\n128#1,2:411\n130#1,61:415\n193#1:478\n319#1,3:517\n322#1,4:522\n326#1,18:527\n309#1,7:545\n319#1,3:552\n322#1,4:557\n326#1,18:562\n372#2,5:380\n377#2,2:387\n372#2,5:406\n377#2,2:476\n372#2,5:506\n377#2,2:513\n84#3:385\n84#3:413\n84#3:511\n99#3:526\n99#3:561\n99#3:582\n99#3:585\n99#3:588\n99#3:591\n99#3:594\n99#3:597\n99#3:600\n99#3:603\n99#3:606\n26#4:386\n26#4:414\n26#4:512\n37#4,2:515\n37#4,2:520\n37#4,2:555\n37#4,2:580\n37#4,2:583\n37#4,2:586\n37#4,2:589\n37#4,2:592\n37#4,2:595\n37#4,2:598\n37#4,2:601\n37#4,2:604\n37#4,2:607\n852#5,8:389\n862#5,3:398\n866#5,11:479\n877#5,15:491\n69#6:397\n59#6:490\n*S KotlinDebug\n*F\n+ 1 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n*L\n42#1:401,5\n42#1:411,2\n42#1:415,61\n42#1:478\n255#1:517,3\n255#1:522,4\n255#1:527,18\n297#1:545,7\n301#1:552,3\n301#1:557,4\n301#1:562,18\n9#1:380,5\n9#1:387,2\n42#1:406,5\n42#1:476,2\n127#1:506,5\n127#1:513,2\n11#1:385\n42#1:413\n129#1:511\n255#1:526\n301#1:561\n325#1:582\n326#1:585\n330#1:588\n331#1:591\n332#1:594\n336#1:597\n337#1:600\n338#1:603\n339#1:606\n11#1:386\n42#1:414\n129#1:512\n211#1:515,2\n255#1:520,2\n301#1:555,2\n321#1:580,2\n325#1:583,2\n326#1:586,2\n330#1:589,2\n331#1:592,2\n332#1:595,2\n336#1:598,2\n337#1:601,2\n338#1:604,2\n339#1:607,2\n40#1:389,8\n40#1:398,3\n40#1:479,11\n40#1:491,15\n40#1:397\n40#1:490\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0001\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0014\u001a\u0010\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001a\u0011\u0010\u0008\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0001H\u0082\u0008\u001a\u0018\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0000\u001a_\u0010\u000e\u001a\u00020\u000f2\n\u0010\u0010\u001a\u00060\u0011j\u0002`\u00122\u0006\u0010\u0013\u001a\u00020\u00012$\u0010\u0014\u001a \u0008\u0001\u0012\u0004\u0012\u00020\u0001\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u00152\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u001b0\u001aH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001c\u001a\u0010\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u0001H\u0001\u001a\u0010\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0001H\u0001\u001a\u0010\u0010 \u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u0001H\u0001\u001a\u0010\u0010!\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u0001H\u0001\u001a\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0001H\u0001\u001a\u0010\u0010%\u001a\u00020#2\u0006\u0010&\u001a\u00020\u0001H\u0001\u001a\u0010\u0010\'\u001a\u00020#2\u0006\u0010(\u001a\u00020\u0001H\u0002\u001a$\u0010)\u001a\u00020\u000f*\u00020*2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000f0\u001aH\u0080\u0008\u00f8\u0001\u0001\u001a$\u0010,\u001a\u00020\u0001*\u00020*2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000f0\u001aH\u0080\u0008\u00f8\u0001\u0001\u001aA\u0010-\u001a\u00020.*\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u00012\u0006\u00103\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u00012\u0006\u00105\u001a\u00020\u0001H\u0000\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u00086\u00107\u001aQ\u00108\u001a\u00020.*\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00109\u001a\u00020\u00012\u0006\u0010:\u001a\u00020\u00012\u0006\u00102\u001a\u00020\u00012\u0006\u0010;\u001a\u00020\u00012\u0006\u0010<\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u0001H\u0002\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008=\u0010>\u001aQ\u0010?\u001a\u00020.*\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00109\u001a\u00020\u00012\u0006\u0010:\u001a\u00020\u00012\u0006\u00102\u001a\u00020\u00012\u0006\u0010;\u001a\u00020\u00012\u0006\u0010<\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u0001H\u0002\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008@\u0010>\u001a*\u0010A\u001a\u00020\u0001*\u00020/2\u0006\u0010B\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0001H\u0080\u0008\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008C\u0010D\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0012\n\u0002\u0008\u0019\n\u0005\u0008\u009920\u0001\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006E"
    }
    d2 = {
        "HighSurrogateMagic",
        "",
        "MaxCodePoint",
        "MinHighSurrogate",
        "MinLowSurrogate",
        "MinSupplementary",
        "byteCountUtf8",
        "firstByte",
        "charactersSize",
        "v",
        "codePoint",
        "high",
        "",
        "low",
        "decodeUTF8LineLoopSuspend",
        "",
        "out",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "limit",
        "nextChunk",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "Lio/ktor/utils/io/core/Input;",
        "",
        "afterRead",
        "Lkotlin/Function1;",
        "",
        "(Ljava/lang/Appendable;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "highSurrogate",
        "cp",
        "isBmpCodePoint",
        "isValidCodePoint",
        "lowSurrogate",
        "malformedByteCount",
        "",
        "byteCount",
        "malformedCodePoint",
        "value",
        "prematureEndOfStreamUtf",
        "size",
        "decodeASCII",
        "Lio/ktor/utils/io/core/Buffer;",
        "consumer",
        "decodeUTF8",
        "encodeUTF8",
        "Lio/ktor/utils/io/core/internal/EncodeResult;",
        "Lio/ktor/utils/io/bits/Memory;",
        "text",
        "",
        "from",
        "to",
        "dstOffset",
        "dstLimit",
        "encodeUTF8-lBXzO7A",
        "(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIII)I",
        "encodeUTF8Stage1",
        "index1",
        "lastCharIndex",
        "resultPosition1",
        "resultLimit",
        "encodeUTF8Stage1-Vm9B2pQ",
        "(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I",
        "encodeUTF8Stage2",
        "encodeUTF8Stage2-Vm9B2pQ",
        "putUtf8Char",
        "offset",
        "putUtf8Char-62zg_DM",
        "(Ljava/nio/ByteBuffer;II)I",
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


# static fields
.field private static final HighSurrogateMagic:I = 0xd7c0

.field private static final MaxCodePoint:I = 0x10ffff

.field private static final MinHighSurrogate:I = 0xd800

.field private static final MinLowSurrogate:I = 0xdc00

.field private static final MinSupplementary:I = 0x10000


# direct methods
.method public static final byteCountUtf8(I)I
    .locals 5
    .param p0, "firstByte"    # I

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "byteCount":I
    const/16 v1, 0x80

    .line 99
    .local v1, "mask":I
    move v2, p0

    .line 101
    .local v2, "value":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x7

    if-ge v3, v4, :cond_1

    .line 102
    and-int v4, v2, v1

    if-eqz v4, :cond_0

    .line 103
    not-int v4, v1

    and-int/2addr v2, v4

    .line 104
    shr-int/lit8 v1, v1, 0x1

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_0
    nop

    .line 111
    .end local v3    # "i":I
    :cond_1
    return v0
.end method

.method private static final charactersSize(I)I
    .locals 5
    .param p0, "v"    # I

    const/4 v0, 0x0

    .line 309
    .local v0, "$i$f$charactersSize":I
    nop

    .line 310
    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v3, p0, :cond_0

    if-ge p0, v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_1

    goto :goto_3

    .line 311
    :cond_1
    const/16 v4, 0x800

    if-gt v1, p0, :cond_2

    if-ge p0, v4, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    const/4 v3, 0x2

    goto :goto_3

    .line 312
    :cond_3
    const/high16 v1, 0x10000

    if-gt v4, p0, :cond_4

    if-ge p0, v1, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    if-eqz v4, :cond_5

    const/4 v3, 0x3

    goto :goto_3

    .line 313
    :cond_5
    if-gt v1, p0, :cond_6

    const/high16 v1, 0x110000

    if-ge p0, v1, :cond_6

    move v2, v3

    :cond_6
    if-eqz v2, :cond_7

    const/4 v3, 0x4

    .line 315
    :goto_3
    return v3

    .line 314
    :cond_7
    invoke-static {p0}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method public static final codePoint(CC)I
    .locals 3
    .param p0, "high"    # C
    .param p1, "low"    # C

    .line 372
    const v0, 0xd7c0

    sub-int v0, p0, v0

    .line 373
    .local v0, "highValue":I
    const v1, 0xdc00

    sub-int v1, p1, v1

    .line 375
    .local v1, "lowValue":I
    shl-int/lit8 v2, v0, 0xa

    or-int/2addr v2, v1

    return v2
.end method

.method public static final decodeASCII(Lio/ktor/utils/io/core/Buffer;Lkotlin/jvm/functions/Function1;)Z
    .locals 11
    .param p0, "$this$decodeASCII"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "consumer"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Buffer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    .local v0, "$i$f$decodeASCII":I
    move-object v1, p0

    .local v1, "$this$read$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 380
    .local v2, "$i$f$read":I
    nop

    .line 384
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v3

    .local v3, "memory":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    .local v4, "start":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    .local v5, "endExclusive":I
    const/4 v6, 0x0

    .line 10
    .local v6, "$i$a$-read-UTF8Kt$decodeASCII$1":I
    move v7, v4

    .local v7, "index":I
    :goto_0
    if-ge v7, v5, :cond_2

    .line 11
    move-object v8, v3

    .local v8, "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v9, 0x0

    .line 385
    .local v9, "$i$f$get-eY85DW0":I
    const/4 v10, 0x0

    .line 386
    .local v10, "$i$f$loadAt-impl":I
    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    .line 385
    .end local v10    # "$i$f$loadAt-impl":I
    nop

    .line 11
    .end local v8    # "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v9    # "$i$f$get-eY85DW0":I
    and-int/lit16 v8, v10, 0xff

    .line 12
    .local v8, "codepoint":I
    and-int/lit16 v9, v8, 0x80

    const/16 v10, 0x80

    if-eq v9, v10, :cond_1

    int-to-char v9, v8

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-interface {p1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_1

    .line 10
    .end local v8    # "codepoint":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 13
    .restart local v8    # "codepoint":I
    :cond_1
    :goto_1
    sub-int v9, v7, v4

    invoke-virtual {p0, v9}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 14
    const/4 v9, 0x0

    return v9

    .line 18
    .end local v7    # "index":I
    .end local v8    # "codepoint":I
    :cond_2
    sub-int/2addr v5, v4

    .line 384
    .end local v3    # "memory":Ljava/nio/ByteBuffer;
    .end local v4    # "start":I
    .end local v5    # "endExclusive":I
    .end local v6    # "$i$a$-read-UTF8Kt$decodeASCII$1":I
    move v3, v5

    .line 387
    .local v3, "rc$iv":I
    invoke-virtual {v1, v3}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 388
    nop

    .line 21
    .end local v1    # "$this$read$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$read":I
    .end local v3    # "rc$iv":I
    const/4 v1, 0x1

    return v1
.end method

.method public static final decodeUTF8(Lio/ktor/utils/io/core/Buffer;Lkotlin/jvm/functions/Function1;)I
    .locals 17
    .param p0, "$this$decodeUTF8"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "consumer"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Buffer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "consumer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 123
    .local v2, "$i$f$decodeUTF8":I
    const/4 v3, 0x0

    .line 124
    .local v3, "byteCount":I
    const/4 v4, 0x0

    .line 125
    .local v4, "value":I
    const/4 v5, 0x0

    .line 127
    .local v5, "lastByteCount":I
    move-object/from16 v6, p0

    .local v6, "$this$read$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v7, 0x0

    .line 506
    .local v7, "$i$f$read":I
    nop

    .line 510
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v8

    .local v8, "memory":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9

    .local v9, "start":I
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    .local v10, "endExclusive":I
    const/4 v11, 0x0

    .line 128
    .local v11, "$i$a$-read-UTF8Kt$decodeUTF8$1":I
    move v12, v9

    .local v12, "index":I
    :goto_0
    if-ge v12, v10, :cond_c

    .line 129
    move-object v13, v8

    .local v13, "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v14, 0x0

    .line 511
    .local v14, "$i$f$get-eY85DW0":I
    const/4 v15, 0x0

    .line 512
    .local v15, "$i$f$loadAt-impl":I
    invoke-virtual {v13, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    .line 511
    .end local v15    # "$i$f$loadAt-impl":I
    nop

    .line 129
    .end local v13    # "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v14    # "$i$f$get-eY85DW0":I
    and-int/lit16 v13, v15, 0xff

    .line 130
    .local v13, "v":I
    nop

    .line 131
    and-int/lit16 v14, v13, 0x80

    const/4 v15, -0x1

    if-nez v14, :cond_2

    .line 132
    if-nez v3, :cond_1

    .line 133
    int-to-char v14, v13

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    invoke-interface {v1, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_0

    .line 134
    sub-int v14, v12, v9

    invoke-virtual {v0, v14}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 135
    return v15

    .line 133
    :cond_0
    move/from16 v16, v2

    goto/16 :goto_3

    .line 132
    :cond_1
    invoke-static {v3}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedByteCount(I)Ljava/lang/Void;

    new-instance v14, Lkotlin/KotlinNothingValueException;

    invoke-direct {v14}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v14

    .line 138
    :cond_2
    if-nez v3, :cond_6

    .line 141
    const/16 v14, 0x80

    .line 142
    .local v14, "mask":I
    move v4, v13

    .line 144
    const/4 v15, 0x1

    .local v15, "i":I
    :goto_1
    move/from16 v16, v2

    .end local v2    # "$i$f$decodeUTF8":I
    .local v16, "$i$f$decodeUTF8":I
    const/4 v2, 0x7

    if-ge v15, v2, :cond_4

    .line 145
    and-int v2, v4, v14

    if-eqz v2, :cond_3

    .line 146
    not-int v2, v14

    and-int/2addr v4, v2

    .line 147
    shr-int/lit8 v14, v14, 0x1

    .line 148
    add-int/lit8 v3, v3, 0x1

    .line 144
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v16

    goto :goto_1

    .line 150
    :cond_3
    nop

    .line 154
    .end local v15    # "i":I
    :cond_4
    move v2, v3

    .line 155
    .end local v5    # "lastByteCount":I
    .local v2, "lastByteCount":I
    add-int/lit8 v3, v3, -0x1

    .line 157
    sub-int v5, v10, v12

    if-le v2, v5, :cond_5

    .line 158
    sub-int v5, v12, v9

    invoke-virtual {v0, v5}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 159
    return v2

    .line 157
    :cond_5
    move v5, v2

    goto/16 :goto_3

    .line 164
    .end local v14    # "mask":I
    .end local v16    # "$i$f$decodeUTF8":I
    .local v2, "$i$f$decodeUTF8":I
    .restart local v5    # "lastByteCount":I
    :cond_6
    move/from16 v16, v2

    .end local v2    # "$i$f$decodeUTF8":I
    .restart local v16    # "$i$f$decodeUTF8":I
    shl-int/lit8 v2, v4, 0x6

    and-int/lit8 v14, v13, 0x7f

    or-int/2addr v2, v14

    .line 165
    .end local v4    # "value":I
    .local v2, "value":I
    add-int/lit8 v3, v3, -0x1

    .line 167
    if-nez v3, :cond_b

    .line 168
    invoke-static {v2}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isBmpCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 169
    int-to-char v4, v2

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_8

    .line 170
    sub-int v4, v12, v9

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 171
    return v15

    .line 173
    :cond_7
    invoke-static {v2}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isValidCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 176
    invoke-static {v2}, Lio/ktor/utils/io/core/internal/UTF8Kt;->highSurrogate(I)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 177
    invoke-static {v2}, Lio/ktor/utils/io/core/internal/UTF8Kt;->lowSurrogate(I)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_2

    .line 184
    :cond_8
    const/4 v2, 0x0

    move v4, v2

    goto :goto_3

    .line 179
    :cond_9
    :goto_2
    sub-int v4, v12, v9

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 180
    return v15

    .line 174
    :cond_a
    invoke-static {v2}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 167
    :cond_b
    move v4, v2

    .line 128
    .end local v2    # "value":I
    .end local v13    # "v":I
    .restart local v4    # "value":I
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    goto/16 :goto_0

    .end local v16    # "$i$f$decodeUTF8":I
    .local v2, "$i$f$decodeUTF8":I
    :cond_c
    move/from16 v16, v2

    .line 190
    .end local v2    # "$i$f$decodeUTF8":I
    .end local v12    # "index":I
    .restart local v16    # "$i$f$decodeUTF8":I
    sub-int/2addr v10, v9

    .line 510
    .end local v8    # "memory":Ljava/nio/ByteBuffer;
    .end local v9    # "start":I
    .end local v10    # "endExclusive":I
    .end local v11    # "$i$a$-read-UTF8Kt$decodeUTF8$1":I
    move v2, v10

    .line 513
    .local v2, "rc$iv":I
    invoke-virtual {v6, v2}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 514
    nop

    .line 193
    .end local v2    # "rc$iv":I
    .end local v6    # "$this$read$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v7    # "$i$f$read":I
    const/4 v2, 0x0

    return v2
.end method

.method public static final decodeUTF8LineLoopSuspend(Ljava/lang/Appendable;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/core/Input;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;

    iget v2, v1, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;

    invoke-direct {v1, v0}, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v1, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 25
    iget v3, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->label:I

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v3, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->I$0:I

    .local v3, "limit":I
    iget-object v6, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$6:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v6, "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v7, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v7, "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v8, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$IntRef;

    .local v8, "size":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v9, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    .local v9, "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v10, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .local v10, "afterRead":Lkotlin/jvm/functions/Function1;
    iget-object v11, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    .local v11, "nextChunk":Lkotlin/jvm/functions/Function2;
    iget-object v12, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Appendable;

    .local v12, "out":Ljava/lang/Appendable;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v13

    goto :goto_2

    .end local v3    # "limit":I
    .end local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v8    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v10    # "afterRead":Lkotlin/jvm/functions/Function1;
    .end local v11    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .end local v12    # "out":Ljava/lang/Appendable;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p0

    .local v3, "out":Ljava/lang/Appendable;
    move-object/from16 v6, p2

    .local v6, "nextChunk":Lkotlin/jvm/functions/Function2;
    move/from16 v7, p1

    .local v7, "limit":I
    move-object/from16 v8, p3

    .line 31
    .local v8, "afterRead":Lkotlin/jvm/functions/Function1;
    new-instance v9, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 32
    .restart local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .local v10, "size":Lkotlin/jvm/internal/Ref$IntRef;
    iput v5, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 33
    new-instance v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 34
    .local v11, "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object/from16 v37, v12

    move-object v12, v3

    move v3, v7

    move-object v7, v11

    move-object v11, v6

    move-object/from16 v6, v37

    move-object/from16 v38, v10

    move-object v10, v8

    move-object/from16 v8, v38

    .line 36
    .local v3, "limit":I
    .local v6, "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v7, "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v8, "size":Lkotlin/jvm/internal/Ref$IntRef;
    .local v10, "afterRead":Lkotlin/jvm/functions/Function1;
    .local v11, "nextChunk":Lkotlin/jvm/functions/Function2;
    .restart local v12    # "out":Ljava/lang/Appendable;
    :goto_1
    iget-boolean v13, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v13, :cond_2f

    iget v13, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eqz v13, :cond_2f

    .line 37
    iget v13, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v13

    iput-object v12, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$2:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$3:Ljava/lang/Object;

    iput-object v8, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$4:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$5:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->L$6:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->I$0:I

    iput v5, v0, Lio/ktor/utils/io/core/internal/UTF8Kt$decodeUTF8LineLoopSuspend$1;->label:I

    invoke-interface {v11, v13, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v2, :cond_1

    .line 25
    return-object v2

    .line 37
    :cond_1
    move-object/from16 v37, v1

    move-object v1, v0

    move-object v0, v2

    move-object/from16 v2, v37

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local v2, "$result":Ljava/lang/Object;
    :goto_2
    check-cast v13, Lio/ktor/utils/io/core/Input;

    if-nez v13, :cond_2

    move-object v0, v1

    move-object v1, v2

    const/4 v14, 0x0

    .end local v3    # "limit":I
    .end local v10    # "afterRead":Lkotlin/jvm/functions/Function1;
    .end local v11    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .end local v12    # "out":Ljava/lang/Appendable;
    goto/16 :goto_1c

    .line 38
    .restart local v3    # "limit":I
    .restart local v10    # "afterRead":Lkotlin/jvm/functions/Function1;
    .restart local v11    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .restart local v12    # "out":Ljava/lang/Appendable;
    .local v13, "chunk":Lio/ktor/utils/io/core/Input;
    :cond_2
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v14

    .line 40
    .local v14, "totalBytes":J
    move-object/from16 p0, v13

    .line 389
    .local p0, "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    const/4 v4, 0x1

    .local v4, "initialSize$iv":I
    const/16 v16, 0x0

    .line 390
    .local v16, "$i$f$takeWhileSize":I
    const/16 v17, 0x1

    .line 391
    .local v17, "release$iv":Z
    move-object/from16 v5, p0

    .end local p0    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .local v5, "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    invoke-static {v5, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v19

    if-nez v19, :cond_3

    move-object/from16 p0, v0

    move-object/from16 p2, v1

    move-object/from16 v29, v2

    move-object/from16 v28, v10

    move-object/from16 v33, v11

    move-object/from16 v34, v13

    move-wide/from16 v31, v14

    const/4 v14, 0x0

    .end local v4    # "initialSize$iv":I
    .end local v5    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v17    # "release$iv":Z
    goto/16 :goto_1a

    .line 392
    .restart local v4    # "initialSize$iv":I
    .restart local v5    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v17    # "release$iv":Z
    .local v19, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_3
    move/from16 v20, v4

    .line 394
    .end local v4    # "initialSize$iv":I
    .local v20, "size$iv":I
    move-object/from16 p0, v0

    move-object/from16 v4, v19

    move/from16 v0, v20

    .line 396
    .end local v19    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v20    # "size$iv":I
    .local v0, "size$iv":I
    .local v4, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_3
    :try_start_0
    move-object/from16 v19, v4

    check-cast v19, Lio/ktor/utils/io/core/Buffer;

    .local v19, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v20, 0x0

    .line 397
    .local v20, "$i$f$getReadRemaining":I
    invoke-virtual/range {v19 .. v19}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v21

    invoke-virtual/range {v19 .. v19}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    sub-int v21, v21, v22

    .line 396
    .end local v19    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v20    # "$i$f$getReadRemaining":I
    move/from16 p1, v21

    .line 398
    .local p1, "before$iv":I
    move-object/from16 p2, v1

    move/from16 v1, p1

    .end local p1    # "before$iv":I
    .local v1, "before$iv":I
    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    if-lt v1, v0, :cond_27

    .line 399
    .end local v0    # "size$iv":I
    .end local v1    # "before$iv":I
    nop

    .line 400
    :try_start_1
    move-object v0, v4

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 41
    .local v1, "$i$a$-takeWhileSize$default-UTF8Kt$decodeUTF8LineLoopSuspend$2":I
    new-instance v19, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct/range {v19 .. v19}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object/from16 p1, v19

    .line 42
    .local p1, "skip":Lkotlin/jvm/internal/Ref$IntRef;
    move-object/from16 p3, v0

    .local p3, "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v19, 0x0

    .line 401
    .local v19, "$i$f$decodeUTF8":I
    new-instance v20, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct/range {v20 .. v20}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object/from16 v21, v20

    .line 402
    .local v21, "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v20, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct/range {v20 .. v20}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object/from16 v22, v20

    .line 403
    .local v22, "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v20, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct/range {v20 .. v20}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object/from16 v23, v20

    .line 405
    .local v23, "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    move-object/from16 v20, p3

    .local v20, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v24, 0x0

    .line 406
    .local v24, "$i$f$read":I
    nop

    .line 410
    invoke-virtual/range {v20 .. v20}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v25

    invoke-virtual/range {v20 .. v20}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v26

    invoke-virtual/range {v20 .. v20}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .local v25, "memory$iv":Ljava/nio/ByteBuffer;
    .local v26, "start$iv":I
    move/from16 v28, v27

    .local v28, "endExclusive$iv":I
    const/16 v27, 0x0

    .line 411
    .local v27, "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    move/from16 v29, v26

    move/from16 v30, v1

    move/from16 v1, v29

    .local v1, "index$iv":I
    .local v30, "$i$a$-takeWhileSize$default-UTF8Kt$decodeUTF8LineLoopSuspend$2":I
    :goto_4
    move-object/from16 v29, v2

    move/from16 v2, v28

    .end local v28    # "endExclusive$iv":I
    .local v2, "endExclusive$iv":I
    .local v29, "$result":Ljava/lang/Object;
    if-ge v1, v2, :cond_24

    .line 412
    move-object/from16 v28, v25

    .local v28, "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v31, 0x0

    .line 413
    .local v31, "$i$f$get-eY85DW0":I
    const/16 v32, 0x0

    .line 414
    .local v32, "$i$f$loadAt-impl":I
    move-object/from16 v33, v11

    move-object/from16 v11, v28

    move-object/from16 v28, v10

    .end local v10    # "afterRead":Lkotlin/jvm/functions/Function1;
    .local v11, "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .local v28, "afterRead":Lkotlin/jvm/functions/Function1;
    .local v33, "nextChunk":Lkotlin/jvm/functions/Function2;
    :try_start_2
    invoke-virtual {v11, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 413
    .end local v32    # "$i$f$loadAt-impl":I
    nop

    .line 412
    .end local v11    # "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .end local v31    # "$i$f$get-eY85DW0":I
    and-int/lit16 v10, v10, 0xff

    .line 415
    .local v10, "v$iv":I
    nop

    .line 416
    and-int/lit16 v11, v10, 0x80

    move-wide/from16 v31, v14

    .end local v14    # "totalBytes":J
    .local v31, "totalBytes":J
    const-string v14, " exceeded"

    const-string v15, "Too many characters in line: limit "

    move-object/from16 v34, v13

    .end local v13    # "chunk":Lio/ktor/utils/io/core/Input;
    .local v34, "chunk":Lio/ktor/utils/io/core/Input;
    const/16 v35, -0x1

    if-nez v11, :cond_b

    .line 417
    move-object/from16 v11, v21

    .end local v21    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .local v11, "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    :try_start_3
    iget v13, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v13, :cond_a

    .line 418
    int-to-char v10, v10

    .local v10, "ch":C
    const/4 v13, 0x0

    .line 43
    .local v13, "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    nop

    .line 44
    move/from16 v36, v13

    const/16 v13, 0xd

    .end local v13    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    .local v36, "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    if-ne v10, v13, :cond_5

    .line 45
    .end local v10    # "ch":C
    :try_start_4
    iget-boolean v10, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v10, :cond_4

    .line 46
    const/4 v10, 0x1

    iput-boolean v10, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 47
    move-object/from16 v13, p1

    move-object/from16 p1, v5

    const/4 v5, 0x0

    goto :goto_6

    .line 49
    :cond_4
    const/4 v10, 0x1

    iput-boolean v10, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 50
    move-object/from16 v13, p1

    move-object/from16 p1, v5

    const/4 v5, 0x1

    goto :goto_5

    .line 479
    .end local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "index$iv":I
    .end local v2    # "endExclusive$iv":I
    .end local v3    # "limit":I
    .end local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v8    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v11    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v12    # "out":Ljava/lang/Appendable;
    .end local v19    # "$i$f$decodeUTF8":I
    .end local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v22    # "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v23    # "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v24    # "$i$f$read":I
    .end local v25    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v26    # "start$iv":I
    .end local v27    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .end local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    .end local v30    # "$i$a$-takeWhileSize$default-UTF8Kt$decodeUTF8LineLoopSuspend$2":I
    .end local v31    # "totalBytes":J
    .end local v33    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .end local v34    # "chunk":Lio/ktor/utils/io/core/Input;
    .end local v36    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    .end local p1    # "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .end local p3    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    :catchall_0
    move-exception v0

    move-object/from16 p3, v4

    move-object/from16 p1, v5

    goto/16 :goto_15

    .line 52
    .restart local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v1    # "index$iv":I
    .restart local v2    # "endExclusive$iv":I
    .restart local v3    # "limit":I
    .restart local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v8    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v10    # "ch":C
    .restart local v11    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v12    # "out":Ljava/lang/Appendable;
    .restart local v19    # "$i$f$decodeUTF8":I
    .restart local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v22    # "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v23    # "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v24    # "$i$f$read":I
    .restart local v25    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v26    # "start$iv":I
    .restart local v27    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .restart local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    .restart local v30    # "$i$a$-takeWhileSize$default-UTF8Kt$decodeUTF8LineLoopSuspend$2":I
    .restart local v31    # "totalBytes":J
    .restart local v33    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .restart local v34    # "chunk":Lio/ktor/utils/io/core/Input;
    .restart local v36    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    .restart local p1    # "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local p3    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    :cond_5
    const/16 v13, 0xa

    if-ne v10, v13, :cond_6

    .line 53
    .end local v10    # "ch":C
    const/4 v10, 0x1

    iput-boolean v10, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 54
    move-object/from16 v13, p1

    .end local p1    # "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .local v13, "skip":Lkotlin/jvm/internal/Ref$IntRef;
    iput v10, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 55
    move-object/from16 p1, v5

    const/4 v5, 0x0

    goto :goto_5

    .line 58
    .end local v13    # "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v10    # "ch":C
    .restart local p1    # "skip":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_6
    move-object/from16 v13, p1

    .end local p1    # "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v13    # "skip":Lkotlin/jvm/internal/Ref$IntRef;
    move-object/from16 p1, v5

    .end local v5    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .local p1, "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    :try_start_5
    iget-boolean v5, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v5, :cond_7

    .line 59
    .end local v10    # "ch":C
    const/4 v5, 0x1

    iput-boolean v5, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 60
    const/4 v5, 0x0

    goto :goto_6

    .line 63
    .restart local v10    # "ch":C
    :cond_7
    iget v5, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq v5, v3, :cond_9

    .line 66
    iget v5, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v14, 0x1

    add-int/2addr v5, v14

    iput v5, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 67
    int-to-char v5, v10

    invoke-interface {v12, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 68
    const/4 v5, 0x1

    .line 43
    .end local v10    # "ch":C
    :goto_5
    nop

    .line 418
    .end local v36    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    :goto_6
    if-nez v5, :cond_8

    .line 419
    .end local v2    # "endExclusive$iv":I
    .end local v11    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v22    # "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v23    # "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v25    # "memory$iv":Ljava/nio/ByteBuffer;
    sub-int v2, v1, v26

    move-object/from16 v5, p3

    .end local p3    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .local v5, "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    invoke-virtual {v5, v2}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 420
    .end local v1    # "index$iv":I
    .end local v5    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v26    # "start$iv":I
    move-object/from16 v22, v0

    move-object/from16 p3, v4

    move-object/from16 v23, v8

    move/from16 v0, v35

    const/4 v14, 0x0

    goto/16 :goto_12

    .line 418
    .restart local v1    # "index$iv":I
    .restart local v2    # "endExclusive$iv":I
    .restart local v11    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v22    # "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v23    # "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v25    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v26    # "start$iv":I
    .restart local p3    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    :cond_8
    move-object/from16 v5, p3

    .end local p3    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v5    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    move-object/from16 p3, v4

    move-object/from16 v4, v23

    const/4 v14, 0x0

    move-object/from16 v23, v8

    move-object/from16 v37, v22

    move-object/from16 v22, v0

    move-object/from16 v0, v37

    goto/16 :goto_11

    .line 63
    .end local v5    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v10    # "ch":C
    .restart local v36    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    .restart local p3    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    :cond_9
    move-object/from16 v5, p3

    .line 64
    .end local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "index$iv":I
    .end local v2    # "endExclusive$iv":I
    .end local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v8    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v10    # "ch":C
    .end local v11    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v12    # "out":Ljava/lang/Appendable;
    .end local v13    # "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v22    # "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v23    # "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v25    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v26    # "start$iv":I
    .end local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    .end local v31    # "totalBytes":J
    .end local v33    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .end local v34    # "chunk":Lio/ktor/utils/io/core/Input;
    .end local p3    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    new-instance v0, Lio/ktor/utils/io/charsets/TooLongLineException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/utils/io/charsets/TooLongLineException;-><init>(Ljava/lang/String;)V

    .end local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v16    # "$i$f$takeWhileSize":I
    .end local v17    # "release$iv":Z
    .end local v29    # "$result":Ljava/lang/Object;
    .end local p1    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    throw v0

    .line 417
    .end local v36    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    .restart local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v1    # "index$iv":I
    .restart local v2    # "endExclusive$iv":I
    .restart local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v5, "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v8    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .local v10, "v$iv":I
    .restart local v11    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v12    # "out":Ljava/lang/Appendable;
    .restart local v16    # "$i$f$takeWhileSize":I
    .restart local v17    # "release$iv":Z
    .restart local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v22    # "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v23    # "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v25    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v26    # "start$iv":I
    .restart local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    .restart local v29    # "$result":Ljava/lang/Object;
    .restart local v31    # "totalBytes":J
    .restart local v33    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .restart local v34    # "chunk":Lio/ktor/utils/io/core/Input;
    .local p1, "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p3    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    :cond_a
    move-object/from16 v13, p1

    move-object/from16 p1, v5

    move-object/from16 v5, p3

    .end local p3    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .local v5, "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v13    # "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .local p1, "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    iget v14, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v14}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedByteCount(I)Ljava/lang/Void;

    new-instance v14, Lkotlin/KotlinNothingValueException;

    invoke-direct {v14}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v16    # "$i$f$takeWhileSize":I
    .end local v17    # "release$iv":Z
    .end local v29    # "$result":Ljava/lang/Object;
    .end local p1    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    throw v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 479
    .end local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "index$iv":I
    .end local v2    # "endExclusive$iv":I
    .end local v3    # "limit":I
    .end local v5    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v8    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v10    # "v$iv":I
    .end local v11    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v12    # "out":Ljava/lang/Appendable;
    .end local v13    # "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v19    # "$i$f$decodeUTF8":I
    .end local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v22    # "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v23    # "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v24    # "$i$f$read":I
    .end local v25    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v26    # "start$iv":I
    .end local v27    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .end local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    .end local v30    # "$i$a$-takeWhileSize$default-UTF8Kt$decodeUTF8LineLoopSuspend$2":I
    .end local v31    # "totalBytes":J
    .end local v33    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .end local v34    # "chunk":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v16    # "$i$f$takeWhileSize":I
    .restart local v17    # "release$iv":Z
    .restart local v29    # "$result":Ljava/lang/Object;
    .restart local p1    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :catchall_1
    move-exception v0

    move-object/from16 p3, v4

    goto/16 :goto_15

    .end local p1    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .local v5, "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    :catchall_2
    move-exception v0

    move-object/from16 p1, v5

    move-object/from16 p3, v4

    .end local v5    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    goto/16 :goto_15

    .line 423
    .restart local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v1    # "index$iv":I
    .restart local v2    # "endExclusive$iv":I
    .restart local v3    # "limit":I
    .restart local v5    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v8    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v10    # "v$iv":I
    .restart local v12    # "out":Ljava/lang/Appendable;
    .restart local v19    # "$i$f$decodeUTF8":I
    .restart local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v21    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v22    # "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v23    # "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v24    # "$i$f$read":I
    .restart local v25    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v26    # "start$iv":I
    .restart local v27    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .restart local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    .restart local v30    # "$i$a$-takeWhileSize$default-UTF8Kt$decodeUTF8LineLoopSuspend$2":I
    .restart local v31    # "totalBytes":J
    .restart local v33    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .restart local v34    # "chunk":Lio/ktor/utils/io/core/Input;
    .local p1, "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local p3    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    :cond_b
    move-object/from16 v13, p1

    move-object/from16 p1, v5

    move-object/from16 v11, v21

    move-object/from16 v5, p3

    .end local v21    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local p3    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .local v5, "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v11    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v13    # "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .local p1, "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    move-object/from16 p3, v4

    .end local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local p3, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :try_start_6
    iget v4, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v4, :cond_f

    .line 426
    const/16 v4, 0x80

    .line 427
    .local v4, "mask$iv":I
    move-object/from16 v14, v22

    .end local v22    # "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .local v14, "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    iput v10, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 429
    .end local v10    # "v$iv":I
    const/4 v10, 0x1

    .local v10, "i$iv":I
    :goto_7
    const/4 v15, 0x7

    if-ge v10, v15, :cond_d

    .line 430
    iget v15, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    and-int/2addr v15, v4

    if-eqz v15, :cond_c

    .line 431
    iget v15, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v22, v0

    .end local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .local v22, "buffer":Lio/ktor/utils/io/core/Buffer;
    not-int v0, v4

    and-int/2addr v0, v15

    iput v0, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 432
    shr-int/lit8 v4, v4, 0x1

    .line 433
    iget v0, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v15, 0x1

    add-int/2addr v0, v15

    iput v0, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 429
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v22

    goto :goto_7

    .line 430
    .end local v22    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    :cond_c
    move-object/from16 v22, v0

    .line 435
    .end local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "mask$iv":I
    .restart local v22    # "buffer":Lio/ktor/utils/io/core/Buffer;
    goto :goto_8

    .line 429
    .end local v22    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "mask$iv":I
    :cond_d
    move-object/from16 v22, v0

    .line 439
    .end local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "mask$iv":I
    .end local v10    # "i$iv":I
    .restart local v22    # "buffer":Lio/ktor/utils/io/core/Buffer;
    :goto_8
    iget v0, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v4, v23

    .end local v23    # "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .local v4, "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    iput v0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 440
    iget v0, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 442
    iget v0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int v10, v2, v1

    if-le v0, v10, :cond_e

    .line 443
    .end local v2    # "endExclusive$iv":I
    .end local v11    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v14    # "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v25    # "memory$iv":Ljava/nio/ByteBuffer;
    sub-int v0, v1, v26

    invoke-virtual {v5, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 444
    .end local v1    # "index$iv":I
    .end local v5    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v26    # "start$iv":I
    iget v0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v23, v8

    const/4 v14, 0x0

    goto/16 :goto_12

    .line 442
    .restart local v1    # "index$iv":I
    .restart local v2    # "endExclusive$iv":I
    .restart local v5    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v11    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v14    # "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v25    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v26    # "start$iv":I
    :cond_e
    move-object/from16 v23, v8

    move-object v0, v14

    const/4 v14, 0x0

    goto/16 :goto_11

    .line 449
    .end local v4    # "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v14    # "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .local v10, "v$iv":I
    .local v22, "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v23    # "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_f
    move-object/from16 v4, v23

    move-object/from16 v37, v22

    move-object/from16 v22, v0

    move-object/from16 v0, v37

    .end local v23    # "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .local v0, "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v4    # "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .local v22, "buffer":Lio/ktor/utils/io/core/Buffer;
    move-object/from16 v23, v8

    .end local v8    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .local v23, "size":Lkotlin/jvm/internal/Ref$IntRef;
    iget v8, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    shl-int/lit8 v8, v8, 0x6

    and-int/lit8 v36, v10, 0x7f

    or-int v8, v8, v36

    iput v8, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 450
    .end local v10    # "v$iv":I
    iget v8, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 452
    iget v8, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v8, :cond_23

    .line 453
    iget v8, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v8}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isBmpCodePoint(I)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 454
    iget v8, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-char v8, v8

    .local v8, "ch":C
    const/4 v10, 0x0

    .line 43
    .local v10, "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    nop

    .line 44
    move/from16 v36, v10

    const/16 v10, 0xd

    .end local v10    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    .restart local v36    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    if-ne v8, v10, :cond_11

    .line 45
    .end local v8    # "ch":C
    iget-boolean v8, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v8, :cond_10

    .line 46
    const/4 v8, 0x1

    iput-boolean v8, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 47
    const/4 v8, 0x0

    goto :goto_a

    .line 49
    :cond_10
    const/4 v8, 0x1

    iput-boolean v8, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 50
    const/4 v8, 0x1

    goto :goto_9

    .line 52
    .restart local v8    # "ch":C
    :cond_11
    const/16 v10, 0xa

    if-ne v8, v10, :cond_12

    .line 53
    .end local v8    # "ch":C
    const/4 v8, 0x1

    iput-boolean v8, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 54
    iput v8, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 55
    const/4 v8, 0x0

    goto :goto_9

    .line 58
    .restart local v8    # "ch":C
    :cond_12
    iget-boolean v10, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v10, :cond_13

    .line 59
    .end local v8    # "ch":C
    const/4 v8, 0x1

    iput-boolean v8, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 60
    const/4 v8, 0x0

    goto :goto_a

    .line 63
    .restart local v8    # "ch":C
    :cond_13
    iget v10, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq v10, v3, :cond_14

    .line 66
    iget v10, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v14, 0x1

    add-int/2addr v10, v14

    iput v10, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 67
    int-to-char v10, v8

    invoke-interface {v12, v10}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 68
    const/4 v8, 0x1

    .line 43
    .end local v8    # "ch":C
    :goto_9
    nop

    .line 454
    .end local v36    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    :goto_a
    if-nez v8, :cond_1e

    .line 455
    .end local v0    # "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v2    # "endExclusive$iv":I
    .end local v11    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v25    # "memory$iv":Ljava/nio/ByteBuffer;
    sub-int v0, v1, v26

    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {v5, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 456
    .end local v1    # "index$iv":I
    .end local v4    # "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v5    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v26    # "start$iv":I
    move/from16 v0, v35

    const/4 v14, 0x0

    goto/16 :goto_12

    .line 64
    .end local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v12    # "out":Ljava/lang/Appendable;
    .end local v13    # "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v22    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v23    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    .end local v31    # "totalBytes":J
    .end local v33    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .end local v34    # "chunk":Lio/ktor/utils/io/core/Input;
    .restart local v36    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    :cond_14
    new-instance v0, Lio/ktor/utils/io/charsets/TooLongLineException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/utils/io/charsets/TooLongLineException;-><init>(Ljava/lang/String;)V

    .end local v16    # "$i$f$takeWhileSize":I
    .end local v17    # "release$iv":Z
    .end local v29    # "$result":Ljava/lang/Object;
    .end local p1    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_b
    throw v0

    .line 458
    .end local v36    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    .restart local v0    # "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v1    # "index$iv":I
    .restart local v2    # "endExclusive$iv":I
    .restart local v4    # "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v5    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v11    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v12    # "out":Ljava/lang/Appendable;
    .restart local v13    # "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v16    # "$i$f$takeWhileSize":I
    .restart local v17    # "release$iv":Z
    .restart local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v22    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v23    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v25    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v26    # "start$iv":I
    .restart local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    .restart local v29    # "$result":Ljava/lang/Object;
    .restart local v31    # "totalBytes":J
    .restart local v33    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .restart local v34    # "chunk":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_15
    iget v8, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v8}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isValidCodePoint(I)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 461
    iget v8, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v8}, Lio/ktor/utils/io/core/internal/UTF8Kt;->highSurrogate(I)I

    move-result v8

    int-to-char v8, v8

    .restart local v8    # "ch":C
    const/4 v10, 0x0

    .line 43
    .restart local v10    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    nop

    .line 44
    move/from16 v36, v10

    const/16 v10, 0xd

    .end local v10    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    .restart local v36    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    if-ne v8, v10, :cond_17

    .line 45
    .end local v8    # "ch":C
    iget-boolean v8, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v8, :cond_16

    .line 46
    const/4 v8, 0x1

    iput-boolean v8, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 47
    const/4 v8, 0x0

    goto :goto_d

    .line 49
    :cond_16
    const/4 v8, 0x1

    iput-boolean v8, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 50
    const/4 v8, 0x1

    goto :goto_c

    .line 52
    .restart local v8    # "ch":C
    :cond_17
    const/16 v10, 0xa

    if-ne v8, v10, :cond_18

    .line 53
    .end local v8    # "ch":C
    const/4 v8, 0x1

    iput-boolean v8, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 54
    iput v8, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 55
    const/4 v8, 0x0

    goto :goto_c

    .line 58
    .restart local v8    # "ch":C
    :cond_18
    iget-boolean v10, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v10, :cond_19

    .line 59
    .end local v8    # "ch":C
    const/4 v8, 0x1

    iput-boolean v8, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 60
    const/4 v8, 0x0

    goto :goto_d

    .line 63
    .restart local v8    # "ch":C
    :cond_19
    iget v10, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq v10, v3, :cond_21

    .line 66
    iget v10, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v18, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 67
    int-to-char v10, v8

    invoke-interface {v12, v10}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 68
    const/4 v8, 0x1

    .line 43
    .end local v8    # "ch":C
    :goto_c
    nop

    .line 461
    .end local v36    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    :goto_d
    if-eqz v8, :cond_20

    .line 462
    iget v8, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v8}, Lio/ktor/utils/io/core/internal/UTF8Kt;->lowSurrogate(I)I

    move-result v8

    int-to-char v8, v8

    .restart local v8    # "ch":C
    const/4 v10, 0x0

    .line 43
    .restart local v10    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    nop

    .line 44
    move/from16 v36, v10

    const/16 v10, 0xd

    .end local v10    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    .restart local v36    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    if-ne v8, v10, :cond_1b

    .line 45
    .end local v8    # "ch":C
    iget-boolean v8, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v8, :cond_1a

    .line 46
    const/4 v8, 0x1

    iput-boolean v8, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 47
    const/4 v8, 0x0

    goto :goto_f

    .line 49
    :cond_1a
    const/4 v8, 0x1

    iput-boolean v8, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 50
    const/4 v8, 0x1

    goto :goto_e

    .line 52
    .restart local v8    # "ch":C
    :cond_1b
    const/16 v10, 0xa

    if-ne v8, v10, :cond_1c

    .line 53
    .end local v8    # "ch":C
    const/4 v8, 0x1

    iput-boolean v8, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 54
    iput v8, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 55
    const/4 v8, 0x0

    goto :goto_e

    .line 58
    .restart local v8    # "ch":C
    :cond_1c
    iget-boolean v10, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v10, :cond_1d

    .line 59
    .end local v8    # "ch":C
    const/4 v8, 0x1

    iput-boolean v8, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 60
    const/4 v8, 0x0

    goto :goto_f

    .line 63
    .restart local v8    # "ch":C
    :cond_1d
    iget v10, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq v10, v3, :cond_1f

    .line 66
    iget v10, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v14, 0x1

    add-int/2addr v10, v14

    iput v10, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 67
    int-to-char v10, v8

    invoke-interface {v12, v10}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 68
    const/4 v8, 0x1

    .line 43
    .end local v8    # "ch":C
    :goto_e
    nop

    .line 462
    .end local v36    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    :goto_f
    if-nez v8, :cond_1e

    const/4 v14, 0x0

    goto :goto_10

    .line 469
    :cond_1e
    const/4 v14, 0x0

    iput v14, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_11

    .line 64
    .end local v0    # "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v1    # "index$iv":I
    .end local v2    # "endExclusive$iv":I
    .end local v4    # "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v5    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v11    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v12    # "out":Ljava/lang/Appendable;
    .end local v13    # "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v22    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v23    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v25    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v26    # "start$iv":I
    .end local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    .end local v31    # "totalBytes":J
    .end local v33    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .end local v34    # "chunk":Lio/ktor/utils/io/core/Input;
    .restart local v36    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    :cond_1f
    new-instance v0, Lio/ktor/utils/io/charsets/TooLongLineException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/utils/io/charsets/TooLongLineException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 461
    .end local v36    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    .restart local v0    # "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v1    # "index$iv":I
    .restart local v2    # "endExclusive$iv":I
    .restart local v4    # "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v5    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v11    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v12    # "out":Ljava/lang/Appendable;
    .restart local v13    # "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v22    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v23    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v25    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v26    # "start$iv":I
    .restart local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    .restart local v31    # "totalBytes":J
    .restart local v33    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .restart local v34    # "chunk":Lio/ktor/utils/io/core/Input;
    :cond_20
    const/4 v14, 0x0

    .line 464
    .end local v0    # "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v2    # "endExclusive$iv":I
    .end local v11    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v25    # "memory$iv":Ljava/nio/ByteBuffer;
    :goto_10
    sub-int v0, v1, v26

    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {v5, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 465
    .end local v1    # "index$iv":I
    .end local v4    # "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v5    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v26    # "start$iv":I
    move/from16 v0, v35

    goto/16 :goto_12

    .line 64
    .end local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v12    # "out":Ljava/lang/Appendable;
    .end local v13    # "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v22    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v23    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    .end local v31    # "totalBytes":J
    .end local v33    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .end local v34    # "chunk":Lio/ktor/utils/io/core/Input;
    .restart local v36    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    :cond_21
    new-instance v0, Lio/ktor/utils/io/charsets/TooLongLineException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/utils/io/charsets/TooLongLineException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 459
    .end local v3    # "limit":I
    .end local v36    # "$i$a$-decodeUTF8-UTF8Kt$decodeUTF8LineLoopSuspend$2$1":I
    .restart local v0    # "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_22
    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v1}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v16    # "$i$f$takeWhileSize":I
    .end local v17    # "release$iv":Z
    .end local v29    # "$result":Ljava/lang/Object;
    .end local p1    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    throw v1

    .line 452
    .restart local v1    # "index$iv":I
    .restart local v2    # "endExclusive$iv":I
    .restart local v3    # "limit":I
    .restart local v4    # "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v5    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v11    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v12    # "out":Ljava/lang/Appendable;
    .restart local v13    # "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v16    # "$i$f$takeWhileSize":I
    .restart local v17    # "release$iv":Z
    .restart local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v22    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v23    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v25    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v26    # "start$iv":I
    .restart local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    .restart local v29    # "$result":Ljava/lang/Object;
    .restart local v31    # "totalBytes":J
    .restart local v33    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .restart local v34    # "chunk":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_23
    const/4 v14, 0x0

    .line 411
    :goto_11
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v21, v11

    move-object/from16 v8, v23

    move-object/from16 v10, v28

    move-wide/from16 v14, v31

    move-object/from16 v11, v33

    move/from16 v28, v2

    move-object/from16 v23, v4

    move-object/from16 v2, v29

    move-object/from16 v4, p3

    move-object/from16 p3, v5

    move-object/from16 v5, p1

    move-object/from16 p1, v13

    move-object/from16 v13, v34

    move-object/from16 v37, v22

    move-object/from16 v22, v0

    move-object/from16 v0, v37

    goto/16 :goto_4

    .line 479
    .end local v0    # "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v1    # "index$iv":I
    .end local v2    # "endExclusive$iv":I
    .end local v3    # "limit":I
    .end local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v11    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v12    # "out":Ljava/lang/Appendable;
    .end local v13    # "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v19    # "$i$f$decodeUTF8":I
    .end local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v22    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v23    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v24    # "$i$f$read":I
    .end local v25    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v26    # "start$iv":I
    .end local v27    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .end local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    .end local v30    # "$i$a$-takeWhileSize$default-UTF8Kt$decodeUTF8LineLoopSuspend$2":I
    .end local v31    # "totalBytes":J
    .end local v33    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .end local v34    # "chunk":Lio/ktor/utils/io/core/Input;
    .end local p1    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local p3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v4, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v5, "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    :catchall_3
    move-exception v0

    move-object/from16 p3, v4

    move-object/from16 p1, v5

    .end local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v5    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local p3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    goto/16 :goto_15

    .line 411
    .local v0, "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v1    # "index$iv":I
    .restart local v2    # "endExclusive$iv":I
    .restart local v3    # "limit":I
    .restart local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v5    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v8, "size":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .local v10, "afterRead":Lkotlin/jvm/functions/Function1;
    .local v11, "nextChunk":Lkotlin/jvm/functions/Function2;
    .restart local v12    # "out":Ljava/lang/Appendable;
    .local v13, "chunk":Lio/ktor/utils/io/core/Input;
    .local v14, "totalBytes":J
    .restart local v19    # "$i$f$decodeUTF8":I
    .restart local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v21    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .local v22, "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .local v23, "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v24    # "$i$f$read":I
    .restart local v25    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v26    # "start$iv":I
    .restart local v27    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .restart local v30    # "$i$a$-takeWhileSize$default-UTF8Kt$decodeUTF8LineLoopSuspend$2":I
    .local p1, "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .local p3, "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    :cond_24
    move-object/from16 v28, v10

    move-object/from16 v33, v11

    move-object/from16 v34, v13

    move-wide/from16 v31, v14

    move-object/from16 v11, v21

    const/4 v14, 0x0

    move-object/from16 v13, p1

    move-object/from16 p1, v5

    move-object/from16 v5, p3

    move-object/from16 p3, v4

    move-object/from16 v4, v23

    move-object/from16 v23, v8

    move-object/from16 v37, v22

    move-object/from16 v22, v0

    move-object/from16 v0, v37

    .line 475
    .end local v1    # "index$iv":I
    .end local v8    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v10    # "afterRead":Lkotlin/jvm/functions/Function1;
    .end local v14    # "totalBytes":J
    .end local v21    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .local v0, "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .local v4, "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .local v5, "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .local v11, "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .local v13, "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .local v22, "buffer":Lio/ktor/utils/io/core/Buffer;
    .local v23, "size":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    .restart local v31    # "totalBytes":J
    .restart local v33    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .restart local v34    # "chunk":Lio/ktor/utils/io/core/Input;
    .local p1, "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .local p3, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    sub-int v1, v2, v26

    .line 410
    .end local v2    # "endExclusive$iv":I
    .end local v25    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v26    # "start$iv":I
    .end local v27    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    nop

    .line 476
    .local v1, "rc$iv$iv":I
    move-object/from16 v2, v20

    .end local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .local v2, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    invoke-virtual {v2, v1}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 477
    nop

    .line 478
    .end local v1    # "rc$iv$iv":I
    .end local v2    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v24    # "$i$f$read":I
    move v0, v14

    .line 42
    .end local v0    # "value$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v4    # "lastByteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v5    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v11    # "byteCount$iv":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v19    # "$i$f$decodeUTF8":I
    :goto_12
    move-object/from16 v8, v23

    .end local v23    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v8    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    iput v0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 73
    iget v0, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v0, :cond_25

    .line 74
    iget v0, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v1, v22

    .end local v22    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .local v1, "buffer":Lio/ktor/utils/io/core/Buffer;
    invoke-virtual {v1, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    goto :goto_13

    .line 73
    .end local v1    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v22    # "buffer":Lio/ktor/utils/io/core/Buffer;
    :cond_25
    move-object/from16 v1, v22

    .line 77
    .end local v13    # "skip":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v22    # "buffer":Lio/ktor/utils/io/core/Buffer;
    :goto_13
    iget-boolean v0, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_26

    move v0, v14

    goto :goto_14

    :cond_26
    iget v0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    :goto_14
    iput v0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 79
    iget v0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 400
    .end local v30    # "$i$a$-takeWhileSize$default-UTF8Kt$decodeUTF8LineLoopSuspend$2":I
    nop

    .line 479
    .local v0, "size$iv":I
    :try_start_7
    move-object/from16 v1, p3

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    .local v1, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 397
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 479
    .end local v1    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    move v1, v4

    .line 480
    .local v1, "after$iv":I
    goto :goto_16

    .line 479
    .end local v0    # "size$iv":I
    .end local v1    # "after$iv":I
    .end local v3    # "limit":I
    .end local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v8    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v12    # "out":Ljava/lang/Appendable;
    .end local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    .end local v31    # "totalBytes":J
    .end local v33    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .end local v34    # "chunk":Lio/ktor/utils/io/core/Input;
    :catchall_4
    move-exception v0

    goto :goto_15

    .end local v29    # "$result":Ljava/lang/Object;
    .end local p1    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local p3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v2, "$result":Ljava/lang/Object;
    .local v4, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v5, "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    :catchall_5
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 p3, v4

    move-object/from16 p1, v5

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v5    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v29    # "$result":Ljava/lang/Object;
    .restart local p1    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local p3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_15
    move-object/from16 v1, p3

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    .local v1, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 397
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    .line 479
    .end local v1    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    nop

    .end local v16    # "$i$f$takeWhileSize":I
    .end local v17    # "release$iv":Z
    .end local v29    # "$result":Ljava/lang/Object;
    .end local p1    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 501
    .restart local v16    # "$i$f$takeWhileSize":I
    .restart local v17    # "release$iv":Z
    .restart local v29    # "$result":Ljava/lang/Object;
    .restart local p1    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_6
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    goto/16 :goto_1b

    .line 482
    .end local v29    # "$result":Ljava/lang/Object;
    .end local p1    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local p3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v0    # "size$iv":I
    .local v1, "before$iv":I
    .local v2, "$result":Ljava/lang/Object;
    .restart local v3    # "limit":I
    .restart local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v5    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v8    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v10    # "afterRead":Lkotlin/jvm/functions/Function1;
    .local v11, "nextChunk":Lkotlin/jvm/functions/Function2;
    .restart local v12    # "out":Ljava/lang/Appendable;
    .local v13, "chunk":Lio/ktor/utils/io/core/Input;
    .restart local v14    # "totalBytes":J
    :cond_27
    move-object/from16 v29, v2

    move-object/from16 p3, v4

    move-object/from16 p1, v5

    move-object/from16 v28, v10

    move-object/from16 v33, v11

    move-object/from16 v34, v13

    move-wide/from16 v31, v14

    const/4 v14, 0x0

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v5    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v10    # "afterRead":Lkotlin/jvm/functions/Function1;
    .end local v11    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .end local v13    # "chunk":Lio/ktor/utils/io/core/Input;
    .end local v14    # "totalBytes":J
    .restart local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    .restart local v29    # "$result":Ljava/lang/Object;
    .restart local v31    # "totalBytes":J
    .restart local v33    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .restart local v34    # "chunk":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local p3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move v2, v1

    .line 485
    .local v1, "after$iv":I
    :goto_16
    const/16 v17, 0x0

    .line 487
    nop

    .line 488
    if-nez v1, :cond_28

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    .end local p1    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local p3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v2, "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :try_start_8
    invoke-static {v2, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5

    goto :goto_18

    .line 501
    .end local v0    # "size$iv":I
    .end local v1    # "after$iv":I
    .end local v3    # "limit":I
    .end local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v8    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v12    # "out":Ljava/lang/Appendable;
    .end local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    .end local v31    # "totalBytes":J
    .end local v33    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .end local v34    # "chunk":Lio/ktor/utils/io/core/Input;
    :catchall_7
    move-exception v0

    goto/16 :goto_1b

    .line 489
    .end local v2    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v0    # "size$iv":I
    .restart local v1    # "after$iv":I
    .restart local v3    # "limit":I
    .restart local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v8    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v12    # "out":Ljava/lang/Appendable;
    .restart local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    .restart local v31    # "totalBytes":J
    .restart local v33    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .restart local v34    # "chunk":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local p3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_28
    move-object/from16 v2, p1

    move-object/from16 v4, p3

    .end local p1    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local p3    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v2    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    if-lt v1, v0, :cond_2a

    move-object v5, v4

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    move-object v1, v5

    .local v1, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 490
    .local v5, "$i$f$getEndGap":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v10

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v11

    sub-int/2addr v10, v11

    .line 489
    .end local v1    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$f$getEndGap":I
    const/16 v1, 0x8

    if-ge v10, v1, :cond_29

    goto :goto_17

    .line 494
    :cond_29
    move-object v5, v4

    goto :goto_18

    .line 491
    :cond_2a
    :goto_17
    invoke-static {v2, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 492
    invoke-static {v2, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 487
    :goto_18
    if-nez v5, :cond_2b

    .line 495
    .end local v0    # "size$iv":I
    goto :goto_19

    .line 487
    .restart local v0    # "size$iv":I
    :cond_2b
    move-object v1, v5

    .line 497
    .local v1, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v4, v1

    .line 498
    const/16 v17, 0x1

    .line 499
    .end local v1    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    if-gtz v0, :cond_2d

    .line 501
    .end local v0    # "size$iv":I
    :goto_19
    if-eqz v17, :cond_2c

    .line 502
    .end local v17    # "release$iv":Z
    invoke-static {v2, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 504
    .end local v2    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_2c
    nop

    .line 505
    nop

    .line 82
    .end local v16    # "$i$f$takeWhileSize":I
    :goto_1a
    invoke-virtual/range {v34 .. v34}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v0

    sub-long v0, v31, v0

    long-to-int v0, v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v10, v28

    .end local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    .restart local v10    # "afterRead":Lkotlin/jvm/functions/Function1;
    invoke-interface {v10, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move-object/from16 v11, v33

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 499
    .end local v10    # "afterRead":Lkotlin/jvm/functions/Function1;
    .restart local v0    # "size$iv":I
    .restart local v2    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v16    # "$i$f$takeWhileSize":I
    .restart local v17    # "release$iv":Z
    .restart local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    :cond_2d
    move-object/from16 v10, v28

    .end local v28    # "afterRead":Lkotlin/jvm/functions/Function1;
    .restart local v10    # "afterRead":Lkotlin/jvm/functions/Function1;
    move-object/from16 v1, p2

    move-object v5, v2

    move-object/from16 v2, v29

    move-wide/from16 v14, v31

    move-object/from16 v11, v33

    move-object/from16 v13, v34

    goto/16 :goto_3

    .line 501
    .end local v0    # "size$iv":I
    .end local v3    # "limit":I
    .end local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v8    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v10    # "afterRead":Lkotlin/jvm/functions/Function1;
    .end local v12    # "out":Ljava/lang/Appendable;
    .end local v29    # "$result":Ljava/lang/Object;
    .end local v31    # "totalBytes":J
    .end local v33    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .end local v34    # "chunk":Lio/ktor/utils/io/core/Input;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local v2, "$result":Ljava/lang/Object;
    .local v5, "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    :catchall_8
    move-exception v0

    move-object/from16 p2, v1

    move-object/from16 v29, v2

    move-object v2, v5

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v5    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .local v2, "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v29    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :goto_1b
    if-eqz v17, :cond_2e

    .line 502
    .end local v17    # "release$iv":Z
    invoke-static {v2, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .end local v2    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_2e
    throw v0

    .line 36
    .end local v16    # "$i$f$takeWhileSize":I
    .end local v29    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    .local v1, "$result":Ljava/lang/Object;
    .restart local v3    # "limit":I
    .restart local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v8    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v10    # "afterRead":Lkotlin/jvm/functions/Function1;
    .restart local v11    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .restart local v12    # "out":Ljava/lang/Appendable;
    :cond_2f
    const/4 v14, 0x0

    .line 85
    .end local v3    # "limit":I
    .end local v10    # "afterRead":Lkotlin/jvm/functions/Function1;
    .end local v11    # "nextChunk":Lkotlin/jvm/functions/Function2;
    .end local v12    # "out":Ljava/lang/Appendable;
    :goto_1c
    iget v2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_33

    .line 86
    .end local v8    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    iget-boolean v2, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v2, :cond_30

    .line 87
    .end local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    iput-boolean v3, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 90
    :cond_30
    iget v2, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-gtz v2, :cond_32

    iget-boolean v2, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v2, :cond_31

    goto :goto_1d

    :cond_31
    move v4, v14

    .end local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    goto :goto_1e

    :cond_32
    :goto_1d
    move v4, v3

    :goto_1e
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 85
    .restart local v6    # "end":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v7    # "cr":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v8    # "size":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v9    # "decoded":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_33
    iget v2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v2}, Lio/ktor/utils/io/core/internal/UTF8Kt;->prematureEndOfStreamUtf(I)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final encodeUTF8-lBXzO7A(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIII)I
    .locals 16
    .param p0, "$this$encodeUTF8_u2dlBXzO7A"    # Ljava/nio/ByteBuffer;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "dstOffset"    # I
    .param p5, "dstLimit"    # I

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const-string v0, "$this$encodeUTF8"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    const v0, 0xffff

    add-int v1, p2, v0

    move/from16 v10, p3

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 200
    .local v11, "lastCharIndex":I
    move/from16 v12, p5

    invoke-static {v12, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v13

    .line 201
    .local v13, "resultLimit":I
    move/from16 v1, p4

    .line 202
    .local v1, "resultPosition":I
    move/from16 v2, p2

    move v14, v1

    .line 205
    .end local v1    # "resultPosition":I
    .local v2, "index":I
    .local v14, "resultPosition":I
    :goto_0
    if-ge v14, v13, :cond_2

    if-lt v2, v11, :cond_0

    goto :goto_1

    .line 209
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .local v1, "index":I
    invoke-interface {v9, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    and-int/2addr v2, v0

    .line 210
    .local v2, "character":I
    const v3, 0xff80

    and-int/2addr v3, v2

    if-nez v3, :cond_1

    .line 211
    add-int/lit8 v3, v14, 0x1

    .end local v14    # "resultPosition":I
    .local v3, "resultPosition":I
    int-to-byte v4, v2

    .local v4, "value$iv":B
    move v5, v14

    .local v5, "index$iv":I
    const/4 v6, 0x0

    .line 515
    .local v6, "$i$f$storeAt-impl":I
    invoke-virtual {v8, v5, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 516
    nop

    .line 215
    .end local v2    # "character":I
    .end local v4    # "value$iv":B
    .end local v5    # "index$iv":I
    .end local v6    # "$i$f$storeAt-impl":I
    move v2, v1

    move v14, v3

    goto :goto_0

    .line 213
    .end local v3    # "resultPosition":I
    .restart local v2    # "character":I
    .restart local v14    # "resultPosition":I
    :cond_1
    nop

    .line 217
    .end local v2    # "character":I
    add-int/lit8 v15, v1, -0x1

    .line 218
    .end local v1    # "index":I
    .local v15, "index":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v11

    move/from16 v4, p2

    move v5, v14

    move v6, v13

    move/from16 v7, p4

    invoke-static/range {v0 .. v7}, Lio/ktor/utils/io/core/internal/UTF8Kt;->encodeUTF8Stage1-Vm9B2pQ(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I

    move-result v0

    return v0

    .line 206
    .end local v15    # "index":I
    .local v2, "index":I
    :cond_2
    :goto_1
    sub-int v0, v2, p2

    int-to-short v0, v0

    invoke-static {v0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v0

    sub-int v1, v14, p4

    int-to-short v1, v1

    invoke-static {v1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v1

    invoke-static {v0, v1}, Lio/ktor/utils/io/core/internal/EncodeResult;->constructor-impl(SS)I

    move-result v0

    return v0
.end method

.method private static final encodeUTF8Stage1-Vm9B2pQ(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I
    .locals 17
    .param p0, "$this$encodeUTF8Stage1_u2dVm9B2pQ"    # Ljava/nio/ByteBuffer;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "index1"    # I
    .param p3, "lastCharIndex"    # I
    .param p4, "from"    # I
    .param p5, "resultPosition1"    # I
    .param p6, "resultLimit"    # I
    .param p7, "dstOffset"    # I

    .line 234
    move-object/from16 v8, p1

    move/from16 v9, p3

    move/from16 v0, p2

    .line 235
    .local v0, "index":I
    move/from16 v1, p5

    .line 236
    .local v1, "resultPosition":I
    add-int/lit8 v10, p6, -0x3

    move v11, v0

    move v12, v1

    .line 239
    .end local v0    # "index":I
    .end local v1    # "resultPosition":I
    .local v10, "stage1Limit":I
    .local v11, "index":I
    .local v12, "resultPosition":I
    :goto_0
    sub-int v0, v10, v12

    .line 240
    .local v0, "freeSpace":I
    if-lez v0, :cond_c

    if-lt v11, v9, :cond_0

    goto/16 :goto_7

    .line 244
    :cond_0
    add-int/lit8 v1, v11, 0x1

    .end local v11    # "index":I
    .local v1, "index":I
    invoke-interface {v8, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 245
    .local v2, "character":C
    nop

    .line 246
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    const/16 v4, 0x3f

    if-eqz v3, :cond_3

    .line 247
    if-eq v1, v9, :cond_2

    invoke-interface {v8, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 250
    :cond_1
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "index":I
    .local v3, "index":I
    invoke-interface {v8, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v2, v1}, Lio/ktor/utils/io/core/internal/UTF8Kt;->codePoint(CC)I

    move-result v1

    move v11, v3

    goto :goto_2

    .line 248
    .end local v3    # "index":I
    .restart local v1    # "index":I
    :cond_2
    :goto_1
    move v11, v1

    move v1, v4

    goto :goto_2

    .line 253
    :cond_3
    move v11, v1

    move v1, v2

    .line 245
    .end local v1    # "index":I
    .restart local v11    # "index":I
    :goto_2
    nop

    .line 255
    .local v1, "codepoint":I
    move-object/from16 v3, p0

    .local v3, "$this$putUtf8Char_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .line 517
    .local v5, "$i$f$putUtf8Char-62zg_DM":I
    nop

    .line 518
    const/16 v6, 0x80

    const/4 v7, 0x0

    const/4 v13, 0x1

    if-ltz v1, :cond_4

    if-ge v1, v6, :cond_4

    move v14, v13

    goto :goto_3

    :cond_4
    move v14, v7

    :goto_3
    if-eqz v14, :cond_5

    .line 519
    int-to-byte v4, v1

    .local v4, "value$iv$iv":B
    const/4 v6, 0x0

    .line 520
    .local v6, "$i$f$storeAt-impl":I
    invoke-virtual {v3, v12, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 521
    nop

    .line 522
    .end local v4    # "value$iv$iv":B
    .end local v6    # "$i$f$storeAt-impl":I
    goto/16 :goto_6

    .line 524
    :cond_5
    const/16 v14, 0x800

    if-gt v6, v1, :cond_6

    if-ge v1, v14, :cond_6

    move v15, v13

    goto :goto_4

    :cond_6
    move v15, v7

    :goto_4
    if-eqz v15, :cond_7

    .line 525
    shr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x1f

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    .restart local v4    # "value$iv$iv":B
    move-object v7, v3

    .local v7, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v13, 0x0

    .line 526
    .local v13, "$i$f$set-62zg_DM":I
    const/4 v14, 0x0

    .line 520
    .local v14, "$i$f$storeAt-impl":I
    invoke-virtual {v7, v12, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 521
    nop

    .line 526
    .end local v14    # "$i$f$storeAt-impl":I
    nop

    .line 527
    .end local v4    # "value$iv$iv":B
    .end local v7    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v13    # "$i$f$set-62zg_DM":I
    add-int/lit8 v4, v12, 0x1

    .local v4, "index$iv$iv":I
    and-int/lit8 v7, v1, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    .local v6, "value$iv$iv":B
    move-object v7, v3

    .restart local v7    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v13, 0x0

    .line 526
    .restart local v13    # "$i$f$set-62zg_DM":I
    const/4 v14, 0x0

    .line 520
    .restart local v14    # "$i$f$storeAt-impl":I
    invoke-virtual {v7, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 521
    nop

    .line 526
    .end local v14    # "$i$f$storeAt-impl":I
    nop

    .line 528
    .end local v4    # "index$iv$iv":I
    .end local v6    # "value$iv$iv":B
    .end local v7    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v13    # "$i$f$set-62zg_DM":I
    const/4 v13, 0x2

    goto/16 :goto_6

    .line 530
    :cond_7
    const/high16 v15, 0x10000

    if-gt v14, v1, :cond_8

    if-ge v1, v15, :cond_8

    move v14, v13

    goto :goto_5

    :cond_8
    move v14, v7

    :goto_5
    if-eqz v14, :cond_9

    .line 531
    shr-int/lit8 v7, v1, 0xc

    and-int/lit8 v7, v7, 0xf

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    .local v7, "value$iv$iv":B
    move-object v13, v3

    .local v13, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v14, 0x0

    .line 526
    .local v14, "$i$f$set-62zg_DM":I
    const/4 v15, 0x0

    .line 520
    .local v15, "$i$f$storeAt-impl":I
    invoke-virtual {v13, v12, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 521
    nop

    .line 526
    .end local v15    # "$i$f$storeAt-impl":I
    nop

    .line 532
    .end local v7    # "value$iv$iv":B
    .end local v13    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v14    # "$i$f$set-62zg_DM":I
    add-int/lit8 v7, v12, 0x1

    .local v7, "index$iv$iv":I
    shr-int/lit8 v13, v1, 0x6

    and-int/2addr v4, v13

    or-int/2addr v4, v6

    int-to-byte v4, v4

    .local v4, "value$iv$iv":B
    move-object v13, v3

    .restart local v13    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v14, 0x0

    .line 526
    .restart local v14    # "$i$f$set-62zg_DM":I
    const/4 v15, 0x0

    .line 520
    .restart local v15    # "$i$f$storeAt-impl":I
    invoke-virtual {v13, v7, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 521
    nop

    .line 526
    .end local v15    # "$i$f$storeAt-impl":I
    nop

    .line 533
    .end local v4    # "value$iv$iv":B
    .end local v7    # "index$iv$iv":I
    .end local v13    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v14    # "$i$f$set-62zg_DM":I
    add-int/lit8 v4, v12, 0x2

    .local v4, "index$iv$iv":I
    and-int/lit8 v7, v1, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    .restart local v6    # "value$iv$iv":B
    move-object v7, v3

    .local v7, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v13, 0x0

    .line 526
    .local v13, "$i$f$set-62zg_DM":I
    const/4 v14, 0x0

    .line 520
    .local v14, "$i$f$storeAt-impl":I
    invoke-virtual {v7, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 521
    nop

    .line 526
    .end local v14    # "$i$f$storeAt-impl":I
    nop

    .line 534
    .end local v4    # "index$iv$iv":I
    .end local v6    # "value$iv$iv":B
    .end local v7    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v13    # "$i$f$set-62zg_DM":I
    const/4 v13, 0x3

    goto :goto_6

    .line 536
    :cond_9
    if-gt v15, v1, :cond_a

    const/high16 v14, 0x110000

    if-ge v1, v14, :cond_a

    move v7, v13

    :cond_a
    if-eqz v7, :cond_b

    .line 537
    shr-int/lit8 v7, v1, 0x12

    and-int/lit8 v7, v7, 0x7

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    .local v7, "value$iv$iv":B
    move-object v13, v3

    .local v13, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v14, 0x0

    .line 526
    .local v14, "$i$f$set-62zg_DM":I
    const/4 v15, 0x0

    .line 520
    .restart local v15    # "$i$f$storeAt-impl":I
    invoke-virtual {v13, v12, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 521
    nop

    .line 526
    .end local v15    # "$i$f$storeAt-impl":I
    nop

    .line 538
    .end local v7    # "value$iv$iv":B
    .end local v13    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v14    # "$i$f$set-62zg_DM":I
    add-int/lit8 v7, v12, 0x1

    .local v7, "index$iv$iv":I
    shr-int/lit8 v13, v1, 0xc

    and-int/2addr v13, v4

    or-int/2addr v13, v6

    int-to-byte v13, v13

    .local v13, "value$iv$iv":B
    move-object v14, v3

    .local v14, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v15, 0x0

    .line 526
    .local v15, "$i$f$set-62zg_DM":I
    const/16 v16, 0x0

    .line 520
    .local v16, "$i$f$storeAt-impl":I
    invoke-virtual {v14, v7, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 521
    nop

    .line 526
    .end local v16    # "$i$f$storeAt-impl":I
    nop

    .line 539
    .end local v7    # "index$iv$iv":I
    .end local v13    # "value$iv$iv":B
    .end local v14    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v15    # "$i$f$set-62zg_DM":I
    add-int/lit8 v7, v12, 0x2

    .restart local v7    # "index$iv$iv":I
    shr-int/lit8 v13, v1, 0x6

    and-int/2addr v4, v13

    or-int/2addr v4, v6

    int-to-byte v4, v4

    .local v4, "value$iv$iv":B
    move-object v13, v3

    .local v13, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v14, 0x0

    .line 526
    .local v14, "$i$f$set-62zg_DM":I
    const/4 v15, 0x0

    .line 520
    .local v15, "$i$f$storeAt-impl":I
    invoke-virtual {v13, v7, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 521
    nop

    .line 526
    .end local v15    # "$i$f$storeAt-impl":I
    nop

    .line 540
    .end local v4    # "value$iv$iv":B
    .end local v7    # "index$iv$iv":I
    .end local v13    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v14    # "$i$f$set-62zg_DM":I
    add-int/lit8 v4, v12, 0x3

    .local v4, "index$iv$iv":I
    and-int/lit8 v7, v1, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    .restart local v6    # "value$iv$iv":B
    move-object v7, v3

    .local v7, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v13, 0x0

    .line 526
    .local v13, "$i$f$set-62zg_DM":I
    const/4 v14, 0x0

    .line 520
    .local v14, "$i$f$storeAt-impl":I
    invoke-virtual {v7, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 521
    nop

    .line 526
    .end local v14    # "$i$f$storeAt-impl":I
    nop

    .line 541
    .end local v4    # "index$iv$iv":I
    .end local v6    # "value$iv$iv":B
    .end local v7    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v13    # "$i$f$set-62zg_DM":I
    const/4 v13, 0x4

    .line 544
    :goto_6
    nop

    .line 255
    .end local v3    # "$this$putUtf8Char_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v5    # "$i$f$putUtf8Char-62zg_DM":I
    move v3, v13

    .line 257
    .local v3, "size":I
    add-int/2addr v12, v3

    .line 258
    .end local v0    # "freeSpace":I
    .end local v1    # "codepoint":I
    .end local v2    # "character":C
    .end local v3    # "size":I
    goto/16 :goto_0

    .line 543
    .restart local v0    # "freeSpace":I
    .restart local v1    # "codepoint":I
    .restart local v2    # "character":C
    .local v3, "$this$putUtf8Char_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .restart local v5    # "$i$f$putUtf8Char-62zg_DM":I
    :cond_b
    invoke-static {v1}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 241
    .end local v1    # "codepoint":I
    .end local v2    # "character":C
    .end local v3    # "$this$putUtf8Char_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v5    # "$i$f$putUtf8Char-62zg_DM":I
    :cond_c
    :goto_7
    nop

    .line 260
    .end local v0    # "freeSpace":I
    if-ne v12, v10, :cond_d

    .line 261
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v12

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lio/ktor/utils/io/core/internal/UTF8Kt;->encodeUTF8Stage2-Vm9B2pQ(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I

    move-result v0

    return v0

    .line 264
    :cond_d
    sub-int v0, v11, p4

    int-to-short v0, v0

    invoke-static {v0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v0

    sub-int v1, v12, p7

    int-to-short v1, v1

    invoke-static {v1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v1

    invoke-static {v0, v1}, Lio/ktor/utils/io/core/internal/EncodeResult;->constructor-impl(SS)I

    move-result v0

    return v0
.end method

.method private static final encodeUTF8Stage2-Vm9B2pQ(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I
    .locals 20
    .param p0, "$this$encodeUTF8Stage2_u2dVm9B2pQ"    # Ljava/nio/ByteBuffer;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "index1"    # I
    .param p3, "lastCharIndex"    # I
    .param p4, "from"    # I
    .param p5, "resultPosition1"    # I
    .param p6, "resultLimit"    # I
    .param p7, "dstOffset"    # I

    .line 277
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p2

    .line 278
    .local v2, "index":I
    move/from16 v3, p5

    .line 281
    .local v3, "resultPosition":I
    :goto_0
    sub-int v4, p6, v3

    .line 282
    .local v4, "freeSpace":I
    if-lez v4, :cond_15

    if-lt v2, v1, :cond_0

    goto/16 :goto_d

    .line 286
    :cond_0
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "index":I
    .local v5, "index":I
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 287
    .local v2, "character":C
    nop

    .line 288
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    const/16 v7, 0x3f

    if-nez v6, :cond_1

    move v6, v2

    goto :goto_2

    .line 290
    :cond_1
    if-eq v5, v1, :cond_3

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 293
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v2, v5}, Lio/ktor/utils/io/core/internal/UTF8Kt;->codePoint(CC)I

    move-result v5

    move/from16 v19, v6

    move v6, v5

    move/from16 v5, v19

    goto :goto_2

    .line 291
    .end local v6    # "index":I
    .restart local v5    # "index":I
    :cond_3
    :goto_1
    move v6, v7

    .line 287
    :goto_2
    nop

    .line 297
    .local v6, "codepoint":I
    const/4 v8, 0x0

    .line 545
    .local v8, "$i$f$charactersSize":I
    nop

    .line 546
    const/16 v9, 0x80

    const/4 v11, 0x1

    if-gt v11, v6, :cond_4

    if-ge v6, v9, :cond_4

    move v12, v11

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    :goto_3
    const/4 v13, 0x4

    const/high16 v14, 0x110000

    const/4 v15, 0x3

    const/high16 v10, 0x10000

    const/16 v17, 0x2

    const/16 v11, 0x800

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_7

    .line 547
    :cond_5
    if-gt v9, v6, :cond_6

    if-ge v6, v11, :cond_6

    const/4 v12, 0x1

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    :goto_4
    if-eqz v12, :cond_7

    move/from16 v12, v17

    goto :goto_7

    .line 548
    :cond_7
    if-gt v11, v6, :cond_8

    if-ge v6, v10, :cond_8

    const/4 v12, 0x1

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    :goto_5
    if-eqz v12, :cond_9

    move v12, v15

    goto :goto_7

    .line 549
    :cond_9
    if-gt v10, v6, :cond_a

    if-ge v6, v14, :cond_a

    const/4 v12, 0x1

    goto :goto_6

    :cond_a
    const/4 v12, 0x0

    :goto_6
    if-eqz v12, :cond_14

    move v12, v13

    .line 551
    :goto_7
    nop

    .line 297
    .end local v8    # "$i$f$charactersSize":I
    if-le v12, v4, :cond_b

    .line 298
    add-int/lit8 v5, v5, -0x1

    .line 299
    move v2, v5

    goto/16 :goto_e

    .line 301
    :cond_b
    move-object/from16 v8, p0

    .local v8, "$this$putUtf8Char_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v12, 0x0

    .line 552
    .local v12, "$i$f$putUtf8Char-62zg_DM":I
    nop

    .line 553
    if-ltz v6, :cond_c

    if-ge v6, v9, :cond_c

    const/16 v18, 0x1

    goto :goto_8

    :cond_c
    const/16 v18, 0x0

    :goto_8
    if-eqz v18, :cond_d

    .line 554
    int-to-byte v7, v6

    .local v7, "value$iv$iv":B
    const/4 v9, 0x0

    .line 555
    .local v9, "$i$f$storeAt-impl":I
    invoke-virtual {v8, v3, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 556
    nop

    .line 557
    .end local v7    # "value$iv$iv":B
    .end local v9    # "$i$f$storeAt-impl":I
    const/4 v11, 0x1

    goto/16 :goto_c

    .line 559
    :cond_d
    if-gt v9, v6, :cond_e

    if-ge v6, v11, :cond_e

    const/16 v18, 0x1

    goto :goto_9

    :cond_e
    const/16 v18, 0x0

    :goto_9
    if-eqz v18, :cond_f

    .line 560
    shr-int/lit8 v7, v6, 0x6

    and-int/lit8 v7, v7, 0x1f

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    .restart local v7    # "value$iv$iv":B
    move-object v10, v8

    .local v10, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v11, 0x0

    .line 561
    .local v11, "$i$f$set-62zg_DM":I
    const/4 v13, 0x0

    .line 555
    .local v13, "$i$f$storeAt-impl":I
    invoke-virtual {v10, v3, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 556
    nop

    .line 561
    .end local v13    # "$i$f$storeAt-impl":I
    nop

    .line 562
    .end local v7    # "value$iv$iv":B
    .end local v10    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v11    # "$i$f$set-62zg_DM":I
    add-int/lit8 v7, v3, 0x1

    .local v7, "index$iv$iv":I
    and-int/lit8 v10, v6, 0x3f

    or-int/2addr v9, v10

    int-to-byte v9, v9

    .local v9, "value$iv$iv":B
    move-object v10, v8

    .restart local v10    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v11, 0x0

    .line 561
    .restart local v11    # "$i$f$set-62zg_DM":I
    const/4 v13, 0x0

    .line 555
    .restart local v13    # "$i$f$storeAt-impl":I
    invoke-virtual {v10, v7, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 556
    nop

    .line 561
    .end local v13    # "$i$f$storeAt-impl":I
    nop

    .line 563
    .end local v7    # "index$iv$iv":I
    .end local v9    # "value$iv$iv":B
    .end local v10    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v11    # "$i$f$set-62zg_DM":I
    move/from16 v11, v17

    goto/16 :goto_c

    .line 565
    :cond_f
    if-gt v11, v6, :cond_10

    if-ge v6, v10, :cond_10

    const/4 v11, 0x1

    goto :goto_a

    :cond_10
    const/4 v11, 0x0

    :goto_a
    if-eqz v11, :cond_11

    .line 566
    shr-int/lit8 v10, v6, 0xc

    and-int/lit8 v10, v10, 0xf

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    .local v10, "value$iv$iv":B
    move-object v11, v8

    .local v11, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v13, 0x0

    .line 561
    .local v13, "$i$f$set-62zg_DM":I
    const/4 v14, 0x0

    .line 555
    .local v14, "$i$f$storeAt-impl":I
    invoke-virtual {v11, v3, v10}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 556
    nop

    .line 561
    .end local v14    # "$i$f$storeAt-impl":I
    nop

    .line 567
    .end local v10    # "value$iv$iv":B
    .end local v11    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v13    # "$i$f$set-62zg_DM":I
    add-int/lit8 v10, v3, 0x1

    .local v10, "index$iv$iv":I
    shr-int/lit8 v11, v6, 0x6

    and-int/2addr v7, v11

    or-int/2addr v7, v9

    int-to-byte v7, v7

    .local v7, "value$iv$iv":B
    move-object v11, v8

    .restart local v11    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v13, 0x0

    .line 561
    .restart local v13    # "$i$f$set-62zg_DM":I
    const/4 v14, 0x0

    .line 555
    .restart local v14    # "$i$f$storeAt-impl":I
    invoke-virtual {v11, v10, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 556
    nop

    .line 561
    .end local v14    # "$i$f$storeAt-impl":I
    nop

    .line 568
    .end local v7    # "value$iv$iv":B
    .end local v10    # "index$iv$iv":I
    .end local v11    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v13    # "$i$f$set-62zg_DM":I
    add-int/lit8 v7, v3, 0x2

    .local v7, "index$iv$iv":I
    and-int/lit8 v10, v6, 0x3f

    or-int/2addr v9, v10

    int-to-byte v9, v9

    .restart local v9    # "value$iv$iv":B
    move-object v10, v8

    .local v10, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v11, 0x0

    .line 561
    .local v11, "$i$f$set-62zg_DM":I
    const/4 v13, 0x0

    .line 555
    .local v13, "$i$f$storeAt-impl":I
    invoke-virtual {v10, v7, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 556
    nop

    .line 561
    .end local v13    # "$i$f$storeAt-impl":I
    nop

    .line 569
    .end local v7    # "index$iv$iv":I
    .end local v9    # "value$iv$iv":B
    .end local v10    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v11    # "$i$f$set-62zg_DM":I
    move v11, v15

    goto :goto_c

    .line 571
    :cond_11
    if-gt v10, v6, :cond_12

    if-ge v6, v14, :cond_12

    const/4 v10, 0x1

    goto :goto_b

    :cond_12
    const/4 v10, 0x0

    :goto_b
    if-eqz v10, :cond_13

    .line 572
    shr-int/lit8 v10, v6, 0x12

    and-int/lit8 v10, v10, 0x7

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    .local v10, "value$iv$iv":B
    move-object v11, v8

    .local v11, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v14, 0x0

    .line 561
    .local v14, "$i$f$set-62zg_DM":I
    const/4 v15, 0x0

    .line 555
    .local v15, "$i$f$storeAt-impl":I
    invoke-virtual {v11, v3, v10}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 556
    nop

    .line 561
    .end local v15    # "$i$f$storeAt-impl":I
    nop

    .line 573
    .end local v10    # "value$iv$iv":B
    .end local v11    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v14    # "$i$f$set-62zg_DM":I
    add-int/lit8 v10, v3, 0x1

    .local v10, "index$iv$iv":I
    shr-int/lit8 v11, v6, 0xc

    and-int/2addr v11, v7

    or-int/2addr v11, v9

    int-to-byte v11, v11

    .local v11, "value$iv$iv":B
    move-object v14, v8

    .local v14, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v15, 0x0

    .line 561
    .local v15, "$i$f$set-62zg_DM":I
    const/16 v16, 0x0

    .line 555
    .local v16, "$i$f$storeAt-impl":I
    invoke-virtual {v14, v10, v11}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 556
    nop

    .line 561
    .end local v16    # "$i$f$storeAt-impl":I
    nop

    .line 574
    .end local v10    # "index$iv$iv":I
    .end local v11    # "value$iv$iv":B
    .end local v14    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v15    # "$i$f$set-62zg_DM":I
    add-int/lit8 v10, v3, 0x2

    .restart local v10    # "index$iv$iv":I
    shr-int/lit8 v11, v6, 0x6

    and-int/2addr v7, v11

    or-int/2addr v7, v9

    int-to-byte v7, v7

    .local v7, "value$iv$iv":B
    move-object v11, v8

    .local v11, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v14, 0x0

    .line 561
    .local v14, "$i$f$set-62zg_DM":I
    const/4 v15, 0x0

    .line 555
    .local v15, "$i$f$storeAt-impl":I
    invoke-virtual {v11, v10, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 556
    nop

    .line 561
    .end local v15    # "$i$f$storeAt-impl":I
    nop

    .line 575
    .end local v7    # "value$iv$iv":B
    .end local v10    # "index$iv$iv":I
    .end local v11    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v14    # "$i$f$set-62zg_DM":I
    add-int/lit8 v7, v3, 0x3

    .local v7, "index$iv$iv":I
    and-int/lit8 v10, v6, 0x3f

    or-int/2addr v9, v10

    int-to-byte v9, v9

    .restart local v9    # "value$iv$iv":B
    move-object v10, v8

    .local v10, "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v11, 0x0

    .line 561
    .local v11, "$i$f$set-62zg_DM":I
    const/4 v14, 0x0

    .line 555
    .local v14, "$i$f$storeAt-impl":I
    invoke-virtual {v10, v7, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 556
    nop

    .line 561
    .end local v14    # "$i$f$storeAt-impl":I
    nop

    .line 576
    .end local v7    # "index$iv$iv":I
    .end local v9    # "value$iv$iv":B
    .end local v10    # "$this$set_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v11    # "$i$f$set-62zg_DM":I
    move v11, v13

    .line 579
    :goto_c
    nop

    .line 301
    .end local v8    # "$this$putUtf8Char_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v12    # "$i$f$putUtf8Char-62zg_DM":I
    move v7, v11

    .line 302
    .local v7, "size":I
    add-int/2addr v3, v7

    .line 303
    .end local v2    # "character":C
    .end local v4    # "freeSpace":I
    .end local v6    # "codepoint":I
    .end local v7    # "size":I
    move v2, v5

    goto/16 :goto_0

    .line 578
    .restart local v2    # "character":C
    .restart local v4    # "freeSpace":I
    .restart local v6    # "codepoint":I
    .restart local v8    # "$this$putUtf8Char_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .restart local v12    # "$i$f$putUtf8Char-62zg_DM":I
    :cond_13
    invoke-static {v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v7, Lkotlin/KotlinNothingValueException;

    invoke-direct {v7}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v7

    .line 550
    .end local v12    # "$i$f$putUtf8Char-62zg_DM":I
    .local v8, "$i$f$charactersSize":I
    :cond_14
    invoke-static {v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v7, Lkotlin/KotlinNothingValueException;

    invoke-direct {v7}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v7

    .line 283
    .end local v5    # "index":I
    .end local v6    # "codepoint":I
    .end local v8    # "$i$f$charactersSize":I
    .local v2, "index":I
    :cond_15
    :goto_d
    nop

    .line 305
    .end local v4    # "freeSpace":I
    :goto_e
    sub-int v4, v2, p4

    int-to-short v4, v4

    invoke-static {v4}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v4

    sub-int v5, v3, p7

    int-to-short v5, v5

    invoke-static {v5}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v5

    invoke-static {v4, v5}, Lio/ktor/utils/io/core/internal/EncodeResult;->constructor-impl(SS)I

    move-result v4

    return v4
.end method

.method public static final highSurrogate(I)I
    .locals 2
    .param p0, "cp"    # I

    .line 369
    ushr-int/lit8 v0, p0, 0xa

    const v1, 0xd7c0

    add-int/2addr v0, v1

    return v0
.end method

.method public static final isBmpCodePoint(I)Z
    .locals 1
    .param p0, "cp"    # I

    .line 360
    ushr-int/lit8 v0, p0, 0x10

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isValidCodePoint(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .line 363
    const v0, 0x10ffff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final lowSurrogate(I)I
    .locals 2
    .param p0, "cp"    # I

    .line 366
    and-int/lit16 v0, p0, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    return v0
.end method

.method public static final malformedByteCount(I)Ljava/lang/Void;
    .locals 3
    .param p0, "byteCount"    # I

    .line 347
    new-instance v0, Lio/ktor/utils/io/core/internal/MalformedUTF8InputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " more character bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/utils/io/core/internal/MalformedUTF8InputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final malformedCodePoint(I)Ljava/lang/Void;
    .locals 3
    .param p0, "value"    # I

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed code-point "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final prematureEndOfStreamUtf(I)Ljava/lang/Void;
    .locals 3
    .param p0, "size"    # I

    .line 94
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Premature end of stream: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes to decode UTF-8 char"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final putUtf8Char-62zg_DM(Ljava/nio/ByteBuffer;II)I
    .locals 7
    .param p0, "$this$putUtf8Char_u2d62zg_DM"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "v"    # I

    const-string v0, "$this$putUtf8Char"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 319
    .local v0, "$i$f$putUtf8Char-62zg_DM":I
    nop

    .line 320
    const/4 v1, 0x1

    const/16 v2, 0x80

    const/4 v3, 0x0

    if-ltz p2, :cond_0

    if-ge p2, v2, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_1

    .line 321
    int-to-byte v2, p2

    .local v2, "value$iv":B
    const/4 v3, 0x0

    .line 580
    .local v3, "$i$f$storeAt-impl":I
    invoke-virtual {p0, p1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 581
    nop

    .line 322
    .end local v2    # "value$iv":B
    .end local v3    # "$i$f$storeAt-impl":I
    goto/16 :goto_4

    .line 324
    :cond_1
    const/16 v4, 0x800

    if-gt v2, p2, :cond_2

    if-ge p2, v4, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    if-eqz v5, :cond_3

    .line 325
    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x1f

    or-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    .local v1, "value$iv":B
    move-object v3, p0

    .local v3, "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 582
    .local v4, "$i$f$set-62zg_DM":I
    const/4 v5, 0x0

    .line 583
    .local v5, "$i$f$storeAt-impl":I
    invoke-virtual {v3, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 584
    nop

    .line 582
    .end local v5    # "$i$f$storeAt-impl":I
    nop

    .line 326
    .end local v1    # "value$iv":B
    .end local v3    # "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$f$set-62zg_DM":I
    add-int/lit8 v1, p1, 0x1

    .local v1, "index$iv":I
    and-int/lit8 v3, p2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .restart local v2    # "value$iv":B
    move-object v3, p0

    .restart local v3    # "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 585
    .restart local v4    # "$i$f$set-62zg_DM":I
    const/4 v5, 0x0

    .line 586
    .restart local v5    # "$i$f$storeAt-impl":I
    invoke-virtual {v3, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 587
    nop

    .line 585
    .end local v5    # "$i$f$storeAt-impl":I
    nop

    .line 327
    .end local v1    # "index$iv":I
    .end local v2    # "value$iv":B
    .end local v3    # "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$f$set-62zg_DM":I
    const/4 v1, 0x2

    goto/16 :goto_4

    .line 329
    :cond_3
    const/high16 v5, 0x10000

    if-gt v4, p2, :cond_4

    if-ge p2, v5, :cond_4

    move v4, v1

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    if-eqz v4, :cond_5

    .line 330
    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0xf

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    .local v1, "value$iv":B
    move-object v3, p0

    .restart local v3    # "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 588
    .restart local v4    # "$i$f$set-62zg_DM":I
    const/4 v5, 0x0

    .line 589
    .restart local v5    # "$i$f$storeAt-impl":I
    invoke-virtual {v3, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 590
    nop

    .line 588
    .end local v5    # "$i$f$storeAt-impl":I
    nop

    .line 331
    .end local v1    # "value$iv":B
    .end local v3    # "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$f$set-62zg_DM":I
    add-int/lit8 v1, p1, 0x1

    .local v1, "index$iv":I
    shr-int/lit8 v3, p2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .local v3, "value$iv":B
    move-object v4, p0

    .local v4, "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .line 591
    .local v5, "$i$f$set-62zg_DM":I
    const/4 v6, 0x0

    .line 592
    .local v6, "$i$f$storeAt-impl":I
    invoke-virtual {v4, v1, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 593
    nop

    .line 591
    .end local v6    # "$i$f$storeAt-impl":I
    nop

    .line 332
    .end local v1    # "index$iv":I
    .end local v3    # "value$iv":B
    .end local v4    # "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v5    # "$i$f$set-62zg_DM":I
    add-int/lit8 v1, p1, 0x2

    .restart local v1    # "index$iv":I
    and-int/lit8 v3, p2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .restart local v2    # "value$iv":B
    move-object v3, p0

    .local v3, "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 594
    .local v4, "$i$f$set-62zg_DM":I
    const/4 v5, 0x0

    .line 595
    .local v5, "$i$f$storeAt-impl":I
    invoke-virtual {v3, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 596
    nop

    .line 594
    .end local v5    # "$i$f$storeAt-impl":I
    nop

    .line 333
    .end local v1    # "index$iv":I
    .end local v2    # "value$iv":B
    .end local v3    # "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$f$set-62zg_DM":I
    const/4 v1, 0x3

    goto :goto_4

    .line 335
    :cond_5
    if-gt v5, p2, :cond_6

    const/high16 v4, 0x110000

    if-ge p2, v4, :cond_6

    goto :goto_3

    :cond_6
    move v1, v3

    :goto_3
    if-eqz v1, :cond_7

    .line 336
    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x7

    or-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    .local v1, "value$iv":B
    move-object v3, p0

    .restart local v3    # "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 597
    .restart local v4    # "$i$f$set-62zg_DM":I
    const/4 v5, 0x0

    .line 598
    .restart local v5    # "$i$f$storeAt-impl":I
    invoke-virtual {v3, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 599
    nop

    .line 597
    .end local v5    # "$i$f$storeAt-impl":I
    nop

    .line 337
    .end local v1    # "value$iv":B
    .end local v3    # "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$f$set-62zg_DM":I
    add-int/lit8 v1, p1, 0x1

    .local v1, "index$iv":I
    shr-int/lit8 v3, p2, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .local v3, "value$iv":B
    move-object v4, p0

    .local v4, "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .line 600
    .local v5, "$i$f$set-62zg_DM":I
    const/4 v6, 0x0

    .line 601
    .restart local v6    # "$i$f$storeAt-impl":I
    invoke-virtual {v4, v1, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 602
    nop

    .line 600
    .end local v6    # "$i$f$storeAt-impl":I
    nop

    .line 338
    .end local v1    # "index$iv":I
    .end local v3    # "value$iv":B
    .end local v4    # "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v5    # "$i$f$set-62zg_DM":I
    add-int/lit8 v1, p1, 0x2

    .restart local v1    # "index$iv":I
    shr-int/lit8 v3, p2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .restart local v3    # "value$iv":B
    .restart local v4    # "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .line 603
    .restart local v5    # "$i$f$set-62zg_DM":I
    const/4 v6, 0x0

    .line 604
    .restart local v6    # "$i$f$storeAt-impl":I
    invoke-virtual {v4, v1, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 605
    nop

    .line 603
    .end local v6    # "$i$f$storeAt-impl":I
    nop

    .line 339
    .end local v1    # "index$iv":I
    .end local v3    # "value$iv":B
    .end local v4    # "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v5    # "$i$f$set-62zg_DM":I
    add-int/lit8 v1, p1, 0x3

    .restart local v1    # "index$iv":I
    and-int/lit8 v3, p2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .restart local v2    # "value$iv":B
    move-object v3, p0

    .local v3, "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 606
    .local v4, "$i$f$set-62zg_DM":I
    const/4 v5, 0x0

    .line 607
    .local v5, "$i$f$storeAt-impl":I
    invoke-virtual {v3, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 608
    nop

    .line 606
    .end local v5    # "$i$f$storeAt-impl":I
    nop

    .line 340
    .end local v1    # "index$iv":I
    .end local v2    # "value$iv":B
    .end local v3    # "$this$set_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$f$set-62zg_DM":I
    const/4 v1, 0x4

    .line 343
    :goto_4
    return v1

    .line 342
    :cond_7
    invoke-static {p2}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method
