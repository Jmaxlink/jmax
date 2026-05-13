.class public final Lio/ktor/utils/io/ByteReadChannelJVMKt;
.super Ljava/lang/Object;
.source "ByteReadChannelJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u001a%\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u001a%\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u001a%\u0010\u0008\u001a\u00020\t*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000c\u001a%\u0010\r\u001a\u00020\t*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000bH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000c\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "copyTo",
        "",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "dst",
        "Lio/ktor/utils/io/ByteWriteChannel;",
        "limit",
        "(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "copyToImpl",
        "joinTo",
        "",
        "closeOnEnd",
        "",
        "(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "joinToImplSuspend",
        "close",
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
.method public static final synthetic access$copyToImpl(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "dst"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p2, "limit"    # J
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteReadChannelJVMKt;->copyToImpl(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$joinToImplSuspend(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "dst"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p2, "close"    # Z
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteReadChannelJVMKt;->joinToImplSuspend(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final copyTo(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this$copyTo"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "dst"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p2, "limit"    # J
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 281
    if-eq p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 283
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    .line 284
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 287
    :cond_1
    instance-of v0, p0, Lio/ktor/utils/io/ByteBufferChannel;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lio/ktor/utils/io/ByteBufferChannel;

    if-eqz v0, :cond_2

    .line 288
    move-object v1, p1

    check-cast v1, Lio/ktor/utils/io/ByteBufferChannel;

    move-object v2, p0

    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    const/4 v5, 0x0

    move-wide v3, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lio/ktor/utils/io/ByteBufferChannel;->copyDirect$ktor_io(Lio/ktor/utils/io/ByteBufferChannel;JLio/ktor/utils/io/internal/JoiningState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 289
    :cond_2
    instance-of v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    if-eqz v0, :cond_3

    .line 290
    move-object v0, p0

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase;

    move-object v1, p1

    check-cast v1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2, v3, p4}, Lio/ktor/utils/io/internal/SequentialCopyToKt;->copyToSequentialImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 293
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteReadChannelJVMKt;->copyToImpl(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 281
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final copyToImpl(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;

    iget v2, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;

    invoke-direct {v1, v0}, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v2, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->result:Ljava/lang/Object;

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 296
    iget v3, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v3, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->I$1:I

    .local v3, "size":I
    iget-wide v5, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->J$1:J

    .local v5, "copied":J
    iget v7, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->I$0:I

    .local v7, "dstNeedsFlush":Z
    iget-wide v8, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->J$0:J

    .local v8, "limit":J
    iget-object v10, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .local v10, "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    iget-object v11, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/ByteWriteChannel;

    .local v11, "dst":Lio/ktor/utils/io/ByteWriteChannel;
    iget-object v12, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/ByteReadChannel;

    .local v12, "$this$copyToImpl":Lio/ktor/utils/io/ByteReadChannel;
    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v11

    move v11, v7

    move-object/from16 v7, v16

    goto/16 :goto_3

    .end local v3    # "size":I
    .end local v5    # "copied":J
    .end local v7    # "dstNeedsFlush":Z
    .end local v8    # "limit":J
    .end local v10    # "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v11    # "dst":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v12    # "$this$copyToImpl":Lio/ktor/utils/io/ByteReadChannel;
    :pswitch_1
    iget-wide v5, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->J$1:J

    .restart local v5    # "copied":J
    iget v3, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->I$0:I

    .local v3, "dstNeedsFlush":Z
    iget-wide v7, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->J$0:J

    .local v7, "limit":J
    iget-object v9, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$2:Ljava/lang/Object;

    move-object v10, v9

    check-cast v10, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .restart local v10    # "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    iget-object v9, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$1:Ljava/lang/Object;

    move-object v11, v9

    check-cast v11, Lio/ktor/utils/io/ByteWriteChannel;

    .restart local v11    # "dst":Lio/ktor/utils/io/ByteWriteChannel;
    iget-object v9, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lio/ktor/utils/io/ByteReadChannel;

    .local v9, "$this$copyToImpl":Lio/ktor/utils/io/ByteReadChannel;
    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v12, v9

    move-wide v8, v7

    move v7, v3

    move-object v3, v2

    goto :goto_2

    .line 320
    .end local v3    # "dstNeedsFlush":Z
    .end local v5    # "copied":J
    .end local v7    # "limit":J
    .end local v9    # "$this$copyToImpl":Lio/ktor/utils/io/ByteReadChannel;
    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 296
    .end local v10    # "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v11    # "dst":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p0

    .local v3, "$this$copyToImpl":Lio/ktor/utils/io/ByteReadChannel;
    move-wide/from16 v5, p2

    .local v5, "limit":J
    move-object/from16 v7, p1

    .line 298
    .local v7, "dst":Lio/ktor/utils/io/ByteWriteChannel;
    sget-object v8, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v8}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v8

    invoke-interface {v8}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 299
    .local v8, "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-interface {v7}, Lio/ktor/utils/io/ByteWriteChannel;->getAutoFlush()Z

    move-result v9

    xor-int/2addr v9, v4

    .line 301
    .local v9, "dstNeedsFlush":Z
    nop

    .line 302
    const-wide/16 v10, 0x0

    .line 304
    .local v10, "copied":J
    :goto_1
    nop

    .line 305
    sub-long v12, v5, v10

    .line 306
    .local v12, "remaining":J
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-eqz v14, :cond_5

    .line 307
    :try_start_2
    invoke-virtual {v8}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getCapacity()I

    move-result v14

    int-to-long v14, v14

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .end local v12    # "remaining":J
    long-to-int v12, v14

    invoke-virtual {v8, v12}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->resetForWrite(I)V

    .line 309
    iput-object v3, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$2:Ljava/lang/Object;

    iput-wide v5, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->J$0:J

    iput v9, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->I$0:I

    iput-wide v10, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->J$1:J

    iput v4, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->label:I

    invoke-interface {v3, v8, v1}, Lio/ktor/utils/io/ByteReadChannel;->readAvailable(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne v12, v0, :cond_1

    .line 296
    return-object v0

    .line 309
    :cond_1
    move-object/from16 v16, v3

    move-object v3, v2

    move-object v2, v12

    move-object/from16 v12, v16

    move-wide/from16 v17, v10

    move-object v11, v7

    move-object v10, v8

    move v7, v9

    move-wide v8, v5

    move-wide/from16 v5, v17

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v9    # "dstNeedsFlush":Z
    .local v3, "$result":Ljava/lang/Object;
    .local v5, "copied":J
    .local v7, "dstNeedsFlush":Z
    .local v8, "limit":J
    .local v10, "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v11    # "dst":Lio/ktor/utils/io/ByteWriteChannel;
    .local v12, "$this$copyToImpl":Lio/ktor/utils/io/ByteReadChannel;
    :goto_2
    :try_start_3
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 310
    .local v2, "size":I
    const/4 v13, -0x1

    if-eq v2, v13, :cond_4

    .line 312
    move-object v13, v10

    check-cast v13, Lio/ktor/utils/io/core/Buffer;

    iput-object v12, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->L$2:Ljava/lang/Object;

    iput-wide v8, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->J$0:J

    iput v7, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->I$0:I

    iput-wide v5, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->J$1:J

    iput v2, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->I$1:I

    const/4 v14, 0x2

    iput v14, v1, Lio/ktor/utils/io/ByteReadChannelJVMKt$copyToImpl$1;->label:I

    invoke-interface {v11, v13, v1}, Lio/ktor/utils/io/ByteWriteChannel;->writeFully(Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v13, v0, :cond_2

    .line 296
    return-object v0

    .line 312
    :cond_2
    move-object/from16 v16, v3

    move v3, v2

    move-object/from16 v2, v16

    move-object/from16 v17, v11

    move v11, v7

    move-object/from16 v7, v17

    .line 313
    .local v2, "$result":Ljava/lang/Object;
    .local v3, "size":I
    .local v7, "dst":Lio/ktor/utils/io/ByteWriteChannel;
    .local v11, "dstNeedsFlush":Z
    :goto_3
    int-to-long v13, v3

    add-long/2addr v5, v13

    .line 315
    .end local v3    # "size":I
    if-eqz v11, :cond_3

    :try_start_4
    invoke-interface {v12}, Lio/ktor/utils/io/ByteReadChannel;->getAvailableForRead()I

    move-result v3

    if-nez v3, :cond_3

    .line 316
    invoke-interface {v7}, Lio/ktor/utils/io/ByteWriteChannel;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 320
    .end local v5    # "copied":J
    .end local v8    # "limit":J
    .end local v11    # "dstNeedsFlush":Z
    .end local v12    # "$this$copyToImpl":Lio/ktor/utils/io/ByteReadChannel;
    :catchall_1
    move-exception v0

    move-object v11, v7

    goto :goto_6

    .line 304
    .restart local v5    # "copied":J
    .restart local v8    # "limit":J
    .restart local v11    # "dstNeedsFlush":Z
    .restart local v12    # "$this$copyToImpl":Lio/ktor/utils/io/ByteReadChannel;
    :cond_3
    :goto_4
    move-object v3, v12

    move-wide/from16 v16, v8

    move-object v8, v10

    move v9, v11

    move-wide v10, v5

    move-wide/from16 v5, v16

    goto/16 :goto_1

    .line 310
    .local v2, "size":I
    .local v3, "$result":Ljava/lang/Object;
    .local v7, "dstNeedsFlush":Z
    .local v11, "dst":Lio/ktor/utils/io/ByteWriteChannel;
    :cond_4
    move-object v2, v3

    move-object v8, v10

    move-object v7, v11

    move-wide v10, v5

    goto :goto_5

    .line 320
    .end local v2    # "size":I
    .end local v5    # "copied":J
    .end local v7    # "dstNeedsFlush":Z
    .end local v8    # "limit":J
    .end local v12    # "$this$copyToImpl":Lio/ktor/utils/io/ByteReadChannel;
    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_6

    .line 319
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v11    # "dst":Lio/ktor/utils/io/ByteWriteChannel;
    .local v2, "$result":Ljava/lang/Object;
    .local v7, "dst":Lio/ktor/utils/io/ByteWriteChannel;
    .local v8, "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v10, "copied":J
    :cond_5
    :goto_5
    :try_start_5
    invoke-static {v10, v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 325
    .end local v7    # "dst":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v10    # "copied":J
    sget-object v3, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v3

    invoke-virtual {v8, v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 319
    .end local v8    # "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    return-object v0

    .line 320
    .restart local v7    # "dst":Lio/ktor/utils/io/ByteWriteChannel;
    .restart local v8    # "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_3
    move-exception v0

    move-object v11, v7

    move-object v10, v8

    .line 321
    .end local v7    # "dst":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v8    # "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v0, "t":Ljava/lang/Throwable;
    .local v10, "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v11    # "dst":Lio/ktor/utils/io/ByteWriteChannel;
    :goto_6
    :try_start_6
    invoke-interface {v11, v0}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    .line 322
    nop

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v10    # "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v11    # "dst":Lio/ktor/utils/io/ByteWriteChannel;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 325
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    .restart local v10    # "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_4
    move-exception v0

    sget-object v3, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v3

    invoke-virtual {v10, v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final joinTo(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$joinTo"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "dst"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p2, "closeOnEnd"    # Z
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 257
    if-eq p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 259
    instance-of v0, p0, Lio/ktor/utils/io/ByteBufferChannel;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lio/ktor/utils/io/ByteBufferChannel;

    if-eqz v0, :cond_2

    .line 260
    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel;

    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-virtual {v0, v1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->joinFrom$ktor_io(Lio/ktor/utils/io/ByteBufferChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 263
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteReadChannelJVMKt;->joinToImplSuspend(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 257
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final joinToImplSuspend(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/utils/io/ByteReadChannelJVMKt$joinToImplSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/utils/io/ByteReadChannelJVMKt$joinToImplSuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteReadChannelJVMKt$joinToImplSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/utils/io/ByteReadChannelJVMKt$joinToImplSuspend$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/utils/io/ByteReadChannelJVMKt$joinToImplSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteReadChannelJVMKt$joinToImplSuspend$1;

    invoke-direct {v0, p3}, Lio/ktor/utils/io/ByteReadChannelJVMKt$joinToImplSuspend$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lio/ktor/utils/io/ByteReadChannelJVMKt$joinToImplSuspend$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 266
    iget v2, p3, Lio/ktor/utils/io/ByteReadChannelJVMKt$joinToImplSuspend$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-boolean p0, p3, Lio/ktor/utils/io/ByteReadChannelJVMKt$joinToImplSuspend$1;->Z$0:Z

    .local p0, "close":Z
    iget-object p1, p3, Lio/ktor/utils/io/ByteReadChannelJVMKt$joinToImplSuspend$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/ByteWriteChannel;

    .local p1, "dst":Lio/ktor/utils/io/ByteWriteChannel;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "close":Z
    .end local p1    # "dst":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 267
    .local p0, "$this$joinToImplSuspend":Lio/ktor/utils/io/ByteReadChannel;
    .restart local p1    # "dst":Lio/ktor/utils/io/ByteWriteChannel;
    .local p2, "close":Z
    iput-object p1, p3, Lio/ktor/utils/io/ByteReadChannelJVMKt$joinToImplSuspend$1;->L$0:Ljava/lang/Object;

    iput-boolean p2, p3, Lio/ktor/utils/io/ByteReadChannelJVMKt$joinToImplSuspend$1;->Z$0:Z

    const/4 v2, 0x1

    iput v2, p3, Lio/ktor/utils/io/ByteReadChannelJVMKt$joinToImplSuspend$1;->label:I

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {p0, p1, v2, v3, p3}, Lio/ktor/utils/io/ByteReadChannelJVMKt;->copyTo(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this$joinToImplSuspend":Lio/ktor/utils/io/ByteReadChannel;
    if-ne p0, v1, :cond_1

    .line 266
    return-object v1

    .line 267
    :cond_1
    move p0, p2

    .line 268
    .end local p2    # "close":Z
    .local p0, "close":Z
    :goto_1
    nop

    .end local p0    # "close":Z
    if-eqz p0, :cond_2

    .line 269
    invoke-static {p1}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    goto :goto_2

    .line 271
    :cond_2
    invoke-interface {p1}, Lio/ktor/utils/io/ByteWriteChannel;->flush()V

    .line 273
    .end local p1    # "dst":Lio/ktor/utils/io/ByteWriteChannel;
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
