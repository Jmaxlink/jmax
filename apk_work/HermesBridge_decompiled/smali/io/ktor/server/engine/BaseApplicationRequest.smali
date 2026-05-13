.class public abstract Lio/ktor/server/engine/BaseApplicationRequest;
.super Ljava/lang/Object;
.source "BaseApplicationRequest.kt"

# interfaces
.implements Lio/ktor/server/request/ApplicationRequest;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/ktor/server/engine/BaseApplicationRequest;",
        "Lio/ktor/server/request/ApplicationRequest;",
        "call",
        "Lio/ktor/server/application/ApplicationCall;",
        "(Lio/ktor/server/application/ApplicationCall;)V",
        "getCall",
        "()Lio/ktor/server/application/ApplicationCall;",
        "pipeline",
        "Lio/ktor/server/request/ApplicationReceivePipeline;",
        "getPipeline",
        "()Lio/ktor/server/request/ApplicationReceivePipeline;",
        "ktor-server-host-common"
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
.field private final call:Lio/ktor/server/application/ApplicationCall;

.field private final pipeline:Lio/ktor/server/request/ApplicationReceivePipeline;


# direct methods
.method public constructor <init>(Lio/ktor/server/application/ApplicationCall;)V
    .locals 4
    .param p1, "call"    # Lio/ktor/server/application/ApplicationCall;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/server/engine/BaseApplicationRequest;->call:Lio/ktor/server/application/ApplicationCall;

    .line 17
    nop

    .line 15
    new-instance v0, Lio/ktor/server/request/ApplicationReceivePipeline;

    .line 16
    iget-object v1, p0, Lio/ktor/server/engine/BaseApplicationRequest;->call:Lio/ktor/server/application/ApplicationCall;

    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/server/application/Application;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lio/ktor/server/application/ApplicationEnvironment;->getDevelopmentMode()Z

    move-result v1

    .line 15
    invoke-direct {v0, v1}, Lio/ktor/server/request/ApplicationReceivePipeline;-><init>(Z)V

    .line 17
    move-object v1, v0

    .local v1, "$this$pipeline_u24lambda_u240":Lio/ktor/server/request/ApplicationReceivePipeline;
    const/4 v2, 0x0

    .line 18
    .local v2, "$i$a$-apply-BaseApplicationRequest$pipeline$1":I
    iget-object v3, p0, Lio/ktor/server/engine/BaseApplicationRequest;->call:Lio/ktor/server/application/ApplicationCall;

    invoke-interface {v3}, Lio/ktor/server/application/ApplicationCall;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v3

    invoke-virtual {v3}, Lio/ktor/server/application/Application;->getReceivePipeline()Lio/ktor/server/request/ApplicationReceivePipeline;

    move-result-object v3

    check-cast v3, Lio/ktor/util/pipeline/Pipeline;

    invoke-virtual {v1, v3}, Lio/ktor/server/request/ApplicationReceivePipeline;->resetFrom(Lio/ktor/util/pipeline/Pipeline;)V

    .line 19
    nop

    .line 17
    .end local v1    # "$this$pipeline_u24lambda_u240":Lio/ktor/server/request/ApplicationReceivePipeline;
    .end local v2    # "$i$a$-apply-BaseApplicationRequest$pipeline$1":I
    iput-object v0, p0, Lio/ktor/server/engine/BaseApplicationRequest;->pipeline:Lio/ktor/server/request/ApplicationReceivePipeline;

    .line 14
    return-void
.end method


# virtual methods
.method public final getCall()Lio/ktor/server/application/ApplicationCall;
    .locals 1

    .line 14
    iget-object v0, p0, Lio/ktor/server/engine/BaseApplicationRequest;->call:Lio/ktor/server/application/ApplicationCall;

    return-object v0
.end method

.method public getPipeline()Lio/ktor/server/request/ApplicationReceivePipeline;
    .locals 1

    .line 15
    iget-object v0, p0, Lio/ktor/server/engine/BaseApplicationRequest;->pipeline:Lio/ktor/server/request/ApplicationReceivePipeline;

    return-object v0
.end method
