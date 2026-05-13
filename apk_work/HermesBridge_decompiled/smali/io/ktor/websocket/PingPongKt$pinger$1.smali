.class final Lio/ktor/websocket/PingPongKt$pinger$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PingPong.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/websocket/PingPongKt;->pinger(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/channels/SendChannel;JJLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/SendChannel;
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
    c = "io.ktor.websocket.PingPongKt$pinger$1"
    f = "PingPong.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x40,
        0x49,
        0x5f
    }
    m = "invokeSuspend"
    n = {
        "random",
        "pingIdBytes",
        "random",
        "pingIdBytes"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $channel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lio/ktor/websocket/Frame$Pong;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onTimeout:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lio/ktor/websocket/CloseReason;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $outgoing:Lkotlinx/coroutines/channels/SendChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/SendChannel<",
            "Lio/ktor/websocket/Frame;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $periodMillis:J

.field final synthetic $timeoutMillis:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(JJLkotlin/jvm/functions/Function2;Lkotlinx/coroutines/channels/Channel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/websocket/CloseReason;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/channels/Channel<",
            "Lio/ktor/websocket/Frame$Pong;",
            ">;",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lio/ktor/websocket/Frame;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/websocket/PingPongKt$pinger$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$periodMillis:J

    iput-wide p3, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$timeoutMillis:J

    iput-object p5, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$onTimeout:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    iput-object p7, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$outgoing:Lkotlinx/coroutines/channels/SendChannel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
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

    new-instance v9, Lio/ktor/websocket/PingPongKt$pinger$1;

    iget-wide v1, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$periodMillis:J

    iget-wide v3, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$timeoutMillis:J

    iget-object v5, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$onTimeout:Lkotlin/jvm/functions/Function2;

    iget-object v6, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    iget-object v7, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->$outgoing:Lkotlinx/coroutines/channels/SendChannel;

    move-object v0, v9

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lio/ktor/websocket/PingPongKt$pinger$1;-><init>(JJLkotlin/jvm/functions/Function2;Lkotlinx/coroutines/channels/Channel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/coroutines/Continuation;

    return-object v9
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/PingPongKt$pinger$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/PingPongKt$pinger$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/websocket/PingPongKt$pinger$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/websocket/PingPongKt$pinger$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 55
    iget v1, p0, Lio/ktor/websocket/PingPongKt$pinger$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/websocket/PingPongKt$pinger$1;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 101
    :catch_0
    move-exception v1

    goto/16 :goto_4

    .line 100
    :catch_1
    move-exception v1

    goto/16 :goto_4

    .line 99
    :catch_2
    move-exception v1

    goto/16 :goto_4

    .line 55
    .end local v0    # "this":Lio/ktor/websocket/PingPongKt$pinger$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lio/ktor/websocket/PingPongKt$pinger$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lio/ktor/websocket/PingPongKt$pinger$1;->L$1:Ljava/lang/Object;

    check-cast v3, [B

    .local v3, "pingIdBytes":[B
    iget-object v4, v1, Lio/ktor/websocket/PingPongKt$pinger$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlin/random/Random;

    .local v4, "random":Lkotlin/random/Random;
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v5, v3

    move-object v3, v0

    move-object v0, p1

    goto/16 :goto_2

    .end local v1    # "this":Lio/ktor/websocket/PingPongKt$pinger$1;
    .end local v3    # "pingIdBytes":[B
    .end local v4    # "random":Lkotlin/random/Random;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object v1, p0

    .restart local v1    # "this":Lio/ktor/websocket/PingPongKt$pinger$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lio/ktor/websocket/PingPongKt$pinger$1;->L$1:Ljava/lang/Object;

    check-cast v3, [B

    .restart local v3    # "pingIdBytes":[B
    iget-object v4, v1, Lio/ktor/websocket/PingPongKt$pinger$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlin/random/Random;

    .restart local v4    # "random":Lkotlin/random/Random;
    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_1

    .line 101
    .end local v3    # "pingIdBytes":[B
    .end local v4    # "random":Lkotlin/random/Random;
    :catch_3
    move-exception v0

    move-object v0, v1

    goto/16 :goto_4

    .line 100
    :catch_4
    move-exception v0

    move-object v0, v1

    goto/16 :goto_4

    .line 99
    :catch_5
    move-exception v0

    move-object v0, v1

    goto/16 :goto_4

    .line 55
    .end local v1    # "this":Lio/ktor/websocket/PingPongKt$pinger$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 56
    .restart local v1    # "this":Lio/ktor/websocket/PingPongKt$pinger$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {}, Lio/ktor/websocket/DefaultWebSocketSessionKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting WebSocket pinger coroutine with period "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lio/ktor/websocket/PingPongKt$pinger$1;->$periodMillis:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms and timeout "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lio/ktor/websocket/PingPongKt$pinger$1;->$timeoutMillis:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lio/ktor/util/date/DateJvmKt;->getTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/random/RandomKt;->Random(J)Lkotlin/random/Random;

    move-result-object v3

    .line 58
    .local v3, "random":Lkotlin/random/Random;
    const/16 v4, 0x20

    new-array v4, v4, [B

    .line 60
    .local v4, "pingIdBytes":[B
    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 61
    .end local v1    # "this":Lio/ktor/websocket/PingPongKt$pinger$1;
    .restart local v0    # "this":Lio/ktor/websocket/PingPongKt$pinger$1;
    :goto_0
    nop

    .line 64
    :try_start_3
    iget-wide v5, v0, Lio/ktor/websocket/PingPongKt$pinger$1;->$periodMillis:J

    new-instance v7, Lio/ktor/websocket/PingPongKt$pinger$1$1;

    iget-object v8, v0, Lio/ktor/websocket/PingPongKt$pinger$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    invoke-direct {v7, v8, v2}, Lio/ktor/websocket/PingPongKt$pinger$1$1;-><init>(Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    move-object v8, v0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v3, v0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$1:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v0, Lio/ktor/websocket/PingPongKt$pinger$1;->label:I

    invoke-static {v5, v6, v7, v8}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_0

    .line 55
    return-object v1

    .line 64
    :cond_0
    move-object v11, v4

    move-object v4, v3

    move-object v3, v11

    .line 70
    .local v3, "pingIdBytes":[B
    .local v4, "random":Lkotlin/random/Random;
    :goto_1
    invoke-virtual {v4, v3}, Lkotlin/random/Random;->nextBytes([B)[B

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lio/ktor/util/CryptoKt;->hex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ping]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "pingMessage":Ljava/lang/String;
    iget-wide v6, v0, Lio/ktor/websocket/PingPongKt$pinger$1;->$timeoutMillis:J

    new-instance v8, Lio/ktor/websocket/PingPongKt$pinger$1$rc$1;

    iget-object v9, v0, Lio/ktor/websocket/PingPongKt$pinger$1;->$outgoing:Lkotlinx/coroutines/channels/SendChannel;

    iget-object v10, v0, Lio/ktor/websocket/PingPongKt$pinger$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    invoke-direct {v8, v9, v5, v10, v2}, Lio/ktor/websocket/PingPongKt$pinger$1$rc$1;-><init>(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/String;Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    move-object v9, v0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v4, v0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/websocket/PingPongKt$pinger$1;->L$1:Ljava/lang/Object;

    const/4 v10, 0x2

    iput v10, v0, Lio/ktor/websocket/PingPongKt$pinger$1;->label:I

    invoke-static {v6, v7, v8, v9}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v5    # "pingMessage":Ljava/lang/String;
    if-ne v6, v1, :cond_1

    .line 55
    return-object v1

    .line 73
    :cond_1
    move-object v5, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v6

    .line 55
    .end local v3    # "pingIdBytes":[B
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .restart local v1    # "this":Lio/ktor/websocket/PingPongKt$pinger$1;
    .local v5, "pingIdBytes":[B
    :goto_2
    :try_start_4
    check-cast p1, Lkotlin/Unit;

    .line 89
    .local p1, "rc":Lkotlin/Unit;
    if-nez p1, :cond_3

    .line 94
    .end local v4    # "random":Lkotlin/random/Random;
    .end local v5    # "pingIdBytes":[B
    .end local p1    # "rc":Lkotlin/Unit;
    invoke-static {}, Lio/ktor/websocket/DefaultWebSocketSessionKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object p1

    const-string v4, "WebSocket pinger has timed out"

    invoke-interface {p1, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 95
    iget-object p1, v1, Lio/ktor/websocket/PingPongKt$pinger$1;->$onTimeout:Lkotlin/jvm/functions/Function2;

    new-instance v4, Lio/ktor/websocket/CloseReason;

    sget-object v5, Lio/ktor/websocket/CloseReason$Codes;->INTERNAL_ERROR:Lio/ktor/websocket/CloseReason$Codes;

    const-string v6, "Ping timeout"

    invoke-direct {v4, v5, v6}, Lio/ktor/websocket/CloseReason;-><init>(Lio/ktor/websocket/CloseReason$Codes;Ljava/lang/String;)V

    iput-object v2, v1, Lio/ktor/websocket/PingPongKt$pinger$1;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lio/ktor/websocket/PingPongKt$pinger$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v1, Lio/ktor/websocket/PingPongKt$pinger$1;->label:I

    invoke-interface {p1, v4, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_4 .. :try_end_4} :catch_6

    if-ne p1, v3, :cond_2

    .line 55
    return-object v3

    .line 95
    :cond_2
    move-object p1, v0

    move-object v0, v1

    .line 96
    .end local v1    # "this":Lio/ktor/websocket/PingPongKt$pinger$1;
    .local v0, "this":Lio/ktor/websocket/PingPongKt$pinger$1;
    .local p1, "$result":Ljava/lang/Object;
    :goto_3
    goto :goto_4

    .line 89
    .local v0, "$result":Ljava/lang/Object;
    .restart local v1    # "this":Lio/ktor/websocket/PingPongKt$pinger$1;
    .restart local v4    # "random":Lkotlin/random/Random;
    .restart local v5    # "pingIdBytes":[B
    .local p1, "rc":Lkotlin/Unit;
    :cond_3
    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_0

    .line 101
    .end local v4    # "random":Lkotlin/random/Random;
    .end local v5    # "pingIdBytes":[B
    .end local p1    # "rc":Lkotlin/Unit;
    :catch_6
    move-exception p1

    move-object p1, v0

    move-object v0, v1

    goto :goto_4

    .line 100
    :catch_7
    move-exception p1

    move-object p1, v0

    move-object v0, v1

    goto :goto_4

    .line 99
    :catch_8
    move-exception p1

    move-object p1, v0

    move-object v0, v1

    .line 103
    .end local v1    # "this":Lio/ktor/websocket/PingPongKt$pinger$1;
    .local v0, "this":Lio/ktor/websocket/PingPongKt$pinger$1;
    .local p1, "$result":Ljava/lang/Object;
    :goto_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
