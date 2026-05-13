.class public final Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;
.super Lio/ktor/server/netty/NettyApplicationRequest;
.source "NettyHttp1ApplicationRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u0017\u001a\u00020\u0018H\u0014R\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u0014X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;",
        "Lio/ktor/server/netty/NettyApplicationRequest;",
        "call",
        "Lio/ktor/server/application/ApplicationCall;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Lio/netty/channel/ChannelHandlerContext;",
        "httpRequest",
        "Lio/netty/handler/codec/http/HttpRequest;",
        "requestBodyChannel",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/CoroutineContext;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;Lio/ktor/utils/io/ByteReadChannel;)V",
        "headers",
        "Lio/ktor/http/Headers;",
        "getHeaders",
        "()Lio/ktor/http/Headers;",
        "getHttpRequest",
        "()Lio/netty/handler/codec/http/HttpRequest;",
        "local",
        "Lio/ktor/server/netty/http1/NettyConnectionPoint;",
        "getLocal",
        "()Lio/ktor/server/netty/http1/NettyConnectionPoint;",
        "newDecoder",
        "Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;",
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
.field private final headers:Lio/ktor/http/Headers;

.field private final httpRequest:Lio/netty/handler/codec/http/HttpRequest;

.field private final local:Lio/ktor/server/netty/http1/NettyConnectionPoint;


# direct methods
.method public constructor <init>(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/CoroutineContext;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;Lio/ktor/utils/io/ByteReadChannel;)V
    .locals 8
    .param p1, "call"    # Lio/ktor/server/application/ApplicationCall;
    .param p2, "coroutineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p3, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p4, "httpRequest"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p5, "requestBodyChannel"    # Lio/ktor/utils/io/ByteReadChannel;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpRequest"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestBodyChannel"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    nop

    .line 23
    nop

    .line 24
    nop

    .line 25
    nop

    .line 26
    nop

    .line 27
    invoke-interface {p4}, Lio/netty/handler/codec/http/HttpRequest;->uri()Ljava/lang/String;

    move-result-object v6

    const-string v0, "httpRequest.uri()"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v0, p4

    check-cast v0, Lio/netty/handler/codec/http/HttpMessage;

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpUtil;->isKeepAlive(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v7

    .line 22
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v1 .. v7}, Lio/ktor/server/netty/NettyApplicationRequest;-><init>(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/CoroutineContext;Lio/netty/channel/ChannelHandlerContext;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/String;Z)V

    .line 20
    iput-object p4, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;->httpRequest:Lio/netty/handler/codec/http/HttpRequest;

    .line 30
    new-instance v0, Lio/ktor/server/netty/http1/NettyConnectionPoint;

    iget-object v1, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;->httpRequest:Lio/netty/handler/codec/http/HttpRequest;

    invoke-direct {v0, v1, p3}, Lio/ktor/server/netty/http1/NettyConnectionPoint;-><init>(Lio/netty/handler/codec/http/HttpRequest;Lio/netty/channel/ChannelHandlerContext;)V

    iput-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;->local:Lio/ktor/server/netty/http1/NettyConnectionPoint;

    .line 32
    new-instance v0, Lio/ktor/server/netty/NettyApplicationRequestHeaders;

    iget-object v1, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;->httpRequest:Lio/netty/handler/codec/http/HttpRequest;

    invoke-direct {v0, v1}, Lio/ktor/server/netty/NettyApplicationRequestHeaders;-><init>(Lio/netty/handler/codec/http/HttpRequest;)V

    check-cast v0, Lio/ktor/http/Headers;

    iput-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;->headers:Lio/ktor/http/Headers;

    .line 16
    return-void
.end method


# virtual methods
.method public getHeaders()Lio/ktor/http/Headers;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;->headers:Lio/ktor/http/Headers;

    return-object v0
.end method

.method public final getHttpRequest()Lio/netty/handler/codec/http/HttpRequest;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;->httpRequest:Lio/netty/handler/codec/http/HttpRequest;

    return-object v0
.end method

.method public bridge synthetic getLocal()Lio/ktor/http/RequestConnectionPoint;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;->getLocal()Lio/ktor/server/netty/http1/NettyConnectionPoint;

    move-result-object v0

    check-cast v0, Lio/ktor/http/RequestConnectionPoint;

    return-object v0
.end method

.method public getLocal()Lio/ktor/server/netty/http1/NettyConnectionPoint;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;->local:Lio/ktor/server/netty/http1/NettyConnectionPoint;

    return-object v0
.end method

.method protected newDecoder()Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;
    .locals 2

    .line 34
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;

    iget-object v1, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;->httpRequest:Lio/netty/handler/codec/http/HttpRequest;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;-><init>(Lio/netty/handler/codec/http/HttpRequest;)V

    return-object v0
.end method
