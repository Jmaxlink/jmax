.class public final Lio/ktor/server/netty/http1/NettyConnectionPoint;
.super Ljava/lang/Object;
.source "NettyConnectionPoint.kt"

# interfaces
.implements Lio/ktor/http/RequestConnectionPoint;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNettyConnectionPoint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NettyConnectionPoint.kt\nio/ktor/server/netty/http1/NettyConnectionPoint\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0018\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000c8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\nR\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u00088VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001c\u0010\u000e\u001a\u0004\u0008\u001d\u0010\nR\u0014\u0010\u001e\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0010R\u0014\u0010 \u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u0010R\u0014\u0010\"\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010$\u001a\u00020\u000c8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008%\u0010\u0010R\u0014\u0010(\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u0010R\u0014\u0010*\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\nR\u0014\u0010,\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010\u0010R\u0014\u0010.\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010\u0010\u00a8\u00060"
    }
    d2 = {
        "Lio/ktor/server/netty/http1/NettyConnectionPoint;",
        "Lio/ktor/http/RequestConnectionPoint;",
        "request",
        "Lio/netty/handler/codec/http/HttpRequest;",
        "context",
        "Lio/netty/channel/ChannelHandlerContext;",
        "(Lio/netty/handler/codec/http/HttpRequest;Lio/netty/channel/ChannelHandlerContext;)V",
        "defaultPort",
        "",
        "getDefaultPort",
        "()I",
        "host",
        "",
        "getHost$annotations",
        "()V",
        "getHost",
        "()Ljava/lang/String;",
        "localAddress",
        "getLocalAddress",
        "localHost",
        "getLocalHost",
        "localPort",
        "getLocalPort",
        "method",
        "Lio/ktor/http/HttpMethod;",
        "getMethod",
        "()Lio/ktor/http/HttpMethod;",
        "port",
        "getPort$annotations",
        "getPort",
        "remoteAddress",
        "getRemoteAddress",
        "remoteHost",
        "getRemoteHost",
        "remotePort",
        "getRemotePort",
        "scheme",
        "getScheme",
        "scheme$delegate",
        "Lkotlin/Lazy;",
        "serverHost",
        "getServerHost",
        "serverPort",
        "getServerPort",
        "uri",
        "getUri",
        "version",
        "getVersion",
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
.field private final context:Lio/netty/channel/ChannelHandlerContext;

.field private final request:Lio/netty/handler/codec/http/HttpRequest;

.field private final scheme$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/HttpRequest;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p2, "context"    # Lio/netty/channel/ChannelHandlerContext;

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/ktor/server/netty/http1/NettyConnectionPoint;->request:Lio/netty/handler/codec/http/HttpRequest;

    .line 16
    iput-object p2, p0, Lio/ktor/server/netty/http1/NettyConnectionPoint;->context:Lio/netty/channel/ChannelHandlerContext;

    .line 28
    new-instance v0, Lio/ktor/server/netty/http1/NettyConnectionPoint$scheme$2;

    invoke-direct {v0, p0}, Lio/ktor/server/netty/http1/NettyConnectionPoint$scheme$2;-><init>(Lio/ktor/server/netty/http1/NettyConnectionPoint;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/http1/NettyConnectionPoint;->scheme$delegate:Lkotlin/Lazy;

    .line 14
    return-void
.end method

.method public static final synthetic access$getContext$p(Lio/ktor/server/netty/http1/NettyConnectionPoint;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/http1/NettyConnectionPoint;

    .line 14
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyConnectionPoint;->context:Lio/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method private final getDefaultPort()I
    .locals 2

    .line 49
    sget-object v0, Lio/ktor/http/URLProtocol;->Companion:Lio/ktor/http/URLProtocol$Companion;

    invoke-virtual {p0}, Lio/ktor/server/netty/http1/NettyConnectionPoint;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/ktor/http/URLProtocol$Companion;->createOrDefault(Ljava/lang/String;)Lio/ktor/http/URLProtocol;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/http/URLProtocol;->getDefaultPort()I

    move-result v0

    return v0
.end method

.method public static synthetic getHost$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use localHost or serverHost instead"
    .end annotation

    return-void
.end method

.method public static synthetic getPort$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use localPort or serverPort instead"
    .end annotation

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 4

    .line 32
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyConnectionPoint;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, ":"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 34
    :cond_0
    nop

    .line 33
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyConnectionPoint;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v2, v0, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/net/InetSocketAddress;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 34
    :goto_0
    if-eqz v0, :cond_3

    .line 33
    nop

    .line 34
    nop

    .line 69
    .local v0, "it":Ljava/net/InetSocketAddress;
    const/4 v1, 0x0

    .line 34
    .local v1, "$i$a$-let-NettyConnectionPoint$host$1":I
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v1, v2

    .line 32
    .end local v0    # "it":Ljava/net/InetSocketAddress;
    .end local v1    # "$i$a$-let-NettyConnectionPoint$host$1":I
    :cond_3
    if-nez v1, :cond_4

    .line 34
    const-string v0, "localhost"

    goto :goto_1

    .line 32
    :cond_4
    move-object v0, v1

    .line 34
    :cond_5
    :goto_1
    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 3

    .line 46
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyConnectionPoint;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/InetSocketAddress;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    const-string v2, "localhost"

    :cond_2
    return-object v2
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 3

    .line 42
    nop

    .line 41
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyConnectionPoint;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/InetSocketAddress;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 42
    :goto_0
    if-eqz v0, :cond_1

    .line 41
    nop

    .line 42
    nop

    .line 69
    .local v0, "it":Ljava/net/InetSocketAddress;
    const/4 v1, 0x0

    .line 42
    .local v1, "$i$a$-let-NettyConnectionPoint$localHost$1":I
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v2

    .line 41
    .end local v0    # "it":Ljava/net/InetSocketAddress;
    .end local v1    # "$i$a$-let-NettyConnectionPoint$localHost$1":I
    :cond_1
    if-nez v2, :cond_2

    .line 42
    const-string v2, "localhost"

    :cond_2
    return-object v2
.end method

.method public getLocalPort()I
    .locals 2

    .line 51
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyConnectionPoint;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/InetSocketAddress;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_1

    .line 52
    :cond_1
    invoke-direct {p0}, Lio/ktor/server/netty/http1/NettyConnectionPoint;->getDefaultPort()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getMethod()Lio/ktor/http/HttpMethod;
    .locals 3

    .line 26
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    iget-object v1, p0, Lio/ktor/server/netty/http1/NettyConnectionPoint;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpMethod;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "request.method().name()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/ktor/http/HttpMethod$Companion;->parse(Ljava/lang/String;)Lio/ktor/http/HttpMethod;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 2

    .line 38
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyConnectionPoint;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/InetSocketAddress;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x50

    :goto_1
    return v0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 3

    .line 66
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyConnectionPoint;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/InetSocketAddress;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    const-string v2, "unknown"

    :cond_2
    return-object v2
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 3

    .line 60
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyConnectionPoint;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/InetSocketAddress;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .local v0, "it":Ljava/net/InetSocketAddress;
    const/4 v1, 0x0

    .line 61
    .local v1, "$i$a$-let-NettyConnectionPoint$remoteHost$1":I
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 60
    .end local v0    # "it":Ljava/net/InetSocketAddress;
    .end local v1    # "$i$a$-let-NettyConnectionPoint$remoteHost$1":I
    :cond_1
    if-nez v2, :cond_2

    .line 62
    const-string v2, "unknown"

    :cond_2
    return-object v2
.end method

.method public getRemotePort()I
    .locals 2

    .line 64
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyConnectionPoint;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/InetSocketAddress;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyConnectionPoint;->scheme$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServerHost()Ljava/lang/String;
    .locals 4

    .line 44
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyConnectionPoint;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ":"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lio/ktor/server/netty/http1/NettyConnectionPoint;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getServerPort()I
    .locals 3

    .line 54
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyConnectionPoint;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 54
    nop

    .line 55
    invoke-direct {p0}, Lio/ktor/server/netty/http1/NettyConnectionPoint;->getDefaultPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->substringAfter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 56
    nop

    .line 54
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lio/ktor/server/netty/http1/NettyConnectionPoint;->getLocalPort()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 2

    .line 23
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyConnectionPoint;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->uri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request.uri()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 20
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyConnectionPoint;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpVersion;->text()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request.protocolVersion().text()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
