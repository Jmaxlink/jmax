.class final Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultWebSocketSession.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/websocket/DefaultWebSocketSessionImpl;->runIncomingProcessor(Lkotlinx/coroutines/channels/SendChannel;)Lkotlinx/coroutines/Job;
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
    value = "SMAP\nDefaultWebSocketSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultWebSocketSession.kt\nio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,344:1\n105#2:345\n82#2,6:346\n106#2:352\n92#2:353\n107#2:354\n88#2,3:355\n*S KotlinDebug\n*F\n+ 1 DefaultWebSocketSession.kt\nio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1\n*L\n167#1:345\n167#1:346,6\n167#1:352\n167#1:353\n167#1:354\n167#1:355,3\n*E\n"
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
    c = "io.ktor.websocket.DefaultWebSocketSessionImpl$runIncomingProcessor$1"
    f = "DefaultWebSocketSession.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x6,
        0x6,
        0x6,
        0x6,
        0x6,
        0x7,
        0x7,
        0x7,
        0x7,
        0x7
    }
    l = {
        0x160,
        0xac,
        0xe2,
        0xb2,
        0xb3,
        0xb5,
        0xc4,
        0xd3,
        0xe2,
        0xe2,
        0xe2,
        0xe2
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "firstFrame",
        "frameBody",
        "closeFramePresented",
        "$this$consume$iv$iv",
        "frameBody",
        "closeFramePresented",
        "$this$consume$iv$iv",
        "$this$launch",
        "firstFrame",
        "frameBody",
        "closeFramePresented",
        "$this$consume$iv$iv",
        "$this$launch",
        "firstFrame",
        "frameBody",
        "closeFramePresented",
        "$this$consume$iv$iv",
        "$this$launch",
        "firstFrame",
        "frameBody",
        "closeFramePresented",
        "$this$consume$iv$iv",
        "frame",
        "$this$launch",
        "firstFrame",
        "frameBody",
        "closeFramePresented",
        "$this$consume$iv$iv",
        "$this$launch",
        "firstFrame",
        "frameBody",
        "closeFramePresented",
        "$this$consume$iv$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$6",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$6",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$6",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$6",
        "L$8",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$6",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$6"
    }
.end annotation


# instance fields
.field final synthetic $ponger:Lkotlinx/coroutines/channels/SendChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/SendChannel<",
            "Lio/ktor/websocket/Frame$Ping;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ktor/websocket/DefaultWebSocketSessionImpl;


# direct methods
.method constructor <init>(Lio/ktor/websocket/DefaultWebSocketSessionImpl;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/websocket/DefaultWebSocketSessionImpl;",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lio/ktor/websocket/Frame$Ping;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->this$0:Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    iput-object p2, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->$ponger:Lkotlinx/coroutines/channels/SendChannel;

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

    new-instance v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;

    iget-object v1, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->this$0:Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    iget-object v2, p0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->$ponger:Lkotlinx/coroutines/channels/SendChannel;

    invoke-direct {v0, v1, v2, p2}, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;-><init>(Lio/ktor/websocket/DefaultWebSocketSessionImpl;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 161
    move-object/from16 v2, p0

    iget v0, v2, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->label:I

    const-string v3, "Connection was closed without close frame"

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    move-object/from16 v1, p1

    .local v1, "$result":Ljava/lang/Object;
    iget-object v3, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_11

    .end local v0    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .end local v1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v0, p0

    .restart local v0    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    move-object/from16 v1, p1

    .restart local v1    # "$result":Ljava/lang/Object;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e

    .end local v0    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .end local v1    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v6, p0

    .local v6, "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    move-object/from16 v7, p1

    .local v7, "$result":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    const/4 v8, 0x0

    .local v8, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    const/4 v9, 0x0

    .local v9, "$i$f$consume":I
    const/4 v10, 0x0

    .local v10, "$i$f$consumeEach":I
    iget-object v11, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$7:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v12, 0x0

    .local v12, "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v13, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$6:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v13, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v14, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$5:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v15, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$4:Ljava/lang/Object;

    check-cast v15, Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    iget-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v4, "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    move/from16 p1, v0

    .end local v0    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    .local v5, "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local p1, "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v16, v0

    .local v16, "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .local v0, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :try_start_0
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    move-object v1, v0

    move/from16 v0, p1

    goto/16 :goto_c

    .line 355
    .end local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .end local v8    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v16    # "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p1    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    :catchall_0
    move-exception v0

    goto/16 :goto_f

    .line 161
    .end local v4    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v5    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$f$consume":I
    .end local v10    # "$i$f$consumeEach":I
    .end local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v13    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :pswitch_3
    move-object/from16 v6, p0

    .restart local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    move-object/from16 v7, p1

    .restart local v7    # "$result":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    const/4 v4, 0x0

    .local v4, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    const/4 v9, 0x0

    .restart local v9    # "$i$f$consume":I
    const/4 v10, 0x0

    .restart local v10    # "$i$f$consumeEach":I
    iget-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v12, 0x0

    .restart local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v8, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$6:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v8, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v13, v8

    .end local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v13    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v8, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v11, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$4:Ljava/lang/Object;

    check-cast v11, Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    iget-object v14, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$3:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v14, "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v15, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$2:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    move/from16 p1, v0

    .end local v0    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    .local v15, "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local p1    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v16, v0

    .restart local v16    # "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .local v0, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :try_start_1
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v2, v1

    move-object v1, v0

    move/from16 v0, p1

    goto/16 :goto_b

    .end local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .end local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$f$consume":I
    .end local v10    # "$i$f$consumeEach":I
    .end local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v13    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v14    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v15    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v16    # "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p1    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    :pswitch_4
    move-object/from16 v6, p0

    .restart local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    move-object/from16 v7, p1

    .restart local v7    # "$result":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    const/4 v4, 0x0

    .restart local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    const/4 v9, 0x0

    .restart local v9    # "$i$f$consume":I
    const/4 v10, 0x0

    .restart local v10    # "$i$f$consumeEach":I
    iget-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$8:Ljava/lang/Object;

    check-cast v5, Lio/ktor/websocket/Frame;

    .local v5, "frame":Lio/ktor/websocket/Frame;
    iget-object v8, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$7:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v12, 0x0

    .restart local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v11, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$6:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v11, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v13, v11

    .end local v11    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v13    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v11, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$5:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v14, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$4:Ljava/lang/Object;

    check-cast v14, Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    iget-object v15, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$3:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$BooleanRef;

    move/from16 p1, v0

    .end local v0    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    .local v15, "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local p1    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$2:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v16, "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v17, v0

    .local v17, "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .local v0, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :try_start_2
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v1

    move-object v1, v0

    move-object/from16 v0, v17

    move-object/from16 v33, v16

    move/from16 v16, p1

    move-object/from16 p1, v14

    move-object/from16 v14, v33

    move-object/from16 v34, v8

    move v8, v4

    move-object v4, v15

    move-object v15, v11

    move-object/from16 v11, v34

    goto/16 :goto_8

    .line 355
    .end local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .end local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v5    # "frame":Lio/ktor/websocket/Frame;
    .end local v17    # "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p1    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    :catchall_1
    move-exception v0

    move-object v4, v15

    move-object/from16 v5, v16

    goto/16 :goto_f

    .line 161
    .end local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$f$consume":I
    .end local v10    # "$i$f$consumeEach":I
    .end local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v13    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v15    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v16    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    :pswitch_5
    move-object/from16 v6, p0

    .restart local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    move-object/from16 v7, p1

    .restart local v7    # "$result":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    const/4 v4, 0x0

    .restart local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    const/4 v9, 0x0

    .restart local v9    # "$i$f$consume":I
    const/4 v10, 0x0

    .restart local v10    # "$i$f$consumeEach":I
    iget-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v12, 0x0

    .restart local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v8, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$6:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    .restart local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v13, v8

    .end local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v13    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v8, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v11, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$4:Ljava/lang/Object;

    check-cast v11, Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    iget-object v14, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$3:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$BooleanRef;

    .restart local v14    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v15, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$2:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    move/from16 p1, v0

    .end local v0    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    .local v15, "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local p1    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v16, v0

    .local v16, "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .local v0, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :try_start_3
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v2, v1

    move-object v1, v0

    move/from16 v0, p1

    move-object/from16 v33, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v33

    goto/16 :goto_7

    .end local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .end local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$f$consume":I
    .end local v10    # "$i$f$consumeEach":I
    .end local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v13    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v14    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v15    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v16    # "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p1    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    :pswitch_6
    move-object/from16 v6, p0

    .restart local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    move-object/from16 v7, p1

    .restart local v7    # "$result":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    const/4 v4, 0x0

    .restart local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    const/4 v9, 0x0

    .restart local v9    # "$i$f$consume":I
    const/4 v10, 0x0

    .restart local v10    # "$i$f$consumeEach":I
    iget-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v12, 0x0

    .restart local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v8, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$6:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    .restart local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v13, v8

    .end local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v13    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v8, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v11, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$4:Ljava/lang/Object;

    check-cast v11, Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    iget-object v14, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$3:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$BooleanRef;

    .restart local v14    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v15, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$2:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    move/from16 p1, v0

    .end local v0    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    .restart local v15    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local p1    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v16, v0

    .restart local v16    # "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .local v0, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :try_start_4
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move/from16 v17, v4

    move-object v2, v5

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v15, v16

    move/from16 v16, p1

    goto/16 :goto_5

    .line 355
    .end local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .end local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v16    # "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p1    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    :catchall_2
    move-exception v0

    move-object v4, v14

    move-object v5, v15

    goto/16 :goto_f

    .line 161
    .end local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$f$consume":I
    .end local v10    # "$i$f$consumeEach":I
    .end local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v13    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v14    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v15    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    :pswitch_7
    move-object/from16 v0, p0

    .local v0, "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    move-object/from16 v1, p1

    .restart local v1    # "$result":Ljava/lang/Object;
    iget-object v3, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .end local v0    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .end local v1    # "$result":Ljava/lang/Object;
    :pswitch_8
    move-object/from16 v6, p0

    .restart local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    move-object/from16 v7, p1

    .restart local v7    # "$result":Ljava/lang/Object;
    const/4 v10, 0x0

    .restart local v10    # "$i$f$consumeEach":I
    const/4 v9, 0x0

    .restart local v9    # "$i$f$consume":I
    const/4 v0, 0x0

    .local v0, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    const/4 v4, 0x0

    .local v4, "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    iget-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v8, "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v11, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v11, "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    :try_start_5
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v13, 0x0

    goto/16 :goto_2

    .line 355
    .end local v0    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v4    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    :catchall_3
    move-exception v0

    const/4 v4, 0x0

    move-object v12, v4

    .restart local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    move-object v13, v5

    move-object v4, v8

    move-object v5, v11

    .restart local v13    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    goto/16 :goto_f

    .line 161
    .end local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v9    # "$i$f$consume":I
    .end local v10    # "$i$f$consumeEach":I
    .end local v11    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v13    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :pswitch_9
    move-object/from16 v6, p0

    .restart local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    move-object/from16 v7, p1

    .restart local v7    # "$result":Ljava/lang/Object;
    const/4 v10, 0x0

    .restart local v10    # "$i$f$consumeEach":I
    const/4 v9, 0x0

    .restart local v9    # "$i$f$consume":I
    const/4 v0, 0x0

    .restart local v0    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    iget-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$7:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v12, 0x0

    .restart local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$6:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v5, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v13, v5

    .end local v5    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v13    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v8, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    iget-object v11, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$3:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v11, "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v14, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$2:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v14, "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v15, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    move/from16 p1, v0

    .end local v0    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v15, "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local p1, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .local v0, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :try_start_6
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object v2, v1

    move-object v1, v13

    move-object v13, v12

    move-object v12, v8

    move-object v8, v11

    move-object v11, v5

    move-object v5, v4

    move/from16 v4, p1

    move-object/from16 p1, v7

    goto/16 :goto_1

    .line 355
    .end local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .end local v15    # "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p1    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :catchall_4
    move-exception v0

    move-object v4, v11

    move-object v5, v14

    goto/16 :goto_f

    .line 161
    .end local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$f$consume":I
    .end local v10    # "$i$f$consumeEach":I
    .end local v11    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v13    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v14    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    :pswitch_a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v6, p0

    .restart local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    move-object/from16 v7, p1

    .restart local v7    # "$result":Ljava/lang/Object;
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 162
    .restart local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 163
    .local v4, "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 164
    .local v5, "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 165
    .restart local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    nop

    .line 167
    :try_start_7
    iget-object v9, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->this$0:Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    invoke-static {v9}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->access$getRaw$p(Lio/ktor/websocket/DefaultWebSocketSessionImpl;)Lio/ktor/websocket/WebSocketSession;

    move-result-object v9

    invoke-interface {v9}, Lio/ktor/websocket/WebSocketSession;->getIncoming()Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v9

    iget-object v10, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->this$0:Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    iget-object v11, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->$ponger:Lkotlinx/coroutines/channels/SendChannel;
    :try_end_7
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_14

    .local v9, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v12, 0x0

    .line 345
    .local v12, "$i$f$consumeEach":I
    move-object v13, v9

    .end local v9    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v13    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v9, 0x0

    .line 346
    .local v9, "$i$f$consume":I
    nop

    .line 349
    const/4 v14, 0x0

    .line 350
    .local v14, "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .line 351
    move-object v15, v13

    .local v15, "$this$consumeEach_u24lambda_u241$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/16 v16, 0x0

    .line 352
    .local v16, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :try_start_8
    invoke-interface {v15}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v17

    move-object/from16 v15, v17

    .end local v15    # "$this$consumeEach_u24lambda_u241$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :goto_0
    iput-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    iput-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$1:Ljava/lang/Object;

    iput-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$2:Ljava/lang/Object;

    iput-object v8, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$3:Ljava/lang/Object;

    iput-object v10, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$4:Ljava/lang/Object;

    iput-object v11, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$5:Ljava/lang/Object;

    iput-object v13, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$6:Ljava/lang/Object;

    iput-object v15, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$7:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$8:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->label:I

    invoke-interface {v15, v6}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_11

    if-ne v2, v1, :cond_0

    .line 161
    return-object v1

    .line 352
    :cond_0
    move-object/from16 p1, v7

    move-object v7, v2

    move-object v2, v1

    move-object v1, v13

    move-object v13, v14

    move-object v14, v5

    move-object v5, v15

    move-object v15, v4

    move/from16 v4, v16

    move/from16 v33, v12

    move-object v12, v10

    move/from16 v10, v33

    .end local v5    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v12    # "$i$f$consumeEach":I
    .end local v16    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v1, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v4, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v10    # "$i$f$consumeEach":I
    .local v13, "cause$iv$iv":Ljava/lang/Throwable;
    .local v14, "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v15, "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local p1, "$result":Ljava/lang/Object;
    :goto_1
    :try_start_9
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v5}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "e$iv":Ljava/lang/Object;
    move-object/from16 v16, v7

    check-cast v16, Lio/ktor/websocket/Frame;

    move-object/from16 v7, v16

    .local v7, "frame":Lio/ktor/websocket/Frame;
    const/16 v16, 0x0

    .line 168
    .local v16, "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    move/from16 v17, v4

    .end local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v17, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    invoke-static {}, Lio/ktor/websocket/DefaultWebSocketSessionKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_10

    move/from16 v18, v9

    .end local v9    # "$i$f$consume":I
    .local v18, "$i$f$consume":I
    :try_start_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_d

    move/from16 v19, v10

    .end local v10    # "$i$f$consumeEach":I
    .local v19, "$i$f$consumeEach":I
    :try_start_b
    const-string v10, "WebSocketSession("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") receiving frame "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 169
    nop

    .line 170
    instance-of v4, v7, Lio/ktor/websocket/Frame$Close;

    if-eqz v4, :cond_7

    .line 171
    .end local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .end local v15    # "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    invoke-virtual {v12}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->getOutgoing()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/channels/SendChannel;->isClosedForSend()Z

    move-result v0

    if-nez v0, :cond_3

    .line 172
    invoke-virtual {v12}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->getOutgoing()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v0

    new-instance v4, Lio/ktor/websocket/Frame$Close;

    move-object v5, v7

    check-cast v5, Lio/ktor/websocket/Frame$Close;

    invoke-static {v5}, Lio/ktor/websocket/FrameCommonKt;->readReason(Lio/ktor/websocket/Frame$Close;)Lio/ktor/websocket/CloseReason;

    move-result-object v5

    .end local v7    # "frame":Lio/ktor/websocket/Frame;
    if-nez v5, :cond_1

    invoke-static {}, Lio/ktor/websocket/DefaultWebSocketSessionKt;->access$getNORMAL_CLOSE$p()Lio/ktor/websocket/CloseReason;

    move-result-object v5

    :cond_1
    invoke-direct {v4, v5}, Lio/ktor/websocket/Frame$Close;-><init>(Lio/ktor/websocket/CloseReason;)V

    iput-object v14, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    iput-object v8, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$1:Ljava/lang/Object;

    iput-object v1, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$2:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$3:Ljava/lang/Object;

    iput-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$4:Ljava/lang/Object;

    iput-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$5:Ljava/lang/Object;

    iput-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$6:Ljava/lang/Object;

    iput-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$7:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->label:I

    invoke-interface {v0, v4, v6}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_f

    if-ne v0, v2, :cond_2

    .line 161
    return-object v2

    .line 172
    :cond_2
    move-object/from16 v7, p1

    move-object v5, v1

    move-object v1, v2

    move-object v11, v14

    move/from16 v4, v16

    move/from16 v0, v17

    move/from16 v9, v18

    move/from16 v10, v19

    .line 174
    .end local v1    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v13    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v14    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v16    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    .end local v17    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v18    # "$i$f$consume":I
    .end local v19    # "$i$f$consumeEach":I
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v4, "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    .local v7, "$result":Ljava/lang/Object;
    .restart local v9    # "$i$f$consume":I
    .restart local v10    # "$i$f$consumeEach":I
    .local v11, "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_2
    move-object v2, v1

    move/from16 v16, v4

    move-object v1, v5

    move-object v4, v8

    move-object v5, v11

    goto :goto_3

    .line 171
    .end local v0    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v4    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    .end local v9    # "$i$f$consume":I
    .end local v10    # "$i$f$consumeEach":I
    .end local v11    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v1    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v7, "frame":Lio/ktor/websocket/Frame;
    .restart local v13    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v14    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v16    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    .restart local v17    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v18    # "$i$f$consume":I
    .restart local v19    # "$i$f$consumeEach":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_3
    move-object/from16 v7, p1

    move-object v4, v8

    move-object v5, v14

    move/from16 v0, v17

    move/from16 v9, v18

    move/from16 v10, v19

    .line 174
    .end local v1    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v13    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v14    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v17    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v18    # "$i$f$consume":I
    .end local v19    # "$i$f$consumeEach":I
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v4, "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v5    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v7, "$result":Ljava/lang/Object;
    .restart local v9    # "$i$f$consume":I
    .restart local v10    # "$i$f$consumeEach":I
    :goto_3
    const/4 v8, 0x1

    :try_start_c
    iput-boolean v8, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 175
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 353
    .end local v0    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v9    # "$i$f$consume":I
    .end local v10    # "$i$f$consumeEach":I
    .end local v16    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    :try_start_d
    invoke-static {v1, v13}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V
    :try_end_d
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 220
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->$ponger:Lkotlinx/coroutines/channels/SendChannel;

    const/4 v1, 0x1

    const/4 v9, 0x0

    invoke-static {v0, v9, v1, v9}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 221
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/core/BytePacketBuilder;

    .end local v5    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 222
    :cond_4
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->this$0:Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    invoke-static {v0}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->access$getFiltered$p(Lio/ktor/websocket/DefaultWebSocketSessionImpl;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v5, v1, v5}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 224
    iget-boolean v0, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_6

    .line 226
    .end local v4    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->this$0:Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    check-cast v0, Lio/ktor/websocket/WebSocketSession;

    new-instance v1, Lio/ktor/websocket/CloseReason;

    sget-object v4, Lio/ktor/websocket/CloseReason$Codes;->CLOSED_ABNORMALLY:Lio/ktor/websocket/CloseReason$Codes;

    invoke-direct {v1, v4, v3}, Lio/ktor/websocket/CloseReason;-><init>(Lio/ktor/websocket/CloseReason$Codes;Ljava/lang/String;)V

    move-object v3, v6

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v8, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$1:Ljava/lang/Object;

    iput-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$2:Ljava/lang/Object;

    iput-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$3:Ljava/lang/Object;

    iput-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$4:Ljava/lang/Object;

    iput-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$5:Ljava/lang/Object;

    iput-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$6:Ljava/lang/Object;

    iput-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$7:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->label:I

    invoke-static {v0, v1, v3}, Lio/ktor/websocket/WebSocketSessionKt;->close(Lio/ktor/websocket/WebSocketSession;Lio/ktor/websocket/CloseReason;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_5

    .line 161
    return-object v2

    .line 226
    :cond_5
    move-object v0, v6

    move-object v1, v7

    move-object v3, v8

    .line 178
    .end local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .end local v7    # "$result":Ljava/lang/Object;
    .local v0, "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .local v1, "$result":Ljava/lang/Object;
    :goto_4
    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    .end local v0    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .end local v1    # "$result":Ljava/lang/Object;
    .restart local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .restart local v7    # "$result":Ljava/lang/Object;
    :cond_6
    return-object v8

    .line 216
    .restart local v4    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v5    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catchall_5
    move-exception v0

    move-object v8, v4

    move-object v1, v7

    goto/16 :goto_10

    .line 215
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v8, v4

    move-object v0, v6

    goto/16 :goto_12

    .line 355
    .restart local v9    # "$i$f$consume":I
    .restart local v10    # "$i$f$consumeEach":I
    :catchall_6
    move-exception v0

    move-object v12, v13

    .local v12, "cause$iv$iv":Ljava/lang/Throwable;
    move-object v13, v1

    move-object v1, v2

    .local v13, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    goto/16 :goto_f

    .line 178
    .end local v4    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v5    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v9    # "$i$f$consume":I
    .end local v10    # "$i$f$consumeEach":I
    .end local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v0, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .local v1, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v7, "frame":Lio/ktor/websocket/Frame;
    .restart local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v13, "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v14    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v15    # "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v16    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    .restart local v17    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v18    # "$i$f$consume":I
    .restart local v19    # "$i$f$consumeEach":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_7
    :try_start_e
    instance-of v4, v7, Lio/ktor/websocket/Frame$Pong;

    if-eqz v4, :cond_a

    iget-object v4, v12, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->pinger:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/SendChannel;

    if-eqz v4, :cond_9

    iput-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    iput-object v15, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$1:Ljava/lang/Object;

    iput-object v14, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$2:Ljava/lang/Object;

    iput-object v8, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$3:Ljava/lang/Object;

    iput-object v12, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$4:Ljava/lang/Object;

    iput-object v11, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$5:Ljava/lang/Object;

    iput-object v1, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$6:Ljava/lang/Object;

    iput-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$7:Ljava/lang/Object;

    const/4 v9, 0x4

    iput v9, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->label:I

    invoke-interface {v4, v7, v6}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_f

    .end local v7    # "frame":Lio/ktor/websocket/Frame;
    if-ne v4, v2, :cond_8

    .line 161
    return-object v2

    .line 178
    :cond_8
    move-object/from16 v7, p1

    move-object v4, v8

    move-object v8, v11

    move-object v11, v12

    move-object v12, v13

    move/from16 v9, v18

    move/from16 v10, v19

    move-object v13, v1

    move-object v1, v2

    move-object v2, v5

    move-object v5, v14

    .end local v1    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v14    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v18    # "$i$f$consume":I
    .end local v19    # "$i$f$consumeEach":I
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v4    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v5    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v7, "$result":Ljava/lang/Object;
    .restart local v9    # "$i$f$consume":I
    .restart local v10    # "$i$f$consumeEach":I
    .restart local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v13, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :goto_5
    :try_start_f
    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-object v14, v5

    move-object v5, v2

    move-object v2, v1

    move-object v1, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v8

    move-object v8, v4

    move/from16 v4, v17

    goto :goto_6

    .end local v4    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v5    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v9    # "$i$f$consume":I
    .end local v10    # "$i$f$consumeEach":I
    .end local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v1    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v7, "frame":Lio/ktor/websocket/Frame;
    .restart local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v13, "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v14    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v18    # "$i$f$consume":I
    .restart local v19    # "$i$f$consumeEach":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_9
    move-object/from16 v7, p1

    move/from16 v4, v17

    move/from16 v9, v18

    move/from16 v10, v19

    .end local v17    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v18    # "$i$f$consume":I
    .end local v19    # "$i$f$consumeEach":I
    .end local p1    # "$result":Ljava/lang/Object;
    .local v4, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v7, "$result":Ljava/lang/Object;
    .restart local v9    # "$i$f$consume":I
    .restart local v10    # "$i$f$consumeEach":I
    :goto_6
    move/from16 v16, v4

    move-object v4, v15

    move-object v15, v5

    move-object v5, v14

    move-object v14, v13

    move-object v13, v1

    move-object v1, v2

    move-object/from16 v33, v12

    move v12, v10

    move-object/from16 v10, v33

    goto/16 :goto_d

    .line 179
    .end local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v9    # "$i$f$consume":I
    .end local v10    # "$i$f$consumeEach":I
    .local v7, "frame":Lio/ktor/websocket/Frame;
    .restart local v17    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v18    # "$i$f$consume":I
    .restart local v19    # "$i$f$consumeEach":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_a
    :try_start_10
    instance-of v4, v7, Lio/ktor/websocket/Frame$Ping;

    if-eqz v4, :cond_c

    iput-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    iput-object v15, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$1:Ljava/lang/Object;

    iput-object v14, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$2:Ljava/lang/Object;

    iput-object v8, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$3:Ljava/lang/Object;

    iput-object v12, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$4:Ljava/lang/Object;

    iput-object v11, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$5:Ljava/lang/Object;

    iput-object v1, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$6:Ljava/lang/Object;

    iput-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$7:Ljava/lang/Object;

    const/4 v4, 0x5

    iput v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->label:I

    invoke-interface {v11, v7, v6}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v7    # "frame":Lio/ktor/websocket/Frame;
    if-ne v4, v2, :cond_b

    .line 161
    return-object v2

    .line 179
    :cond_b
    move-object/from16 v7, p1

    move/from16 v4, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move-object/from16 v33, v1

    move-object v1, v0

    move/from16 v0, v16

    move-object/from16 v16, v14

    move-object v14, v8

    move-object v8, v11

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v13, v33

    .end local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v17    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v18    # "$i$f$consume":I
    .end local v19    # "$i$f$consumeEach":I
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    .local v1, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .restart local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v7, "$result":Ljava/lang/Object;
    .restart local v9    # "$i$f$consume":I
    .restart local v10    # "$i$f$consumeEach":I
    .restart local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v13, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v14, "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v16, "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_7
    move-object v0, v1

    move-object v1, v2

    move-object/from16 v33, v16

    move/from16 v16, v4

    move-object v4, v15

    move-object v15, v5

    move-object/from16 v5, v33

    move-object/from16 v34, v11

    move-object v11, v8

    move-object v8, v14

    move-object v14, v12

    move v12, v10

    move-object/from16 v10, v34

    goto/16 :goto_d

    .line 181
    .end local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v9    # "$i$f$consume":I
    .end local v10    # "$i$f$consumeEach":I
    .end local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v0, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .local v1, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v7, "frame":Lio/ktor/websocket/Frame;
    .restart local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v13, "cause$iv$iv":Ljava/lang/Throwable;
    .local v14, "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v16, "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    .restart local v17    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v18    # "$i$f$consume":I
    .restart local v19    # "$i$f$consumeEach":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_c
    iget-object v4, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/core/BytePacketBuilder;

    iput-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    iput-object v15, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$1:Ljava/lang/Object;

    iput-object v14, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$2:Ljava/lang/Object;

    iput-object v8, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$3:Ljava/lang/Object;

    iput-object v12, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$4:Ljava/lang/Object;

    iput-object v11, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$5:Ljava/lang/Object;

    iput-object v1, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$6:Ljava/lang/Object;

    iput-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$7:Ljava/lang/Object;

    iput-object v7, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$8:Ljava/lang/Object;

    const/4 v9, 0x6

    iput v9, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->label:I

    invoke-static {v12, v4, v7, v6}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->access$checkMaxFrameSize(Lio/ktor/websocket/DefaultWebSocketSessionImpl;Lio/ktor/utils/io/core/BytePacketBuilder;Lio/ktor/websocket/Frame;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_f

    if-ne v4, v2, :cond_d

    .line 161
    return-object v2

    .line 181
    :cond_d
    move-object v4, v8

    move/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move-object/from16 v33, v7

    move-object/from16 v7, p1

    move-object/from16 p1, v12

    move-object v12, v13

    move-object v13, v1

    move-object v1, v0

    move-object v0, v15

    move-object v15, v11

    move-object v11, v5

    move-object/from16 v5, v33

    .line 183
    .end local v15    # "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v17    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v18    # "$i$f$consume":I
    .end local v19    # "$i$f$consumeEach":I
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v1, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .local v4, "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v5, "frame":Lio/ktor/websocket/Frame;
    .local v7, "$result":Ljava/lang/Object;
    .local v8, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v9    # "$i$f$consume":I
    .restart local v10    # "$i$f$consumeEach":I
    .restart local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v13, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :goto_8
    :try_start_11
    invoke-virtual {v5}, Lio/ktor/websocket/Frame;->getFin()Z

    move-result v17
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    if-nez v17, :cond_10

    .line 184
    move-object/from16 v17, v7

    .end local v7    # "$result":Ljava/lang/Object;
    .local v17, "$result":Ljava/lang/Object;
    :try_start_12
    iget-object v7, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    if-nez v7, :cond_e

    .line 185
    :try_start_13
    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    goto :goto_9

    .line 355
    .end local v0    # "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v1    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .end local v5    # "frame":Lio/ktor/websocket/Frame;
    .end local v8    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v16    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    :catchall_7
    move-exception v0

    move-object v1, v2

    move-object v5, v14

    move-object/from16 v7, v17

    goto/16 :goto_f

    .line 187
    .restart local v0    # "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v1    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .restart local v5    # "frame":Lio/ktor/websocket/Frame;
    .restart local v8    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v16    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    :cond_e
    :goto_9
    :try_start_14
    iget-object v7, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v7, :cond_f

    .line 188
    new-instance v7, Lio/ktor/utils/io/core/BytePacketBuilder;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    move/from16 v18, v8

    move/from16 v19, v9

    const/4 v8, 0x1

    const/4 v9, 0x0

    .end local v8    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v9    # "$i$f$consume":I
    .local v18, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v19, "$i$f$consume":I
    :try_start_15
    invoke-direct {v7, v9, v8, v9}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v7, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_a

    .line 187
    .end local v18    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v19    # "$i$f$consume":I
    .restart local v8    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v9    # "$i$f$consume":I
    :cond_f
    move/from16 v18, v8

    move/from16 v19, v9

    .line 191
    .end local v8    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v9    # "$i$f$consume":I
    .restart local v18    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v19    # "$i$f$consume":I
    :goto_a
    iget-object v7, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v20, v7

    check-cast v20, Lio/ktor/utils/io/core/Output;

    invoke-virtual {v5}, Lio/ktor/websocket/Frame;->getData()[B

    move-result-object v21

    const/16 v24, 0x6

    const/16 v25, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v20 .. v25}, Lio/ktor/utils/io/core/OutputKt;->writeFully$default(Lio/ktor/utils/io/core/Output;[BIIILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 192
    .end local v5    # "frame":Lio/ktor/websocket/Frame;
    move-object v8, v4

    move-object v5, v14

    move-object/from16 v7, v17

    move/from16 v16, v18

    move/from16 v9, v19

    move-object v4, v0

    move-object v0, v1

    move-object v1, v2

    move-object v14, v12

    move v12, v10

    move-object/from16 v10, p1

    move-object/from16 v33, v15

    move-object v15, v11

    move-object/from16 v11, v33

    goto/16 :goto_d

    .line 355
    .end local v0    # "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v1    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .end local v16    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    .end local v18    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :catchall_8
    move-exception v0

    move-object v1, v2

    move-object v5, v14

    move-object/from16 v7, v17

    move/from16 v9, v19

    goto/16 :goto_f

    .end local v19    # "$i$f$consume":I
    .restart local v9    # "$i$f$consume":I
    :catchall_9
    move-exception v0

    move/from16 v19, v9

    move-object v1, v2

    move-object v5, v14

    move-object/from16 v7, v17

    .end local v9    # "$i$f$consume":I
    .restart local v19    # "$i$f$consume":I
    goto/16 :goto_f

    .line 195
    .end local v17    # "$result":Ljava/lang/Object;
    .end local v19    # "$i$f$consume":I
    .restart local v0    # "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v1    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .restart local v5    # "frame":Lio/ktor/websocket/Frame;
    .restart local v7    # "$result":Ljava/lang/Object;
    .restart local v8    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v9    # "$i$f$consume":I
    .restart local v16    # "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    :cond_10
    move-object/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    .end local v7    # "$result":Ljava/lang/Object;
    .end local v8    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v9    # "$i$f$consume":I
    .restart local v17    # "$result":Ljava/lang/Object;
    .restart local v18    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v19    # "$i$f$consume":I
    :try_start_16
    iget-object v7, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v7, :cond_12

    .line 196
    invoke-static/range {p1 .. p1}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->access$getFiltered$p(Lio/ktor/websocket/DefaultWebSocketSessionImpl;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v7

    move-object/from16 v8, p1

    invoke-static {v8, v5}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->access$processIncomingExtensions(Lio/ktor/websocket/DefaultWebSocketSessionImpl;Lio/ktor/websocket/Frame;)Lio/ktor/websocket/Frame;

    move-result-object v9

    iput-object v1, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    iput-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$1:Ljava/lang/Object;

    iput-object v14, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$2:Ljava/lang/Object;

    iput-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$3:Ljava/lang/Object;

    iput-object v8, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$4:Ljava/lang/Object;

    iput-object v15, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$5:Ljava/lang/Object;

    iput-object v13, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$6:Ljava/lang/Object;

    iput-object v11, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$7:Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    move/from16 p1, v10

    const/4 v10, 0x0

    .end local v10    # "$i$f$consumeEach":I
    .local p1, "$i$f$consumeEach":I
    :try_start_17
    iput-object v10, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$8:Ljava/lang/Object;

    const/4 v10, 0x7

    iput v10, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->label:I

    invoke-interface {v7, v9, v6}, Lkotlinx/coroutines/channels/Channel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    .end local v5    # "frame":Lio/ktor/websocket/Frame;
    if-ne v7, v2, :cond_11

    .line 161
    return-object v2

    .line 196
    :cond_11
    move/from16 v10, p1

    move-object v5, v11

    move-object/from16 v7, v17

    move/from16 v9, v19

    move-object v11, v8

    move-object v8, v15

    move-object v15, v14

    move-object v14, v4

    move/from16 v4, v18

    move/from16 v33, v16

    move-object/from16 v16, v0

    move/from16 v0, v33

    .line 197
    .end local v17    # "$result":Ljava/lang/Object;
    .end local v18    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v19    # "$i$f$consume":I
    .end local p1    # "$i$f$consumeEach":I
    .local v0, "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    .local v4, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v7    # "$result":Ljava/lang/Object;
    .restart local v9    # "$i$f$consume":I
    .restart local v10    # "$i$f$consumeEach":I
    .local v14, "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v15, "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v16, "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_b
    move-object v0, v1

    move-object v1, v2

    move-object/from16 v33, v16

    move/from16 v16, v4

    move-object/from16 v4, v33

    move-object/from16 v34, v15

    move-object v15, v5

    move-object/from16 v5, v34

    move-object/from16 v35, v11

    move-object v11, v8

    move-object v8, v14

    move-object v14, v12

    move v12, v10

    move-object/from16 v10, v35

    goto/16 :goto_d

    .line 200
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$f$consume":I
    .end local v15    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v0, "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v4, "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v5    # "frame":Lio/ktor/websocket/Frame;
    .local v14, "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v16, "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    .restart local v17    # "$result":Ljava/lang/Object;
    .restart local v18    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v19    # "$i$f$consume":I
    :cond_12
    move-object/from16 v8, p1

    move/from16 p1, v10

    .end local v10    # "$i$f$consumeEach":I
    .restart local p1    # "$i$f$consumeEach":I
    iget-object v7, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v20, v7

    check-cast v20, Lio/ktor/utils/io/core/Output;

    invoke-virtual {v5}, Lio/ktor/websocket/Frame;->getData()[B

    move-result-object v21

    const/16 v24, 0x6

    const/16 v25, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v20 .. v25}, Lio/ktor/utils/io/core/OutputKt;->writeFully$default(Lio/ktor/utils/io/core/Output;[BIIILjava/lang/Object;)V

    .line 201
    .end local v5    # "frame":Lio/ktor/websocket/Frame;
    sget-object v26, Lio/ktor/websocket/Frame;->Companion:Lio/ktor/websocket/Frame$Companion;

    .line 202
    nop

    .line 203
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lio/ktor/websocket/Frame;

    invoke-virtual {v5}, Lio/ktor/websocket/Frame;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v28

    .line 204
    iget-object v5, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-virtual {v5}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v5, v7, v9, v10}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object v29

    .line 205
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lio/ktor/websocket/Frame;

    invoke-virtual {v5}, Lio/ktor/websocket/Frame;->getRsv1()Z

    move-result v30

    .line 206
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lio/ktor/websocket/Frame;

    invoke-virtual {v5}, Lio/ktor/websocket/Frame;->getRsv2()Z

    move-result v31

    .line 207
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lio/ktor/websocket/Frame;

    invoke-virtual {v5}, Lio/ktor/websocket/Frame;->getRsv3()Z

    move-result v32

    .line 201
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v32}, Lio/ktor/websocket/Frame$Companion;->byType(ZLio/ktor/websocket/FrameType;[BZZZ)Lio/ktor/websocket/Frame;

    move-result-object v5

    .line 210
    .local v5, "defragmented":Lio/ktor/websocket/Frame;
    const/4 v7, 0x0

    iput-object v7, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 211
    invoke-static {v8}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->access$getFiltered$p(Lio/ktor/websocket/DefaultWebSocketSessionImpl;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v7

    invoke-static {v8, v5}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->access$processIncomingExtensions(Lio/ktor/websocket/DefaultWebSocketSessionImpl;Lio/ktor/websocket/Frame;)Lio/ktor/websocket/Frame;

    move-result-object v9

    iput-object v1, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    iput-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$1:Ljava/lang/Object;

    iput-object v14, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$2:Ljava/lang/Object;

    iput-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$3:Ljava/lang/Object;

    iput-object v8, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$4:Ljava/lang/Object;

    iput-object v15, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$5:Ljava/lang/Object;

    iput-object v13, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$6:Ljava/lang/Object;

    iput-object v11, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$7:Ljava/lang/Object;

    const/4 v10, 0x0

    iput-object v10, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$8:Ljava/lang/Object;

    const/16 v10, 0x8

    iput v10, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->label:I

    invoke-interface {v7, v9, v6}, Lkotlinx/coroutines/channels/Channel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .end local v5    # "defragmented":Lio/ktor/websocket/Frame;
    if-ne v7, v2, :cond_13

    .line 161
    return-object v2

    .line 211
    :cond_13
    move/from16 v10, p1

    move-object v5, v14

    move-object v14, v15

    move-object/from16 v7, v17

    move/from16 v9, v19

    move-object v15, v8

    move/from16 v8, v18

    move/from16 v33, v16

    move-object/from16 v16, v0

    move/from16 v0, v33

    .line 214
    .end local v14    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v17    # "$result":Ljava/lang/Object;
    .end local v18    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v19    # "$i$f$consume":I
    .end local p1    # "$i$f$consumeEach":I
    .local v0, "$i$a$-consumeEach-DefaultWebSocketSessionImpl$runIncomingProcessor$1$1":I
    .local v5, "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "$result":Ljava/lang/Object;
    .restart local v8    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v9    # "$i$f$consume":I
    .restart local v10    # "$i$f$consumeEach":I
    .local v16, "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_c
    move-object v0, v1

    move-object v1, v2

    move/from16 v33, v8

    move-object v8, v4

    move-object/from16 v4, v16

    move/from16 v16, v33

    move-object/from16 v34, v12

    move v12, v10

    move-object v10, v15

    move-object v15, v11

    move-object v11, v14

    move-object/from16 v14, v34

    .line 352
    .end local v1    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .end local v10    # "$i$f$consumeEach":I
    .local v0, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .local v4, "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v8, "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v12, "$i$f$consumeEach":I
    .local v14, "cause$iv$iv":Ljava/lang/Throwable;
    .local v16, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :goto_d
    move-object/from16 v2, p0

    goto/16 :goto_0

    .line 355
    .end local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .end local v5    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v9    # "$i$f$consume":I
    .end local v16    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v4, "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v12, "cause$iv$iv":Ljava/lang/Throwable;
    .local v14, "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v17    # "$result":Ljava/lang/Object;
    .restart local v19    # "$i$f$consume":I
    .restart local p1    # "$i$f$consumeEach":I
    :catchall_a
    move-exception v0

    move/from16 v10, p1

    move-object v1, v2

    move-object v5, v14

    move-object/from16 v7, v17

    move/from16 v9, v19

    goto/16 :goto_f

    .end local p1    # "$i$f$consumeEach":I
    .restart local v10    # "$i$f$consumeEach":I
    :catchall_b
    move-exception v0

    move/from16 p1, v10

    move-object v1, v2

    move-object v5, v14

    move-object/from16 v7, v17

    move/from16 v9, v19

    .end local v10    # "$i$f$consumeEach":I
    .restart local p1    # "$i$f$consumeEach":I
    goto/16 :goto_f

    .end local v17    # "$result":Ljava/lang/Object;
    .end local v19    # "$i$f$consume":I
    .end local p1    # "$i$f$consumeEach":I
    .restart local v7    # "$result":Ljava/lang/Object;
    .restart local v9    # "$i$f$consume":I
    .restart local v10    # "$i$f$consumeEach":I
    :catchall_c
    move-exception v0

    move-object/from16 v17, v7

    move/from16 v19, v9

    move/from16 p1, v10

    move-object v1, v2

    move-object v5, v14

    .end local v7    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$f$consume":I
    .end local v10    # "$i$f$consumeEach":I
    .restart local v17    # "$result":Ljava/lang/Object;
    .restart local v19    # "$i$f$consume":I
    .restart local p1    # "$i$f$consumeEach":I
    goto/16 :goto_f

    .end local v4    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v17    # "$result":Ljava/lang/Object;
    .end local v19    # "$i$f$consume":I
    .local v1, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v10    # "$i$f$consumeEach":I
    .local v13, "cause$iv$iv":Ljava/lang/Throwable;
    .local v18, "$i$f$consume":I
    .local p1, "$result":Ljava/lang/Object;
    :catchall_d
    move-exception v0

    move/from16 v19, v10

    move-object/from16 v7, p1

    move-object v4, v8

    move-object v12, v13

    move-object v5, v14

    move/from16 v9, v18

    move-object v13, v1

    move-object v1, v2

    .end local v10    # "$i$f$consumeEach":I
    .local v19, "$i$f$consumeEach":I
    goto/16 :goto_f

    .line 352
    .end local v18    # "$i$f$consume":I
    .end local v19    # "$i$f$consumeEach":I
    .restart local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .local v4, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v9    # "$i$f$consume":I
    .restart local v10    # "$i$f$consumeEach":I
    .local v15, "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_14
    move/from16 v17, v4

    move/from16 v18, v9

    move/from16 v19, v10

    .line 354
    .end local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .end local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v9    # "$i$f$consume":I
    .end local v10    # "$i$f$consumeEach":I
    .end local v15    # "firstFrame":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v17, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v18    # "$i$f$consume":I
    .restart local v19    # "$i$f$consumeEach":I
    nop

    .end local v17    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :try_start_18
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    .line 351
    nop

    .line 353
    :try_start_19
    invoke-static {v1, v13}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V
    :try_end_19
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    .line 351
    .end local v1    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v13    # "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .line 354
    .end local v18    # "$i$f$consume":I
    nop

    .line 220
    .end local v19    # "$i$f$consumeEach":I
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->$ponger:Lkotlinx/coroutines/channels/SendChannel;

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 221
    iget-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/core/BytePacketBuilder;

    .end local v14    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 222
    :cond_15
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->this$0:Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    invoke-static {v0}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->access$getFiltered$p(Lio/ktor/websocket/DefaultWebSocketSessionImpl;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 224
    iget-boolean v0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_17

    .line 226
    .end local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->this$0:Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    check-cast v0, Lio/ktor/websocket/WebSocketSession;

    new-instance v1, Lio/ktor/websocket/CloseReason;

    sget-object v4, Lio/ktor/websocket/CloseReason$Codes;->CLOSED_ABNORMALLY:Lio/ktor/websocket/CloseReason$Codes;

    invoke-direct {v1, v4, v3}, Lio/ktor/websocket/CloseReason;-><init>(Lio/ktor/websocket/CloseReason$Codes;Ljava/lang/String;)V

    move-object v3, v6

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x0

    iput-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    iput-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$1:Ljava/lang/Object;

    iput-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$2:Ljava/lang/Object;

    iput-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$3:Ljava/lang/Object;

    iput-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$4:Ljava/lang/Object;

    iput-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$5:Ljava/lang/Object;

    iput-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$6:Ljava/lang/Object;

    iput-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$7:Ljava/lang/Object;

    const/16 v4, 0x9

    iput v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->label:I

    invoke-static {v0, v1, v3}, Lio/ktor/websocket/WebSocketSessionKt;->close(Lio/ktor/websocket/WebSocketSession;Lio/ktor/websocket/CloseReason;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_16

    .line 161
    return-object v2

    .line 226
    :cond_16
    move-object/from16 v1, p1

    move-object v0, v6

    .line 228
    .end local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .local v1, "$result":Ljava/lang/Object;
    :goto_e
    move-object v6, v0

    goto/16 :goto_13

    .line 224
    .end local v0    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .end local v1    # "$result":Ljava/lang/Object;
    .restart local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .restart local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_17
    move-object/from16 v1, p1

    goto/16 :goto_13

    .line 216
    .restart local v14    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catchall_e
    move-exception v0

    move-object/from16 v1, p1

    move-object v5, v14

    goto/16 :goto_10

    .line 215
    :catch_1
    move-exception v0

    move-object/from16 v7, p1

    move-object v1, v2

    move-object v0, v6

    move-object v5, v14

    goto/16 :goto_12

    .line 355
    .local v1, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v13    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v18    # "$i$f$consume":I
    .restart local v19    # "$i$f$consumeEach":I
    :catchall_f
    move-exception v0

    move-object/from16 v7, p1

    move-object v4, v8

    move-object v12, v13

    move-object v5, v14

    move/from16 v9, v18

    move/from16 v10, v19

    move-object v13, v1

    move-object v1, v2

    goto :goto_f

    .end local v18    # "$i$f$consume":I
    .end local v19    # "$i$f$consumeEach":I
    .restart local v9    # "$i$f$consume":I
    .restart local v10    # "$i$f$consumeEach":I
    :catchall_10
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v7, p1

    move-object v4, v8

    move-object v12, v13

    move-object v5, v14

    move-object v13, v1

    move-object v1, v2

    .end local v9    # "$i$f$consume":I
    .end local v10    # "$i$f$consumeEach":I
    .restart local v18    # "$i$f$consume":I
    .restart local v19    # "$i$f$consumeEach":I
    goto :goto_f

    .end local v1    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v18    # "$i$f$consume":I
    .end local v19    # "$i$f$consumeEach":I
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v5    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "$result":Ljava/lang/Object;
    .restart local v9    # "$i$f$consume":I
    .local v12, "$i$f$consumeEach":I
    .local v13, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v14, "cause$iv$iv":Ljava/lang/Throwable;
    :catchall_11
    move-exception v0

    move-object v4, v8

    move v10, v12

    move-object v12, v14

    .line 356
    .end local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v14    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v0, "e$iv$iv":Ljava/lang/Throwable;
    .local v4, "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v10    # "$i$f$consumeEach":I
    .local v12, "cause$iv$iv":Ljava/lang/Throwable;
    :goto_f
    move-object v2, v0

    .line 357
    .end local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v2, "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .end local v2    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v4    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v5    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$f$consume":I
    .end local v10    # "$i$f$consumeEach":I
    .end local v13    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :try_start_1a
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_12

    .line 353
    .end local v0    # "e$iv$iv":Ljava/lang/Throwable;
    .restart local v2    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v4    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v5    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .restart local v7    # "$result":Ljava/lang/Object;
    .restart local v9    # "$i$f$consume":I
    .restart local v10    # "$i$f$consumeEach":I
    .restart local v13    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_12
    move-exception v0

    move-object v8, v0

    :try_start_1b
    invoke-static {v13, v2}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .end local v4    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v5    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .end local v7    # "$result":Ljava/lang/Object;
    throw v8
    :try_end_1b
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_1b .. :try_end_1b} :catch_2
    .catchall {:try_start_1b .. :try_end_1b} :catchall_13

    .line 216
    .end local v2    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v9    # "$i$f$consume":I
    .end local v10    # "$i$f$consumeEach":I
    .end local v13    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v4    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v5    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .restart local v7    # "$result":Ljava/lang/Object;
    :catchall_13
    move-exception v0

    move-object v2, v1

    move-object v8, v4

    move-object v1, v7

    goto :goto_10

    .line 215
    :catch_2
    move-exception v0

    move-object v8, v4

    move-object v0, v6

    goto/16 :goto_12

    .line 216
    .end local v4    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    :catchall_14
    move-exception v0

    move-object v2, v1

    move-object v1, v7

    .line 217
    .end local v7    # "$result":Ljava/lang/Object;
    .local v0, "cause":Ljava/lang/Throwable;
    .local v1, "$result":Ljava/lang/Object;
    :goto_10
    :try_start_1c
    iget-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->$ponger:Lkotlinx/coroutines/channels/SendChannel;

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-static {v4, v9, v7, v9}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 218
    iget-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->this$0:Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    invoke-static {v4}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->access$getFiltered$p(Lio/ktor/websocket/DefaultWebSocketSessionImpl;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v4

    invoke-interface {v4, v0}, Lkotlinx/coroutines/channels/Channel;->close(Ljava/lang/Throwable;)Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_15

    .line 220
    nop

    .end local v0    # "cause":Ljava/lang/Throwable;
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->$ponger:Lkotlinx/coroutines/channels/SendChannel;

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static {v0, v7, v4, v7}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 221
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/core/BytePacketBuilder;

    .end local v5    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 222
    :cond_18
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->this$0:Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    invoke-static {v0}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->access$getFiltered$p(Lio/ktor/websocket/DefaultWebSocketSessionImpl;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 224
    iget-boolean v0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_20

    .line 226
    .end local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->this$0:Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    check-cast v0, Lio/ktor/websocket/WebSocketSession;

    new-instance v4, Lio/ktor/websocket/CloseReason;

    sget-object v5, Lio/ktor/websocket/CloseReason$Codes;->CLOSED_ABNORMALLY:Lio/ktor/websocket/CloseReason$Codes;

    invoke-direct {v4, v5, v3}, Lio/ktor/websocket/CloseReason;-><init>(Lio/ktor/websocket/CloseReason$Codes;Ljava/lang/String;)V

    move-object v3, v6

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x0

    iput-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    iput-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$1:Ljava/lang/Object;

    iput-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$2:Ljava/lang/Object;

    iput-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$3:Ljava/lang/Object;

    iput-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$4:Ljava/lang/Object;

    iput-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$5:Ljava/lang/Object;

    iput-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$6:Ljava/lang/Object;

    iput-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$7:Ljava/lang/Object;

    iput-object v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$8:Ljava/lang/Object;

    const/16 v5, 0xb

    iput v5, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->label:I

    invoke-static {v0, v4, v3}, Lio/ktor/websocket/WebSocketSessionKt;->close(Lio/ktor/websocket/WebSocketSession;Lio/ktor/websocket/CloseReason;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_19

    .line 161
    return-object v2

    .line 226
    :cond_19
    move-object v0, v6

    goto/16 :goto_e

    .line 220
    .restart local v5    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    :catchall_15
    move-exception v0

    iget-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->$ponger:Lkotlinx/coroutines/channels/SendChannel;

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-static {v4, v9, v7, v9}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 221
    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/core/BytePacketBuilder;

    .end local v5    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 222
    :cond_1a
    iget-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->this$0:Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    invoke-static {v4}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->access$getFiltered$p(Lio/ktor/websocket/DefaultWebSocketSessionImpl;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/channels/SendChannel;

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static {v4, v7, v5, v7}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 224
    iget-boolean v4, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v4, :cond_1c

    .line 226
    .end local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v4, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->this$0:Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    check-cast v4, Lio/ktor/websocket/WebSocketSession;

    new-instance v5, Lio/ktor/websocket/CloseReason;

    sget-object v7, Lio/ktor/websocket/CloseReason$Codes;->CLOSED_ABNORMALLY:Lio/ktor/websocket/CloseReason$Codes;

    invoke-direct {v5, v7, v3}, Lio/ktor/websocket/CloseReason;-><init>(Lio/ktor/websocket/CloseReason$Codes;Ljava/lang/String;)V

    move-object v3, v6

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v0, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$1:Ljava/lang/Object;

    iput-object v7, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$2:Ljava/lang/Object;

    iput-object v7, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$3:Ljava/lang/Object;

    iput-object v7, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$4:Ljava/lang/Object;

    iput-object v7, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$5:Ljava/lang/Object;

    iput-object v7, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$6:Ljava/lang/Object;

    iput-object v7, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$7:Ljava/lang/Object;

    iput-object v7, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$8:Ljava/lang/Object;

    const/16 v7, 0xc

    iput v7, v6, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->label:I

    invoke-static {v4, v5, v3}, Lio/ktor/websocket/WebSocketSessionKt;->close(Lio/ktor/websocket/WebSocketSession;Lio/ktor/websocket/CloseReason;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1b

    .line 161
    return-object v2

    .line 226
    :cond_1b
    move-object v3, v0

    move-object v0, v6

    .line 229
    .end local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .local v0, "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    :goto_11
    move-object v6, v0

    move-object v0, v3

    .end local v0    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .restart local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    :cond_1c
    throw v0

    .line 215
    .end local v1    # "$result":Ljava/lang/Object;
    .restart local v5    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "$result":Ljava/lang/Object;
    .restart local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    :catch_3
    move-exception v0

    move-object v0, v6

    .line 220
    .end local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .restart local v0    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    :goto_12
    iget-object v2, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->$ponger:Lkotlinx/coroutines/channels/SendChannel;

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v6}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 221
    iget-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/core/BytePacketBuilder;

    .end local v5    # "frameBody":Lkotlin/jvm/internal/Ref$ObjectRef;
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 222
    :cond_1d
    iget-object v2, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->this$0:Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    invoke-static {v2}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;->access$getFiltered$p(Lio/ktor/websocket/DefaultWebSocketSessionImpl;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/channels/SendChannel;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 224
    iget-boolean v2, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v2, :cond_1f

    .line 226
    .end local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v2, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->this$0:Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    check-cast v2, Lio/ktor/websocket/WebSocketSession;

    new-instance v4, Lio/ktor/websocket/CloseReason;

    sget-object v5, Lio/ktor/websocket/CloseReason$Codes;->CLOSED_ABNORMALLY:Lio/ktor/websocket/CloseReason$Codes;

    invoke-direct {v4, v5, v3}, Lio/ktor/websocket/CloseReason;-><init>(Lio/ktor/websocket/CloseReason$Codes;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x0

    iput-object v5, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$3:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$4:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$5:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$6:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$7:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->L$8:Ljava/lang/Object;

    const/16 v5, 0xa

    iput v5, v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;->label:I

    invoke-static {v2, v4, v3}, Lio/ktor/websocket/WebSocketSessionKt;->close(Lio/ktor/websocket/WebSocketSession;Lio/ktor/websocket/CloseReason;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1e

    .line 161
    return-object v1

    .line 226
    :cond_1e
    move-object v1, v7

    goto/16 :goto_e

    .line 224
    .restart local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    :cond_1f
    move-object v6, v0

    move-object v1, v7

    .line 229
    .end local v0    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v8    # "closeFramePresented":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v6    # "this":Lio/ktor/websocket/DefaultWebSocketSessionImpl$runIncomingProcessor$1;
    :cond_20
    :goto_13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
