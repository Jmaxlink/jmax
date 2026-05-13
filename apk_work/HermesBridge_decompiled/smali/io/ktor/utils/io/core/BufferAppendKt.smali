.class public final Lio/ktor/utils/io/core/BufferAppendKt;
.super Ljava/lang/Object;
.source "BufferAppend.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferAppend.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferAppend.kt\nio/ktor/utils/io/core/BufferAppendKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 3 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n*L\n1#1,59:1\n69#2:60\n74#2:61\n69#2:76\n74#2:77\n59#2:78\n390#3,5:62\n372#3,7:67\n395#3,2:74\n*S KotlinDebug\n*F\n+ 1 BufferAppend.kt\nio/ktor/utils/io/core/BufferAppendKt\n*L\n10#1:60\n12#1:61\n32#1:76\n49#1:77\n49#1:78\n16#1:62,5\n17#1:67,7\n16#1:74,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0001H\u0000\u001a\u0014\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0001H\u0002\u001a\u0014\u0010\u0008\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0000\u00a8\u0006\t"
    }
    d2 = {
        "writeBufferAppend",
        "",
        "Lio/ktor/utils/io/core/Buffer;",
        "other",
        "maxSize",
        "writeBufferAppendUnreserve",
        "",
        "writeSize",
        "writeBufferPrepend",
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
.method public static final writeBufferAppend(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I
    .locals 11
    .param p0, "$this$writeBufferAppend"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "other"    # Lio/ktor/utils/io/core/Buffer;
    .param p2, "maxSize"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    move-object v0, p1

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 60
    .local v1, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 10
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$getReadRemaining":I
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 12
    .local v0, "size":I
    move-object v1, p0

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 61
    .local v2, "$i$f$getWriteRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 12
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getWriteRemaining":I
    if-gt v3, v0, :cond_0

    .line 13
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/BufferAppendKt;->writeBufferAppendUnreserve(Lio/ktor/utils/io/core/Buffer;I)V

    .line 16
    :cond_0
    move-object v1, p0

    .local v1, "$this$write$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 62
    .local v2, "$i$f$write":I
    nop

    .line 66
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v3

    .local v3, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    .local v4, "dstOffset":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    const/4 v5, 0x0

    .line 17
    .local v5, "$i$a$-write-BufferAppendKt$writeBufferAppend$1":I
    move-object v6, p1

    .local v6, "$this$read$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v7, 0x0

    .line 67
    .local v7, "$i$f$read":I
    nop

    .line 71
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v8

    .local v8, "src":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9

    .local v9, "srcOffset":I
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    const/4 v10, 0x0

    .line 18
    .local v10, "$i$a$-read-BufferAppendKt$writeBufferAppend$1$1":I
    invoke-static {v8, v3, v9, v0, v4}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 19
    nop

    .line 71
    .end local v8    # "src":Ljava/nio/ByteBuffer;
    .end local v9    # "srcOffset":I
    .end local v10    # "$i$a$-read-BufferAppendKt$writeBufferAppend$1$1":I
    move v8, v0

    .line 72
    .local v8, "rc$iv":I
    invoke-virtual {v6, v8}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 73
    nop

    .line 17
    .end local v6    # "$this$read$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v7    # "$i$f$read":I
    .end local v8    # "rc$iv":I
    nop

    .line 66
    .end local v3    # "dst":Ljava/nio/ByteBuffer;
    .end local v4    # "dstOffset":I
    .end local v5    # "$i$a$-write-BufferAppendKt$writeBufferAppend$1":I
    move v3, v8

    .line 74
    .local v3, "rc$iv":I
    invoke-virtual {v1, v3}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 75
    nop

    .line 16
    .end local v1    # "$this$write$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$write":I
    .end local v3    # "rc$iv":I
    return v3
.end method

.method private static final writeBufferAppendUnreserve(Lio/ktor/utils/io/core/Buffer;I)V
    .locals 5
    .param p0, "$this$writeBufferAppendUnreserve"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "writeSize"    # I

    .line 49
    move-object v0, p0

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 77
    .local v1, "$i$f$getWriteRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 49
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$getWriteRemaining":I
    nop

    .restart local v0    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 78
    .local v1, "$i$f$getEndGap":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v3

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v4

    sub-int/2addr v3, v4

    .line 49
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$getEndGap":I
    add-int/2addr v2, v3

    if-lt v2, p1, :cond_1

    .line 52
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    add-int/2addr v0, p1

    .line 53
    .local v0, "newWritePosition":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v1

    sub-int v1, v0, v1

    .line 55
    .local v1, "overrunSize":I
    if-lez v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->releaseEndGap$ktor_io()V

    .line 58
    :cond_0
    return-void

    .line 50
    .end local v0    # "newWritePosition":I
    .end local v1    # "overrunSize":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t append buffer: not enough free space at the end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final writeBufferPrepend(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;)I
    .locals 6
    .param p0, "$this$writeBufferPrepend"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "other"    # Lio/ktor/utils/io/core/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    move-object v0, p1

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 76
    .local v1, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 32
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$getReadRemaining":I
    move v0, v2

    .line 33
    .local v0, "size":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    .line 35
    .local v1, "readPosition":I
    if-lt v1, v0, :cond_0

    .line 39
    sub-int v2, v1, v0

    .line 40
    .local v2, "newReadPosition":I
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    invoke-static {v3, v4, v5, v0, v2}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 41
    invoke-virtual {p1, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 42
    invoke-virtual {p0, v2}, Lio/ktor/utils/io/core/Buffer;->releaseStartGap$ktor_io(I)V

    .line 44
    return v0

    .line 36
    .end local v2    # "newReadPosition":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Not enough space in the beginning to prepend bytes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
