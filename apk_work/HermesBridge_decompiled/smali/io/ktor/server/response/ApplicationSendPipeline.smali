.class public Lio/ktor/server/response/ApplicationSendPipeline;
.super Lio/ktor/util/pipeline/Pipeline;
.source "ApplicationSendPipeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/response/ApplicationSendPipeline$Phases;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/util/pipeline/Pipeline<",
        "Ljava/lang/Object;",
        "Lio/ktor/server/application/ApplicationCall;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 \t2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\tB\u000f\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lio/ktor/server/response/ApplicationSendPipeline;",
        "Lio/ktor/util/pipeline/Pipeline;",
        "",
        "Lio/ktor/server/application/ApplicationCall;",
        "developmentMode",
        "",
        "(Z)V",
        "getDevelopmentMode",
        "()Z",
        "Phases",
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
.field private static final After:Lio/ktor/util/pipeline/PipelinePhase;

.field private static final Before:Lio/ktor/util/pipeline/PipelinePhase;

.field private static final ContentEncoding:Lio/ktor/util/pipeline/PipelinePhase;

.field private static final Engine:Lio/ktor/util/pipeline/PipelinePhase;

.field public static final Phases:Lio/ktor/server/response/ApplicationSendPipeline$Phases;

.field private static final Render:Lio/ktor/util/pipeline/PipelinePhase;

.field private static final TransferEncoding:Lio/ktor/util/pipeline/PipelinePhase;

.field private static final Transform:Lio/ktor/util/pipeline/PipelinePhase;


# instance fields
.field private final developmentMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/server/response/ApplicationSendPipeline$Phases;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/server/response/ApplicationSendPipeline$Phases;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/server/response/ApplicationSendPipeline;->Phases:Lio/ktor/server/response/ApplicationSendPipeline$Phases;

    .line 24
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Before"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/response/ApplicationSendPipeline;->Before:Lio/ktor/util/pipeline/PipelinePhase;

    .line 29
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Transform"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/response/ApplicationSendPipeline;->Transform:Lio/ktor/util/pipeline/PipelinePhase;

    .line 36
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Render"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/response/ApplicationSendPipeline;->Render:Lio/ktor/util/pipeline/PipelinePhase;

    .line 41
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "ContentEncoding"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/response/ApplicationSendPipeline;->ContentEncoding:Lio/ktor/util/pipeline/PipelinePhase;

    .line 46
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "TransferEncoding"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/response/ApplicationSendPipeline;->TransferEncoding:Lio/ktor/util/pipeline/PipelinePhase;

    .line 51
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "After"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/response/ApplicationSendPipeline;->After:Lio/ktor/util/pipeline/PipelinePhase;

    .line 56
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Engine"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/response/ApplicationSendPipeline;->Engine:Lio/ktor/util/pipeline/PipelinePhase;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lio/ktor/server/response/ApplicationSendPipeline;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "developmentMode"    # Z

    .line 15
    const/4 v0, 0x7

    new-array v0, v0, [Lio/ktor/util/pipeline/PipelinePhase;

    sget-object v1, Lio/ktor/server/response/ApplicationSendPipeline;->Before:Lio/ktor/util/pipeline/PipelinePhase;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/ktor/server/response/ApplicationSendPipeline;->Transform:Lio/ktor/util/pipeline/PipelinePhase;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/ktor/server/response/ApplicationSendPipeline;->Render:Lio/ktor/util/pipeline/PipelinePhase;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/ktor/server/response/ApplicationSendPipeline;->ContentEncoding:Lio/ktor/util/pipeline/PipelinePhase;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/ktor/server/response/ApplicationSendPipeline;->TransferEncoding:Lio/ktor/util/pipeline/PipelinePhase;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/ktor/server/response/ApplicationSendPipeline;->After:Lio/ktor/util/pipeline/PipelinePhase;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lio/ktor/server/response/ApplicationSendPipeline;->Engine:Lio/ktor/util/pipeline/PipelinePhase;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/Pipeline;-><init>([Lio/ktor/util/pipeline/PipelinePhase;)V

    .line 14
    iput-boolean p1, p0, Lio/ktor/server/response/ApplicationSendPipeline;->developmentMode:Z

    .line 13
    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 13
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 14
    const/4 p1, 0x0

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/server/response/ApplicationSendPipeline;-><init>(Z)V

    .line 58
    return-void
.end method

.method public static final synthetic access$getAfter$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 13
    sget-object v0, Lio/ktor/server/response/ApplicationSendPipeline;->After:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getBefore$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 13
    sget-object v0, Lio/ktor/server/response/ApplicationSendPipeline;->Before:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getContentEncoding$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 13
    sget-object v0, Lio/ktor/server/response/ApplicationSendPipeline;->ContentEncoding:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getEngine$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 13
    sget-object v0, Lio/ktor/server/response/ApplicationSendPipeline;->Engine:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getRender$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 13
    sget-object v0, Lio/ktor/server/response/ApplicationSendPipeline;->Render:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getTransferEncoding$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 13
    sget-object v0, Lio/ktor/server/response/ApplicationSendPipeline;->TransferEncoding:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getTransform$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 13
    sget-object v0, Lio/ktor/server/response/ApplicationSendPipeline;->Transform:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method


# virtual methods
.method public getDevelopmentMode()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lio/ktor/server/response/ApplicationSendPipeline;->developmentMode:Z

    return v0
.end method
