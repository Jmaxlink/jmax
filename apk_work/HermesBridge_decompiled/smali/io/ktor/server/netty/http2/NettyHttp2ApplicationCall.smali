.class public final Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;
.super Lio/ktor/server/netty/NettyApplicationCall;
.source "NettyHttp2ApplicationCall.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\rJ\r\u0010\u0018\u001a\u00020\u0019H\u0010\u00a2\u0006\u0002\u0008\u001aJ\u0017\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u0019H\u0010\u00a2\u0006\u0002\u0008\u001eJ\u001d\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0019H\u0010\u00a2\u0006\u0002\u0008#J\u0015\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0005H\u0010\u00a2\u0006\u0002\u0008\'R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u0011X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u0015X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006("
    }
    d2 = {
        "Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;",
        "Lio/ktor/server/netty/NettyApplicationCall;",
        "application",
        "Lio/ktor/server/application/Application;",
        "context",
        "Lio/netty/channel/ChannelHandlerContext;",
        "headers",
        "Lio/netty/handler/codec/http2/Http2Headers;",
        "handler",
        "Lio/ktor/server/netty/http2/NettyHttp2Handler;",
        "engineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "userContext",
        "(Lio/ktor/server/application/Application;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;Lio/ktor/server/netty/http2/NettyHttp2Handler;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V",
        "getHeaders",
        "()Lio/netty/handler/codec/http2/Http2Headers;",
        "request",
        "Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;",
        "getRequest",
        "()Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;",
        "response",
        "Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;",
        "getResponse",
        "()Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;",
        "isContextCloseRequired",
        "",
        "isContextCloseRequired$ktor_server_netty",
        "prepareEndOfStreamMessage",
        "",
        "lastTransformed",
        "prepareEndOfStreamMessage$ktor_server_netty",
        "prepareMessage",
        "buf",
        "Lio/netty/buffer/ByteBuf;",
        "isLastContent",
        "prepareMessage$ktor_server_netty",
        "upgrade",
        "",
        "dst",
        "upgrade$ktor_server_netty",
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
.field private final headers:Lio/netty/handler/codec/http2/Http2Headers;

.field private final request:Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;

.field private final response:Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;


# direct methods
.method public constructor <init>(Lio/ktor/server/application/Application;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;Lio/ktor/server/netty/http2/NettyHttp2Handler;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V
    .locals 16
    .param p1, "application"    # Lio/ktor/server/application/Application;
    .param p2, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "handler"    # Lio/ktor/server/netty/http2/NettyHttp2Handler;
    .param p5, "engineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p6, "userContext"    # Lkotlin/coroutines/CoroutineContext;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "application"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    move-object/from16 v12, p2

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "headers"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "handler"

    move-object/from16 v13, p4

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "engineContext"

    move-object/from16 v14, p5

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "userContext"

    move-object/from16 v15, p6

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct/range {p0 .. p3}, Lio/ktor/server/netty/NettyApplicationCall;-><init>(Lio/ktor/server/application/Application;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 17
    iput-object v1, v0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    .line 23
    new-instance v2, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;

    move-object v5, v0

    check-cast v5, Lio/ktor/server/application/ApplicationCall;

    iget-object v8, v0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object/from16 v6, p5

    move-object/from16 v7, p2

    invoke-direct/range {v4 .. v11}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;-><init>(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/CoroutineContext;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;Lio/ktor/utils/io/ByteChannel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;->request:Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;

    .line 24
    new-instance v2, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;

    move-object v5, v0

    check-cast v5, Lio/ktor/server/netty/NettyApplicationCall;

    move-object v4, v2

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;-><init>(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/http2/NettyHttp2Handler;Lio/netty/channel/ChannelHandlerContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V

    iput-object v2, v0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;->response:Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;

    .line 26
    nop

    .line 27
    move-object v2, v0

    check-cast v2, Lio/ktor/server/engine/BaseApplicationCall;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v4, v5, v4}, Lio/ktor/server/engine/BaseApplicationCall;->putResponseAttribute$default(Lio/ktor/server/engine/BaseApplicationCall;Lio/ktor/server/engine/BaseApplicationResponse;ILjava/lang/Object;)V

    .line 28
    nop

    .line 14
    return-void
.end method


# virtual methods
.method public final getHeaders()Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1

    .line 17
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    return-object v0
.end method

.method public bridge synthetic getRequest()Lio/ktor/server/engine/BaseApplicationRequest;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;->getRequest()Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;

    move-result-object v0

    check-cast v0, Lio/ktor/server/engine/BaseApplicationRequest;

    return-object v0
.end method

.method public bridge synthetic getRequest()Lio/ktor/server/netty/NettyApplicationRequest;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;->getRequest()Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;

    move-result-object v0

    check-cast v0, Lio/ktor/server/netty/NettyApplicationRequest;

    return-object v0
.end method

.method public getRequest()Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;->request:Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;

    return-object v0
.end method

.method public bridge synthetic getRequest()Lio/ktor/server/request/ApplicationRequest;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;->getRequest()Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;

    move-result-object v0

    check-cast v0, Lio/ktor/server/request/ApplicationRequest;

    return-object v0
.end method

.method public bridge synthetic getResponse()Lio/ktor/server/engine/BaseApplicationResponse;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;->getResponse()Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;

    move-result-object v0

    check-cast v0, Lio/ktor/server/engine/BaseApplicationResponse;

    return-object v0
.end method

.method public bridge synthetic getResponse()Lio/ktor/server/netty/NettyApplicationResponse;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;->getResponse()Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;

    move-result-object v0

    check-cast v0, Lio/ktor/server/netty/NettyApplicationResponse;

    return-object v0
.end method

.method public getResponse()Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;->response:Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;

    return-object v0
.end method

.method public bridge synthetic getResponse()Lio/ktor/server/response/ApplicationResponse;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;->getResponse()Lio/ktor/server/netty/http2/NettyHttp2ApplicationResponse;

    move-result-object v0

    check-cast v0, Lio/ktor/server/response/ApplicationResponse;

    return-object v0
.end method

.method public isContextCloseRequired$ktor_server_netty()Z
    .locals 1

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public prepareEndOfStreamMessage$ktor_server_netty(Z)Ljava/lang/Object;
    .locals 2
    .param p1, "lastTransformed"    # Z

    .line 38
    invoke-virtual {p0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;->isByteBufferContent$ktor_server_netty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-super {p0, p1}, Lio/ktor/server/netty/NettyApplicationCall;->prepareEndOfStreamMessage$ktor_server_netty(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;-><init>(Z)V

    :goto_0
    return-object v0
.end method

.method public prepareMessage$ktor_server_netty(Lio/netty/buffer/ByteBuf;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "isLastContent"    # Z

    const-string v0, "buf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;->isByteBufferContent$ktor_server_netty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-super {p0, p1, p2}, Lio/ktor/server/netty/NettyApplicationCall;->prepareMessage$ktor_server_netty(Lio/netty/buffer/ByteBuf;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 34
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    invoke-direct {v0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    return-object v0
.end method

.method public upgrade$ktor_server_netty(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "dst"    # Lio/netty/channel/ChannelHandlerContext;

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;->isByteBufferContent$ktor_server_netty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-super {p0, p1}, Lio/ktor/server/netty/NettyApplicationCall;->upgrade$ktor_server_netty(Lio/netty/channel/ChannelHandlerContext;)V

    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HTTP/2 doesn\'t support upgrade"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
