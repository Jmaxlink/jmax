.class final Lio/ktor/websocket/WebSocketReader$readerJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebSocketReader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/websocket/WebSocketReader;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/CoroutineContext;JLio/ktor/utils/io/pool/ObjectPool;)V
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
    c = "io.ktor.websocket.WebSocketReader$readerJob$1"
    f = "WebSocketReader.kt"
    i = {
        0x0
    }
    l = {
        0x28
    }
    m = "invokeSuspend"
    n = {
        "buffer"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $pool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ktor/websocket/WebSocketReader;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/pool/ObjectPool;Lio/ktor/websocket/WebSocketReader;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lio/ktor/websocket/WebSocketReader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/websocket/WebSocketReader$readerJob$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->$pool:Lio/ktor/utils/io/pool/ObjectPool;

    iput-object p2, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->this$0:Lio/ktor/websocket/WebSocketReader;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lio/ktor/websocket/WebSocketReader$readerJob$1;

    iget-object v1, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->$pool:Lio/ktor/utils/io/pool/ObjectPool;

    iget-object v2, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->this$0:Lio/ktor/websocket/WebSocketReader;

    invoke-direct {v0, v1, v2, p2}, Lio/ktor/websocket/WebSocketReader$readerJob$1;-><init>(Lio/ktor/utils/io/pool/ObjectPool;Lio/ktor/websocket/WebSocketReader;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/WebSocketReader$readerJob$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/WebSocketReader$readerJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/websocket/WebSocketReader$readerJob$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/websocket/WebSocketReader$readerJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 37
    iget v1, p0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/websocket/WebSocketReader$readerJob$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lio/ktor/util/cio/ChannelIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/ktor/websocket/FrameTooBigException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/ktor/websocket/ProtocolViolationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    .line 51
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 48
    :catch_0
    move-exception v4

    goto :goto_1

    .line 45
    :catch_1
    move-exception v4

    goto :goto_2

    .line 43
    :catch_2
    move-exception v4

    goto/16 :goto_3

    .line 42
    :catch_3
    move-exception v4

    goto/16 :goto_4

    .line 41
    :catch_4
    move-exception v4

    goto/16 :goto_4

    .line 37
    .end local v0    # "this":Lio/ktor/websocket/WebSocketReader$readerJob$1;
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 38
    .local v1, "this":Lio/ktor/websocket/WebSocketReader$readerJob$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lio/ktor/websocket/WebSocketReader$readerJob$1;->$pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v4}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 39
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    nop

    .line 40
    :try_start_1
    iget-object v5, v1, Lio/ktor/websocket/WebSocketReader$readerJob$1;->this$0:Lio/ktor/websocket/WebSocketReader;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lio/ktor/websocket/WebSocketReader$readerJob$1;->L$0:Ljava/lang/Object;

    iput v2, v1, Lio/ktor/websocket/WebSocketReader$readerJob$1;->label:I

    invoke-static {v5, v4, v6}, Lio/ktor/websocket/WebSocketReader;->access$readLoop(Lio/ktor/websocket/WebSocketReader;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lio/ktor/util/cio/ChannelIOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lio/ktor/websocket/FrameTooBigException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lio/ktor/websocket/ProtocolViolationException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v5, v0, :cond_0

    .line 37
    return-object v0

    .line 40
    :cond_0
    move-object v0, v1

    move-object v1, v4

    goto/16 :goto_4

    .line 51
    :catchall_1
    move-exception v0

    move-object v7, v4

    move-object v4, v0

    move-object v0, v1

    move-object v1, v7

    .line 52
    .restart local v0    # "this":Lio/ktor/websocket/WebSocketReader$readerJob$1;
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    .local v4, "cause":Ljava/lang/Throwable;
    :goto_0
    nop

    .end local v0    # "this":Lio/ktor/websocket/WebSocketReader$readerJob$1;
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_2
    throw v4

    .line 48
    .local v1, "this":Lio/ktor/websocket/WebSocketReader$readerJob$1;
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catch_5
    move-exception v0

    move-object v7, v4

    move-object v4, v0

    move-object v0, v1

    move-object v1, v7

    .line 50
    .restart local v0    # "this":Lio/ktor/websocket/WebSocketReader$readerJob$1;
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    .local v4, "cause":Lio/ktor/websocket/ProtocolViolationException;
    :goto_1
    iget-object v5, v0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->this$0:Lio/ktor/websocket/WebSocketReader;

    invoke-static {v5}, Lio/ktor/websocket/WebSocketReader;->access$getQueue$p(Lio/ktor/websocket/WebSocketReader;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    invoke-interface {v5, v6}, Lkotlinx/coroutines/channels/Channel;->close(Ljava/lang/Throwable;)Z

    .line 54
    nop

    .end local v4    # "cause":Lio/ktor/websocket/ProtocolViolationException;
    goto :goto_5

    .line 45
    .end local v0    # "this":Lio/ktor/websocket/WebSocketReader$readerJob$1;
    .local v1, "this":Lio/ktor/websocket/WebSocketReader$readerJob$1;
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    :catch_6
    move-exception v0

    move-object v7, v4

    move-object v4, v0

    move-object v0, v1

    move-object v1, v7

    .line 47
    .restart local v0    # "this":Lio/ktor/websocket/WebSocketReader$readerJob$1;
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    .local v4, "cause":Lio/ktor/websocket/FrameTooBigException;
    :goto_2
    iget-object v5, v0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->this$0:Lio/ktor/websocket/WebSocketReader;

    invoke-static {v5}, Lio/ktor/websocket/WebSocketReader;->access$getQueue$p(Lio/ktor/websocket/WebSocketReader;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    invoke-interface {v5, v6}, Lkotlinx/coroutines/channels/Channel;->close(Ljava/lang/Throwable;)Z

    .line 54
    nop

    .end local v4    # "cause":Lio/ktor/websocket/FrameTooBigException;
    goto :goto_5

    .line 43
    .end local v0    # "this":Lio/ktor/websocket/WebSocketReader$readerJob$1;
    .local v1, "this":Lio/ktor/websocket/WebSocketReader$readerJob$1;
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    :catch_7
    move-exception v0

    move-object v0, v1

    move-object v1, v4

    .line 44
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v0    # "this":Lio/ktor/websocket/WebSocketReader$readerJob$1;
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :goto_3
    iget-object v4, v0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->this$0:Lio/ktor/websocket/WebSocketReader;

    invoke-static {v4}, Lio/ktor/websocket/WebSocketReader;->access$getQueue$p(Lio/ktor/websocket/WebSocketReader;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-static {v4, v3, v2, v3}, Lkotlinx/coroutines/channels/ReceiveChannel$DefaultImpls;->cancel$default(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    .line 54
    :catchall_2
    move-exception v4

    iget-object v5, v0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->$pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v5, v1}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 55
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, v0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->this$0:Lio/ktor/websocket/WebSocketReader;

    invoke-static {v1}, Lio/ktor/websocket/WebSocketReader;->access$getQueue$p(Lio/ktor/websocket/WebSocketReader;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v1, v3, v2, v3}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    throw v4

    .line 42
    .end local v0    # "this":Lio/ktor/websocket/WebSocketReader$readerJob$1;
    .local v1, "this":Lio/ktor/websocket/WebSocketReader$readerJob$1;
    .restart local v4    # "buffer":Ljava/nio/ByteBuffer;
    :catch_8
    move-exception v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_4

    .line 41
    :catch_9
    move-exception v0

    move-object v0, v1

    move-object v1, v4

    .line 54
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v0    # "this":Lio/ktor/websocket/WebSocketReader$readerJob$1;
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :goto_4
    nop

    :goto_5
    iget-object v4, v0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->$pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v4, v1}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 55
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, v0, Lio/ktor/websocket/WebSocketReader$readerJob$1;->this$0:Lio/ktor/websocket/WebSocketReader;

    invoke-static {v1}, Lio/ktor/websocket/WebSocketReader;->access$getQueue$p(Lio/ktor/websocket/WebSocketReader;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v1, v3, v2, v3}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 56
    nop

    .line 57
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
