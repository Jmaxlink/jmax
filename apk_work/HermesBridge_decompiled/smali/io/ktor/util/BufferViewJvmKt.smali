.class public final Lio/ktor/util/BufferViewJvmKt;
.super Ljava/lang/Object;
.source "BufferViewJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferViewJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferViewJvm.kt\nio/ktor/util/BufferViewJvmKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 3 BufferUtilsJvm.kt\nio/ktor/utils/io/core/BufferUtilsJvmKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,43:1\n74#2:44\n74#2:46\n44#3:45\n45#3:47\n46#3,14:49\n21#3,14:63\n1#4:48\n*S KotlinDebug\n*F\n+ 1 BufferViewJvm.kt\nio/ktor/util/BufferViewJvmKt\n*L\n18#1:44\n21#1:46\n21#1:45\n21#1:47\n21#1:49,14\n37#1:63,14\n21#1:48\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0014\u0010\u0005\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "read",
        "",
        "Ljava/nio/channels/ReadableByteChannel;",
        "buffer",
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "write",
        "Ljava/nio/channels/WritableByteChannel;",
        "ktor-utils"
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
.method public static final read(Ljava/nio/channels/ReadableByteChannel;Lio/ktor/utils/io/core/internal/ChunkBuffer;)I
    .locals 10
    .param p0, "$this$read"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "buffer"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 44
    .local v1, "$i$f$getWriteRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 18
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$getWriteRemaining":I
    const/4 v0, 0x0

    if-nez v2, :cond_0

    return v0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 21
    .local v1, "count":I
    const/4 v2, 0x1

    .local v2, "size$iv":I
    move-object v3, p1

    .local v3, "$this$writeDirect$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v4, 0x0

    .line 45
    .local v4, "$i$f$writeDirect":I
    move-object v5, v3

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .local v5, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 46
    .local v6, "$i$f$getWriteRemaining":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v7

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    sub-int/2addr v7, v8

    .line 45
    .end local v5    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$getWriteRemaining":I
    move v5, v7

    .line 47
    .local v5, "rem$iv":I
    if-gt v2, v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_3

    .line 49
    invoke-virtual {v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 50
    .local v0, "buffer$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v6

    .line 51
    .local v6, "writePosition$iv":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getLimit()I

    move-result v7

    .line 52
    .local v7, "limit$iv":I
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 53
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 55
    move-object v8, v0

    .local v8, "bb":Ljava/nio/ByteBuffer;
    const/4 v9, 0x0

    .line 22
    .local v9, "$i$a$-writeDirect-BufferViewJvmKt$read$1":I
    invoke-interface {p0, v8}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 23
    nop

    .line 55
    .end local v8    # "bb":Ljava/nio/ByteBuffer;
    .end local v9    # "$i$a$-writeDirect-BufferViewJvmKt$read$1":I
    nop

    .line 57
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    sub-int/2addr v8, v6

    .line 58
    .local v8, "delta$iv":I
    if-ltz v8, :cond_2

    if-gt v8, v5, :cond_2

    .line 60
    invoke-virtual {v3, v8}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->commitWritten(I)V

    .line 62
    nop

    .line 25
    .end local v0    # "buffer$iv":Ljava/nio/ByteBuffer;
    .end local v2    # "size$iv":I
    .end local v3    # "$this$writeDirect$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v4    # "$i$f$writeDirect":I
    .end local v5    # "rem$iv":I
    .end local v6    # "writePosition$iv":I
    .end local v7    # "limit$iv":I
    .end local v8    # "delta$iv":I
    return v1

    .line 58
    .restart local v0    # "buffer$iv":Ljava/nio/ByteBuffer;
    .restart local v2    # "size$iv":I
    .restart local v3    # "$this$writeDirect$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v4    # "$i$f$writeDirect":I
    .restart local v5    # "rem$iv":I
    .restart local v6    # "writePosition$iv":I
    .restart local v7    # "limit$iv":I
    .restart local v8    # "delta$iv":I
    :cond_2
    invoke-static {v8, v2}, Lio/ktor/utils/io/internal/jvm/ErrorsKt;->wrongBufferPositionChangeError(II)Ljava/lang/Void;

    new-instance v9, Lkotlin/KotlinNothingValueException;

    invoke-direct {v9}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v9

    .line 48
    .end local v0    # "buffer$iv":Ljava/nio/ByteBuffer;
    .end local v6    # "writePosition$iv":I
    .end local v7    # "limit$iv":I
    .end local v8    # "delta$iv":I
    :cond_3
    const/4 v0, 0x0

    .line 47
    .local v0, "$i$a$-require-BufferUtilsJvmKt$writeDirect$1$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is greater than buffer\'s remaining capacity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferUtilsJvmKt$writeDirect$1$iv":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static final write(Ljava/nio/channels/WritableByteChannel;Lio/ktor/utils/io/core/internal/ChunkBuffer;)I
    .locals 8
    .param p0, "$this$write"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "buffer"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .annotation runtime Lio/ktor/util/InternalAPI;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "count":I
    move-object v1, p1

    .local v1, "$this$readDirect$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v2, 0x0

    .line 63
    .local v2, "$i$f$readDirect":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v3

    .line 64
    .local v3, "readPosition$iv":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v4

    .line 65
    .local v4, "writePosition$iv":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 66
    .local v5, "bb$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 67
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 69
    move-object v6, v5

    .local v6, "bb":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    .line 38
    .local v7, "$i$a$-readDirect-BufferViewJvmKt$write$1":I
    invoke-interface {p0, v6}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 39
    nop

    .line 69
    .end local v6    # "bb":Ljava/nio/ByteBuffer;
    .end local v7    # "$i$a$-readDirect-BufferViewJvmKt$write$1":I
    nop

    .line 71
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v6, v3

    .line 72
    .local v6, "delta$iv":I
    if-ltz v6, :cond_1

    .line 73
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    if-ne v7, v4, :cond_0

    .line 74
    invoke-virtual {v1, v6}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->discardExact(I)V

    .line 76
    nop

    .line 41
    .end local v1    # "$this$readDirect$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v2    # "$i$f$readDirect":I
    .end local v3    # "readPosition$iv":I
    .end local v4    # "writePosition$iv":I
    .end local v5    # "bb$iv":Ljava/nio/ByteBuffer;
    .end local v6    # "delta$iv":I
    return v0

    .line 73
    .restart local v1    # "$this$readDirect$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v2    # "$i$f$readDirect":I
    .restart local v3    # "readPosition$iv":I
    .restart local v4    # "writePosition$iv":I
    .restart local v5    # "bb$iv":Ljava/nio/ByteBuffer;
    .restart local v6    # "delta$iv":I
    :cond_0
    invoke-static {}, Lio/ktor/utils/io/internal/jvm/ErrorsKt;->limitChangeError()Ljava/lang/Void;

    new-instance v7, Lkotlin/KotlinNothingValueException;

    invoke-direct {v7}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v7

    .line 72
    :cond_1
    invoke-static {v6}, Lio/ktor/utils/io/internal/jvm/ErrorsKt;->negativeShiftError(I)Ljava/lang/Void;

    new-instance v7, Lkotlin/KotlinNothingValueException;

    invoke-direct {v7}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v7
.end method
