.class public final Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;
.super Ljava/lang/Object;
.source "Http2LocalConnectionPoint.kt"

# interfaces
.implements Lio/ktor/http/RequestConnectionPoint;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttp2LocalConnectionPoint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2LocalConnectionPoint.kt\nio/ktor/server/netty/http2/Http2LocalConnectionPoint\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1#2:68\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\r8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0011R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u000bR\u0014\u0010\u0018\u001a\u00020\u0019X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001c\u001a\u00020\t8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001d\u0010\u000f\u001a\u0004\u0008\u001e\u0010\u000bR\u0014\u0010\u001f\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u0011R\u0014\u0010!\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u0011R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010#\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u000bR\u0014\u0010%\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u0011R\u0014\u0010\'\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\u0011R\u0014\u0010)\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\u000bR\u0014\u0010+\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010\u0011R\u0014\u0010-\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010\u0011\u00a8\u0006/"
    }
    d2 = {
        "Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;",
        "Lio/ktor/http/RequestConnectionPoint;",
        "nettyHeaders",
        "Lio/netty/handler/codec/http2/Http2Headers;",
        "localNetworkAddress",
        "Ljava/net/InetSocketAddress;",
        "remoteNetworkAddress",
        "(Lio/netty/handler/codec/http2/Http2Headers;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V",
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
.field private final localNetworkAddress:Ljava/net/InetSocketAddress;

.field private final method:Lio/ktor/http/HttpMethod;

.field private final nettyHeaders:Lio/netty/handler/codec/http2/Http2Headers;

.field private final remoteNetworkAddress:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Headers;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V
    .locals 4
    .param p1, "nettyHeaders"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p2, "localNetworkAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "remoteNetworkAddress"    # Ljava/net/InetSocketAddress;

    const-string v0, "nettyHeaders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->nettyHeaders:Lio/netty/handler/codec/http2/Http2Headers;

    .line 13
    iput-object p2, p0, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->localNetworkAddress:Ljava/net/InetSocketAddress;

    .line 14
    iput-object p3, p0, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->remoteNetworkAddress:Ljava/net/InetSocketAddress;

    .line 16
    iget-object v0, p0, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->nettyHeaders:Lio/netty/handler/codec/http2/Http2Headers;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Headers;->method()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    nop

    .local v0, "it":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 16
    .local v1, "$i$a$-let-Http2LocalConnectionPoint$method$1":I
    sget-object v2, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/ktor/http/HttpMethod$Companion;->parse(Ljava/lang/String;)Lio/ktor/http/HttpMethod;

    move-result-object v0

    .end local v0    # "it":Ljava/lang/CharSequence;
    .end local v1    # "$i$a$-let-Http2LocalConnectionPoint$method$1":I
    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getGet()Lio/ktor/http/HttpMethod;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->method:Lio/ktor/http/HttpMethod;

    .line 11
    return-void
.end method

.method private final getDefaultPort()I
    .locals 2

    .line 49
    sget-object v0, Lio/ktor/http/URLProtocol;->Companion:Lio/ktor/http/URLProtocol$Companion;

    invoke-virtual {p0}, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->getScheme()Ljava/lang/String;

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

    .line 29
    iget-object v0, p0, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->nettyHeaders:Lio/netty/handler/codec/http2/Http2Headers;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Headers;->authority()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ":"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "localhost"

    :cond_1
    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->localNetworkAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "localhost"

    :cond_1
    return-object v0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 3

    .line 39
    iget-object v0, p0, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->localNetworkAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 68
    .local v0, "it":Ljava/net/InetSocketAddress;
    const/4 v1, 0x0

    .line 39
    .local v1, "$i$a$-let-Http2LocalConnectionPoint$localHost$1":I
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0    # "it":Ljava/net/InetSocketAddress;
    .end local v1    # "$i$a$-let-Http2LocalConnectionPoint$localHost$1":I
    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    const-string v2, "localhost"

    :cond_2
    return-object v2
.end method

.method public getLocalPort()I
    .locals 1

    .line 51
    iget-object v0, p0, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->localNetworkAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->getDefaultPort()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMethod()Lio/ktor/http/HttpMethod;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->method:Lio/ktor/http/HttpMethod;

    return-object v0
.end method

.method public getPort()I
    .locals 4

    .line 33
    iget-object v0, p0, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->nettyHeaders:Lio/netty/handler/codec/http2/Http2Headers;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Headers;->authority()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 33
    nop

    .line 34
    const-string v1, ":"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->substringAfter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, v0

    .line 68
    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 34
    .local v2, "$i$a$-takeIf-Http2LocalConnectionPoint$port$1":I
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-takeIf-Http2LocalConnectionPoint$port$1":I
    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 33
    goto :goto_2

    .line 35
    :cond_2
    iget-object v0, p0, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->localNetworkAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_2

    .line 33
    :cond_3
    nop

    .line 36
    const/16 v0, 0x50

    :goto_2
    return v0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->remoteNetworkAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "unknown"

    :cond_1
    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 3

    .line 60
    nop

    .line 59
    iget-object v0, p0, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->remoteNetworkAddress:Ljava/net/InetSocketAddress;

    .line 60
    if-eqz v0, :cond_0

    .line 59
    nop

    .line 60
    nop

    .line 68
    .local v0, "it":Ljava/net/InetSocketAddress;
    const/4 v1, 0x0

    .line 60
    .local v1, "$i$a$-let-Http2LocalConnectionPoint$remoteHost$1":I
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0    # "it":Ljava/net/InetSocketAddress;
    .end local v1    # "$i$a$-let-Http2LocalConnectionPoint$remoteHost$1":I
    :cond_0
    const/4 v2, 0x0

    .line 59
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 61
    const-string v2, "unknown"

    :cond_2
    return-object v2
.end method

.method public getRemotePort()I
    .locals 1

    .line 63
    iget-object v0, p0, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->remoteNetworkAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->nettyHeaders:Lio/netty/handler/codec/http2/Http2Headers;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Headers;->scheme()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "http"

    :cond_1
    return-object v0
.end method

.method public getServerHost()Ljava/lang/String;
    .locals 4

    .line 41
    iget-object v0, p0, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->nettyHeaders:Lio/netty/handler/codec/http2/Http2Headers;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Headers;->authority()Ljava/lang/CharSequence;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 41
    nop

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 42
    nop

    .line 43
    const-string v1, ":"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getServerPort()I
    .locals 3

    .line 53
    iget-object v0, p0, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->nettyHeaders:Lio/netty/handler/codec/http2/Http2Headers;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Headers;->authority()Ljava/lang/CharSequence;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 53
    nop

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 54
    nop

    .line 55
    invoke-direct {p0}, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->getDefaultPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->substringAfter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 53
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->getLocalPort()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;->nettyHeaders:Lio/netty/handler/codec/http2/Http2Headers;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Headers;->path()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "/"

    :cond_1
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 22
    const-string v0, "HTTP/2"

    return-object v0
.end method
