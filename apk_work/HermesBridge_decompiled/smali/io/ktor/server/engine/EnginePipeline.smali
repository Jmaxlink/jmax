.class public final Lio/ktor/server/engine/EnginePipeline;
.super Lio/ktor/util/pipeline/Pipeline;
.source "EnginePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/engine/EnginePipeline$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/util/pipeline/Pipeline<",
        "Lkotlin/Unit;",
        "Lio/ktor/server/application/ApplicationCall;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00112\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0011B\u000f\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/ktor/server/engine/EnginePipeline;",
        "Lio/ktor/util/pipeline/Pipeline;",
        "",
        "Lio/ktor/server/application/ApplicationCall;",
        "developmentMode",
        "",
        "(Z)V",
        "getDevelopmentMode",
        "()Z",
        "receivePipeline",
        "Lio/ktor/server/request/ApplicationReceivePipeline;",
        "getReceivePipeline",
        "()Lio/ktor/server/request/ApplicationReceivePipeline;",
        "sendPipeline",
        "Lio/ktor/server/response/ApplicationSendPipeline;",
        "getSendPipeline",
        "()Lio/ktor/server/response/ApplicationSendPipeline;",
        "Companion",
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


# static fields
.field private static final Before:Lio/ktor/util/pipeline/PipelinePhase;

.field private static final Call:Lio/ktor/util/pipeline/PipelinePhase;

.field public static final Companion:Lio/ktor/server/engine/EnginePipeline$Companion;


# instance fields
.field private final developmentMode:Z

.field private final receivePipeline:Lio/ktor/server/request/ApplicationReceivePipeline;

.field private final sendPipeline:Lio/ktor/server/response/ApplicationSendPipeline;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/server/engine/EnginePipeline$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/server/engine/EnginePipeline$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/server/engine/EnginePipeline;->Companion:Lio/ktor/server/engine/EnginePipeline$Companion;

    .line 33
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "before"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/engine/EnginePipeline;->Before:Lio/ktor/util/pipeline/PipelinePhase;

    .line 38
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "call"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/engine/EnginePipeline;->Call:Lio/ktor/util/pipeline/PipelinePhase;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lio/ktor/server/engine/EnginePipeline;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "developmentMode"    # Z

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lio/ktor/util/pipeline/PipelinePhase;

    sget-object v1, Lio/ktor/server/engine/EnginePipeline;->Before:Lio/ktor/util/pipeline/PipelinePhase;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/ktor/server/engine/EnginePipeline;->Call:Lio/ktor/util/pipeline/PipelinePhase;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/Pipeline;-><init>([Lio/ktor/util/pipeline/PipelinePhase;)V

    .line 17
    iput-boolean p1, p0, Lio/ktor/server/engine/EnginePipeline;->developmentMode:Z

    .line 22
    new-instance v0, Lio/ktor/server/request/ApplicationReceivePipeline;

    invoke-virtual {p0}, Lio/ktor/server/engine/EnginePipeline;->getDevelopmentMode()Z

    move-result v1

    invoke-direct {v0, v1}, Lio/ktor/server/request/ApplicationReceivePipeline;-><init>(Z)V

    iput-object v0, p0, Lio/ktor/server/engine/EnginePipeline;->receivePipeline:Lio/ktor/server/request/ApplicationReceivePipeline;

    .line 27
    new-instance v0, Lio/ktor/server/response/ApplicationSendPipeline;

    invoke-virtual {p0}, Lio/ktor/server/engine/EnginePipeline;->getDevelopmentMode()Z

    move-result v1

    invoke-direct {v0, v1}, Lio/ktor/server/response/ApplicationSendPipeline;-><init>(Z)V

    iput-object v0, p0, Lio/ktor/server/engine/EnginePipeline;->sendPipeline:Lio/ktor/server/response/ApplicationSendPipeline;

    .line 16
    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 16
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/server/engine/EnginePipeline;-><init>(Z)V

    .line 40
    return-void
.end method

.method public static final synthetic access$getBefore$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 16
    sget-object v0, Lio/ktor/server/engine/EnginePipeline;->Before:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getCall$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 16
    sget-object v0, Lio/ktor/server/engine/EnginePipeline;->Call:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method


# virtual methods
.method public getDevelopmentMode()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lio/ktor/server/engine/EnginePipeline;->developmentMode:Z

    return v0
.end method

.method public final getReceivePipeline()Lio/ktor/server/request/ApplicationReceivePipeline;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/ktor/server/engine/EnginePipeline;->receivePipeline:Lio/ktor/server/request/ApplicationReceivePipeline;

    return-object v0
.end method

.method public final getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/ktor/server/engine/EnginePipeline;->sendPipeline:Lio/ktor/server/response/ApplicationSendPipeline;

    return-object v0
.end method
