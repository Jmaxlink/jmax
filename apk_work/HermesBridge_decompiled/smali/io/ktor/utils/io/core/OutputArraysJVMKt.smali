.class public final Lio/ktor/utils/io/core/OutputArraysJVMKt;
.super Ljava/lang/Object;
.source "OutputArraysJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutputArraysJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutputArraysJVM.kt\nio/ktor/utils/io/core/OutputArraysJVMKt\n+ 2 Output.kt\nio/ktor/utils/io/core/OutputKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,20:1\n488#2,4:21\n492#2,6:26\n74#3:25\n*S KotlinDebug\n*F\n+ 1 OutputArraysJVM.kt\nio/ktor/utils/io/core/OutputArraysJVMKt\n*L\n11#1:21,4\n11#1:26,6\n12#1:25\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "writeFully",
        "",
        "Lio/ktor/utils/io/core/Output;",
        "bb",
        "Ljava/nio/ByteBuffer;",
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
.method public static final writeFully(Lio/ktor/utils/io/core/Output;Ljava/nio/ByteBuffer;)V
    .locals 12
    .param p0, "$this$writeFully"    # Lio/ktor/utils/io/core/Output;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 11
    .local v0, "l":I
    move-object v1, p0

    .local v1, "$this$writeWhile$iv":Lio/ktor/utils/io/core/Output;
    const/4 v2, 0x0

    .line 21
    .local v2, "$i$f$writeWhile":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v4, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    .line 22
    .local v3, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 23
    :goto_0
    nop

    .line 24
    :try_start_0
    move-object v5, v3

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .local v5, "chunk":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 12
    .local v6, "$i$a$-writeWhile-OutputArraysJVMKt$writeFully$1":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    move-object v8, v5

    .local v8, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 25
    .local v9, "$i$f$getWriteRemaining":I
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v10

    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v11

    sub-int/2addr v10, v11

    .line 12
    .end local v8    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$f$getWriteRemaining":I
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 13
    .local v7, "size":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 14
    invoke-static {v5, p1}, Lio/ktor/utils/io/core/BufferPrimitivesJvmKt;->writeFully(Lio/ktor/utils/io/core/Buffer;Ljava/nio/ByteBuffer;)V

    .line 15
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 17
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    .line 24
    .end local v5    # "chunk":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$a$-writeWhile-OutputArraysJVMKt$writeFully$1":I
    .end local v7    # "size":I
    if-eqz v8, :cond_0

    .line 26
    invoke-static {v1, v4, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 30
    nop

    .line 31
    nop

    .line 19
    .end local v1    # "$this$writeWhile$iv":Lio/ktor/utils/io/core/Output;
    .end local v2    # "$i$f$writeWhile":I
    .end local v3    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    return-void

    .line 29
    .restart local v1    # "$this$writeWhile$iv":Lio/ktor/utils/io/core/Output;
    .restart local v2    # "$i$f$writeWhile":I
    .restart local v3    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v4
.end method
