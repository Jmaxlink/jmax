.class final Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RawWebSocketCommon.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/websocket/RawWebSocketCommon;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JZLkotlin/coroutines/CoroutineContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.websocket.RawWebSocketCommon$readerJob$1"
    f = "RawWebSocketCommon.kt"
    i = {
        0x2,
        0x3
    }
    l = {
        0x58,
        0x5c,
        0x5f,
        0x63
    }
    m = "invokeSuspend"
    n = {
        "cause",
        "cause"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ktor/websocket/RawWebSocketCommon;


# direct methods
.method constructor <init>(Lio/ktor/websocket/RawWebSocketCommon;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/websocket/RawWebSocketCommon;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->this$0:Lio/ktor/websocket/RawWebSocketCommon;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;

    iget-object v1, p0, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->this$0:Lio/ktor/websocket/RawWebSocketCommon;

    invoke-direct {v0, v1, p2}, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;-><init>(Lio/ktor/websocket/RawWebSocketCommon;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 85
    iget v1, p0, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/websocket/ProtocolViolationException;

    .local v1, "cause":Lio/ktor/websocket/ProtocolViolationException;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_a

    .end local v0    # "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    .end local v1    # "cause":Lio/ktor/websocket/ProtocolViolationException;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v0, p0

    .restart local v0    # "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v1, v0, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/websocket/FrameTooBigException;

    .local v1, "cause":Lio/ktor/websocket/FrameTooBigException;
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_c

    .line 113
    .end local v1    # "cause":Lio/ktor/websocket/FrameTooBigException;
    :catchall_0
    move-exception v1

    goto/16 :goto_e

    .line 85
    .end local v0    # "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object v1, p0

    .local v1, "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v1    # "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_3
    move-object v1, p0

    .restart local v1    # "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Lio/ktor/websocket/FrameTooBigException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lio/ktor/websocket/ProtocolViolationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lio/ktor/util/cio/ChannelIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_1

    .line 109
    :catchall_1
    move-exception v0

    move-object v4, v1

    goto/16 :goto_4

    .line 107
    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_5

    .line 105
    :catch_1
    move-exception v0

    goto/16 :goto_7

    .line 103
    :catch_2
    move-exception v0

    goto/16 :goto_7

    .line 101
    :catch_3
    move-exception v0

    move-object v4, v1

    goto/16 :goto_8

    .line 97
    :catch_4
    move-exception v4

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_9

    .line 94
    :catch_5
    move-exception v4

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_b

    .line 85
    .end local v1    # "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 86
    .restart local v1    # "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 87
    :goto_0
    nop

    .line 88
    :try_start_3
    iget-object v4, v1, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->this$0:Lio/ktor/websocket/RawWebSocketCommon;

    invoke-static {v4}, Lio/ktor/websocket/RawWebSocketCommon;->access$getInput$p(Lio/ktor/websocket/RawWebSocketCommon;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v4

    iget-object v5, v1, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->this$0:Lio/ktor/websocket/RawWebSocketCommon;

    invoke-virtual {v5}, Lio/ktor/websocket/RawWebSocketCommon;->getMaxFrameSize()J

    move-result-wide v5

    iget-object v7, v1, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->this$0:Lio/ktor/websocket/RawWebSocketCommon;

    invoke-static {v7}, Lio/ktor/websocket/RawWebSocketCommon;->access$getLastOpcode$p(Lio/ktor/websocket/RawWebSocketCommon;)I

    move-result v7

    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput v2, v1, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->label:I

    invoke-static {v4, v5, v6, v7, v8}, Lio/ktor/websocket/RawWebSocketCommonKt;->readFrame(Lio/ktor/utils/io/ByteReadChannel;JILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catch Lio/ktor/websocket/FrameTooBigException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lio/ktor/websocket/ProtocolViolationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lio/ktor/util/cio/ChannelIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v4, v0, :cond_0

    .line 85
    return-object v0

    .line 88
    :cond_0
    move-object v10, v0

    move-object v0, p1

    move-object p1, v4

    move-object v4, v1

    move-object v1, v10

    .line 85
    .end local v1    # "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v4, "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    :goto_1
    :try_start_4
    check-cast p1, Lio/ktor/websocket/Frame;

    .line 89
    .local p1, "frame":Lio/ktor/websocket/Frame;
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v5

    invoke-virtual {v5}, Lio/ktor/websocket/FrameType;->getControlFrame()Z

    move-result v5

    if-nez v5, :cond_2

    .line 90
    iget-object v5, v4, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->this$0:Lio/ktor/websocket/RawWebSocketCommon;

    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getFin()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v6

    invoke-virtual {v6}, Lio/ktor/websocket/FrameType;->getOpcode()I

    move-result v6

    :goto_2
    invoke-static {v5, v6}, Lio/ktor/websocket/RawWebSocketCommon;->access$setLastOpcode$p(Lio/ktor/websocket/RawWebSocketCommon;I)V

    .line 92
    :cond_2
    iget-object v5, v4, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->this$0:Lio/ktor/websocket/RawWebSocketCommon;

    invoke-static {v5}, Lio/ktor/websocket/RawWebSocketCommon;->access$get_incoming$p(Lio/ktor/websocket/RawWebSocketCommon;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x2

    iput v7, v4, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->label:I

    invoke-interface {v5, p1, v6}, Lkotlinx/coroutines/channels/Channel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_4
    .catch Lio/ktor/websocket/FrameTooBigException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Lio/ktor/websocket/ProtocolViolationException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lio/ktor/util/cio/ChannelIOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local p1    # "frame":Lio/ktor/websocket/Frame;
    if-ne v5, v1, :cond_3

    .line 85
    return-object v1

    .line 92
    :cond_3
    move-object p1, v0

    move-object v0, v1

    move-object v1, v4

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v4    # "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    .restart local v1    # "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    .local p1, "$result":Ljava/lang/Object;
    :goto_3
    goto :goto_0

    .line 109
    .end local v1    # "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v4    # "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    :catchall_2
    move-exception p1

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    goto :goto_4

    .line 107
    :catch_6
    move-exception p1

    move-object p1, v0

    move-object v0, v4

    goto :goto_5

    .line 105
    :catch_7
    move-exception p1

    move-object p1, v0

    move-object v1, v4

    goto :goto_7

    .line 103
    :catch_8
    move-exception p1

    move-object p1, v0

    move-object v1, v4

    goto :goto_7

    .line 101
    :catch_9
    move-exception p1

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    goto :goto_8

    .line 97
    :catch_a
    move-exception p1

    move-object v10, v4

    move-object v4, p1

    move-object p1, v0

    move-object v0, v10

    goto :goto_9

    .line 94
    :catch_b
    move-exception p1

    move-object v10, v4

    move-object v4, p1

    move-object p1, v0

    move-object v0, v10

    goto/16 :goto_b

    .line 110
    .local v0, "cause":Ljava/lang/Throwable;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_4
    :try_start_5
    iget-object v1, v4, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->this$0:Lio/ktor/websocket/RawWebSocketCommon;

    invoke-static {v1}, Lio/ktor/websocket/RawWebSocketCommon;->access$get_incoming$p(Lio/ktor/websocket/RawWebSocketCommon;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlinx/coroutines/channels/Channel;->close(Ljava/lang/Throwable;)Z

    .line 111
    nop

    .end local v4    # "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 108
    .local v0, "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_5
    :try_start_6
    iget-object v1, v0, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->this$0:Lio/ktor/websocket/RawWebSocketCommon;

    invoke-static {v1}, Lio/ktor/websocket/RawWebSocketCommon;->access$get_incoming$p(Lio/ktor/websocket/RawWebSocketCommon;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-static {v1, v3, v2, v3}, Lkotlinx/coroutines/channels/ReceiveChannel$DefaultImpls;->cancel$default(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 113
    nop

    :goto_6
    iget-object v1, v0, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->this$0:Lio/ktor/websocket/RawWebSocketCommon;

    invoke-static {v1}, Lio/ktor/websocket/RawWebSocketCommon;->access$get_incoming$p(Lio/ktor/websocket/RawWebSocketCommon;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v1, v3, v2, v3}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 114
    goto/16 :goto_d

    .line 113
    .end local v0    # "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    .restart local v1    # "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    :goto_7
    iget-object v0, v1, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->this$0:Lio/ktor/websocket/RawWebSocketCommon;

    invoke-static {v0}, Lio/ktor/websocket/RawWebSocketCommon;->access$get_incoming$p(Lio/ktor/websocket/RawWebSocketCommon;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v0, v3, v2, v3}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 114
    move-object v0, v1

    goto/16 :goto_d

    .line 102
    .end local v1    # "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    .local v0, "cause":Ljava/util/concurrent/CancellationException;
    .restart local v4    # "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    :goto_8
    :try_start_7
    iget-object v1, v4, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->this$0:Lio/ktor/websocket/RawWebSocketCommon;

    invoke-static {v1}, Lio/ktor/websocket/RawWebSocketCommon;->access$get_incoming$p(Lio/ktor/websocket/RawWebSocketCommon;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlinx/coroutines/channels/Channel;->cancel(Ljava/util/concurrent/CancellationException;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 113
    .end local v0    # "cause":Ljava/util/concurrent/CancellationException;
    iget-object v0, v4, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->this$0:Lio/ktor/websocket/RawWebSocketCommon;

    invoke-static {v0}, Lio/ktor/websocket/RawWebSocketCommon;->access$get_incoming$p(Lio/ktor/websocket/RawWebSocketCommon;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v0, v3, v2, v3}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 114
    move-object v0, v4

    goto :goto_d

    .line 113
    :catchall_3
    move-exception v1

    move-object v0, v4

    goto :goto_e

    .line 99
    .local v0, "this":Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;
    .local v4, "cause":Lio/ktor/websocket/ProtocolViolationException;
    :goto_9
    :try_start_8
    iget-object v5, v0, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->this$0:Lio/ktor/websocket/RawWebSocketCommon;

    invoke-virtual {v5}, Lio/ktor/websocket/RawWebSocketCommon;->getOutgoing()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v5

    new-instance v6, Lio/ktor/websocket/Frame$Close;

    new-instance v7, Lio/ktor/websocket/CloseReason;

    sget-object v8, Lio/ktor/websocket/CloseReason$Codes;->PROTOCOL_ERROR:Lio/ktor/websocket/CloseReason$Codes;

    invoke-virtual {v4}, Lio/ktor/websocket/ProtocolViolationException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lio/ktor/websocket/CloseReason;-><init>(Lio/ktor/websocket/CloseReason$Codes;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lio/ktor/websocket/Frame$Close;-><init>(Lio/ktor/websocket/CloseReason;)V

    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v4, v0, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x4

    iput v8, v0, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->label:I

    invoke-interface {v5, v6, v7}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_4

    .line 85
    return-object v1

    .line 99
    :cond_4
    move-object v1, v4

    .line 100
    .end local v4    # "cause":Lio/ktor/websocket/ProtocolViolationException;
    .local v1, "cause":Lio/ktor/websocket/ProtocolViolationException;
    :goto_a
    iget-object v4, v0, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->this$0:Lio/ktor/websocket/RawWebSocketCommon;

    invoke-static {v4}, Lio/ktor/websocket/RawWebSocketCommon;->access$get_incoming$p(Lio/ktor/websocket/RawWebSocketCommon;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Ljava/lang/Throwable;

    invoke-interface {v4, v5}, Lkotlinx/coroutines/channels/Channel;->close(Ljava/lang/Throwable;)Z

    .line 113
    nop

    .end local v1    # "cause":Lio/ktor/websocket/ProtocolViolationException;
    goto :goto_6

    .line 95
    .local v4, "cause":Lio/ktor/websocket/FrameTooBigException;
    :goto_b
    iget-object v5, v0, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->this$0:Lio/ktor/websocket/RawWebSocketCommon;

    invoke-virtual {v5}, Lio/ktor/websocket/RawWebSocketCommon;->getOutgoing()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v5

    new-instance v6, Lio/ktor/websocket/Frame$Close;

    new-instance v7, Lio/ktor/websocket/CloseReason;

    sget-object v8, Lio/ktor/websocket/CloseReason$Codes;->TOO_BIG:Lio/ktor/websocket/CloseReason$Codes;

    invoke-virtual {v4}, Lio/ktor/websocket/FrameTooBigException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lio/ktor/websocket/CloseReason;-><init>(Lio/ktor/websocket/CloseReason$Codes;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lio/ktor/websocket/Frame$Close;-><init>(Lio/ktor/websocket/CloseReason;)V

    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v4, v0, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v0, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->label:I

    invoke-interface {v5, v6, v7}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_5

    .line 85
    return-object v1

    .line 95
    :cond_5
    move-object v1, v4

    .line 96
    .end local v4    # "cause":Lio/ktor/websocket/FrameTooBigException;
    .local v1, "cause":Lio/ktor/websocket/FrameTooBigException;
    :goto_c
    iget-object v4, v0, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->this$0:Lio/ktor/websocket/RawWebSocketCommon;

    invoke-static {v4}, Lio/ktor/websocket/RawWebSocketCommon;->access$get_incoming$p(Lio/ktor/websocket/RawWebSocketCommon;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Ljava/lang/Throwable;

    invoke-interface {v4, v5}, Lkotlinx/coroutines/channels/Channel;->close(Ljava/lang/Throwable;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 113
    nop

    .end local v1    # "cause":Lio/ktor/websocket/FrameTooBigException;
    goto/16 :goto_6

    .line 115
    :goto_d
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 113
    :goto_e
    iget-object v4, v0, Lio/ktor/websocket/RawWebSocketCommon$readerJob$1;->this$0:Lio/ktor/websocket/RawWebSocketCommon;

    invoke-static {v4}, Lio/ktor/websocket/RawWebSocketCommon;->access$get_incoming$p(Lio/ktor/websocket/RawWebSocketCommon;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v4, v3, v2, v3}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
