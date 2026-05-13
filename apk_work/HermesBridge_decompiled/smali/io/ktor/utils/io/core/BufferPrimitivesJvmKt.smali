.class public final Lio/ktor/utils/io/core/BufferPrimitivesJvmKt;
.super Ljava/lang/Object;
.source "BufferPrimitivesJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferPrimitivesJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferPrimitivesJvm.kt\nio/ktor/utils/io/core/BufferPrimitivesJvmKt\n+ 2 BufferPrimitives.kt\nio/ktor/utils/io/core/BufferPrimitivesKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n*L\n1#1,27:1\n762#2,7:28\n769#2,6:40\n777#2:48\n784#2,5:49\n789#2,6:59\n796#2:67\n372#3,5:35\n377#3,2:46\n390#3,5:54\n395#3,2:65\n*S KotlinDebug\n*F\n+ 1 BufferPrimitivesJvm.kt\nio/ktor/utils/io/core/BufferPrimitivesJvmKt\n*L\n12#1:28,7\n12#1:40,6\n12#1:48\n23#1:49,5\n23#1:59,6\n23#1:67\n12#1:35,5\n12#1:46,2\n23#1:54,5\n23#1:65,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "readFully",
        "",
        "Lio/ktor/utils/io/core/Buffer;",
        "destination",
        "Ljava/nio/ByteBuffer;",
        "writeFully",
        "source",
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
.method public static final readFully(Lio/ktor/utils/io/core/Buffer;Ljava/nio/ByteBuffer;)V
    .locals 14
    .param p0, "$this$readFully"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # Ljava/nio/ByteBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 12
    .local v0, "size":I
    const-string v1, "buffer content"

    .local v1, "name$iv":Ljava/lang/String;
    move-object v2, p0

    .local v2, "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 28
    .local v3, "$i$f$readExact":I
    nop

    .line 32
    const/4 v4, 0x0

    .line 34
    .local v4, "value$iv":Ljava/lang/Object;
    move-object v5, v2

    .local v5, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 35
    .local v6, "$i$f$read":I
    nop

    .line 39
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v7

    .local v7, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v8

    .local v8, "start$iv":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v9

    .local v9, "endExclusive$iv":I
    const/4 v10, 0x0

    .line 40
    .local v10, "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    sub-int v11, v9, v8

    if-lt v11, v0, :cond_0

    .line 44
    move-object v11, v7

    .local v11, "memory":Ljava/nio/ByteBuffer;
    move v12, v8

    .local v12, "offset":I
    const/4 v13, 0x0

    .line 13
    .local v13, "$i$a$-readExact-BufferPrimitivesJvmKt$readFully$1":I
    invoke-static {v11, p1, v12}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-62zg_DM(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 14
    nop

    .end local v11    # "memory":Ljava/nio/ByteBuffer;
    .end local v12    # "offset":I
    .end local v13    # "$i$a$-readExact-BufferPrimitivesJvmKt$readFully$1":I
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 44
    move-object v4, v11

    .line 45
    nop

    .line 39
    .end local v7    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "start$iv":I
    .end local v9    # "endExclusive$iv":I
    .end local v10    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    move v7, v0

    .line 46
    .local v7, "rc$iv$iv":I
    invoke-virtual {v5, v7}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 47
    nop

    .line 48
    .end local v5    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$read":I
    .end local v7    # "rc$iv$iv":I
    nop

    .line 15
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$readExact":I
    .end local v4    # "value$iv":Ljava/lang/Object;
    return-void

    .line 41
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v3    # "$i$f$readExact":I
    .restart local v4    # "value$iv":Ljava/lang/Object;
    .restart local v5    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$read":I
    .local v7, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v8    # "start$iv":I
    .restart local v9    # "endExclusive$iv":I
    .restart local v10    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    :cond_0
    new-instance v11, Ljava/io/EOFException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not enough bytes to read a "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " of size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public static final writeFully(Lio/ktor/utils/io/core/Buffer;Ljava/nio/ByteBuffer;)V
    .locals 14
    .param p0, "$this$writeFully"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "source"    # Ljava/nio/ByteBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 23
    .local v0, "size":I
    const-string v1, "buffer content"

    .local v1, "name$iv":Ljava/lang/String;
    move-object v2, p0

    .local v2, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 49
    .local v3, "$i$f$writeExact":I
    nop

    .line 53
    move-object v4, v2

    .local v4, "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 54
    .local v5, "$i$f$write":I
    nop

    .line 58
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v6

    .local v6, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    .local v7, "start$iv":I
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v8

    .local v8, "endExclusive$iv":I
    const/4 v9, 0x0

    .line 59
    .local v9, "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    sub-int v10, v8, v7

    .line 60
    .local v10, "writeRemaining$iv":I
    if-lt v10, v0, :cond_0

    .line 63
    move-object v11, v6

    .local v11, "memory":Ljava/nio/ByteBuffer;
    move v12, v7

    .local v12, "offset":I
    const/4 v13, 0x0

    .line 24
    .local v13, "$i$a$-writeExact-BufferPrimitivesJvmKt$writeFully$1":I
    invoke-static {p1, v11, v12}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-SG11BkQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 25
    nop

    .line 63
    .end local v11    # "memory":Ljava/nio/ByteBuffer;
    .end local v12    # "offset":I
    .end local v13    # "$i$a$-writeExact-BufferPrimitivesJvmKt$writeFully$1":I
    nop

    .line 64
    nop

    .line 58
    .end local v6    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v7    # "start$iv":I
    .end local v8    # "endExclusive$iv":I
    .end local v9    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .end local v10    # "writeRemaining$iv":I
    move v6, v0

    .line 65
    .local v6, "rc$iv$iv":I
    invoke-virtual {v4, v6}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 66
    nop

    .line 67
    .end local v4    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$f$write":I
    .end local v6    # "rc$iv$iv":I
    nop

    .line 26
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$writeExact":I
    return-void

    .line 61
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v3    # "$i$f$writeExact":I
    .restart local v4    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v5    # "$i$f$write":I
    .local v6, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v7    # "start$iv":I
    .restart local v8    # "endExclusive$iv":I
    .restart local v9    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .restart local v10    # "writeRemaining$iv":I
    :cond_0
    new-instance v11, Lio/ktor/utils/io/core/InsufficientSpaceException;

    invoke-direct {v11, v1, v0, v10}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw v11
.end method
