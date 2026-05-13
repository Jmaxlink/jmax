.class public final Lio/ktor/utils/io/core/BuffersKt;
.super Ljava/lang/Object;
.source "Buffers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffers.kt\nio/ktor/utils/io/core/BuffersKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 3 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n*L\n1#1,121:1\n69#2:122\n69#2:123\n69#2:124\n69#2:126\n15#3:125\n*S KotlinDebug\n*F\n+ 1 Buffers.kt\nio/ktor/utils/io/core/BuffersKt\n*L\n12#1:122\n80#1:123\n88#1:124\n107#1:126\n105#1:125\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0080\u0008\u001a\u0015\u0010\u0003\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0080\u0008\u001a\u000c\u0010\u0006\u001a\u00020\u0007*\u00020\u0007H\u0000\u001a\u001d\u0010\u0006\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0082\u0010\u001a\r\u0010\n\u001a\u00020\u0007*\u00020\u0007H\u0080\u0010\u001a1\u0010\u000b\u001a\u00020\u000c*\u00020\u00072\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000c0\u000eH\u0080\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0002\u001a\r\u0010\u000f\u001a\u00020\u0010*\u00020\u0007H\u0080\u0010\u001a9\u0010\u0011\u001a\u00020\u0002*\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0002H\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u001a\u0014\u0010\u001a\u001a\u00020\u001b*\u00020\u00122\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0001\u001a\u001c\u0010\u001d\u001a\u00020\u000c*\u0004\u0018\u00010\u00072\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001fH\u0000\u001a\u000c\u0010 \u001a\u00020\u0002*\u00020\u0007H\u0000\u001a\u0015\u0010 \u001a\u00020\u0002*\u00020\u00072\u0006\u0010!\u001a\u00020\u0002H\u0082\u0010\u0082\u0002\u0012\n\u0005\u0008\u009920\u0001\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\""
    }
    d2 = {
        "coerceAtMostMaxInt",
        "",
        "",
        "coerceAtMostMaxIntOrFail",
        "message",
        "",
        "copyAll",
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "head",
        "prev",
        "findTail",
        "forEachChunk",
        "",
        "block",
        "Lkotlin/Function1;",
        "isEmpty",
        "",
        "peekTo",
        "Lio/ktor/utils/io/core/Buffer;",
        "destination",
        "Lio/ktor/utils/io/bits/Memory;",
        "destinationOffset",
        "offset",
        "max",
        "peekTo-yRinSxo",
        "(Lio/ktor/utils/io/core/Buffer;Ljava/nio/ByteBuffer;JJJ)J",
        "readBytes",
        "",
        "count",
        "releaseAll",
        "pool",
        "Lio/ktor/utils/io/pool/ObjectPool;",
        "remainingAll",
        "n",
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
.method public static final coerceAtMostMaxInt(J)I
    .locals 3
    .param p0, "$this$coerceAtMostMaxInt"    # J

    const/4 v0, 0x0

    .line 94
    .local v0, "$i$f$coerceAtMostMaxInt":I
    const-wide/32 v1, 0x7fffffff

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    return v1
.end method

.method public static final coerceAtMostMaxIntOrFail(JLjava/lang/String;)I
    .locals 3
    .param p0, "$this$coerceAtMostMaxIntOrFail"    # J
    .param p2, "message"    # Ljava/lang/String;

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 98
    .local v0, "$i$f$coerceAtMostMaxIntOrFail":I
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p0, v1

    if-gtz v1, :cond_0

    .line 99
    long-to-int v1, p0

    return v1

    .line 98
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final copyAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 3
    .param p0, "$this$copyAll"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->duplicate()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 51
    .local v0, "copied":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 53
    .local v1, "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    invoke-static {v1, v0, v0}, Lio/ktor/utils/io/core/BuffersKt;->copyAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    return-object v2
.end method

.method private static final copyAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 2
    .param p0, "$this$copyAll"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "head"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p2, "prev"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 58
    nop

    :goto_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->duplicate()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 59
    .local v0, "copied":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-virtual {p2, v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 61
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    return-object p1

    .line 63
    .local v1, "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move-object p0, v1

    move-object p2, v0

    .end local v0    # "copied":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v1    # "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    goto :goto_0
.end method

.method public static final findTail(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1
    .param p0, "$this$findTail"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    :goto_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 69
    .local v0, "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move-object p0, v0

    .end local v0    # "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    goto :goto_0
.end method

.method public static final forEachChunk(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p0, "$this$forEachChunk"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 35
    .local v0, "$i$f$forEachChunk":I
    nop

    .line 38
    move-object v1, p0

    .line 40
    .local v1, "current":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 43
    return-void

    .line 41
    :cond_0
    move-object v1, v2

    .line 42
    goto :goto_0
.end method

.method public static final isEmpty(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Z
    .locals 4
    .param p0, "$this$isEmpty"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    :goto_0
    move-object v0, p0

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 124
    .local v1, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 88
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$getReadRemaining":I
    if-lez v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 90
    .local v0, "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_1
    move-object p0, v0

    .end local v0    # "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    goto :goto_0
.end method

.method public static final peekTo-yRinSxo(Lio/ktor/utils/io/core/Buffer;Ljava/nio/ByteBuffer;JJJ)J
    .locals 15
    .param p0, "$this$peekTo_u2dyRinSxo"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # Ljava/nio/ByteBuffer;
    .param p2, "destinationOffset"    # J
    .param p4, "offset"    # J
    .param p6, "max"    # J

    const-string v0, "$this$peekTo"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x0

    .line 125
    .local v0, "$i$f$getSize-impl":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    .line 105
    .end local v0    # "$i$f$getSize-impl":I
    sub-long v2, v2, p2

    .line 107
    move-object v0, p0

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 126
    .local v4, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6

    sub-int/2addr v5, v6

    .line 107
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$getReadRemaining":I
    int-to-long v4, v5

    .line 104
    move-wide/from16 v11, p6

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    .line 110
    .local v13, "size":J
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 111
    nop

    .line 112
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v0

    int-to-long v3, v0

    add-long v4, v3, p4

    .line 113
    nop

    .line 114
    nop

    .line 110
    move-object/from16 v3, p1

    move-wide v6, v13

    move-wide/from16 v8, p2

    invoke-static/range {v2 .. v9}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJJ)V

    .line 117
    return-wide v13
.end method

.method public static final readBytes(Lio/ktor/utils/io/core/Buffer;I)[B
    .locals 7
    .param p0, "$this$readBytes"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "count"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    if-nez p1, :cond_0

    .line 14
    sget-object v0, Lio/ktor/utils/io/core/internal/UnsafeKt;->EmptyByteArray:[B

    return-object v0

    .line 17
    :cond_0
    new-array v0, p1, [B

    .line 18
    .local v0, "result":[B
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully$default(Lio/ktor/utils/io/core/Buffer;[BIIILjava/lang/Object;)V

    .line 19
    return-object v0
.end method

.method public static synthetic readBytes$default(Lio/ktor/utils/io/core/Buffer;IILjava/lang/Object;)[B
    .locals 1

    .line 12
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    move-object p1, p0

    .local p1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 p2, 0x0

    .line 122
    .local p2, "$i$f$getReadRemaining":I
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result p3

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v0

    sub-int p1, p3, v0

    .line 12
    .end local p1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local p2    # "$i$f$getReadRemaining":I
    :cond_0
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/BuffersKt;->readBytes(Lio/ktor/utils/io/core/Buffer;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static final releaseAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V
    .locals 2
    .param p0, "$this$releaseAll"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "pool"    # Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    move-object v0, p0

    .line 25
    .local v0, "current":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    .line 27
    .local v1, "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-virtual {v0, p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 28
    move-object v0, v1

    .end local v1    # "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public static final remainingAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;)J
    .locals 2
    .param p0, "$this$remainingAll"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lio/ktor/utils/io/core/BuffersKt;->remainingAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final remainingAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;J)J
    .locals 4
    .param p0, "$this$remainingAll"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "n"    # J

    .line 80
    nop

    :goto_0
    move-object v0, p0

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 123
    .local v1, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 80
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$getReadRemaining":I
    int-to-long v0, v2

    add-long/2addr v0, p1

    .line 81
    .local v0, "rem":J
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    if-nez v2, :cond_0

    return-wide v0

    .line 83
    .local v2, "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move-object p0, v2

    move-wide p1, v0

    .end local v0    # "rem":J
    .end local v2    # "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    goto :goto_0
.end method
