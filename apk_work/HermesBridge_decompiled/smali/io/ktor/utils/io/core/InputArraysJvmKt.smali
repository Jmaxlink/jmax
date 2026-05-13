.class public final Lio/ktor/utils/io/core/InputArraysJvmKt;
.super Ljava/lang/Object;
.source "InputArraysJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInputArraysJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InputArraysJvm.kt\nio/ktor/utils/io/core/InputArraysJvmKt\n+ 2 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,30:1\n823#2,6:31\n829#2,13:38\n69#3:37\n*S KotlinDebug\n*F\n+ 1 InputArraysJvm.kt\nio/ktor/utils/io/core/InputArraysJvmKt\n*L\n17#1:31,6\n17#1:38,13\n19#1:37\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0001\u001a\u001c\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0001\u00a8\u0006\u0008"
    }
    d2 = {
        "readAvailable",
        "",
        "Lio/ktor/utils/io/core/Input;",
        "dst",
        "Ljava/nio/ByteBuffer;",
        "length",
        "readFully",
        "",
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
.method public static final readAvailable(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;I)I
    .locals 16
    .param p0, "$this$readAvailable"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x0

    .line 17
    .local v0, "bytesCopied":I
    move-object/from16 v3, p0

    .local v3, "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    const/4 v4, 0x0

    .line 31
    .local v4, "$i$f$takeWhile":I
    const/4 v5, 0x1

    .line 32
    .local v5, "release$iv":Z
    const/4 v6, 0x1

    invoke-static {v3, v6}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v7

    if-nez v7, :cond_0

    move/from16 v12, p2

    goto :goto_3

    .line 34
    .local v7, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move-object v8, v7

    move v7, v5

    move v5, v0

    .line 36
    .end local v0    # "bytesCopied":I
    .local v5, "bytesCopied":I
    .local v7, "release$iv":Z
    .local v8, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    :try_start_0
    move-object v0, v8

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 18
    .local v9, "$i$a$-takeWhile-InputArraysJvmKt$readAvailable$1":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    .line 19
    .local v10, "originalLimit":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    move-object v12, v0

    .local v12, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 37
    .local v13, "$i$f$getReadRemaining":I
    invoke-virtual {v12}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v14

    invoke-virtual {v12}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v15

    sub-int/2addr v14, v15

    .line 19
    .end local v12    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$f$getReadRemaining":I
    add-int/2addr v11, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 20
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    .line 21
    .local v11, "size":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v13

    invoke-static {v12, v1, v13}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-62zg_DM(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 22
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 23
    add-int/2addr v5, v11

    .line 25
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v12, :cond_1

    move/from16 v12, p2

    if-ge v5, v12, :cond_2

    move v13, v6

    goto :goto_1

    :cond_1
    move/from16 v12, p2

    :cond_2
    const/4 v13, 0x0

    .line 36
    .end local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$a$-takeWhile-InputArraysJvmKt$readAvailable$1":I
    .end local v10    # "originalLimit":I
    .end local v11    # "size":I
    :goto_1
    if-nez v13, :cond_3

    .line 38
    goto :goto_2

    .line 40
    :cond_3
    const/4 v7, 0x0

    .line 41
    :try_start_1
    invoke-static {v3, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_5

    .line 46
    :goto_2
    if-eqz v7, :cond_4

    .line 47
    invoke-static {v3, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 49
    :cond_4
    nop

    .line 50
    move v0, v5

    .line 28
    .end local v3    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "$i$f$takeWhile":I
    .end local v5    # "bytesCopied":I
    .end local v7    # "release$iv":Z
    .end local v8    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v0, "bytesCopied":I
    :goto_3
    return v0

    .line 42
    .local v0, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v3    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "$i$f$takeWhile":I
    .restart local v5    # "bytesCopied":I
    .restart local v7    # "release$iv":Z
    .restart local v8    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_5
    move-object v8, v0

    .line 43
    const/4 v7, 0x1

    .line 44
    .end local v0    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move/from16 v12, p2

    :goto_4
    if-eqz v7, :cond_6

    .line 47
    invoke-static {v3, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_6
    throw v0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;IILjava/lang/Object;)I
    .locals 0

    .line 14
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/InputArraysJvmKt;->readAvailable(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;I)I

    move-result p0

    return p0
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p0, "$this$readFully"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/InputArraysJvmKt;->readAvailable(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;I)I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 11
    return-void

    .line 9
    :cond_0
    invoke-static {p2}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;IILjava/lang/Object;)V
    .locals 0

    .line 7
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/InputArraysJvmKt;->readFully(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;I)V

    return-void
.end method
