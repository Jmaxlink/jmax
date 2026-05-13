.class public final Lio/ktor/server/netty/http1/NettyHttp1Handler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "NettyHttp1Handler.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B5\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0010\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010 \u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0018\u0010!\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020#H\u0016J\u0012\u0010$\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0018\u0010%\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020\'H\u0016J\u0018\u0010(\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020)H\u0002J\u0018\u0010*\u001a\u00020+2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020)H\u0002J\u0018\u0010,\u001a\u00020-2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020)H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lio/ktor/server/netty/http1/NettyHttp1Handler;",
        "Lio/netty/channel/ChannelInboundHandlerAdapter;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "enginePipeline",
        "Lio/ktor/server/engine/EnginePipeline;",
        "environment",
        "Lio/ktor/server/engine/ApplicationEngineEnvironment;",
        "callEventGroup",
        "Lio/netty/util/concurrent/EventExecutorGroup;",
        "engineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "userContext",
        "runningLimit",
        "",
        "(Lio/ktor/server/engine/EnginePipeline;Lio/ktor/server/engine/ApplicationEngineEnvironment;Lio/netty/util/concurrent/EventExecutorGroup;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;I)V",
        "coroutineContext",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "handlerJob",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "",
        "responseWriter",
        "Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;",
        "skipEmpty",
        "",
        "state",
        "Lio/ktor/server/netty/NettyHttpHandlerState;",
        "callReadIfNeeded",
        "",
        "context",
        "Lio/netty/channel/ChannelHandlerContext;",
        "channelActive",
        "channelInactive",
        "channelRead",
        "message",
        "",
        "channelReadComplete",
        "exceptionCaught",
        "cause",
        "",
        "handleRequest",
        "Lio/netty/handler/codec/http/HttpRequest;",
        "prepareCallFromRequest",
        "Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;",
        "prepareRequestContentChannel",
        "Lio/ktor/utils/io/ByteReadChannel;",
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
.field private final callEventGroup:Lio/netty/util/concurrent/EventExecutorGroup;

.field private final engineContext:Lkotlin/coroutines/CoroutineContext;

.field private final enginePipeline:Lio/ktor/server/engine/EnginePipeline;

.field private final environment:Lio/ktor/server/engine/ApplicationEngineEnvironment;

.field private final handlerJob:Lkotlinx/coroutines/CompletableDeferred;

.field private responseWriter:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

.field private final runningLimit:I

.field private skipEmpty:Z

.field private final state:Lio/ktor/server/netty/NettyHttpHandlerState;

.field private final userContext:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lio/ktor/server/engine/EnginePipeline;Lio/ktor/server/engine/ApplicationEngineEnvironment;Lio/netty/util/concurrent/EventExecutorGroup;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;I)V
    .locals 2
    .param p1, "enginePipeline"    # Lio/ktor/server/engine/EnginePipeline;
    .param p2, "environment"    # Lio/ktor/server/engine/ApplicationEngineEnvironment;
    .param p3, "callEventGroup"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p4, "engineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p5, "userContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p6, "runningLimit"    # I

    const-string v0, "enginePipeline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callEventGroup"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engineContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userContext"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->enginePipeline:Lio/ktor/server/engine/EnginePipeline;

    .line 23
    iput-object p2, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->environment:Lio/ktor/server/engine/ApplicationEngineEnvironment;

    .line 24
    iput-object p3, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->callEventGroup:Lio/netty/util/concurrent/EventExecutorGroup;

    .line 25
    iput-object p4, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->engineContext:Lkotlin/coroutines/CoroutineContext;

    .line 26
    iput-object p5, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->userContext:Lkotlin/coroutines/CoroutineContext;

    .line 27
    iput p6, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->runningLimit:I

    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->handlerJob:Lkotlinx/coroutines/CompletableDeferred;

    .line 37
    new-instance v0, Lio/ktor/server/netty/NettyHttpHandlerState;

    iget v1, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->runningLimit:I

    invoke-direct {v0, v1}, Lio/ktor/server/netty/NettyHttpHandlerState;-><init>(I)V

    iput-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->state:Lio/ktor/server/netty/NettyHttpHandlerState;

    .line 21
    return-void
.end method

.method private final callReadIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;

    .line 154
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->state:Lio/ktor/server/netty/NettyHttpHandlerState;

    iget-wide v0, v0, Lio/ktor/server/netty/NettyHttpHandlerState;->activeRequests$internal:J

    iget v2, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->runningLimit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 155
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 156
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->state:Lio/ktor/server/netty/NettyHttpHandlerState;

    const/4 v1, 0x0

    iput v1, v0, Lio/ktor/server/netty/NettyHttpHandlerState;->skippedRead$internal:I

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->state:Lio/ktor/server/netty/NettyHttpHandlerState;

    const/4 v1, 0x1

    iput v1, v0, Lio/ktor/server/netty/NettyHttpHandlerState;->skippedRead$internal:I

    .line 160
    :goto_0
    return-void
.end method

.method private final handleRequest(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 3
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "message"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 105
    invoke-direct {p0, p1, p2}, Lio/ktor/server/netty/http1/NettyHttp1Handler;->prepareCallFromRequest(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;)Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;

    move-result-object v0

    .line 107
    .local v0, "call":Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 108
    iget-object v1, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->responseWriter:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    if-nez v1, :cond_0

    const-string v1, "responseWriter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    move-object v2, v0

    check-cast v2, Lio/ktor/server/netty/NettyApplicationCall;

    invoke-virtual {v1, v2}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->processResponse$ktor_server_netty(Lio/ktor/server/netty/NettyApplicationCall;)V

    .line 109
    return-void
.end method

.method private final prepareCallFromRequest(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;)Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;
    .locals 9
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "message"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 119
    nop

    .line 120
    instance-of v0, p2, Lio/netty/handler/codec/http/LastHttpContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {v0}, Lio/netty/handler/codec/http/LastHttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v6, v1

    goto :goto_0

    .line 121
    :cond_0
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v0

    sget-object v2, Lio/netty/handler/codec/http/HttpMethod;->GET:Lio/netty/handler/codec/http/HttpMethod;

    if-ne v0, v2, :cond_1

    .line 122
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpMessage;

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpUtil;->isContentLengthSet(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpMessage;

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpUtil;->isTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->skipEmpty:Z

    .line 124
    move-object v6, v1

    goto :goto_0

    .line 126
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/ktor/server/netty/http1/NettyHttp1Handler;->prepareRequestContentChannel(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v1

    move-object v6, v1

    .line 119
    :goto_0
    nop

    .line 129
    .local v6, "requestBodyChannel":Lio/ktor/utils/io/ByteReadChannel;
    new-instance v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;

    .line 130
    iget-object v1, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->environment:Lio/ktor/server/engine/ApplicationEngineEnvironment;

    invoke-interface {v1}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v3

    .line 131
    nop

    .line 132
    nop

    .line 133
    nop

    .line 134
    iget-object v7, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->engineContext:Lkotlin/coroutines/CoroutineContext;

    .line 135
    iget-object v8, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->userContext:Lkotlin/coroutines/CoroutineContext;

    .line 129
    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;-><init>(Lio/ktor/server/application/Application;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V

    return-object v0
.end method

.method private final prepareRequestContentChannel(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;)Lio/ktor/utils/io/ByteReadChannel;
    .locals 3
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "message"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 143
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    const-class v1, Lio/ktor/server/netty/cio/RequestBodyHandler;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/ktor/server/netty/cio/RequestBodyHandler;

    .line 144
    .local v0, "bodyHandler":Lio/ktor/server/netty/cio/RequestBodyHandler;
    invoke-virtual {v0}, Lio/ktor/server/netty/cio/RequestBodyHandler;->newChannel()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v1

    .line 146
    .local v1, "result":Lio/ktor/utils/io/ByteReadChannel;
    instance-of v2, p2, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {v0, p1, p2}, Lio/ktor/server/netty/cio/RequestBodyHandler;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 150
    :cond_0
    return-object v1
.end method


# virtual methods
.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 8
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    .line 41
    nop

    .line 42
    iget-object v1, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->state:Lio/ktor/server/netty/NettyHttpHandlerState;

    .line 43
    invoke-virtual {p0}, Lio/ktor/server/netty/http1/NettyHttp1Handler;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 40
    invoke-direct {v0, p1, v1, v2}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;-><init>(Lio/netty/channel/ChannelHandlerContext;Lio/ktor/server/netty/NettyHttpHandlerState;Lkotlin/coroutines/CoroutineContext;)V

    iput-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->responseWriter:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    .line 46
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelConfig;->setAutoRead(Z)Lio/netty/channel/ChannelConfig;

    .line 47
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->read()Lio/netty/channel/Channel;

    .line 48
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .local v0, "$this$channelActive_u24lambda_u240":Lio/netty/channel/ChannelPipeline;
    const/4 v2, 0x0

    .line 49
    .local v2, "$i$a$-apply-NettyHttp1Handler$channelActive$1":I
    const/4 v3, 0x1

    new-array v4, v3, [Lio/netty/channel/ChannelHandler;

    new-instance v5, Lio/ktor/server/netty/cio/RequestBodyHandler;

    invoke-direct {v5, p1}, Lio/ktor/server/netty/cio/RequestBodyHandler;-><init>(Lio/netty/channel/ChannelHandlerContext;)V

    aput-object v5, v4, v1

    invoke-interface {v0, v4}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 50
    iget-object v4, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->callEventGroup:Lio/netty/util/concurrent/EventExecutorGroup;

    new-array v3, v3, [Lio/netty/channel/ChannelHandler;

    new-instance v5, Lio/ktor/server/netty/NettyApplicationCallHandler;

    iget-object v6, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->userContext:Lkotlin/coroutines/CoroutineContext;

    iget-object v7, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->enginePipeline:Lio/ktor/server/engine/EnginePipeline;

    invoke-direct {v5, v6, v7}, Lio/ktor/server/netty/NettyApplicationCallHandler;-><init>(Lkotlin/coroutines/CoroutineContext;Lio/ktor/server/engine/EnginePipeline;)V

    aput-object v5, v3, v1

    invoke-interface {v0, v4, v3}, Lio/netty/channel/ChannelPipeline;->addLast(Lio/netty/util/concurrent/EventExecutorGroup;[Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 51
    nop

    .line 48
    .end local v0    # "$this$channelActive_u24lambda_u240":Lio/netty/channel/ChannelPipeline;
    .end local v2    # "$i$a$-apply-NettyHttp1Handler$channelActive$1":I
    nop

    .line 52
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    .line 53
    return-void
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    const-class v1, Lio/ktor/server/netty/NettyApplicationCallHandler;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->remove(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    .line 84
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    .line 85
    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "message"    # Ljava/lang/Object;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    instance-of v0, p2, Lio/netty/handler/codec/http/LastHttpContent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->state:Lio/ktor/server/netty/NettyHttpHandlerState;

    sget-object v3, Lio/ktor/server/netty/NettyHttpHandlerState;->isCurrentRequestFullyRead$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 60
    :cond_0
    nop

    .line 61
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_2

    .line 62
    instance-of v0, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->state:Lio/ktor/server/netty/NettyHttpHandlerState;

    sget-object v3, Lio/ktor/server/netty/NettyHttpHandlerState;->isCurrentRequestFullyRead$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 65
    :cond_1
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->state:Lio/ktor/server/netty/NettyHttpHandlerState;

    sget-object v3, Lio/ktor/server/netty/NettyHttpHandlerState;->isChannelReadCompleted$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 66
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->state:Lio/ktor/server/netty/NettyHttpHandlerState;

    sget-object v1, Lio/ktor/server/netty/NettyHttpHandlerState;->activeRequests$FU$internal:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 68
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpRequest;

    invoke-direct {p0, p1, v0}, Lio/ktor/server/netty/http1/NettyHttp1Handler;->handleRequest(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;)V

    .line 69
    invoke-direct {p0, p1}, Lio/ktor/server/netty/http1/NettyHttp1Handler;->callReadIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 71
    :cond_2
    instance-of v0, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {v0}, Lio/netty/handler/codec/http/LastHttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->skipEmpty:Z

    if-eqz v0, :cond_3

    .line 72
    iput-boolean v2, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->skipEmpty:Z

    .line 73
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {v0}, Lio/netty/handler/codec/http/LastHttpContent;->release()Z

    .line 74
    invoke-direct {p0, p1}, Lio/ktor/server/netty/http1/NettyHttp1Handler;->callReadIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 77
    :cond_3
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 80
    :goto_0
    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;

    .line 99
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->state:Lio/ktor/server/netty/NettyHttpHandlerState;

    sget-object v1, Lio/ktor/server/netty/NettyHttpHandlerState;->isChannelReadCompleted$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 100
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->responseWriter:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    if-nez v0, :cond_0

    const-string v0, "responseWriter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->flushIfNeeded$ktor_server_netty()V

    .line 101
    invoke-super {p0, p1}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V

    .line 102
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cause"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    instance-of v0, p2, Ljava/io/IOException;

    if-nez v0, :cond_1

    instance-of v0, p2, Lio/ktor/util/cio/ChannelIOException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->handlerJob:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0, p2}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 90
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->environment:Lio/ktor/server/engine/ApplicationEngineEnvironment;

    invoke-interface {v0}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/server/application/ApplicationKt;->getLog(Lio/ktor/server/application/Application;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "I/O operation failed"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->handlerJob:Lkotlinx/coroutines/CompletableDeferred;

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 95
    :goto_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 96
    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 31
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1Handler;->handlerJob:Lkotlinx/coroutines/CompletableDeferred;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method
