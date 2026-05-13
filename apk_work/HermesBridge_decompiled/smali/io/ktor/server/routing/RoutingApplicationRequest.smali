.class public final Lio/ktor/server/routing/RoutingApplicationRequest;
.super Ljava/lang/Object;
.source "RoutingApplicationCall.kt"

# interfaces
.implements Lio/ktor/server/request/ApplicationRequest;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0007J\t\u0010 \u001a\u00020!H\u0096\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0012\u0010\u0010\u001a\u00020\u0011X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0012\u0010\u0014\u001a\u00020\u0015X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0012\u0010\u001a\u001a\u00020\u001bX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0012\u0010\u001e\u001a\u00020\u001bX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u001d\u00a8\u0006\""
    }
    d2 = {
        "Lio/ktor/server/routing/RoutingApplicationRequest;",
        "Lio/ktor/server/request/ApplicationRequest;",
        "call",
        "Lio/ktor/server/routing/RoutingApplicationCall;",
        "pipeline",
        "Lio/ktor/server/request/ApplicationReceivePipeline;",
        "engineRequest",
        "(Lio/ktor/server/routing/RoutingApplicationCall;Lio/ktor/server/request/ApplicationReceivePipeline;Lio/ktor/server/request/ApplicationRequest;)V",
        "getCall",
        "()Lio/ktor/server/routing/RoutingApplicationCall;",
        "cookies",
        "Lio/ktor/server/request/RequestCookies;",
        "getCookies",
        "()Lio/ktor/server/request/RequestCookies;",
        "getEngineRequest",
        "()Lio/ktor/server/request/ApplicationRequest;",
        "headers",
        "Lio/ktor/http/Headers;",
        "getHeaders",
        "()Lio/ktor/http/Headers;",
        "local",
        "Lio/ktor/http/RequestConnectionPoint;",
        "getLocal",
        "()Lio/ktor/http/RequestConnectionPoint;",
        "getPipeline",
        "()Lio/ktor/server/request/ApplicationReceivePipeline;",
        "queryParameters",
        "Lio/ktor/http/Parameters;",
        "getQueryParameters",
        "()Lio/ktor/http/Parameters;",
        "rawQueryParameters",
        "getRawQueryParameters",
        "receiveChannel",
        "Lio/ktor/utils/io/ByteReadChannel;",
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
.field private final call:Lio/ktor/server/routing/RoutingApplicationCall;

.field private final engineRequest:Lio/ktor/server/request/ApplicationRequest;

.field private final pipeline:Lio/ktor/server/request/ApplicationReceivePipeline;


# direct methods
.method public constructor <init>(Lio/ktor/server/routing/RoutingApplicationCall;Lio/ktor/server/request/ApplicationReceivePipeline;Lio/ktor/server/request/ApplicationRequest;)V
    .locals 1
    .param p1, "call"    # Lio/ktor/server/routing/RoutingApplicationCall;
    .param p2, "pipeline"    # Lio/ktor/server/request/ApplicationReceivePipeline;
    .param p3, "engineRequest"    # Lio/ktor/server/request/ApplicationRequest;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pipeline"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engineRequest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lio/ktor/server/routing/RoutingApplicationRequest;->call:Lio/ktor/server/routing/RoutingApplicationCall;

    .line 53
    iput-object p2, p0, Lio/ktor/server/routing/RoutingApplicationRequest;->pipeline:Lio/ktor/server/request/ApplicationReceivePipeline;

    .line 54
    iput-object p3, p0, Lio/ktor/server/routing/RoutingApplicationRequest;->engineRequest:Lio/ktor/server/request/ApplicationRequest;

    .line 51
    return-void
.end method


# virtual methods
.method public bridge synthetic getCall()Lio/ktor/server/application/ApplicationCall;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lio/ktor/server/routing/RoutingApplicationRequest;->getCall()Lio/ktor/server/routing/RoutingApplicationCall;

    move-result-object v0

    check-cast v0, Lio/ktor/server/application/ApplicationCall;

    return-object v0
.end method

.method public getCall()Lio/ktor/server/routing/RoutingApplicationCall;
    .locals 1

    .line 52
    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationRequest;->call:Lio/ktor/server/routing/RoutingApplicationCall;

    return-object v0
.end method

.method public getCookies()Lio/ktor/server/request/RequestCookies;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationRequest;->engineRequest:Lio/ktor/server/request/ApplicationRequest;

    invoke-interface {v0}, Lio/ktor/server/request/ApplicationRequest;->getCookies()Lio/ktor/server/request/RequestCookies;

    move-result-object v0

    return-object v0
.end method

.method public final getEngineRequest()Lio/ktor/server/request/ApplicationRequest;
    .locals 1

    .line 54
    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationRequest;->engineRequest:Lio/ktor/server/request/ApplicationRequest;

    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/Headers;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationRequest;->engineRequest:Lio/ktor/server/request/ApplicationRequest;

    invoke-interface {v0}, Lio/ktor/server/request/ApplicationRequest;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v0

    return-object v0
.end method

.method public getLocal()Lio/ktor/http/RequestConnectionPoint;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationRequest;->engineRequest:Lio/ktor/server/request/ApplicationRequest;

    invoke-interface {v0}, Lio/ktor/server/request/ApplicationRequest;->getLocal()Lio/ktor/http/RequestConnectionPoint;

    move-result-object v0

    return-object v0
.end method

.method public getPipeline()Lio/ktor/server/request/ApplicationReceivePipeline;
    .locals 1

    .line 53
    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationRequest;->pipeline:Lio/ktor/server/request/ApplicationReceivePipeline;

    return-object v0
.end method

.method public getQueryParameters()Lio/ktor/http/Parameters;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationRequest;->engineRequest:Lio/ktor/server/request/ApplicationRequest;

    invoke-interface {v0}, Lio/ktor/server/request/ApplicationRequest;->getQueryParameters()Lio/ktor/http/Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getRawQueryParameters()Lio/ktor/http/Parameters;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationRequest;->engineRequest:Lio/ktor/server/request/ApplicationRequest;

    invoke-interface {v0}, Lio/ktor/server/request/ApplicationRequest;->getRawQueryParameters()Lio/ktor/http/Parameters;

    move-result-object v0

    return-object v0
.end method

.method public receiveChannel()Lio/ktor/utils/io/ByteReadChannel;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationRequest;->engineRequest:Lio/ktor/server/request/ApplicationRequest;

    invoke-interface {v0}, Lio/ktor/server/request/ApplicationRequest;->receiveChannel()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    return-object v0
.end method
