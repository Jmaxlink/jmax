.class public final Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;
.super Lio/ktor/server/netty/NettyApplicationCall;
.source "NettyHttp1ApplicationCall.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\rJ\r\u0010\u0016\u001a\u00020\u0017H\u0010\u00a2\u0006\u0002\u0008\u0018J\u0017\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u0017H\u0010\u00a2\u0006\u0002\u0008\u001cJ\u001d\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0017H\u0010\u00a2\u0006\u0002\u0008!J\u0015\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0005H\u0010\u00a2\u0006\u0002\u0008%R\u0014\u0010\u000e\u001a\u00020\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u0013X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006&"
    }
    d2 = {
        "Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;",
        "Lio/ktor/server/netty/NettyApplicationCall;",
        "application",
        "Lio/ktor/server/application/Application;",
        "context",
        "Lio/netty/channel/ChannelHandlerContext;",
        "httpRequest",
        "Lio/netty/handler/codec/http/HttpRequest;",
        "requestBodyChannel",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "engineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "userContext",
        "(Lio/ktor/server/application/Application;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V",
        "request",
        "Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;",
        "getRequest",
        "()Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;",
        "response",
        "Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;",
        "getResponse",
        "()Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;",
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
.field private final request:Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;

.field private final response:Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;


# direct methods
.method public constructor <init>(Lio/ktor/server/application/Application;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V
    .locals 13
    .param p1, "application"    # Lio/ktor/server/application/Application;
    .param p2, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "httpRequest"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p4, "requestBodyChannel"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p5, "engineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p6, "userContext"    # Lkotlin/coroutines/CoroutineContext;

    move-object v0, p0

    const-string v1, "application"

    move-object v2, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    move-object v9, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "httpRequest"

    move-object/from16 v10, p3

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "engineContext"

    move-object/from16 v11, p5

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "userContext"

    move-object/from16 v12, p6

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct/range {p0 .. p3}, Lio/ktor/server/netty/NettyApplicationCall;-><init>(Lio/ktor/server/application/Application;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 24
    new-instance v1, Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;

    .line 25
    move-object v4, v0

    check-cast v4, Lio/ktor/server/application/ApplicationCall;

    .line 26
    nop

    .line 27
    nop

    .line 28
    nop

    .line 29
    if-nez p4, :cond_0

    sget-object v3, Lio/ktor/utils/io/ByteReadChannel;->Companion:Lio/ktor/utils/io/ByteReadChannel$Companion;

    invoke-virtual {v3}, Lio/ktor/utils/io/ByteReadChannel$Companion;->getEmpty()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v3

    move-object v8, v3

    goto :goto_0

    :cond_0
    move-object/from16 v8, p4

    .line 24
    :goto_0
    move-object v3, v1

    move-object/from16 v5, p5

    move-object v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v3 .. v8}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;-><init>(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/CoroutineContext;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpRequest;Lio/ktor/utils/io/ByteReadChannel;)V

    iput-object v1, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->request:Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;

    .line 32
    new-instance v1, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    .line 33
    move-object v4, v0

    check-cast v4, Lio/ktor/server/netty/NettyApplicationCall;

    .line 34
    nop

    .line 35
    nop

    .line 36
    nop

    .line 37
    invoke-interface/range {p3 .. p3}, Lio/netty/handler/codec/http/HttpRequest;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v8

    const-string v3, "httpRequest.protocolVersion()"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    move-object v3, v1

    move-object v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v3 .. v8}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;-><init>(Lio/ktor/server/netty/NettyApplicationCall;Lio/netty/channel/ChannelHandlerContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lio/netty/handler/codec/http/HttpVersion;)V

    iput-object v1, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->response:Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    .line 40
    nop

    .line 41
    move-object v1, v0

    check-cast v1, Lio/ktor/server/engine/BaseApplicationCall;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4}, Lio/ktor/server/engine/BaseApplicationCall;->putResponseAttribute$default(Lio/ktor/server/engine/BaseApplicationCall;Lio/ktor/server/engine/BaseApplicationResponse;ILjava/lang/Object;)V

    .line 42
    nop

    .line 15
    return-void
.end method


# virtual methods
.method public bridge synthetic getRequest()Lio/ktor/server/engine/BaseApplicationRequest;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->getRequest()Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;

    move-result-object v0

    check-cast v0, Lio/ktor/server/engine/BaseApplicationRequest;

    return-object v0
.end method

.method public bridge synthetic getRequest()Lio/ktor/server/netty/NettyApplicationRequest;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->getRequest()Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;

    move-result-object v0

    check-cast v0, Lio/ktor/server/netty/NettyApplicationRequest;

    return-object v0
.end method

.method public getRequest()Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->request:Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;

    return-object v0
.end method

.method public bridge synthetic getRequest()Lio/ktor/server/request/ApplicationRequest;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->getRequest()Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;

    move-result-object v0

    check-cast v0, Lio/ktor/server/request/ApplicationRequest;

    return-object v0
.end method

.method public bridge synthetic getResponse()Lio/ktor/server/engine/BaseApplicationResponse;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->getResponse()Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    move-result-object v0

    check-cast v0, Lio/ktor/server/engine/BaseApplicationResponse;

    return-object v0
.end method

.method public bridge synthetic getResponse()Lio/ktor/server/netty/NettyApplicationResponse;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->getResponse()Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    move-result-object v0

    check-cast v0, Lio/ktor/server/netty/NettyApplicationResponse;

    return-object v0
.end method

.method public getResponse()Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->response:Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    return-object v0
.end method

.method public bridge synthetic getResponse()Lio/ktor/server/response/ApplicationResponse;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->getResponse()Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    move-result-object v0

    check-cast v0, Lio/ktor/server/response/ApplicationResponse;

    return-object v0
.end method

.method public isContextCloseRequired$ktor_server_netty()Z
    .locals 1

    .line 67
    invoke-virtual {p0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->isByteBufferContent$ktor_server_netty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public prepareEndOfStreamMessage$ktor_server_netty(Z)Ljava/lang/Object;
    .locals 1
    .param p1, "lastTransformed"    # Z

    .line 52
    invoke-virtual {p0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->isByteBufferContent$ktor_server_netty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-super {p0, p1}, Lio/ktor/server/netty/NettyApplicationCall;->prepareEndOfStreamMessage$ktor_server_netty(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    return-object v0
.end method

.method public prepareMessage$ktor_server_netty(Lio/netty/buffer/ByteBuf;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "isLastContent"    # Z

    const-string v0, "buf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->isByteBufferContent$ktor_server_netty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-super {p0, p1, p2}, Lio/ktor/server/netty/NettyApplicationCall;->prepareMessage$ktor_server_netty(Lio/netty/buffer/ByteBuf;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public upgrade$ktor_server_netty(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 5
    .param p1, "dst"    # Lio/netty/channel/ChannelHandlerContext;

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->isByteBufferContent$ktor_server_netty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-super {p0, p1}, Lio/ktor/server/netty/NettyApplicationCall;->upgrade$ktor_server_netty(Lio/netty/channel/ChannelHandlerContext;)V

    return-void

    .line 62
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .local v0, "$this$upgrade_u24lambda_u240":Lio/netty/channel/ChannelPipeline;
    const/4 v1, 0x0

    .line 63
    .local v1, "$i$a$-apply-NettyHttp1ApplicationCall$upgrade$1":I
    const-class v2, Lio/netty/handler/codec/http/HttpServerCodec;

    new-instance v3, Lio/ktor/server/netty/NettyDirectEncoder;

    invoke-direct {v3}, Lio/ktor/server/netty/NettyDirectEncoder;-><init>()V

    check-cast v3, Lio/netty/channel/ChannelHandler;

    const-string v4, "direct-encoder"

    invoke-interface {v0, v2, v4, v3}, Lio/netty/channel/ChannelPipeline;->replace(Ljava/lang/Class;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandler;

    .line 64
    nop

    .line 62
    .end local v0    # "$this$upgrade_u24lambda_u240":Lio/netty/channel/ChannelPipeline;
    .end local v1    # "$i$a$-apply-NettyHttp1ApplicationCall$upgrade$1":I
    nop

    .line 65
    return-void
.end method
