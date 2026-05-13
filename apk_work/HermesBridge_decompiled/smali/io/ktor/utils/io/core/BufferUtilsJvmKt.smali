.class public final Lio/ktor/utils/io/core/BufferUtilsJvmKt;
.super Ljava/lang/Object;
.source "BufferUtilsJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferUtilsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferUtilsJvm.kt\nio/ktor/utils/io/core/BufferUtilsJvmKt\n+ 2 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/MemoryFactoryJvmKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 BufferPrimitives.kt\nio/ktor/utils/io/core/BufferPrimitivesKt\n+ 6 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n*L\n1#1,123:1\n36#2:124\n74#3:125\n69#3:149\n1#4:126\n762#5,7:127\n769#5,6:139\n777#5:147\n372#6,5:134\n377#6,2:145\n355#6:148\n372#6,7:150\n390#6,7:157\n*S KotlinDebug\n*F\n+ 1 BufferUtilsJvm.kt\nio/ktor/utils/io/core/BufferUtilsJvmKt\n*L\n12#1:124\n44#1:125\n87#1:149\n73#1:127,7\n73#1:139,6\n73#1:147\n73#1:134,5\n73#1:145,2\n86#1:148\n99#1:150,7\n115#1:157,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0005\u001a\u001c\u0010\u0006\u001a\u00020\u0007*\u00020\u00082\u0006\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007\u001a1\u0010\u000b\u001a\u00020\u0007*\u00020\u00082\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e0\rH\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u001a$\u0010\u000b\u001a\u00020\u0007*\u00020\u00012\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e0\rH\u0086\u0008\u00f8\u0001\u0000\u001a\u001a\u0010\u000f\u001a\u00020\u000e*\u00020\u00082\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0007\u001a\u0014\u0010\u0010\u001a\u00020\u000e*\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0003H\u0000\u001a;\u0010\u0012\u001a\u00020\u0007*\u00020\u00082\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00072\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e0\rH\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0002 \u0001\u001a,\u0010\u0012\u001a\u00020\u0007*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00072\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e0\rH\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0014"
    }
    d2 = {
        "ChunkBuffer",
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "pool",
        "Lio/ktor/utils/io/pool/ObjectPool;",
        "readAvailable",
        "",
        "Lio/ktor/utils/io/core/Buffer;",
        "dst",
        "length",
        "readDirect",
        "block",
        "Lkotlin/Function1;",
        "",
        "readFully",
        "resetFromContentToWrite",
        "child",
        "writeDirect",
        "size",
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
.method public static final ChunkBuffer(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/pool/ObjectPool;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "pool"    # Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;)",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;"
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    sget-object v1, Lio/ktor/utils/io/bits/Memory;->Companion:Lio/ktor/utils/io/bits/Memory$Companion;

    .local v1, "$this$of$iv":Lio/ktor/utils/io/bits/Memory$Companion;
    const/4 v2, 0x0

    .line 124
    .local v2, "$i$f$of":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v4, "buffer.slice().order(ByteOrder.BIG_ENDIAN)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 12
    .end local v1    # "$this$of$iv":Lio/ktor/utils/io/bits/Memory$Companion;
    .end local v2    # "$i$f$of":I
    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1, v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static synthetic ChunkBuffer$default(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/pool/ObjectPool;ILjava/lang/Object;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 0

    .line 11
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/BufferUtilsJvmKt;->ChunkBuffer(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/pool/ObjectPool;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/Buffer;Ljava/nio/ByteBuffer;I)I
    .locals 4
    .param p0, "$this$readAvailable"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    move-object v0, p0

    .local v0, "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 148
    .local v1, "$i$f$canRead":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 86
    .end local v0    # "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$canRead":I
    :goto_0
    if-nez v2, :cond_1

    const/4 v0, -0x1

    return v0

    .line 87
    :cond_1
    move-object v0, p0

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 149
    .local v1, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 87
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$getReadRemaining":I
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 88
    .local v0, "size":I
    invoke-static {p0, p1, v0}, Lio/ktor/utils/io/core/BufferUtilsJvmKt;->readFully(Lio/ktor/utils/io/core/Buffer;Ljava/nio/ByteBuffer;I)V

    .line 89
    return v0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Buffer;Ljava/nio/ByteBuffer;IILjava/lang/Object;)I
    .locals 0

    .line 85
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/BufferUtilsJvmKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;Ljava/nio/ByteBuffer;I)I

    move-result p0

    return p0
.end method

.method public static final readDirect(Lio/ktor/utils/io/core/Buffer;Lkotlin/jvm/functions/Function1;)I
    .locals 10
    .param p0, "$this$readDirect"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Buffer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 95
    .local v0, "$i$f$readDirect":I
    nop

    .line 99
    move-object v1, p0

    .local v1, "$this$read$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 150
    .local v2, "$i$f$read":I
    nop

    .line 154
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

    .line 100
    .local v6, "$i$a$-read-BufferUtilsJvmKt$readDirect$2":I
    sub-int v7, v5, v4

    invoke-static {v3, v4, v7}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 101
    .local v7, "nioBuffer":Ljava/nio/ByteBuffer;
    invoke-interface {p1, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    sub-int v9, v5, v4

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_1

    .line 104
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 154
    .end local v3    # "memory":Ljava/nio/ByteBuffer;
    .end local v4    # "start":I
    .end local v5    # "endExclusive":I
    .end local v6    # "$i$a$-read-BufferUtilsJvmKt$readDirect$2":I
    .end local v7    # "nioBuffer":Ljava/nio/ByteBuffer;
    nop

    .line 155
    .local v3, "rc$iv":I
    invoke-virtual {v1, v3}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 156
    nop

    .line 99
    .end local v1    # "$this$read$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$read":I
    .end local v3    # "rc$iv":I
    return v3

    .line 126
    .restart local v1    # "$this$read$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v2    # "$i$f$read":I
    .local v3, "memory":Ljava/nio/ByteBuffer;
    .restart local v4    # "start":I
    .restart local v5    # "endExclusive":I
    .restart local v6    # "$i$a$-read-BufferUtilsJvmKt$readDirect$2":I
    .restart local v7    # "nioBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    const/4 v8, 0x0

    .line 102
    .local v8, "$i$a$-check-BufferUtilsJvmKt$readDirect$2$1":I
    nop

    .end local v8    # "$i$a$-check-BufferUtilsJvmKt$readDirect$2$1":I
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Buffer\'s limit change is not allowed"

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static final readDirect(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/jvm/functions/Function1;)I
    .locals 6
    .param p0, "$this$readDirect"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 21
    .local v0, "$i$f$readDirect":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v1

    .line 22
    .local v1, "readPosition":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v2

    .line 23
    .local v2, "writePosition":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .local v3, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 25
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 27
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v4, v1

    .line 30
    .local v4, "delta":I
    if-ltz v4, :cond_1

    .line 31
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    if-ne v5, v2, :cond_0

    .line 32
    invoke-virtual {p0, v4}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->discardExact(I)V

    .line 34
    return v4

    .line 31
    :cond_0
    invoke-static {}, Lio/ktor/utils/io/internal/jvm/ErrorsKt;->limitChangeError()Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v5

    .line 30
    :cond_1
    invoke-static {v4}, Lio/ktor/utils/io/internal/jvm/ErrorsKt;->negativeShiftError(I)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v5
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Buffer;Ljava/nio/ByteBuffer;I)V
    .locals 17
    .param p0, "$this$readFully"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v0, "<this>"

    move-object/from16 v3, p0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const-string v4, "buffer content"

    .local v4, "name$iv":Ljava/lang/String;
    move-object/from16 v5, p0

    .local v5, "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 127
    .local v6, "$i$f$readExact":I
    nop

    .line 131
    const/4 v7, 0x0

    .line 133
    .local v7, "value$iv":Ljava/lang/Object;
    move-object v8, v5

    .local v8, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 134
    .local v9, "$i$f$read":I
    nop

    .line 138
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v10

    .local v10, "start$iv":I
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v11

    .local v11, "endExclusive$iv":I
    move-object v12, v0

    .end local v0    # "memory$iv":Ljava/nio/ByteBuffer;
    .local v12, "memory$iv":Ljava/nio/ByteBuffer;
    const/4 v13, 0x0

    .line 139
    .local v13, "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    sub-int v0, v11, v10

    if-lt v0, v2, :cond_0

    .line 143
    move-object v14, v12

    .local v14, "memory":Ljava/nio/ByteBuffer;
    move v15, v10

    .local v15, "offset":I
    const/16 v16, 0x0

    .line 74
    .local v16, "$i$a$-readExact-BufferUtilsJvmKt$readFully$1":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 75
    .local v3, "limit":I
    nop

    .line 76
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 77
    invoke-static {v14, v1, v15}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-62zg_DM(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 80
    nop

    .line 81
    nop

    .end local v3    # "limit":I
    .end local v14    # "memory":Ljava/nio/ByteBuffer;
    .end local v15    # "offset":I
    .end local v16    # "$i$a$-readExact-BufferUtilsJvmKt$readFully$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 143
    nop

    .line 144
    .end local v7    # "value$iv":Ljava/lang/Object;
    .local v0, "value$iv":Ljava/lang/Object;
    nop

    .line 138
    .end local v10    # "start$iv":I
    .end local v11    # "endExclusive$iv":I
    .end local v12    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v13    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    move/from16 v3, p2

    .line 145
    .local v3, "rc$iv$iv":I
    invoke-virtual {v8, v3}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 146
    nop

    .line 147
    .end local v3    # "rc$iv$iv":I
    .end local v8    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$f$read":I
    nop

    .line 82
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v4    # "name$iv":Ljava/lang/String;
    .end local v5    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$readExact":I
    return-void

    .line 79
    .local v3, "limit":I
    .restart local v4    # "name$iv":Ljava/lang/String;
    .restart local v5    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$readExact":I
    .restart local v7    # "value$iv":Ljava/lang/Object;
    .restart local v8    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v9    # "$i$f$read":I
    .restart local v10    # "start$iv":I
    .restart local v11    # "endExclusive$iv":I
    .restart local v12    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v13    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    .restart local v14    # "memory":Ljava/nio/ByteBuffer;
    .restart local v15    # "offset":I
    .restart local v16    # "$i$a$-readExact-BufferUtilsJvmKt$readFully$1":I
    :catchall_0
    move-exception v0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v0

    .line 140
    .end local v3    # "limit":I
    .end local v14    # "memory":Ljava/nio/ByteBuffer;
    .end local v15    # "offset":I
    .end local v16    # "$i$a$-readExact-BufferUtilsJvmKt$readFully$1":I
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not enough bytes to read a "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " of size "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v14, 0x2e

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final resetFromContentToWrite(Lio/ktor/utils/io/core/internal/ChunkBuffer;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p0, "$this$resetFromContentToWrite"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "child"    # Ljava/nio/ByteBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->resetForWrite(I)V

    .line 68
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->commitWrittenUntilIndex(I)Z

    .line 69
    return-void
.end method

.method public static final writeDirect(Lio/ktor/utils/io/core/Buffer;ILkotlin/jvm/functions/Function1;)I
    .locals 10
    .param p0, "$this$writeDirect"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "size"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Buffer;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 111
    .local v0, "$i$f$writeDirect":I
    nop

    .line 115
    move-object v1, p0

    .local v1, "$this$write$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 157
    .local v2, "$i$f$write":I
    nop

    .line 161
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

    .line 116
    .local v6, "$i$a$-write-BufferUtilsJvmKt$writeDirect$3":I
    sub-int v7, v5, v4

    invoke-static {v3, v4, v7}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 117
    .local v7, "nioBuffer":Ljava/nio/ByteBuffer;
    invoke-interface {p2, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    sub-int v9, v5, v4

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_1

    .line 120
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 161
    .end local v3    # "memory":Ljava/nio/ByteBuffer;
    .end local v4    # "start":I
    .end local v5    # "endExclusive":I
    .end local v6    # "$i$a$-write-BufferUtilsJvmKt$writeDirect$3":I
    .end local v7    # "nioBuffer":Ljava/nio/ByteBuffer;
    nop

    .line 162
    .local v3, "rc$iv":I
    invoke-virtual {v1, v3}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 163
    nop

    .line 115
    .end local v1    # "$this$write$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$write":I
    .end local v3    # "rc$iv":I
    return v3

    .line 126
    .restart local v1    # "$this$write$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v2    # "$i$f$write":I
    .local v3, "memory":Ljava/nio/ByteBuffer;
    .restart local v4    # "start":I
    .restart local v5    # "endExclusive":I
    .restart local v6    # "$i$a$-write-BufferUtilsJvmKt$writeDirect$3":I
    .restart local v7    # "nioBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    const/4 v8, 0x0

    .line 118
    .local v8, "$i$a$-check-BufferUtilsJvmKt$writeDirect$3$1":I
    nop

    .end local v8    # "$i$a$-check-BufferUtilsJvmKt$writeDirect$3$1":I
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Buffer\'s limit change is not allowed"

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static final writeDirect(Lio/ktor/utils/io/core/internal/ChunkBuffer;ILkotlin/jvm/functions/Function1;)I
    .locals 7
    .param p0, "$this$writeDirect"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "size"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 44
    .local v0, "$i$f$writeDirect":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 125
    .local v2, "$i$f$getWriteRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 44
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getWriteRemaining":I
    move v1, v3

    .line 45
    .local v1, "rem":I
    if-gt p1, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 46
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 47
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v3

    .line 48
    .local v3, "writePosition":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getLimit()I

    move-result v4

    .line 49
    .local v4, "limit":I
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 50
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 52
    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int/2addr v5, v3

    .line 55
    .local v5, "delta":I
    if-ltz v5, :cond_1

    if-gt v5, v1, :cond_1

    .line 57
    invoke-virtual {p0, v5}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->commitWritten(I)V

    .line 59
    return v5

    .line 55
    :cond_1
    invoke-static {v5, p1}, Lio/ktor/utils/io/internal/jvm/ErrorsKt;->wrongBufferPositionChangeError(II)Ljava/lang/Void;

    new-instance v6, Lkotlin/KotlinNothingValueException;

    invoke-direct {v6}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v6

    .line 126
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "writePosition":I
    .end local v4    # "limit":I
    .end local v5    # "delta":I
    :cond_2
    const/4 v2, 0x0

    .line 45
    .local v2, "$i$a$-require-BufferUtilsJvmKt$writeDirect$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is greater than buffer\'s remaining capacity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require-BufferUtilsJvmKt$writeDirect$1":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static synthetic writeDirect$default(Lio/ktor/utils/io/core/Buffer;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)I
    .locals 9
    .param p0, "$this$writeDirect_u24default"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "size"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;

    .line 110
    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    :cond_0
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "block"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 111
    .local p3, "$i$f$writeDirect":I
    nop

    .line 115
    move-object v0, p0

    .local v0, "$this$write$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 157
    .local v1, "$i$f$write":I
    nop

    .line 161
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    .local v2, "memory":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    .local v3, "start":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v4

    .local v4, "endExclusive":I
    const/4 v5, 0x0

    .line 116
    .local v5, "$i$a$-write-BufferUtilsJvmKt$writeDirect$3":I
    sub-int v6, v4, v3

    invoke-static {v2, v3, v6}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 117
    .local v6, "nioBuffer":Ljava/nio/ByteBuffer;
    invoke-interface {p2, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    sub-int v8, v4, v3

    if-ne v7, v8, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_2

    .line 120
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result p4

    .line 161
    .end local v2    # "memory":Ljava/nio/ByteBuffer;
    .end local v3    # "start":I
    .end local v4    # "endExclusive":I
    .end local v5    # "$i$a$-write-BufferUtilsJvmKt$writeDirect$3":I
    .end local v6    # "nioBuffer":Ljava/nio/ByteBuffer;
    nop

    .line 162
    .local p4, "rc$iv":I
    invoke-virtual {v0, p4}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 163
    nop

    .line 115
    .end local v0    # "$this$write$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$write":I
    .end local p4    # "rc$iv":I
    return p4

    .line 126
    .restart local v0    # "$this$write$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v1    # "$i$f$write":I
    .restart local v2    # "memory":Ljava/nio/ByteBuffer;
    .restart local v3    # "start":I
    .restart local v4    # "endExclusive":I
    .restart local v5    # "$i$a$-write-BufferUtilsJvmKt$writeDirect$3":I
    .restart local v6    # "nioBuffer":Ljava/nio/ByteBuffer;
    :cond_2
    const/4 p4, 0x0

    .line 118
    .local p4, "$i$a$-check-BufferUtilsJvmKt$writeDirect$3$1":I
    nop

    .end local p4    # "$i$a$-check-BufferUtilsJvmKt$writeDirect$3$1":I
    new-instance p4, Ljava/lang/IllegalStateException;

    const-string v7, "Buffer\'s limit change is not allowed"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p4, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p4
.end method
