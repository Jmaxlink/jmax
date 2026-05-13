.class final Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NettyHttp2ApplicationRequest.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;-><init>(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/CoroutineContext;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;Lio/ktor/utils/io/ByteChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ActorScope<",
        "Lio/netty/handler/codec/http2/Http2DataFrame;",
        ">;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/channels/ActorScope;",
        "Lio/netty/handler/codec/http2/Http2DataFrame;"
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
    c = "io.ktor.server.netty.http2.NettyHttp2ApplicationRequest$contentActor$1"
    f = "NettyHttp2ApplicationRequest.kt"
    i = {}
    l = {
        0x3a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;


# direct methods
.method constructor <init>(Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;->this$0:Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;

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

    new-instance v0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;

    iget-object v1, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;->this$0:Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;

    invoke-direct {v0, v1, p2}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;-><init>(Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/channels/ActorScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;->invoke(Lkotlinx/coroutines/channels/ActorScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ActorScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ActorScope<",
            "Lio/netty/handler/codec/http2/Http2DataFrame;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 57
    iget v1, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ActorScope;

    .line 58
    .local v2, "$this$actor":Lkotlinx/coroutines/channels/ActorScope;
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v1, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;->this$0:Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;

    invoke-virtual {v4}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->getContentByteChannel()Lio/ktor/utils/io/ByteChannel;

    move-result-object v4

    check-cast v4, Lio/ktor/utils/io/ByteWriteChannel;

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x1

    iput v6, v1, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;->label:I

    invoke-static {v3, v4, v5}, Lio/ktor/server/netty/http2/HttpFrameAdapterKt;->http2frameLoop(Lkotlinx/coroutines/channels/ReceiveChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$actor":Lkotlinx/coroutines/channels/ActorScope;
    if-ne v2, v0, :cond_0

    .line 57
    return-object v0

    .line 58
    :cond_0
    move-object v0, v1

    .line 59
    .end local v1    # "this":Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;
    .restart local v0    # "this":Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
