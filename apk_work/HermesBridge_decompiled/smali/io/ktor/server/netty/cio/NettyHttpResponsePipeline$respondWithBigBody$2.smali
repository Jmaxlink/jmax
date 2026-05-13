.class final Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NettyHttpResponsePipeline.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->respondWithBigBody(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;Lio/netty/channel/ChannelFuture;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/LookAheadSuspendSession;",
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
        "Lio/ktor/utils/io/LookAheadSuspendSession;"
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
    c = "io.ktor.server.netty.cio.NettyHttpResponsePipeline$respondWithBigBody$2"
    f = "NettyHttpResponsePipeline.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x148,
        0x15c
    }
    m = "invokeSuspend"
    n = {
        "$this$lookAheadSuspend",
        "$this$lookAheadSuspend"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $call:Lio/ktor/server/netty/NettyApplicationCall;

.field final synthetic $channel:Lio/ktor/utils/io/ByteReadChannel;

.field final synthetic $lastFuture:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lio/netty/channel/ChannelFuture;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $shouldFlush:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $unflushedBytes:Lkotlin/jvm/internal/Ref$IntRef;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;


# direct methods
.method constructor <init>(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lkotlin/jvm/internal/Ref$IntRef;Lio/ktor/server/netty/NettyApplicationCall;Lkotlin/jvm/functions/Function2;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lio/ktor/server/netty/NettyApplicationCall;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lio/netty/channel/ChannelFuture;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->this$0:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    iput-object p2, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->$unflushedBytes:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->$call:Lio/ktor/server/netty/NettyApplicationCall;

    iput-object p4, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->$shouldFlush:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->$channel:Lio/ktor/utils/io/ByteReadChannel;

    iput-object p6, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->$lastFuture:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v8, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;

    iget-object v1, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->this$0:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    iget-object v2, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->$unflushedBytes:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v3, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->$call:Lio/ktor/server/netty/NettyApplicationCall;

    iget-object v4, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->$shouldFlush:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->$channel:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v6, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->$lastFuture:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;-><init>(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lkotlin/jvm/internal/Ref$IntRef;Lio/ktor/server/netty/NettyApplicationCall;Lkotlin/jvm/functions/Function2;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v8, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlin/coroutines/Continuation;

    return-object v8
.end method

.method public final invoke(Lio/ktor/utils/io/LookAheadSuspendSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/LookAheadSuspendSession;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/utils/io/LookAheadSuspendSession;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->invoke(Lio/ktor/utils/io/LookAheadSuspendSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 324
    iget v1, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v1, p0

    .local v1, "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v3, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/LookAheadSuspendSession;

    .local v3, "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v1    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;
    .end local v3    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .restart local v1    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/LookAheadSuspendSession;

    .restart local v3    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_1

    .end local v1    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;
    .end local v3    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/LookAheadSuspendSession;

    .line 325
    .restart local v3    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    :goto_0
    nop

    .line 326
    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lio/ktor/utils/io/LookAheadSuspendSession;->request(II)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 327
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    if-nez v5, :cond_2

    .line 328
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->L$0:Ljava/lang/Object;

    iput v4, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->label:I

    invoke-interface {v3, v4, v5}, Lio/ktor/utils/io/LookAheadSuspendSession;->awaitAtLeast(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 324
    return-object v0

    .line 328
    :cond_0
    move-object v9, v0

    move-object v0, p1

    move-object p1, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v9

    .end local v1    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v3, "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;
    .local v4, "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 329
    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    goto :goto_0

    .line 355
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 332
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v4    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    .restart local v1    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;
    .local v3, "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    .restart local v5    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 333
    .local v6, "rc":I
    iget-object v7, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->this$0:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    invoke-static {v7}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->access$getContext$p(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v7

    invoke-interface {v7}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v7

    invoke-interface {v7, v6}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    .line 334
    .local v7, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v8

    .line 335
    .local v8, "idx":I
    invoke-virtual {v7, v8, v5}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 336
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    add-int v5, v8, v6

    invoke-virtual {v7, v5}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 338
    .end local v8    # "idx":I
    invoke-interface {v3, v6}, Lio/ktor/utils/io/LookAheadSuspendSession;->consumed(I)V

    .line 339
    iget-object v5, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->$unflushedBytes:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v8, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->$unflushedBytes:Lkotlin/jvm/internal/Ref$IntRef;

    iget v8, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v8, v6

    iput v8, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 341
    .end local v6    # "rc":I
    iget-object v5, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->$call:Lio/ktor/server/netty/NettyApplicationCall;

    const-string v6, "buf"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v7, v2}, Lio/ktor/server/netty/NettyApplicationCall;->prepareMessage$ktor_server_netty(Lio/netty/buffer/ByteBuf;Z)Ljava/lang/Object;

    move-result-object v5

    .line 343
    .end local v7    # "buf":Lio/netty/buffer/ByteBuf;
    .local v5, "message":Ljava/lang/Object;
    iget-object v6, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->$shouldFlush:Lkotlin/jvm/functions/Function2;

    iget-object v7, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->$channel:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v8, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->$unflushedBytes:Lkotlin/jvm/internal/Ref$IntRef;

    iget v8, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 344
    iget-object v6, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->this$0:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    invoke-static {v6}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->access$getContext$p(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v6

    invoke-interface {v6}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 345
    iget-object v6, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->this$0:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    invoke-static {v6}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->access$getContext$p(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v6

    invoke-interface {v6, v5}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v5

    .line 346
    .local v5, "future":Lio/netty/channel/ChannelFuture;
    iget-object v6, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->this$0:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    sget-object v7, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->isDataNotFlushed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v7, v6, v4, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 347
    iget-object v4, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->$lastFuture:Lkotlin/jvm/internal/Ref$ObjectRef;

    const-string v6, "future"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 348
    move-object v4, v5

    check-cast v4, Lio/netty/util/concurrent/Future;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->L$0:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->label:I

    invoke-static {v4, v6}, Lio/ktor/server/netty/CIOKt;->suspendAwait(Lio/netty/util/concurrent/Future;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v5    # "future":Lio/netty/channel/ChannelFuture;
    if-ne v4, v0, :cond_3

    .line 324
    return-object v0

    .line 349
    :cond_3
    :goto_2
    iget-object v4, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->$unflushedBytes:Lkotlin/jvm/internal/Ref$IntRef;

    iput v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto/16 :goto_0

    .line 351
    .local v5, "message":Ljava/lang/Object;
    :cond_4
    iget-object v6, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->$lastFuture:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->this$0:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    invoke-static {v7}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->access$getContext$p(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v7

    invoke-interface {v7, v5}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v7

    .end local v5    # "message":Ljava/lang/Object;
    const-string v5, "context.write(message)"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 352
    iget-object v5, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;->this$0:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    sget-object v6, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->isDataNotFlushed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v6, v5, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
