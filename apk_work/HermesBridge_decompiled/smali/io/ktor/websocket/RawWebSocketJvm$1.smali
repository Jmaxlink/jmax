.class final Lio/ktor/websocket/RawWebSocketJvm$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RawWebSocketJvm.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/websocket/RawWebSocketJvm;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JZLkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/pool/ObjectPool;)V
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
    c = "io.ktor.websocket.RawWebSocketJvm$1"
    f = "RawWebSocketJvm.kt"
    i = {
        0x2,
        0x3
    }
    l = {
        0x43,
        0x44,
        0x47,
        0x4a
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

.field final synthetic this$0:Lio/ktor/websocket/RawWebSocketJvm;


# direct methods
.method constructor <init>(Lio/ktor/websocket/RawWebSocketJvm;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/websocket/RawWebSocketJvm;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/websocket/RawWebSocketJvm$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/websocket/RawWebSocketJvm$1;->this$0:Lio/ktor/websocket/RawWebSocketJvm;

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

    new-instance v0, Lio/ktor/websocket/RawWebSocketJvm$1;

    iget-object v1, p0, Lio/ktor/websocket/RawWebSocketJvm$1;->this$0:Lio/ktor/websocket/RawWebSocketJvm;

    invoke-direct {v0, v1, p2}, Lio/ktor/websocket/RawWebSocketJvm$1;-><init>(Lio/ktor/websocket/RawWebSocketJvm;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/RawWebSocketJvm$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/RawWebSocketJvm$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/websocket/RawWebSocketJvm$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/websocket/RawWebSocketJvm$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 65
    iget v1, p0, Lio/ktor/websocket/RawWebSocketJvm$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lio/ktor/websocket/RawWebSocketJvm$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/websocket/ProtocolViolationException;

    .local v1, "cause":Lio/ktor/websocket/ProtocolViolationException;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    .end local v0    # "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .end local v1    # "cause":Lio/ktor/websocket/ProtocolViolationException;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v0, p0

    .restart local v0    # "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v1, v0, Lio/ktor/websocket/RawWebSocketJvm$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/websocket/FrameTooBigException;

    .local v1, "cause":Lio/ktor/websocket/FrameTooBigException;
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_9

    .line 81
    .end local v1    # "cause":Lio/ktor/websocket/FrameTooBigException;
    :catchall_0
    move-exception v1

    goto/16 :goto_c

    .line 65
    .end local v0    # "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object v1, p0

    .local v1, "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lio/ktor/websocket/RawWebSocketJvm$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Lio/ktor/websocket/FrameTooBigException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lio/ktor/websocket/ProtocolViolationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_2

    .end local v1    # "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_3
    move-object v1, p0

    .restart local v1    # "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lio/ktor/websocket/RawWebSocketJvm$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Lio/ktor/websocket/FrameTooBigException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lio/ktor/websocket/ProtocolViolationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v5, v4

    move-object v4, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_1

    .end local v1    # "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 66
    .restart local v1    # "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 67
    :try_start_4
    iget-object v4, v1, Lio/ktor/websocket/RawWebSocketJvm$1;->this$0:Lio/ktor/websocket/RawWebSocketJvm;

    invoke-virtual {v4}, Lio/ktor/websocket/RawWebSocketJvm;->getReader$ktor_websockets()Lio/ktor/websocket/WebSocketReader;

    move-result-object v4

    invoke-virtual {v4}, Lio/ktor/websocket/WebSocketReader;->getIncoming()Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4

    :goto_0
    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lio/ktor/websocket/RawWebSocketJvm$1;->L$0:Ljava/lang/Object;

    iput v2, v1, Lio/ktor/websocket/RawWebSocketJvm$1;->label:I

    invoke-interface {v4, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_4
    .catch Lio/ktor/websocket/FrameTooBigException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lio/ktor/websocket/ProtocolViolationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v5, v0, :cond_0

    .line 65
    return-object v0

    .line 67
    :cond_0
    move-object v10, v0

    move-object v0, p1

    move-object p1, v5

    move-object v5, v4

    move-object v4, v1

    move-object v1, v10

    .end local v1    # "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v4, "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    :goto_1
    :try_start_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v5}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/ktor/websocket/Frame;

    .line 68
    .local p1, "frame":Lio/ktor/websocket/Frame;
    iget-object v6, v4, Lio/ktor/websocket/RawWebSocketJvm$1;->this$0:Lio/ktor/websocket/RawWebSocketJvm;

    invoke-static {v6}, Lio/ktor/websocket/RawWebSocketJvm;->access$getFiltered$p(Lio/ktor/websocket/RawWebSocketJvm;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v6

    move-object v7, v4

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v5, v4, Lio/ktor/websocket/RawWebSocketJvm$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v4, Lio/ktor/websocket/RawWebSocketJvm$1;->label:I

    invoke-interface {v6, p1, v7}, Lkotlinx/coroutines/channels/Channel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_5
    .catch Lio/ktor/websocket/FrameTooBigException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lio/ktor/websocket/ProtocolViolationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local p1    # "frame":Lio/ktor/websocket/Frame;
    if-ne v6, v1, :cond_1

    .line 65
    return-object v1

    .line 68
    :cond_1
    move-object p1, v0

    move-object v0, v1

    move-object v1, v4

    move-object v4, v5

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v4    # "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .restart local v1    # "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .local p1, "$result":Ljava/lang/Object;
    :goto_2
    goto :goto_0

    .line 81
    .end local v1    # "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v4    # "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    :cond_2
    iget-object p1, v4, Lio/ktor/websocket/RawWebSocketJvm$1;->this$0:Lio/ktor/websocket/RawWebSocketJvm;

    invoke-static {p1}, Lio/ktor/websocket/RawWebSocketJvm;->access$getFiltered$p(Lio/ktor/websocket/RawWebSocketJvm;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {p1, v3, v2, v3}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 82
    goto/16 :goto_b

    .line 78
    :catchall_1
    move-exception p1

    move-object v1, v4

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    goto :goto_3

    .line 76
    :catch_0
    move-exception p1

    move-object v1, v4

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    goto :goto_5

    .line 73
    :catch_1
    move-exception p1

    move-object v10, v4

    move-object v4, p1

    move-object p1, v0

    move-object v0, v10

    goto :goto_6

    .line 70
    :catch_2
    move-exception p1

    move-object v10, v4

    move-object v4, p1

    move-object p1, v0

    move-object v0, v10

    goto/16 :goto_8

    .line 78
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v4    # "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .restart local v1    # "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    .line 79
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_3
    :try_start_6
    iget-object v4, v1, Lio/ktor/websocket/RawWebSocketJvm$1;->this$0:Lio/ktor/websocket/RawWebSocketJvm;

    invoke-static {v4}, Lio/ktor/websocket/RawWebSocketJvm;->access$getFiltered$p(Lio/ktor/websocket/RawWebSocketJvm;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v4

    invoke-interface {v4, v0}, Lkotlinx/coroutines/channels/Channel;->close(Ljava/lang/Throwable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 81
    nop

    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_4
    iget-object v0, v1, Lio/ktor/websocket/RawWebSocketJvm$1;->this$0:Lio/ktor/websocket/RawWebSocketJvm;

    invoke-static {v0}, Lio/ktor/websocket/RawWebSocketJvm;->access$getFiltered$p(Lio/ktor/websocket/RawWebSocketJvm;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v0, v3, v2, v3}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 82
    move-object v0, p1

    move-object v4, v1

    goto/16 :goto_b

    .line 76
    :catch_3
    move-exception v0

    .line 77
    .local v0, "cause":Ljava/util/concurrent/CancellationException;
    :goto_5
    :try_start_7
    iget-object v4, v1, Lio/ktor/websocket/RawWebSocketJvm$1;->this$0:Lio/ktor/websocket/RawWebSocketJvm;

    invoke-virtual {v4}, Lio/ktor/websocket/RawWebSocketJvm;->getReader$ktor_websockets()Lio/ktor/websocket/WebSocketReader;

    move-result-object v4

    invoke-virtual {v4}, Lio/ktor/websocket/WebSocketReader;->getIncoming()Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v4

    invoke-interface {v4, v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->cancel(Ljava/util/concurrent/CancellationException;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 81
    .end local v0    # "cause":Ljava/util/concurrent/CancellationException;
    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_c

    .line 73
    :catch_4
    move-exception v4

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 74
    .end local v1    # "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .local v0, "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .local v4, "cause":Lio/ktor/websocket/ProtocolViolationException;
    :goto_6
    :try_start_8
    iget-object v5, v0, Lio/ktor/websocket/RawWebSocketJvm$1;->this$0:Lio/ktor/websocket/RawWebSocketJvm;

    invoke-virtual {v5}, Lio/ktor/websocket/RawWebSocketJvm;->getOutgoing()Lkotlinx/coroutines/channels/SendChannel;

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

    iput-object v4, v0, Lio/ktor/websocket/RawWebSocketJvm$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x4

    iput v8, v0, Lio/ktor/websocket/RawWebSocketJvm$1;->label:I

    invoke-interface {v5, v6, v7}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_3

    .line 65
    return-object v1

    .line 74
    :cond_3
    move-object v1, v4

    .line 75
    .end local v4    # "cause":Lio/ktor/websocket/ProtocolViolationException;
    .local v1, "cause":Lio/ktor/websocket/ProtocolViolationException;
    :goto_7
    iget-object v4, v0, Lio/ktor/websocket/RawWebSocketJvm$1;->this$0:Lio/ktor/websocket/RawWebSocketJvm;

    invoke-static {v4}, Lio/ktor/websocket/RawWebSocketJvm;->access$getFiltered$p(Lio/ktor/websocket/RawWebSocketJvm;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Ljava/lang/Throwable;

    invoke-interface {v4, v5}, Lkotlinx/coroutines/channels/Channel;->close(Ljava/lang/Throwable;)Z

    .line 81
    nop

    .end local v1    # "cause":Lio/ktor/websocket/ProtocolViolationException;
    goto :goto_a

    .line 70
    .end local v0    # "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .local v1, "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    :catch_5
    move-exception v4

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 71
    .end local v1    # "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .restart local v0    # "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .local v4, "cause":Lio/ktor/websocket/FrameTooBigException;
    :goto_8
    iget-object v5, v0, Lio/ktor/websocket/RawWebSocketJvm$1;->this$0:Lio/ktor/websocket/RawWebSocketJvm;

    invoke-virtual {v5}, Lio/ktor/websocket/RawWebSocketJvm;->getOutgoing()Lkotlinx/coroutines/channels/SendChannel;

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

    iput-object v4, v0, Lio/ktor/websocket/RawWebSocketJvm$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v0, Lio/ktor/websocket/RawWebSocketJvm$1;->label:I

    invoke-interface {v5, v6, v7}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_4

    .line 65
    return-object v1

    .line 71
    :cond_4
    move-object v1, v4

    .line 72
    .end local v4    # "cause":Lio/ktor/websocket/FrameTooBigException;
    .local v1, "cause":Lio/ktor/websocket/FrameTooBigException;
    :goto_9
    iget-object v4, v0, Lio/ktor/websocket/RawWebSocketJvm$1;->this$0:Lio/ktor/websocket/RawWebSocketJvm;

    invoke-static {v4}, Lio/ktor/websocket/RawWebSocketJvm;->access$getFiltered$p(Lio/ktor/websocket/RawWebSocketJvm;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Ljava/lang/Throwable;

    invoke-interface {v4, v5}, Lkotlinx/coroutines/channels/Channel;->close(Ljava/lang/Throwable;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 81
    nop

    .end local v1    # "cause":Lio/ktor/websocket/FrameTooBigException;
    :goto_a
    iget-object v1, v0, Lio/ktor/websocket/RawWebSocketJvm$1;->this$0:Lio/ktor/websocket/RawWebSocketJvm;

    invoke-static {v1}, Lio/ktor/websocket/RawWebSocketJvm;->access$getFiltered$p(Lio/ktor/websocket/RawWebSocketJvm;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v1, v3, v2, v3}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 82
    move-object v4, v0

    move-object v0, p1

    .line 83
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v4, "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    :goto_b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 81
    .end local v4    # "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .local v0, "this":Lio/ktor/websocket/RawWebSocketJvm$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_c
    iget-object v4, v0, Lio/ktor/websocket/RawWebSocketJvm$1;->this$0:Lio/ktor/websocket/RawWebSocketJvm;

    invoke-static {v4}, Lio/ktor/websocket/RawWebSocketJvm;->access$getFiltered$p(Lio/ktor/websocket/RawWebSocketJvm;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v4, v3, v2, v3}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
