.class final Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RequestBodyHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/netty/cio/RequestBodyHandler;-><init>(Lio/netty/channel/ChannelHandlerContext;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRequestBodyHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequestBodyHandler.kt\nio/ktor/server/netty/cio/RequestBodyHandler$job$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,201:1\n1#2:202\n*E\n"
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
    c = "io.ktor.server.netty.cio.RequestBodyHandler$job$1"
    f = "RequestBodyHandler.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x26,
        0x2c,
        0x36
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "current",
        "upgraded",
        "$this$launch",
        "current",
        "event",
        "upgraded",
        "$this$launch",
        "current",
        "upgraded"
    }
    s = {
        "L$0",
        "L$1",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "L$0",
        "L$1",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ktor/server/netty/cio/RequestBodyHandler;


# direct methods
.method constructor <init>(Lio/ktor/server/netty/cio/RequestBodyHandler;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/netty/cio/RequestBodyHandler;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->this$0:Lio/ktor/server/netty/cio/RequestBodyHandler;

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

    new-instance v0, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;

    iget-object v1, p0, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->this$0:Lio/ktor/server/netty/cio/RequestBodyHandler;

    invoke-direct {v0, v1, p2}, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;-><init>(Lio/ktor/server/netty/cio/RequestBodyHandler;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 31
    move-object/from16 v1, p0

    iget v2, v1, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;
    move-object/from16 v5, p1

    .local v5, "$result":Ljava/lang/Object;
    iget v6, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->I$0:I

    .local v6, "upgraded":Z
    iget-object v7, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v7, "current":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v8, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    .local v8, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :try_start_0
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v8

    move v8, v6

    goto/16 :goto_4

    .line 66
    .end local v6    # "upgraded":Z
    .end local v8    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 31
    .end local v2    # "this":Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v7    # "current":Lkotlin/jvm/internal/Ref$ObjectRef;
    :pswitch_1
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget v6, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->I$0:I

    .restart local v6    # "upgraded":Z
    iget-object v7, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->L$2:Ljava/lang/Object;

    .local v7, "event":Ljava/lang/Object;
    iget-object v8, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v8, "current":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v9, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    .local v9, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :try_start_1
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_3

    .end local v2    # "this":Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "upgraded":Z
    .end local v7    # "event":Ljava/lang/Object;
    .end local v8    # "current":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v9    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :pswitch_2
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "$i$a$-run-RequestBodyHandler$job$1$event$1":I
    iget v7, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->I$0:I

    .local v7, "upgraded":Z
    iget-object v8, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .restart local v8    # "current":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v9, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    .restart local v9    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :try_start_2
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v5

    check-cast v10, Lkotlinx/coroutines/channels/ChannelResult;

    invoke-virtual {v10}, Lkotlinx/coroutines/channels/ChannelResult;->unbox-impl()Ljava/lang/Object;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 66
    .end local v6    # "$i$a$-run-RequestBodyHandler$job$1$event$1":I
    .end local v7    # "upgraded":Z
    .end local v9    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :catchall_1
    move-exception v0

    move-object v7, v8

    goto/16 :goto_5

    .line 31
    .end local v2    # "this":Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v8    # "current":Lkotlin/jvm/internal/Ref$ObjectRef;
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-object v6, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    .line 32
    .local v6, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 33
    .local v7, "current":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 v8, 0x0

    .line 35
    .local v8, "upgraded":Z
    move-object v9, v6

    .line 36
    .end local v6    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .restart local v9    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :cond_0
    :goto_0
    nop

    .line 37
    :try_start_3
    iget-object v6, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->this$0:Lio/ktor/server/netty/cio/RequestBodyHandler;

    invoke-static {v6}, Lio/ktor/server/netty/cio/RequestBodyHandler;->access$getQueue$p(Lio/ktor/server/netty/cio/RequestBodyHandler;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v6

    invoke-interface {v6}, Lkotlinx/coroutines/channels/Channel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    .line 38
    iget-object v6, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->this$0:Lio/ktor/server/netty/cio/RequestBodyHandler;

    .line 202
    const/4 v10, 0x0

    .line 38
    .local v10, "$i$a$-run-RequestBodyHandler$job$1$event$1":I
    iget-object v11, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/ByteWriteChannel;

    if-eqz v11, :cond_1

    invoke-interface {v11}, Lio/ktor/utils/io/ByteWriteChannel;->flush()V

    :cond_1
    invoke-static {v6}, Lio/ktor/server/netty/cio/RequestBodyHandler;->access$getQueue$p(Lio/ktor/server/netty/cio/RequestBodyHandler;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v6

    iput-object v9, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->L$2:Ljava/lang/Object;

    iput v8, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->I$0:I

    iput v3, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->label:I

    invoke-interface {v6, v2}, Lkotlinx/coroutines/channels/Channel;->receiveCatching-JP2dKIU(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v6, v0, :cond_2

    .line 31
    return-object v0

    .line 38
    :cond_2
    move v15, v10

    move-object v10, v6

    move v6, v15

    move/from16 v16, v8

    move-object v8, v7

    move/from16 v7, v16

    .end local v10    # "$i$a$-run-RequestBodyHandler$job$1$event$1":I
    .local v6, "$i$a$-run-RequestBodyHandler$job$1$event$1":I
    .local v7, "upgraded":Z
    .local v8, "current":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_1
    :try_start_4
    invoke-static {v10}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 37
    .end local v6    # "$i$a$-run-RequestBodyHandler$job$1$event$1":I
    if-nez v10, :cond_4

    .line 39
    .end local v7    # "upgraded":Z
    .end local v9    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    nop

    .line 70
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteWriteChannel;

    .end local v8    # "current":Lkotlin/jvm/internal/Ref$ObjectRef;
    if-eqz v0, :cond_3

    :goto_2
    invoke-static {v0}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 71
    :cond_3
    iget-object v0, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->this$0:Lio/ktor/server/netty/cio/RequestBodyHandler;

    invoke-static {v0}, Lio/ktor/server/netty/cio/RequestBodyHandler;->access$getQueue$p(Lio/ktor/server/netty/cio/RequestBodyHandler;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v0, v4, v3, v4}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 72
    iget-object v0, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->this$0:Lio/ktor/server/netty/cio/RequestBodyHandler;

    invoke-static {v0}, Lio/ktor/server/netty/cio/RequestBodyHandler;->access$consumeAndReleaseQueue(Lio/ktor/server/netty/cio/RequestBodyHandler;)V

    .line 73
    goto/16 :goto_6

    .line 37
    .restart local v7    # "upgraded":Z
    .restart local v8    # "current":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v9    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :cond_4
    move-object v6, v10

    move-object v15, v8

    move v8, v7

    move-object v7, v15

    .line 41
    .local v6, "event":Ljava/lang/Object;
    .local v7, "current":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v8, "upgraded":Z
    :cond_5
    nop

    .line 42
    :try_start_5
    instance-of v10, v6, Lio/netty/buffer/ByteBufHolder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v11, "No current channel but received a byte buf"

    if-eqz v10, :cond_9

    .line 43
    :try_start_6
    iget-object v10, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Lio/ktor/utils/io/ByteWriteChannel;

    if-eqz v10, :cond_8

    .line 44
    .local v10, "channel":Lio/ktor/utils/io/ByteWriteChannel;
    iget-object v11, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->this$0:Lio/ktor/server/netty/cio/RequestBodyHandler;

    move-object v12, v6

    check-cast v12, Lio/netty/buffer/ByteBufHolder;

    move-object v13, v2

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput-object v9, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->L$1:Ljava/lang/Object;

    iput-object v6, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->L$2:Ljava/lang/Object;

    iput v8, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->I$0:I

    const/4 v14, 0x2

    iput v14, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->label:I

    invoke-static {v11, v10, v12, v13}, Lio/ktor/server/netty/cio/RequestBodyHandler;->access$processContent(Lio/ktor/server/netty/cio/RequestBodyHandler;Lio/ktor/utils/io/ByteWriteChannel;Lio/netty/buffer/ByteBufHolder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v10    # "channel":Lio/ktor/utils/io/ByteWriteChannel;
    if-ne v11, v0, :cond_6

    .line 31
    return-object v0

    .line 44
    :cond_6
    move-object v15, v7

    move-object v7, v6

    move v6, v8

    move-object v8, v15

    .line 46
    .local v6, "upgraded":Z
    .local v7, "event":Ljava/lang/Object;
    .local v8, "current":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_3
    if-nez v6, :cond_7

    :try_start_7
    instance-of v10, v7, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v10, :cond_7

    .line 47
    .end local v7    # "event":Ljava/lang/Object;
    iget-object v7, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v7}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 48
    iput-object v4, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 50
    :cond_7
    iget-object v7, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->this$0:Lio/ktor/server/netty/cio/RequestBodyHandler;

    invoke-static {v7}, Lio/ktor/server/netty/cio/RequestBodyHandler;->access$requestMoreEvents(Lio/ktor/server/netty/cio/RequestBodyHandler;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v7, v8

    move v8, v6

    goto/16 :goto_0

    .line 43
    .local v6, "event":Ljava/lang/Object;
    .local v7, "current":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v8, "upgraded":Z
    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "this":Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v7    # "current":Lkotlin/jvm/internal/Ref$ObjectRef;
    throw v0

    .line 52
    .restart local v2    # "this":Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;
    .restart local v5    # "$result":Ljava/lang/Object;
    .restart local v7    # "current":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_9
    instance-of v10, v6, Lio/netty/buffer/ByteBuf;

    if-eqz v10, :cond_c

    .line 53
    iget-object v10, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Lio/ktor/utils/io/ByteWriteChannel;

    if-eqz v10, :cond_b

    .line 54
    .restart local v10    # "channel":Lio/ktor/utils/io/ByteWriteChannel;
    iget-object v11, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->this$0:Lio/ktor/server/netty/cio/RequestBodyHandler;

    move-object v12, v6

    check-cast v12, Lio/netty/buffer/ByteBuf;

    move-object v13, v2

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput-object v9, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->L$2:Ljava/lang/Object;

    iput v8, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->I$0:I

    const/4 v14, 0x3

    iput v14, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->label:I

    invoke-static {v11, v10, v12, v13}, Lio/ktor/server/netty/cio/RequestBodyHandler;->access$processContent(Lio/ktor/server/netty/cio/RequestBodyHandler;Lio/ktor/utils/io/ByteWriteChannel;Lio/netty/buffer/ByteBuf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    .end local v6    # "event":Ljava/lang/Object;
    .end local v10    # "channel":Lio/ktor/utils/io/ByteWriteChannel;
    if-ne v11, v0, :cond_a

    .line 31
    return-object v0

    .line 55
    :cond_a
    :goto_4
    iget-object v6, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->this$0:Lio/ktor/server/netty/cio/RequestBodyHandler;

    invoke-static {v6}, Lio/ktor/server/netty/cio/RequestBodyHandler;->access$requestMoreEvents(Lio/ktor/server/netty/cio/RequestBodyHandler;)V

    goto/16 :goto_0

    .line 53
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "this":Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v7    # "current":Lkotlin/jvm/internal/Ref$ObjectRef;
    throw v0

    .line 57
    .restart local v2    # "this":Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;
    .restart local v5    # "$result":Ljava/lang/Object;
    .restart local v6    # "event":Ljava/lang/Object;
    .restart local v7    # "current":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_c
    instance-of v10, v6, Lio/ktor/utils/io/ByteWriteChannel;

    if-eqz v10, :cond_e

    .line 58
    iget-object v10, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Lio/ktor/utils/io/ByteWriteChannel;

    if-eqz v10, :cond_d

    invoke-static {v10}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    move-result v10

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 59
    :cond_d
    iput-object v6, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto/16 :goto_0

    .line 61
    .end local v6    # "event":Ljava/lang/Object;
    :cond_e
    instance-of v6, v6, Lio/ktor/server/netty/cio/RequestBodyHandler$Upgrade;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v6, :cond_0

    .line 62
    .end local v8    # "upgraded":Z
    const/4 v8, 0x1

    .restart local v8    # "upgraded":Z
    goto/16 :goto_0

    .line 67
    .end local v8    # "upgraded":Z
    .end local v9    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .local v0, "t":Ljava/lang/Throwable;
    :goto_5
    :try_start_9
    iget-object v6, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->this$0:Lio/ktor/server/netty/cio/RequestBodyHandler;

    invoke-static {v6}, Lio/ktor/server/netty/cio/RequestBodyHandler;->access$getQueue$p(Lio/ktor/server/netty/cio/RequestBodyHandler;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v6

    invoke-interface {v6, v0}, Lkotlinx/coroutines/channels/Channel;->close(Ljava/lang/Throwable;)Z

    .line 68
    iget-object v6, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/ByteWriteChannel;

    if-eqz v6, :cond_f

    invoke-interface {v6, v0}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    move-result v6

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    nop

    .line 70
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_f
    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteWriteChannel;

    .end local v7    # "current":Lkotlin/jvm/internal/Ref$ObjectRef;
    if-eqz v0, :cond_3

    goto/16 :goto_2

    .line 74
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 70
    .restart local v7    # "current":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catchall_2
    move-exception v0

    iget-object v6, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/ByteWriteChannel;

    .end local v7    # "current":Lkotlin/jvm/internal/Ref$ObjectRef;
    if-eqz v6, :cond_10

    invoke-static {v6}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    move-result v6

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 71
    :cond_10
    iget-object v6, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->this$0:Lio/ktor/server/netty/cio/RequestBodyHandler;

    invoke-static {v6}, Lio/ktor/server/netty/cio/RequestBodyHandler;->access$getQueue$p(Lio/ktor/server/netty/cio/RequestBodyHandler;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {v6, v4, v3, v4}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 72
    iget-object v3, v2, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;->this$0:Lio/ktor/server/netty/cio/RequestBodyHandler;

    invoke-static {v3}, Lio/ktor/server/netty/cio/RequestBodyHandler;->access$consumeAndReleaseQueue(Lio/ktor/server/netty/cio/RequestBodyHandler;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
