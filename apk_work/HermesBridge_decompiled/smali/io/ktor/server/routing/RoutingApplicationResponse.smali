.class public final Lio/ktor/server/routing/RoutingApplicationResponse;
.super Ljava/lang/Object;
.source "RoutingApplicationCall.kt"

# interfaces
.implements Lio/ktor/server/response/ApplicationResponse;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0007J\u0011\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0097\u0001J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0001J\u0011\u0010\u001e\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001fH\u0096\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0012\u0010\u0010\u001a\u00020\u0011X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0012\u0010\u0014\u001a\u00020\u0015X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0016R\u0012\u0010\u0017\u001a\u00020\u0015X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lio/ktor/server/routing/RoutingApplicationResponse;",
        "Lio/ktor/server/response/ApplicationResponse;",
        "call",
        "Lio/ktor/server/routing/RoutingApplicationCall;",
        "pipeline",
        "Lio/ktor/server/response/ApplicationSendPipeline;",
        "engineResponse",
        "(Lio/ktor/server/routing/RoutingApplicationCall;Lio/ktor/server/response/ApplicationSendPipeline;Lio/ktor/server/response/ApplicationResponse;)V",
        "getCall",
        "()Lio/ktor/server/routing/RoutingApplicationCall;",
        "cookies",
        "Lio/ktor/server/response/ResponseCookies;",
        "getCookies",
        "()Lio/ktor/server/response/ResponseCookies;",
        "getEngineResponse",
        "()Lio/ktor/server/response/ApplicationResponse;",
        "headers",
        "Lio/ktor/server/response/ResponseHeaders;",
        "getHeaders",
        "()Lio/ktor/server/response/ResponseHeaders;",
        "isCommitted",
        "",
        "()Z",
        "isSent",
        "getPipeline",
        "()Lio/ktor/server/response/ApplicationSendPipeline;",
        "push",
        "",
        "builder",
        "Lio/ktor/server/response/ResponsePushBuilder;",
        "status",
        "Lio/ktor/http/HttpStatusCode;",
        "value",
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

.field private final engineResponse:Lio/ktor/server/response/ApplicationResponse;

.field private final pipeline:Lio/ktor/server/response/ApplicationSendPipeline;


# direct methods
.method public constructor <init>(Lio/ktor/server/routing/RoutingApplicationCall;Lio/ktor/server/response/ApplicationSendPipeline;Lio/ktor/server/response/ApplicationResponse;)V
    .locals 1
    .param p1, "call"    # Lio/ktor/server/routing/RoutingApplicationCall;
    .param p2, "pipeline"    # Lio/ktor/server/response/ApplicationSendPipeline;
    .param p3, "engineResponse"    # Lio/ktor/server/response/ApplicationResponse;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pipeline"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engineResponse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lio/ktor/server/routing/RoutingApplicationResponse;->call:Lio/ktor/server/routing/RoutingApplicationCall;

    .line 62
    iput-object p2, p0, Lio/ktor/server/routing/RoutingApplicationResponse;->pipeline:Lio/ktor/server/response/ApplicationSendPipeline;

    .line 63
    iput-object p3, p0, Lio/ktor/server/routing/RoutingApplicationResponse;->engineResponse:Lio/ktor/server/response/ApplicationResponse;

    .line 60
    return-void
.end method


# virtual methods
.method public bridge synthetic getCall()Lio/ktor/server/application/ApplicationCall;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lio/ktor/server/routing/RoutingApplicationResponse;->getCall()Lio/ktor/server/routing/RoutingApplicationCall;

    move-result-object v0

    check-cast v0, Lio/ktor/server/application/ApplicationCall;

    return-object v0
.end method

.method public getCall()Lio/ktor/server/routing/RoutingApplicationCall;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationResponse;->call:Lio/ktor/server/routing/RoutingApplicationCall;

    return-object v0
.end method

.method public getCookies()Lio/ktor/server/response/ResponseCookies;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationResponse;->engineResponse:Lio/ktor/server/response/ApplicationResponse;

    invoke-interface {v0}, Lio/ktor/server/response/ApplicationResponse;->getCookies()Lio/ktor/server/response/ResponseCookies;

    move-result-object v0

    return-object v0
.end method

.method public final getEngineResponse()Lio/ktor/server/response/ApplicationResponse;
    .locals 1

    .line 63
    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationResponse;->engineResponse:Lio/ktor/server/response/ApplicationResponse;

    return-object v0
.end method

.method public getHeaders()Lio/ktor/server/response/ResponseHeaders;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationResponse;->engineResponse:Lio/ktor/server/response/ApplicationResponse;

    invoke-interface {v0}, Lio/ktor/server/response/ApplicationResponse;->getHeaders()Lio/ktor/server/response/ResponseHeaders;

    move-result-object v0

    return-object v0
.end method

.method public getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;
    .locals 1

    .line 62
    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationResponse;->pipeline:Lio/ktor/server/response/ApplicationSendPipeline;

    return-object v0
.end method

.method public isCommitted()Z
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationResponse;->engineResponse:Lio/ktor/server/response/ApplicationResponse;

    invoke-interface {v0}, Lio/ktor/server/response/ApplicationResponse;->isCommitted()Z

    move-result v0

    return v0
.end method

.method public isSent()Z
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationResponse;->engineResponse:Lio/ktor/server/response/ApplicationResponse;

    invoke-interface {v0}, Lio/ktor/server/response/ApplicationResponse;->isSent()Z

    move-result v0

    return v0
.end method

.method public push(Lio/ktor/server/response/ResponsePushBuilder;)V
    .locals 1
    .annotation runtime Lio/ktor/server/response/UseHttp2Push;
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationResponse;->engineResponse:Lio/ktor/server/response/ApplicationResponse;

    invoke-interface {v0, p1}, Lio/ktor/server/response/ApplicationResponse;->push(Lio/ktor/server/response/ResponsePushBuilder;)V

    return-void
.end method

.method public status()Lio/ktor/http/HttpStatusCode;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationResponse;->engineResponse:Lio/ktor/server/response/ApplicationResponse;

    invoke-interface {v0}, Lio/ktor/server/response/ApplicationResponse;->status()Lio/ktor/http/HttpStatusCode;

    move-result-object v0

    return-object v0
.end method

.method public status(Lio/ktor/http/HttpStatusCode;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/server/routing/RoutingApplicationResponse;->engineResponse:Lio/ktor/server/response/ApplicationResponse;

    invoke-interface {v0, p1}, Lio/ktor/server/response/ApplicationResponse;->status(Lio/ktor/http/HttpStatusCode;)V

    return-void
.end method
