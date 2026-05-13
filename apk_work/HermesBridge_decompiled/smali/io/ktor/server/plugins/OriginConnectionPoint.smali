.class public final Lio/ktor/server/plugins/OriginConnectionPoint;
.super Ljava/lang/Object;
.source "OriginConnectionPoint.kt"

# interfaces
.implements Lio/ktor/http/RequestConnectionPoint;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0001\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008R\u001a\u0010\t\u001a\u00020\u00078VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\rR\u0014\u0010\u0010\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\rR\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u00138VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001b\u0010\u000b\u001a\u0004\u0008\u001c\u0010\u0015R\u0014\u0010\u001d\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\rR\u0014\u0010\u001f\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\rR\u0014\u0010!\u001a\u00020\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u0015R\u0014\u0010#\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\rR\u0014\u0010%\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\rR\u0014\u0010\'\u001a\u00020\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\u0015R\u0014\u0010)\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\rR\u0014\u0010+\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010\r\u00a8\u0006-"
    }
    d2 = {
        "Lio/ktor/server/plugins/OriginConnectionPoint;",
        "Lio/ktor/http/RequestConnectionPoint;",
        "call",
        "Lio/ktor/server/application/ApplicationCall;",
        "(Lio/ktor/server/application/ApplicationCall;)V",
        "local",
        "hostHeaderValue",
        "",
        "(Lio/ktor/http/RequestConnectionPoint;Ljava/lang/String;)V",
        "host",
        "getHost$annotations",
        "()V",
        "getHost",
        "()Ljava/lang/String;",
        "localAddress",
        "getLocalAddress",
        "localHost",
        "getLocalHost",
        "localPort",
        "",
        "getLocalPort",
        "()I",
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
        "ktor-server-core"
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
.field private final hostHeaderValue:Ljava/lang/String;

.field private final local:Lio/ktor/http/RequestConnectionPoint;


# direct methods
.method public constructor <init>(Lio/ktor/http/RequestConnectionPoint;Ljava/lang/String;)V
    .locals 1
    .param p1, "local"    # Lio/ktor/http/RequestConnectionPoint;
    .param p2, "hostHeaderValue"    # Ljava/lang/String;

    const-string v0, "local"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lio/ktor/server/plugins/OriginConnectionPoint;->local:Lio/ktor/http/RequestConnectionPoint;

    .line 76
    iput-object p2, p0, Lio/ktor/server/plugins/OriginConnectionPoint;->hostHeaderValue:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Lio/ktor/server/application/ApplicationCall;)V
    .locals 3
    .param p1, "call"    # Lio/ktor/server/application/ApplicationCall;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-interface {p1}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/request/ApplicationRequest;->getLocal()Lio/ktor/http/RequestConnectionPoint;

    move-result-object v0

    invoke-interface {p1}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v1

    sget-object v2, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v2}, Lio/ktor/http/HttpHeaders;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->header(Lio/ktor/server/request/ApplicationRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/ktor/server/plugins/OriginConnectionPoint;-><init>(Lio/ktor/http/RequestConnectionPoint;Ljava/lang/String;)V

    return-void
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
        message = "Use localHost or serverHost instead"
    .end annotation

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 4

    .line 101
    iget-object v0, p0, Lio/ktor/server/plugins/OriginConnectionPoint;->hostHeaderValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ":"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    iget-object v0, p0, Lio/ktor/server/plugins/OriginConnectionPoint;->local:Lio/ktor/http/RequestConnectionPoint;

    invoke-interface {v0}, Lio/ktor/http/RequestConnectionPoint;->getHost()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lio/ktor/server/plugins/OriginConnectionPoint;->local:Lio/ktor/http/RequestConnectionPoint;

    invoke-interface {v0}, Lio/ktor/http/RequestConnectionPoint;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lio/ktor/server/plugins/OriginConnectionPoint;->local:Lio/ktor/http/RequestConnectionPoint;

    invoke-interface {v0}, Lio/ktor/http/RequestConnectionPoint;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 94
    iget-object v0, p0, Lio/ktor/server/plugins/OriginConnectionPoint;->local:Lio/ktor/http/RequestConnectionPoint;

    invoke-interface {v0}, Lio/ktor/http/RequestConnectionPoint;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMethod()Lio/ktor/http/HttpMethod;
    .locals 1

    .line 114
    iget-object v0, p0, Lio/ktor/server/plugins/OriginConnectionPoint;->local:Lio/ktor/http/RequestConnectionPoint;

    invoke-interface {v0}, Lio/ktor/http/RequestConnectionPoint;->getMethod()Lio/ktor/http/HttpMethod;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 3

    .line 89
    iget-object v0, p0, Lio/ktor/server/plugins/OriginConnectionPoint;->hostHeaderValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ":"

    const-string v2, "80"

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->substringAfter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 89
    nop

    .line 90
    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lio/ktor/server/plugins/OriginConnectionPoint;->local:Lio/ktor/http/RequestConnectionPoint;

    invoke-interface {v0}, Lio/ktor/http/RequestConnectionPoint;->getPort()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lio/ktor/server/plugins/OriginConnectionPoint;->local:Lio/ktor/http/RequestConnectionPoint;

    invoke-interface {v0}, Lio/ktor/http/RequestConnectionPoint;->getRemoteAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lio/ktor/server/plugins/OriginConnectionPoint;->local:Lio/ktor/http/RequestConnectionPoint;

    invoke-interface {v0}, Lio/ktor/http/RequestConnectionPoint;->getRemoteHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .line 119
    iget-object v0, p0, Lio/ktor/server/plugins/OriginConnectionPoint;->local:Lio/ktor/http/RequestConnectionPoint;

    invoke-interface {v0}, Lio/ktor/http/RequestConnectionPoint;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lio/ktor/server/plugins/OriginConnectionPoint;->local:Lio/ktor/http/RequestConnectionPoint;

    invoke-interface {v0}, Lio/ktor/http/RequestConnectionPoint;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerHost()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lio/ktor/server/plugins/OriginConnectionPoint;->local:Lio/ktor/http/RequestConnectionPoint;

    invoke-interface {v0}, Lio/ktor/http/RequestConnectionPoint;->getServerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerPort()I
    .locals 1

    .line 96
    iget-object v0, p0, Lio/ktor/server/plugins/OriginConnectionPoint;->local:Lio/ktor/http/RequestConnectionPoint;

    invoke-interface {v0}, Lio/ktor/http/RequestConnectionPoint;->getServerPort()I

    move-result v0

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lio/ktor/server/plugins/OriginConnectionPoint;->local:Lio/ktor/http/RequestConnectionPoint;

    invoke-interface {v0}, Lio/ktor/http/RequestConnectionPoint;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lio/ktor/server/plugins/OriginConnectionPoint;->local:Lio/ktor/http/RequestConnectionPoint;

    invoke-interface {v0}, Lio/ktor/http/RequestConnectionPoint;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
