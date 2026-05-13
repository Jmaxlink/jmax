.class public final Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;
.super Lio/ktor/server/netty/NettyApplicationResponse;
.source "NettyHttp2ApplicationResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$Http2ResponseHeaders;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001:\u0001.B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000bJ\u000f\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0010\u00a2\u0006\u0002\u0008\u0018J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0017J\u0019\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001fH\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010 J\u0019\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020#H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010$J\u0018\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\'H\u0014J\u0018\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\'2\u0006\u0010)\u001a\u00020*H\u0014J\u0010\u0010+\u001a\u00020\u001a2\u0006\u0010,\u001a\u00020-H\u0014R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006/"
    }
    d2 = {
        "Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;",
        "Lio/ktor/server/netty/NettyApplicationResponse;",
        "call",
        "Lio/ktor/server/netty/NettyApplicationCall;",
        "handler",
        "Lio/ktor/server/netty/http2/NettyHttp2Handler;",
        "context",
        "Lio/netty/channel/ChannelHandlerContext;",
        "engineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "userContext",
        "(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/http2/NettyHttp2Handler;Lio/netty/channel/ChannelHandlerContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V",
        "getHandler",
        "()Lio/ktor/server/netty/http2/NettyHttp2Handler;",
        "headers",
        "Lio/ktor/server/response/ResponseHeaders;",
        "getHeaders",
        "()Lio/ktor/server/response/ResponseHeaders;",
        "responseHeaders",
        "Lio/netty/handler/codec/http2/DefaultHttp2Headers;",
        "responseTrailers",
        "trailers",
        "prepareTrailerMessage",
        "",
        "prepareTrailerMessage$ktor_server_netty",
        "push",
        "",
        "builder",
        "Lio/ktor/server/response/ResponsePushBuilder;",
        "respondOutgoingContent",
        "content",
        "Lio/ktor/http/content/OutgoingContent;",
        "(Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "respondUpgrade",
        "upgrade",
        "Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;",
        "(Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "responseMessage",
        "chunked",
        "",
        "last",
        "data",
        "",
        "setStatus",
        "statusCode",
        "Lio/ktor/http/HttpStatusCode;",
        "Http2ResponseHeaders",
        "ktor-server-netty"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final handler:Lio/ktor/server/netty/http2/NettyHttp2Handler;

.field private final headers:Lio/ktor/server/response/ResponseHeaders;

.field private final responseHeaders:Lio/netty/handler/codec/http2/DefaultHttp2Headers;

.field private final responseTrailers:Lio/netty/handler/codec/http2/DefaultHttp2Headers;

.field private final trailers:Lio/ktor/server/response/ResponseHeaders;


# direct methods
.method public static synthetic $r8$lambda$eP6yO9JG3l2oJ6bYfF8tqWei2qQ(Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;Lio/ktor/server/response/ResponsePushBuilder;)V
    .locals 0

    invoke-static {p0, p1}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;->push$lambda$2(Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;Lio/ktor/server/response/ResponsePushBuilder;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/http2/NettyHttp2Handler;Lio/netty/channel/ChannelHandlerContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V
    .locals 4
    .param p1, "call"    # Lio/ktor/server/netty/NettyApplicationCall;
    .param p2, "handler"    # Lio/ktor/server/netty/http2/NettyHttp2Handler;
    .param p3, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p4, "engineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p5, "userContext"    # Lkotlin/coroutines/CoroutineContext;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engineContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userContext"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p3, p4, p5}, Lio/ktor/server/netty/NettyApplicationResponse;-><init>(Lio/ktor/server/netty/NettyApplicationCall;Lio/netty/channel/ChannelHandlerContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V

    .line 18
    iput-object p2, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;->handler:Lio/ktor/server/netty/http2/NettyHttp2Handler;

    .line 24
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;-><init>()V

    move-object v1, v0

    .local v1, "$this$responseHeaders_u24lambda_u240":Lio/netty/handler/codec/http2/DefaultHttp2Headers;
    const/4 v2, 0x0

    .line 25
    .local v2, "$i$a$-apply-NettyHttp2ApplicationResponse$responseHeaders$1":I
    sget-object v3, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v3}, Lio/ktor/http/HttpStatusCode$Companion;->getOK()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    invoke-virtual {v3}, Lio/ktor/http/HttpStatusCode;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->status(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    .line 26
    nop

    .line 24
    .end local v1    # "$this$responseHeaders_u24lambda_u240":Lio/netty/handler/codec/http2/DefaultHttp2Headers;
    .end local v2    # "$i$a$-apply-NettyHttp2ApplicationResponse$responseHeaders$1":I
    iput-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;->responseHeaders:Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    .line 28
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;-><init>()V

    iput-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;->responseTrailers:Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    .line 67
    new-instance v0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$Http2ResponseHeaders;

    iget-object v1, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;->responseHeaders:Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    invoke-direct {v0, v1}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$Http2ResponseHeaders;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2Headers;)V

    check-cast v0, Lio/ktor/server/response/ResponseHeaders;

    iput-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;->headers:Lio/ktor/server/response/ResponseHeaders;

    .line 69
    new-instance v0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$Http2ResponseHeaders;

    iget-object v1, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;->responseTrailers:Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    invoke-direct {v0, v1}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$Http2ResponseHeaders;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2Headers;)V

    check-cast v0, Lio/ktor/server/response/ResponseHeaders;

    iput-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;->trailers:Lio/ktor/server/response/ResponseHeaders;

    .line 16
    return-void
.end method

.method public static final synthetic access$getTrailers$p(Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;)Lio/ktor/server/response/ResponseHeaders;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;

    .line 16
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;->trailers:Lio/ktor/server/response/ResponseHeaders;

    return-object v0
.end method

.method private static final push$lambda$2(Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;Lio/ktor/server/response/ResponsePushBuilder;)V
    .locals 2
    .param p0, "this$0"    # Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;
    .param p1, "$builder"    # Lio/ktor/server/response/ResponsePushBuilder;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;->handler:Lio/ktor/server/netty/http2/NettyHttp2Handler;

    invoke-virtual {p0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;->getContext()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/ktor/server/netty/http2/NettyHttp2Handler;->startHttp2PushPromise$ktor_server_netty(Lio/netty/channel/ChannelHandlerContext;Lio/ktor/server/response/ResponsePushBuilder;)V

    .line 75
    return-void
.end method


# virtual methods
.method public final getHandler()Lio/ktor/server/netty/http2/NettyHttp2Handler;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;->handler:Lio/ktor/server/netty/http2/NettyHttp2Handler;

    return-object v0
.end method

.method public getHeaders()Lio/ktor/server/response/ResponseHeaders;
    .locals 1

    .line 67
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;->headers:Lio/ktor/server/response/ResponseHeaders;

    return-object v0
.end method

.method public prepareTrailerMessage$ktor_server_netty()Ljava/lang/Object;
    .locals 3

    .line 47
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;->responseTrailers:Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;

    iget-object v1, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;->responseTrailers:Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    check-cast v1, Lio/netty/handler/codec/http2/Http2Headers;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;-><init>(Lio/netty/handler/codec/http2/Http2Headers;Z)V

    :goto_0
    return-object v0
.end method

.method public push(Lio/ktor/server/response/ResponsePushBuilder;)V
    .locals 2
    .param p1, "builder"    # Lio/ktor/server/response/ResponsePushBuilder;
    .annotation runtime Lio/ktor/server/response/UseHttp2Push;
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;->getContext()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    new-instance v1, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$$ExternalSyntheticLambda0;-><init>(Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;Lio/ktor/server/response/ResponsePushBuilder;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method protected respondOutgoingContent(Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/content/OutgoingContent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$respondOutgoingContent$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$respondOutgoingContent$1;

    iget v1, v0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$respondOutgoingContent$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$respondOutgoingContent$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$respondOutgoingContent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$respondOutgoingContent$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$respondOutgoingContent$1;-><init>(Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$respondOutgoingContent$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 50
    iget v2, p2, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$respondOutgoingContent$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p2, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$respondOutgoingContent$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/http/content/OutgoingContent;

    .local p1, "content":Lio/ktor/http/content/OutgoingContent;
    iget-object v1, p2, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$respondOutgoingContent$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;

    .local v1, "this":Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;
    .end local p1    # "content":Lio/ktor/http/content/OutgoingContent;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 51
    .local v2, "this":Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;
    .restart local p1    # "content":Lio/ktor/http/content/OutgoingContent;
    iput-object v2, p2, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$respondOutgoingContent$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$respondOutgoingContent$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p2, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$respondOutgoingContent$1;->label:I

    invoke-super {v2, p1, p2}, Lio/ktor/server/netty/NettyApplicationResponse;->respondOutgoingContent(Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 50
    return-object v1

    .line 51
    :cond_1
    move-object v1, v2

    .line 54
    .end local v2    # "this":Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;
    .restart local v1    # "this":Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;
    :goto_1
    invoke-virtual {p1}, Lio/ktor/http/content/OutgoingContent;->trailers()Lio/ktor/http/Headers;

    move-result-object p1

    .end local p1    # "content":Lio/ktor/http/content/OutgoingContent;
    if-eqz p1, :cond_2

    .local p1, "it":Lio/ktor/http/Headers;
    const/4 v2, 0x0

    .line 55
    .local v2, "$i$a$-let-NettyHttp2ApplicationResponse$respondOutgoingContent$2":I
    new-instance v3, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$respondOutgoingContent$2$1;

    invoke-direct {v3, v1}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse$respondOutgoingContent$2$1;-><init>(Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v3}, Lio/ktor/http/Headers;->forEach(Lkotlin/jvm/functions/Function2;)V

    .line 60
    .end local v1    # "this":Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;
    nop

    .line 54
    .end local v2    # "$i$a$-let-NettyHttp2ApplicationResponse$respondOutgoingContent$2":I
    .end local p1    # "it":Lio/ktor/http/Headers;
    nop

    .line 61
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected respondUpgrade(Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "upgrade"    # Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "HTTP/2 doesn\'t support upgrade"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected responseMessage(ZZ)Ljava/lang/Object;
    .locals 2
    .param p1, "chunked"    # Z
    .param p2, "last"    # Z

    .line 42
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;->responseHeaders:Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    const-string v1, "transfer-encoding"

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->remove(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;

    iget-object v1, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;->responseHeaders:Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    check-cast v1, Lio/netty/handler/codec/http2/Http2Headers;

    invoke-direct {v0, v1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;-><init>(Lio/netty/handler/codec/http2/Http2Headers;Z)V

    return-object v0
.end method

.method protected responseMessage(Z[B)Ljava/lang/Object;
    .locals 2
    .param p1, "chunked"    # Z
    .param p2, "data"    # [B

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;->responseMessage(ZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected setStatus(Lio/ktor/http/HttpStatusCode;)V
    .locals 2
    .param p1, "statusCode"    # Lio/ktor/http/HttpStatusCode;

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;->responseHeaders:Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    invoke-virtual {p1}, Lio/ktor/http/HttpStatusCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->status(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    .line 32
    return-void
.end method
