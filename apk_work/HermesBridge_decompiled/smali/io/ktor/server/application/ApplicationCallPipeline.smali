.class public Lio/ktor/server/application/ApplicationCallPipeline;
.super Lio/ktor/util/pipeline/Pipeline;
.source "ApplicationCallPipeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/application/ApplicationCallPipeline$ApplicationPhase;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0015B\u001b\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/ktor/server/application/ApplicationCallPipeline;",
        "Lio/ktor/util/pipeline/Pipeline;",
        "",
        "Lio/ktor/server/application/ApplicationCall;",
        "developmentMode",
        "",
        "environment",
        "Lio/ktor/server/application/ApplicationEnvironment;",
        "(ZLio/ktor/server/application/ApplicationEnvironment;)V",
        "getDevelopmentMode",
        "()Z",
        "getEnvironment",
        "()Lio/ktor/server/application/ApplicationEnvironment;",
        "receivePipeline",
        "Lio/ktor/server/request/ApplicationReceivePipeline;",
        "getReceivePipeline",
        "()Lio/ktor/server/request/ApplicationReceivePipeline;",
        "sendPipeline",
        "Lio/ktor/server/response/ApplicationSendPipeline;",
        "getSendPipeline",
        "()Lio/ktor/server/response/ApplicationSendPipeline;",
        "ApplicationPhase",
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


# static fields
.field public static final ApplicationPhase:Lio/ktor/server/application/ApplicationCallPipeline$ApplicationPhase;

.field private static final Call:Lio/ktor/util/pipeline/PipelinePhase;

.field private static final Fallback:Lio/ktor/util/pipeline/PipelinePhase;

.field private static final Features:Lio/ktor/util/pipeline/PipelinePhase;

.field private static final Monitoring:Lio/ktor/util/pipeline/PipelinePhase;

.field private static final Plugins:Lio/ktor/util/pipeline/PipelinePhase;

.field private static final Setup:Lio/ktor/util/pipeline/PipelinePhase;


# instance fields
.field private final developmentMode:Z

.field private final environment:Lio/ktor/server/application/ApplicationEnvironment;

.field private final receivePipeline:Lio/ktor/server/request/ApplicationReceivePipeline;

.field private final sendPipeline:Lio/ktor/server/response/ApplicationSendPipeline;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/server/application/ApplicationCallPipeline$ApplicationPhase;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/server/application/ApplicationCallPipeline$ApplicationPhase;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/server/application/ApplicationCallPipeline;->ApplicationPhase:Lio/ktor/server/application/ApplicationCallPipeline$ApplicationPhase;

    .line 42
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Setup"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/application/ApplicationCallPipeline;->Setup:Lio/ktor/util/pipeline/PipelinePhase;

    .line 47
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Monitoring"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/application/ApplicationCallPipeline;->Monitoring:Lio/ktor/util/pipeline/PipelinePhase;

    .line 52
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Plugins"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/application/ApplicationCallPipeline;->Plugins:Lio/ktor/util/pipeline/PipelinePhase;

    .line 57
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Call"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/application/ApplicationCallPipeline;->Call:Lio/ktor/util/pipeline/PipelinePhase;

    .line 62
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Fallback"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/application/ApplicationCallPipeline;->Fallback:Lio/ktor/util/pipeline/PipelinePhase;

    .line 68
    sget-object v0, Lio/ktor/server/application/ApplicationCallPipeline;->Plugins:Lio/ktor/util/pipeline/PipelinePhase;

    sput-object v0, Lio/ktor/server/application/ApplicationCallPipeline;->Features:Lio/ktor/util/pipeline/PipelinePhase;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v0}, Lio/ktor/server/application/ApplicationCallPipeline;-><init>(ZLio/ktor/server/application/ApplicationEnvironment;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLio/ktor/server/application/ApplicationEnvironment;)V
    .locals 3
    .param p1, "developmentMode"    # Z
    .param p2, "environment"    # Lio/ktor/server/application/ApplicationEnvironment;

    .line 18
    nop

    .line 19
    nop

    .line 20
    nop

    .line 19
    nop

    .line 21
    nop

    .line 19
    nop

    .line 22
    nop

    .line 19
    nop

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lio/ktor/util/pipeline/PipelinePhase;

    sget-object v1, Lio/ktor/server/application/ApplicationCallPipeline;->Setup:Lio/ktor/util/pipeline/PipelinePhase;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/ktor/server/application/ApplicationCallPipeline;->Monitoring:Lio/ktor/util/pipeline/PipelinePhase;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/ktor/server/application/ApplicationCallPipeline;->Plugins:Lio/ktor/util/pipeline/PipelinePhase;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/ktor/server/application/ApplicationCallPipeline;->Call:Lio/ktor/util/pipeline/PipelinePhase;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/ktor/server/application/ApplicationCallPipeline;->Fallback:Lio/ktor/util/pipeline/PipelinePhase;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 19
    nop

    .line 18
    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/Pipeline;-><init>([Lio/ktor/util/pipeline/PipelinePhase;)V

    .line 16
    iput-boolean p1, p0, Lio/ktor/server/application/ApplicationCallPipeline;->developmentMode:Z

    .line 17
    iput-object p2, p0, Lio/ktor/server/application/ApplicationCallPipeline;->environment:Lio/ktor/server/application/ApplicationEnvironment;

    .line 28
    new-instance v0, Lio/ktor/server/request/ApplicationReceivePipeline;

    iget-boolean v1, p0, Lio/ktor/server/application/ApplicationCallPipeline;->developmentMode:Z

    invoke-direct {v0, v1}, Lio/ktor/server/request/ApplicationReceivePipeline;-><init>(Z)V

    iput-object v0, p0, Lio/ktor/server/application/ApplicationCallPipeline;->receivePipeline:Lio/ktor/server/request/ApplicationReceivePipeline;

    .line 33
    new-instance v0, Lio/ktor/server/response/ApplicationSendPipeline;

    iget-boolean v1, p0, Lio/ktor/server/application/ApplicationCallPipeline;->developmentMode:Z

    invoke-direct {v0, v1}, Lio/ktor/server/response/ApplicationSendPipeline;-><init>(Z)V

    iput-object v0, p0, Lio/ktor/server/application/ApplicationCallPipeline;->sendPipeline:Lio/ktor/server/response/ApplicationSendPipeline;

    .line 15
    return-void
.end method

.method public synthetic constructor <init>(ZLio/ktor/server/application/ApplicationEnvironment;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 15
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 16
    const/4 p1, 0x0

    .line 15
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 17
    const/4 p2, 0x0

    .line 15
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/ktor/server/application/ApplicationCallPipeline;-><init>(ZLio/ktor/server/application/ApplicationEnvironment;)V

    .line 70
    return-void
.end method

.method public static final synthetic access$getCall$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 14
    sget-object v0, Lio/ktor/server/application/ApplicationCallPipeline;->Call:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getFallback$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 14
    sget-object v0, Lio/ktor/server/application/ApplicationCallPipeline;->Fallback:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getFeatures$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 14
    sget-object v0, Lio/ktor/server/application/ApplicationCallPipeline;->Features:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getMonitoring$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 14
    sget-object v0, Lio/ktor/server/application/ApplicationCallPipeline;->Monitoring:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getPlugins$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 14
    sget-object v0, Lio/ktor/server/application/ApplicationCallPipeline;->Plugins:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getSetup$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 14
    sget-object v0, Lio/ktor/server/application/ApplicationCallPipeline;->Setup:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method


# virtual methods
.method public final getDevelopmentMode()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lio/ktor/server/application/ApplicationCallPipeline;->developmentMode:Z

    return v0
.end method

.method public getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;
    .locals 1

    .line 17
    iget-object v0, p0, Lio/ktor/server/application/ApplicationCallPipeline;->environment:Lio/ktor/server/application/ApplicationEnvironment;

    return-object v0
.end method

.method public final getReceivePipeline()Lio/ktor/server/request/ApplicationReceivePipeline;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/ktor/server/application/ApplicationCallPipeline;->receivePipeline:Lio/ktor/server/request/ApplicationReceivePipeline;

    return-object v0
.end method

.method public final getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/ktor/server/application/ApplicationCallPipeline;->sendPipeline:Lio/ktor/server/response/ApplicationSendPipeline;

    return-object v0
.end method
