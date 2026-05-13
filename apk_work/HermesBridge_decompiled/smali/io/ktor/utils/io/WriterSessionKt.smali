.class public final Lio/ktor/utils/io/WriterSessionKt;
.super Ljava/lang/Object;
.source "WriterSession.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\u001a\u0008\u0010\u0000\u001a\u00020\u0001H\u0002\u001a#\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a%\u0010\u0008\u001a\u00020\t*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\u0006H\u0081@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u001a\u001d\u0010\u000e\u001a\u00020\t*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0001H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a\u001f\u0010\u0010\u001a\u0004\u0018\u00010\u0001*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0081@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011\u001ao\u0010\u0012\u001a\u00020\u0006*\u00020\n2\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062K\u0010\u0013\u001aG\u0012\u0013\u0012\u00110\u0015\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0018\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u001a\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u001b\u0012\u0004\u0012\u00020\u00060\u0014H\u0086H\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001c\u001a\u000e\u0010\u001d\u001a\u0004\u0018\u00010\u0004*\u00020\nH\u0002\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "writeBufferFallback",
        "Lio/ktor/utils/io/core/Buffer;",
        "writeBufferSuspend",
        "session",
        "Lio/ktor/utils/io/WriterSuspendSession;",
        "desiredSpace",
        "",
        "(Lio/ktor/utils/io/WriterSuspendSession;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "completeWriting",
        "",
        "Lio/ktor/utils/io/ByteWriteChannel;",
        "buffer",
        "written",
        "(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "completeWritingFallback",
        "(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "requestWriteBuffer",
        "(Lio/ktor/utils/io/ByteWriteChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "write",
        "block",
        "Lkotlin/Function3;",
        "Lio/ktor/utils/io/bits/Memory;",
        "Lkotlin/ParameterName;",
        "name",
        "freeSpace",
        "",
        "startOffset",
        "endExclusive",
        "(Lio/ktor/utils/io/ByteWriteChannel;ILkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeSessionFor",
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
.method public static final synthetic access$completeWritingFallback(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "buffer"    # Lio/ktor/utils/io/core/Buffer;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/WriterSessionKt;->completeWritingFallback(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$writeBufferSuspend(Lio/ktor/utils/io/WriterSuspendSession;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "session"    # Lio/ktor/utils/io/WriterSuspendSession;
    .param p1, "desiredSpace"    # I
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/WriterSessionKt;->writeBufferSuspend(Lio/ktor/utils/io/WriterSuspendSession;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final completeWriting(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$completeWriting"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "buffer"    # Lio/ktor/utils/io/core/Buffer;
    .param p2, "written"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lio/ktor/utils/io/core/Buffer;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 72
    instance-of v0, p0, Lio/ktor/utils/io/HasWriteSession;

    if-eqz v0, :cond_0

    .line 73
    move-object v0, p0

    check-cast v0, Lio/ktor/utils/io/HasWriteSession;

    invoke-interface {v0, p2}, Lio/ktor/utils/io/HasWriteSession;->endWriteSession(I)V

    .line 74
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 77
    :cond_0
    invoke-static {p0, p1, p3}, Lio/ktor/utils/io/WriterSessionKt;->completeWritingFallback(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final completeWritingFallback(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lio/ktor/utils/io/core/Buffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/WriterSessionKt$completeWritingFallback$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/WriterSessionKt$completeWritingFallback$1;

    iget v1, v0, Lio/ktor/utils/io/WriterSessionKt$completeWritingFallback$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/WriterSessionKt$completeWritingFallback$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/WriterSessionKt$completeWritingFallback$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/WriterSessionKt$completeWritingFallback$1;

    invoke-direct {v0, p2}, Lio/ktor/utils/io/WriterSessionKt$completeWritingFallback$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/WriterSessionKt$completeWritingFallback$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 81
    iget v2, p2, Lio/ktor/utils/io/WriterSessionKt$completeWritingFallback$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p2, Lio/ktor/utils/io/WriterSessionKt$completeWritingFallback$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/utils/io/core/Buffer;

    .local p0, "buffer":Lio/ktor/utils/io/core/Buffer;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 82
    .local p0, "$this$completeWritingFallback":Lio/ktor/utils/io/ByteWriteChannel;
    .local p1, "buffer":Lio/ktor/utils/io/core/Buffer;
    instance-of v2, p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-eqz v2, :cond_2

    .line 83
    iput-object p1, p2, Lio/ktor/utils/io/WriterSessionKt$completeWritingFallback$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p2, Lio/ktor/utils/io/WriterSessionKt$completeWritingFallback$1;->label:I

    invoke-interface {p0, p1, p2}, Lio/ktor/utils/io/ByteWriteChannel;->writeFully(Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this$completeWritingFallback":Lio/ktor/utils/io/ByteWriteChannel;
    if-ne p0, v1, :cond_1

    .line 81
    return-object v1

    .line 83
    :cond_1
    move-object p0, p1

    .line 84
    .end local p1    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .local p0, "buffer":Lio/ktor/utils/io/core/Buffer;
    :goto_1
    move-object p1, p0

    check-cast p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    sget-object v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 85
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 88
    .end local p0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local p1    # "buffer":Lio/ktor/utils/io/core/Buffer;
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only ChunkBuffer instance is supported."

    invoke-direct {p0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final requestWriteBuffer(Lio/ktor/utils/io/ByteWriteChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$requestWriteBuffer"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "desiredSpace"    # I
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/core/Buffer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 56
    invoke-static {p0}, Lio/ktor/utils/io/WriterSessionKt;->writeSessionFor(Lio/ktor/utils/io/ByteWriteChannel;)Lio/ktor/utils/io/WriterSuspendSession;

    move-result-object v0

    .line 57
    .local v0, "session":Lio/ktor/utils/io/WriterSuspendSession;
    if-eqz v0, :cond_1

    .line 58
    invoke-interface {v0, p1}, Lio/ktor/utils/io/WriterSuspendSession;->request(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    .line 59
    .local v1, "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    if-eqz v1, :cond_0

    .line 60
    return-object v1

    .line 63
    :cond_0
    invoke-static {v0, p1, p2}, Lio/ktor/utils/io/WriterSessionKt;->writeBufferSuspend(Lio/ktor/utils/io/WriterSuspendSession;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 66
    .end local v1    # "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_1
    invoke-static {}, Lio/ktor/utils/io/WriterSessionKt;->writeBufferFallback()Lio/ktor/utils/io/core/Buffer;

    move-result-object v1

    return-object v1
.end method

.method public static final write(Lio/ktor/utils/io/ByteWriteChannel;ILkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/utils/io/bits/Memory;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/utils/io/WriterSessionKt$write$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/utils/io/WriterSessionKt$write$1;

    iget v1, v0, Lio/ktor/utils/io/WriterSessionKt$write$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/utils/io/WriterSessionKt$write$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/utils/io/WriterSessionKt$write$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/WriterSessionKt$write$1;

    invoke-direct {v0, p3}, Lio/ktor/utils/io/WriterSessionKt$write$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lio/ktor/utils/io/WriterSessionKt$write$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 18
    iget v2, p3, Lio/ktor/utils/io/WriterSessionKt$write$1;->label:I

    const/4 v3, 0x1

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
    const/4 p0, 0x0

    .local p0, "$i$f$write":I
    iget-object p1, p3, Lio/ktor/utils/io/WriterSessionKt$write$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local p0    # "$i$f$write":I
    :pswitch_1
    const/4 p0, 0x0

    .restart local p0    # "$i$f$write":I
    iget-object p1, p3, Lio/ktor/utils/io/WriterSessionKt$write$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local p0    # "$i$f$write":I
    :pswitch_2
    const/4 p0, 0x0

    .restart local p0    # "$i$f$write":I
    iget-object p1, p3, Lio/ktor/utils/io/WriterSessionKt$write$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function3;

    .local p1, "block":Lkotlin/jvm/functions/Function3;
    iget-object p2, p3, Lio/ktor/utils/io/WriterSessionKt$write$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteWriteChannel;

    .local p2, "$this$write":Lio/ktor/utils/io/ByteWriteChannel;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p2

    move-object p2, p1

    move-object p1, v0

    goto :goto_1

    .end local p0    # "$i$f$write":I
    .end local p1    # "block":Lkotlin/jvm/functions/Function3;
    .end local p2    # "$this$write":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$write":Lio/ktor/utils/io/ByteWriteChannel;
    .local p1, "desiredSpace":I
    .local p2, "block":Lkotlin/jvm/functions/Function3;
    const/4 v2, 0x0

    .line 22
    .local v2, "$i$f$write":I
    iput-object p0, p3, Lio/ktor/utils/io/WriterSessionKt$write$1;->L$0:Ljava/lang/Object;

    iput-object p2, p3, Lio/ktor/utils/io/WriterSessionKt$write$1;->L$1:Ljava/lang/Object;

    iput v3, p3, Lio/ktor/utils/io/WriterSessionKt$write$1;->label:I

    invoke-static {p0, p1, p3}, Lio/ktor/utils/io/WriterSessionKt;->requestWriteBuffer(Lio/ktor/utils/io/ByteWriteChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "desiredSpace":I
    if-ne p1, v1, :cond_1

    .line 18
    return-object v1

    .line 22
    :cond_1
    move v10, v2

    move-object v2, p0

    move p0, v10

    .local v2, "$this$write":Lio/ktor/utils/io/ByteWriteChannel;
    .local p0, "$i$f$write":I
    :goto_1
    check-cast p1, Lio/ktor/utils/io/core/Buffer;

    if-nez p1, :cond_2

    sget-object p1, Lio/ktor/utils/io/core/Buffer;->Companion:Lio/ktor/utils/io/core/Buffer$Companion;

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer$Companion;->getEmpty()Lio/ktor/utils/io/core/Buffer;

    move-result-object p1

    .line 23
    .local p1, "buffer":Lio/ktor/utils/io/core/Buffer;
    :cond_2
    const/4 v4, 0x0

    .line 24
    .local v4, "bytesWritten":I
    nop

    .line 25
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {v6}, Lio/ktor/utils/io/bits/Memory;->box-impl(Ljava/nio/ByteBuffer;)Lio/ktor/utils/io/bits/Memory;

    move-result-object v6

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {p2, v6, v7, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    move v4, v6

    .line 26
    .end local p2    # "block":Lkotlin/jvm/functions/Function3;
    invoke-virtual {p1, v4}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 27
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 29
    iput-object p2, p3, Lio/ktor/utils/io/WriterSessionKt$write$1;->L$0:Ljava/lang/Object;

    iput-object v5, p3, Lio/ktor/utils/io/WriterSessionKt$write$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, p3, Lio/ktor/utils/io/WriterSessionKt$write$1;->label:I

    invoke-static {v2, p1, v4, p3}, Lio/ktor/utils/io/WriterSessionKt;->completeWriting(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "$this$write":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v4    # "bytesWritten":I
    .end local p1    # "buffer":Lio/ktor/utils/io/core/Buffer;
    if-ne p1, v1, :cond_3

    .line 18
    return-object v1

    .line 29
    :cond_3
    move-object p1, p2

    :goto_2
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 27
    return-object p1

    .line 29
    .restart local v2    # "$this$write":Lio/ktor/utils/io/ByteWriteChannel;
    .restart local v4    # "bytesWritten":I
    .restart local p1    # "buffer":Lio/ktor/utils/io/core/Buffer;
    :catchall_0
    move-exception p2

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    iput-object p2, p3, Lio/ktor/utils/io/WriterSessionKt$write$1;->L$0:Ljava/lang/Object;

    iput-object v5, p3, Lio/ktor/utils/io/WriterSessionKt$write$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, p3, Lio/ktor/utils/io/WriterSessionKt$write$1;->label:I

    invoke-static {v2, p1, v4, p3}, Lio/ktor/utils/io/WriterSessionKt;->completeWriting(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "$this$write":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v4    # "bytesWritten":I
    .end local p1    # "buffer":Lio/ktor/utils/io/core/Buffer;
    if-ne p1, v1, :cond_4

    .line 18
    return-object v1

    .line 29
    :cond_4
    move-object p1, p2

    :goto_3
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final write$$forInline(Lio/ktor/utils/io/ByteWriteChannel;ILkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p0, "$this$write"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "desiredSpace"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function3;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/utils/io/bits/Memory;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    .local v0, "$i$f$write":I
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, p1, p3}, Lio/ktor/utils/io/WriterSessionKt;->requestWriteBuffer(Lio/ktor/utils/io/ByteWriteChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lio/ktor/utils/io/core/Buffer;->Companion:Lio/ktor/utils/io/core/Buffer$Companion;

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer$Companion;->getEmpty()Lio/ktor/utils/io/core/Buffer;

    move-result-object v2

    .line 23
    .local v2, "buffer":Lio/ktor/utils/io/core/Buffer;
    :goto_0
    const/4 v4, 0x0

    .line 24
    .local v4, "bytesWritten":I
    nop

    .line 25
    :try_start_0
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Lio/ktor/utils/io/bits/Memory;->box-impl(Ljava/nio/ByteBuffer;)Lio/ktor/utils/io/bits/Memory;

    move-result-object v5

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p2, v5, v6, v7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    move v4, v5

    .line 26
    invoke-virtual {v2, v4}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 29
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, v2, v4, p3}, Lio/ktor/utils/io/WriterSessionKt;->completeWriting(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 27
    return-object v5

    .line 29
    :catchall_0
    move-exception v5

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, v2, v4, p3}, Lio/ktor/utils/io/WriterSessionKt;->completeWriting(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v5
.end method

.method public static synthetic write$default(Lio/ktor/utils/io/ByteWriteChannel;ILkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this$write_u24default"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "desiredSpace"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function3;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    const/4 p5, 0x1

    and-int/2addr p4, p5

    if-eqz p4, :cond_0

    .line 19
    const/4 p1, 0x1

    .line 18
    :cond_0
    const/4 p4, 0x0

    .line 22
    .local p4, "$i$f$write":I
    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, p1, p3}, Lio/ktor/utils/io/WriterSessionKt;->requestWriteBuffer(Lio/ktor/utils/io/ByteWriteChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p5}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lio/ktor/utils/io/core/Buffer;->Companion:Lio/ktor/utils/io/core/Buffer$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer$Companion;->getEmpty()Lio/ktor/utils/io/core/Buffer;

    move-result-object v1

    .line 23
    .local v1, "buffer":Lio/ktor/utils/io/core/Buffer;
    :goto_0
    const/4 v2, 0x0

    .line 24
    .local v2, "bytesWritten":I
    nop

    .line 25
    :try_start_0
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lio/ktor/utils/io/bits/Memory;->box-impl(Ljava/nio/ByteBuffer;)Lio/ktor/utils/io/bits/Memory;

    move-result-object v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p2, v3, v4, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move v2, v3

    .line 26
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p5}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, v1, v2, p3}, Lio/ktor/utils/io/WriterSessionKt;->completeWriting(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    invoke-static {p5}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p5}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 27
    return-object v3

    .line 29
    :catchall_0
    move-exception v3

    invoke-static {p5}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, v1, v2, p3}, Lio/ktor/utils/io/WriterSessionKt;->completeWriting(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    invoke-static {p5}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p5}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method private static final writeBufferFallback()Lio/ktor/utils/io/core/Buffer;
    .locals 4

    .line 98
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .local v1, "it":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v2, 0x0

    .line 99
    .local v2, "$i$a$-also-WriterSessionKt$writeBufferFallback$1":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->resetForWrite()V

    .line 100
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->reserveEndGap(I)V

    .line 101
    nop

    .line 98
    .end local v1    # "it":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v2    # "$i$a$-also-WriterSessionKt$writeBufferFallback$1":I
    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .line 101
    return-object v0
.end method

.method private static final writeBufferSuspend(Lio/ktor/utils/io/WriterSuspendSession;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/WriterSuspendSession;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/core/Buffer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/WriterSessionKt$writeBufferSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/WriterSessionKt$writeBufferSuspend$1;

    iget v1, v0, Lio/ktor/utils/io/WriterSessionKt$writeBufferSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/WriterSessionKt$writeBufferSuspend$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/WriterSessionKt$writeBufferSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/WriterSessionKt$writeBufferSuspend$1;

    invoke-direct {v0, p2}, Lio/ktor/utils/io/WriterSessionKt$writeBufferSuspend$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/WriterSessionKt$writeBufferSuspend$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 92
    iget v2, p2, Lio/ktor/utils/io/WriterSessionKt$writeBufferSuspend$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget p0, p2, Lio/ktor/utils/io/WriterSessionKt$writeBufferSuspend$1;->I$0:I

    .local p0, "desiredSpace":I
    iget-object p1, p2, Lio/ktor/utils/io/WriterSessionKt$writeBufferSuspend$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/WriterSuspendSession;

    .local p1, "session":Lio/ktor/utils/io/WriterSuspendSession;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "desiredSpace":I
    .end local p1    # "session":Lio/ktor/utils/io/WriterSuspendSession;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    .local p0, "session":Lio/ktor/utils/io/WriterSuspendSession;
    .local p1, "desiredSpace":I
    iput-object p0, p2, Lio/ktor/utils/io/WriterSessionKt$writeBufferSuspend$1;->L$0:Ljava/lang/Object;

    iput p1, p2, Lio/ktor/utils/io/WriterSessionKt$writeBufferSuspend$1;->I$0:I

    iput v3, p2, Lio/ktor/utils/io/WriterSessionKt$writeBufferSuspend$1;->label:I

    invoke-interface {p0, p1, p2}, Lio/ktor/utils/io/WriterSuspendSession;->tryAwait(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 92
    return-object v1

    .line 93
    :cond_1
    move v4, p1

    move-object p1, p0

    move p0, v4

    .line 94
    .local p0, "desiredSpace":I
    .local p1, "session":Lio/ktor/utils/io/WriterSuspendSession;
    :goto_1
    invoke-interface {p1, p0}, Lio/ktor/utils/io/WriterSuspendSession;->request(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p0

    .end local p0    # "desiredSpace":I
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v3}, Lio/ktor/utils/io/WriterSuspendSession;->request(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p0

    :goto_2
    check-cast p0, Lio/ktor/utils/io/core/Buffer;

    .end local p1    # "session":Lio/ktor/utils/io/WriterSuspendSession;
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final writeSessionFor(Lio/ktor/utils/io/ByteWriteChannel;)Lio/ktor/utils/io/WriterSuspendSession;
    .locals 1
    .param p0, "$this$writeSessionFor"    # Lio/ktor/utils/io/ByteWriteChannel;

    .line 104
    nop

    .line 105
    instance-of v0, p0, Lio/ktor/utils/io/HasWriteSession;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/ktor/utils/io/HasWriteSession;

    invoke-interface {v0}, Lio/ktor/utils/io/HasWriteSession;->beginWriteSession()Lio/ktor/utils/io/WriterSuspendSession;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0
.end method
