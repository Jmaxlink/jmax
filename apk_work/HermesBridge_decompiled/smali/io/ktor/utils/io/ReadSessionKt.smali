.class public final Lio/ktor/utils/io/ReadSessionKt;
.super Ljava/lang/Object;
.source "ReadSession.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReadSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReadSession.kt\nio/ktor/utils/io/ReadSessionKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,151:1\n1#2:152\n74#3:153\n*S KotlinDebug\n*F\n+ 1 ReadSession.kt\nio/ktor/utils/io/ReadSessionKt\n*L\n133#1:153\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0081@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001ao\u0010\u0008\u001a\u00020\u0006*\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062K\u0010\n\u001aG\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u00060\u000bH\u0086H\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013\u001a\u000e\u0010\u0014\u001a\u0004\u0018\u00010\u0015*\u00020\u0002H\u0002\u001a\u001f\u0010\u0016\u001a\u0004\u0018\u00010\u0004*\u00020\u00022\u0006\u0010\t\u001a\u00020\u0006H\u0081@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017\u001a\u001d\u0010\u0018\u001a\u00020\u0019*\u00020\u00022\u0006\u0010\t\u001a\u00020\u0006H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017\u001a\u001f\u0010\u001a\u001a\u0004\u0018\u00010\u0004*\u00020\u00152\u0006\u0010\t\u001a\u00020\u0006H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "completeReadingFromBuffer",
        "",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "buffer",
        "Lio/ktor/utils/io/core/Buffer;",
        "bytesRead",
        "",
        "(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "read",
        "desiredSize",
        "block",
        "Lkotlin/Function3;",
        "Lio/ktor/utils/io/bits/Memory;",
        "Lkotlin/ParameterName;",
        "name",
        "source",
        "",
        "start",
        "endExclusive",
        "(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readSessionFor",
        "Lio/ktor/utils/io/SuspendableReadSession;",
        "requestBuffer",
        "(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "requestBufferFallback",
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "requestBufferSuspend",
        "(Lio/ktor/utils/io/SuspendableReadSession;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public static final synthetic access$requestBufferFallback(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "desiredSize"    # I
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ReadSessionKt;->requestBufferFallback(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$requestBufferSuspend(Lio/ktor/utils/io/SuspendableReadSession;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/utils/io/SuspendableReadSession;
    .param p1, "desiredSize"    # I
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ReadSessionKt;->requestBufferSuspend(Lio/ktor/utils/io/SuspendableReadSession;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final completeReadingFromBuffer(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$completeReadingFromBuffer"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "buffer"    # Lio/ktor/utils/io/core/Buffer;
    .param p2, "bytesRead"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/core/Buffer;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 105
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 107
    invoke-static {p0}, Lio/ktor/utils/io/ReadSessionKt;->readSessionFor(Lio/ktor/utils/io/ByteReadChannel;)Lio/ktor/utils/io/SuspendableReadSession;

    move-result-object v0

    .line 109
    .local v0, "readSession":Lio/ktor/utils/io/SuspendableReadSession;
    if-eqz v0, :cond_2

    .line 110
    invoke-interface {v0, p2}, Lio/ktor/utils/io/SuspendableReadSession;->discard(I)I

    .line 111
    instance-of v1, p0, Lio/ktor/utils/io/HasReadSession;

    if-eqz v1, :cond_1

    .line 112
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/HasReadSession;

    invoke-interface {v1}, Lio/ktor/utils/io/HasReadSession;->endReadSession()V

    .line 114
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 117
    :cond_2
    instance-of v1, p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-eqz v1, :cond_4

    sget-object v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-eq p1, v1, :cond_4

    .line 118
    move-object v1, p1

    check-cast v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    sget-object v2, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 119
    int-to-long v1, p2

    invoke-interface {p0, v1, v2, p3}, Lio/ktor/utils/io/ByteReadChannel;->discard(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_3

    return-object v1

    :cond_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 121
    return-object v1

    :cond_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 152
    .end local v0    # "readSession":Lio/ktor/utils/io/SuspendableReadSession;
    :cond_5
    const/4 v0, 0x0

    .line 105
    .local v0, "$i$a$-check-ReadSessionKt$completeReadingFromBuffer$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytesRead shouldn\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-check-ReadSessionKt$completeReadingFromBuffer$2":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final read(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
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

    instance-of v0, p3, Lio/ktor/utils/io/ReadSessionKt$read$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/utils/io/ReadSessionKt$read$1;

    iget v1, v0, Lio/ktor/utils/io/ReadSessionKt$read$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/utils/io/ReadSessionKt$read$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/utils/io/ReadSessionKt$read$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ReadSessionKt$read$1;

    invoke-direct {v0, p3}, Lio/ktor/utils/io/ReadSessionKt$read$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lio/ktor/utils/io/ReadSessionKt$read$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 20
    iget v2, p3, Lio/ktor/utils/io/ReadSessionKt$read$1;->label:I

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

    .local p0, "$i$f$read":I
    iget-object p1, p3, Lio/ktor/utils/io/ReadSessionKt$read$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    .local p1, "cause":Ljava/lang/Throwable;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .end local p0    # "$i$f$read":I
    .end local p1    # "cause":Ljava/lang/Throwable;
    :pswitch_1
    const/4 p0, 0x0

    .restart local p0    # "$i$f$read":I
    iget p1, p3, Lio/ktor/utils/io/ReadSessionKt$read$1;->I$0:I

    .local p1, "bytesRead":I
    iget-object p2, p3, Lio/ktor/utils/io/ReadSessionKt$read$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/core/Buffer;

    .local p2, "buffer":Lio/ktor/utils/io/core/Buffer;
    iget-object v2, p3, Lio/ktor/utils/io/ReadSessionKt$read$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteReadChannel;

    .local v2, "$this$read":Lio/ktor/utils/io/ByteReadChannel;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 30
    .end local p1    # "bytesRead":I
    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 20
    .end local v2    # "$this$read":Lio/ktor/utils/io/ByteReadChannel;
    .end local p0    # "$i$f$read":I
    .end local p2    # "buffer":Lio/ktor/utils/io/core/Buffer;
    :pswitch_2
    const/4 p0, 0x0

    .restart local p0    # "$i$f$read":I
    iget-object p1, p3, Lio/ktor/utils/io/ReadSessionKt$read$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function3;

    .local p1, "block":Lkotlin/jvm/functions/Function3;
    iget-object p2, p3, Lio/ktor/utils/io/ReadSessionKt$read$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteReadChannel;

    .local p2, "$this$read":Lio/ktor/utils/io/ByteReadChannel;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p2

    move-object p2, p1

    move-object p1, v0

    goto :goto_1

    .end local p0    # "$i$f$read":I
    .end local p1    # "block":Lkotlin/jvm/functions/Function3;
    .end local p2    # "$this$read":Lio/ktor/utils/io/ByteReadChannel;
    :pswitch_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$read":Lio/ktor/utils/io/ByteReadChannel;
    .local p1, "desiredSize":I
    .local p2, "block":Lkotlin/jvm/functions/Function3;
    const/4 v2, 0x0

    .line 24
    .local v2, "$i$f$read":I
    iput-object p0, p3, Lio/ktor/utils/io/ReadSessionKt$read$1;->L$0:Ljava/lang/Object;

    iput-object p2, p3, Lio/ktor/utils/io/ReadSessionKt$read$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p3, Lio/ktor/utils/io/ReadSessionKt$read$1;->label:I

    invoke-static {p0, p1, p3}, Lio/ktor/utils/io/ReadSessionKt;->requestBuffer(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "desiredSize":I
    if-ne p1, v1, :cond_1

    .line 20
    return-object v1

    .line 24
    :cond_1
    move v7, v2

    move-object v2, p0

    move p0, v7

    .local v2, "$this$read":Lio/ktor/utils/io/ByteReadChannel;
    .local p0, "$i$f$read":I
    :goto_1
    check-cast p1, Lio/ktor/utils/io/core/Buffer;

    if-nez p1, :cond_2

    sget-object p1, Lio/ktor/utils/io/core/Buffer;->Companion:Lio/ktor/utils/io/core/Buffer$Companion;

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer$Companion;->getEmpty()Lio/ktor/utils/io/core/Buffer;

    move-result-object p1

    .line 26
    .local p1, "buffer":Lio/ktor/utils/io/core/Buffer;
    :cond_2
    nop

    .line 27
    :try_start_1
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lio/ktor/utils/io/bits/Memory;->box-impl(Ljava/nio/ByteBuffer;)Lio/ktor/utils/io/bits/Memory;

    move-result-object v3

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p2, v3, v4, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move p2, v3

    .line 28
    .local p2, "bytesRead":I
    iput-object v2, p3, Lio/ktor/utils/io/ReadSessionKt$read$1;->L$0:Ljava/lang/Object;

    iput-object p1, p3, Lio/ktor/utils/io/ReadSessionKt$read$1;->L$1:Ljava/lang/Object;

    iput p2, p3, Lio/ktor/utils/io/ReadSessionKt$read$1;->I$0:I

    const/4 v3, 0x2

    iput v3, p3, Lio/ktor/utils/io/ReadSessionKt$read$1;->label:I

    invoke-static {v2, p1, p2, p3}, Lio/ktor/utils/io/ReadSessionKt;->completeReadingFromBuffer(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v3, v1, :cond_3

    .line 20
    return-object v1

    .line 28
    :cond_3
    move v7, p2

    move-object p2, p1

    move p1, v7

    .line 29
    .local p1, "bytesRead":I
    .local p2, "buffer":Lio/ktor/utils/io/core/Buffer;
    :goto_2
    :try_start_2
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    .line 30
    .end local p2    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .local p1, "buffer":Lio/ktor/utils/io/core/Buffer;
    :catchall_1
    move-exception p2

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    .line 31
    .local p1, "cause":Ljava/lang/Throwable;
    .restart local p2    # "buffer":Lio/ktor/utils/io/core/Buffer;
    :goto_3
    iput-object p1, p3, Lio/ktor/utils/io/ReadSessionKt$read$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, p3, Lio/ktor/utils/io/ReadSessionKt$read$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, p3, Lio/ktor/utils/io/ReadSessionKt$read$1;->label:I

    const/4 v3, 0x0

    invoke-static {v2, p2, v3, p3}, Lio/ktor/utils/io/ReadSessionKt;->completeReadingFromBuffer(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    .end local v2    # "$this$read":Lio/ktor/utils/io/ByteReadChannel;
    .end local p2    # "buffer":Lio/ktor/utils/io/core/Buffer;
    if-ne p2, v1, :cond_4

    .line 20
    return-object v1

    .line 32
    :cond_4
    :goto_4
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final read$$forInline(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$read"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "desiredSize"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function3;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
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

    .line 24
    .local v0, "$i$f$read":I
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, p1, p3}, Lio/ktor/utils/io/ReadSessionKt;->requestBuffer(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 26
    .local v2, "buffer":Lio/ktor/utils/io/core/Buffer;
    :goto_0
    nop

    .line 27
    :try_start_0
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lio/ktor/utils/io/bits/Memory;->box-impl(Ljava/nio/ByteBuffer;)Lio/ktor/utils/io/bits/Memory;

    move-result-object v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p2, v4, v5, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 28
    .local v4, "bytesRead":I
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, v2, v4, p3}, Lio/ktor/utils/io/ReadSessionKt;->completeReadingFromBuffer(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 30
    .end local v4    # "bytesRead":I
    :catchall_0
    move-exception v4

    .line 31
    .local v4, "cause":Ljava/lang/Throwable;
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, v2, v1, p3}, Lio/ktor/utils/io/ReadSessionKt;->completeReadingFromBuffer(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 32
    throw v4
.end method

.method public static synthetic read$default(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this$read_u24default"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "desiredSize"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function3;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 20
    const/4 p5, 0x1

    and-int/2addr p4, p5

    if-eqz p4, :cond_0

    .line 21
    const/4 p1, 0x1

    .line 20
    :cond_0
    const/4 p4, 0x0

    .line 24
    .local p4, "$i$f$read":I
    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, p1, p3}, Lio/ktor/utils/io/ReadSessionKt;->requestBuffer(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p5}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lio/ktor/utils/io/core/Buffer;->Companion:Lio/ktor/utils/io/core/Buffer$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer$Companion;->getEmpty()Lio/ktor/utils/io/core/Buffer;

    move-result-object v1

    .line 26
    .local v1, "buffer":Lio/ktor/utils/io/core/Buffer;
    :goto_0
    nop

    .line 27
    :try_start_0
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lio/ktor/utils/io/bits/Memory;->box-impl(Ljava/nio/ByteBuffer;)Lio/ktor/utils/io/bits/Memory;

    move-result-object v2

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v2, v3, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 28
    .local v2, "bytesRead":I
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, v1, v2, p3}, Lio/ktor/utils/io/ReadSessionKt;->completeReadingFromBuffer(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    invoke-static {p5}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p5

    .line 30
    .end local v2    # "bytesRead":I
    :catchall_0
    move-exception v2

    .line 31
    .local v2, "cause":Ljava/lang/Throwable;
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, v1, v0, p3}, Lio/ktor/utils/io/ReadSessionKt;->completeReadingFromBuffer(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    invoke-static {p5}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 32
    throw v2
.end method

.method private static final readSessionFor(Lio/ktor/utils/io/ByteReadChannel;)Lio/ktor/utils/io/SuspendableReadSession;
    .locals 1
    .param p0, "$this$readSessionFor"    # Lio/ktor/utils/io/ByteReadChannel;

    .line 147
    nop

    .line 148
    instance-of v0, p0, Lio/ktor/utils/io/HasReadSession;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/ktor/utils/io/HasReadSession;

    invoke-interface {v0}, Lio/ktor/utils/io/HasReadSession;->startReadSession()Lio/ktor/utils/io/SuspendableReadSession;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_0
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0
.end method

.method public static final requestBuffer(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$requestBuffer"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "desiredSize"    # I
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/core/Buffer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 84
    nop

    .line 85
    instance-of v0, p0, Lio/ktor/utils/io/SuspendableReadSession;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/ktor/utils/io/SuspendableReadSession;

    goto :goto_0

    .line 86
    :cond_0
    instance-of v0, p0, Lio/ktor/utils/io/HasReadSession;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lio/ktor/utils/io/HasReadSession;

    invoke-interface {v0}, Lio/ktor/utils/io/HasReadSession;->startReadSession()Lio/ktor/utils/io/SuspendableReadSession;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    .line 84
    :goto_0
    nop

    .line 90
    .local v0, "readSession":Lio/ktor/utils/io/SuspendableReadSession;
    if-eqz v0, :cond_3

    .line 91
    const/16 v1, 0x8

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    invoke-interface {v0, v1}, Lio/ktor/utils/io/SuspendableReadSession;->request(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    .line 92
    .local v1, "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    if-eqz v1, :cond_2

    .line 93
    return-object v1

    .line 96
    :cond_2
    invoke-static {v0, p1, p2}, Lio/ktor/utils/io/ReadSessionKt;->requestBufferSuspend(Lio/ktor/utils/io/SuspendableReadSession;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 99
    .end local v1    # "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_3
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ReadSessionKt;->requestBufferFallback(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static final requestBufferFallback(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ReadSessionKt$requestBufferFallback$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ReadSessionKt$requestBufferFallback$1;

    iget v1, v0, Lio/ktor/utils/io/ReadSessionKt$requestBufferFallback$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ReadSessionKt$requestBufferFallback$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ReadSessionKt$requestBufferFallback$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ReadSessionKt$requestBufferFallback$1;

    invoke-direct {v0, p2}, Lio/ktor/utils/io/ReadSessionKt$requestBufferFallback$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v11, p2, Lio/ktor/utils/io/ReadSessionKt$requestBufferFallback$1;->result:Ljava/lang/Object;

    .local v11, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v12

    .line 130
    iget v0, p2, Lio/ktor/utils/io/ReadSessionKt$requestBufferFallback$1;->label:I

    packed-switch v0, :pswitch_data_0

    .end local v11    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v11    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p2, Lio/ktor/utils/io/ReadSessionKt$requestBufferFallback$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .local p0, "chunk":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-static {v11}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v11

    goto :goto_1

    .end local p0    # "chunk":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :pswitch_1
    invoke-static {v11}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .local v0, "$this$requestBufferFallback":Lio/ktor/utils/io/ByteReadChannel;
    move p0, p1

    .line 131
    .local p0, "desiredSize":I
    sget-object p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p1

    invoke-interface {p1}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 133
    .local p1, "chunk":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v2

    int-to-long v2, v2

    int-to-long v6, p0

    move-object p0, p1

    check-cast p0, Lio/ktor/utils/io/core/Buffer;

    .end local v0    # "$this$requestBufferFallback":Lio/ktor/utils/io/ByteReadChannel;
    .local p0, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 153
    .local v4, "$i$f$getWriteRemaining":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v5

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    sub-int/2addr v5, v8

    .line 133
    .end local v4    # "$i$f$getWriteRemaining":I
    .end local p0    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    int-to-long v8, v5

    iput-object p1, p2, Lio/ktor/utils/io/ReadSessionKt$requestBufferFallback$1;->L$0:Ljava/lang/Object;

    const/4 p0, 0x1

    iput p0, p2, Lio/ktor/utils/io/ReadSessionKt$requestBufferFallback$1;->label:I

    const-wide/16 v4, 0x0

    move-object v10, p2

    invoke-interface/range {v0 .. v10}, Lio/ktor/utils/io/ByteReadChannel;->peekTo-lBXzO7A(Ljava/nio/ByteBuffer;JJJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v12, :cond_1

    .line 130
    return-object v12

    .line 133
    :cond_1
    :goto_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 132
    nop

    .line 134
    .local v0, "copied":J
    long-to-int p0, v0

    invoke-virtual {p1, p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->commitWritten(I)V

    .line 136
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final requestBufferSuspend(Lio/ktor/utils/io/SuspendableReadSession;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/SuspendableReadSession;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/core/Buffer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ReadSessionKt$requestBufferSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ReadSessionKt$requestBufferSuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ReadSessionKt$requestBufferSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ReadSessionKt$requestBufferSuspend$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ReadSessionKt$requestBufferSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ReadSessionKt$requestBufferSuspend$1;

    invoke-direct {v0, p2}, Lio/ktor/utils/io/ReadSessionKt$requestBufferSuspend$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ReadSessionKt$requestBufferSuspend$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 124
    iget v2, p2, Lio/ktor/utils/io/ReadSessionKt$requestBufferSuspend$1;->label:I

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
    iget-object p0, p2, Lio/ktor/utils/io/ReadSessionKt$requestBufferSuspend$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/utils/io/SuspendableReadSession;

    .local p0, "$this$requestBufferSuspend":Lio/ktor/utils/io/SuspendableReadSession;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "$this$requestBufferSuspend":Lio/ktor/utils/io/SuspendableReadSession;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 125
    .restart local p0    # "$this$requestBufferSuspend":Lio/ktor/utils/io/SuspendableReadSession;
    .local p1, "desiredSize":I
    iput-object p0, p2, Lio/ktor/utils/io/ReadSessionKt$requestBufferSuspend$1;->L$0:Ljava/lang/Object;

    iput v3, p2, Lio/ktor/utils/io/ReadSessionKt$requestBufferSuspend$1;->label:I

    invoke-interface {p0, p1, p2}, Lio/ktor/utils/io/SuspendableReadSession;->await(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "desiredSize":I
    if-ne p1, v1, :cond_1

    .line 124
    return-object v1

    .line 126
    :cond_1
    :goto_1
    invoke-interface {p0, v3}, Lio/ktor/utils/io/SuspendableReadSession;->request(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
