.class public interface abstract Lio/ktor/server/response/ApplicationResponse;
.super Ljava/lang/Object;
.source "ApplicationResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\'J\n\u0010\u001a\u001a\u0004\u0018\u00010\u001bH&J\u0010\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001bH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0010R\u0012\u0010\u0011\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0010R\u0012\u0010\u0012\u001a\u00020\u0013X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001d"
    }
    d2 = {
        "Lio/ktor/server/response/ApplicationResponse;",
        "",
        "call",
        "Lio/ktor/server/application/ApplicationCall;",
        "getCall",
        "()Lio/ktor/server/application/ApplicationCall;",
        "cookies",
        "Lio/ktor/server/response/ResponseCookies;",
        "getCookies",
        "()Lio/ktor/server/response/ResponseCookies;",
        "headers",
        "Lio/ktor/server/response/ResponseHeaders;",
        "getHeaders",
        "()Lio/ktor/server/response/ResponseHeaders;",
        "isCommitted",
        "",
        "()Z",
        "isSent",
        "pipeline",
        "Lio/ktor/server/response/ApplicationSendPipeline;",
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


# virtual methods
.method public abstract getCall()Lio/ktor/server/application/ApplicationCall;
.end method

.method public abstract getCookies()Lio/ktor/server/response/ResponseCookies;
.end method

.method public abstract getHeaders()Lio/ktor/server/response/ResponseHeaders;
.end method

.method public abstract getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;
.end method

.method public abstract isCommitted()Z
.end method

.method public abstract isSent()Z
.end method

.method public abstract push(Lio/ktor/server/response/ResponsePushBuilder;)V
    .annotation runtime Lio/ktor/server/response/UseHttp2Push;
    .end annotation
.end method

.method public abstract status()Lio/ktor/http/HttpStatusCode;
.end method

.method public abstract status(Lio/ktor/http/HttpStatusCode;)V
.end method
