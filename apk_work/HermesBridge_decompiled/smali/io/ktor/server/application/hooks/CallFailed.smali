.class public final Lio/ktor/server/application/hooks/CallFailed;
.super Ljava/lang/Object;
.source "CommonHooks.kt"

# interfaces
.implements Lio/ktor/server/application/Hook;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/server/application/Hook<",
        "Lkotlin/jvm/functions/Function3<",
        "-",
        "Lio/ktor/server/application/ApplicationCall;",
        "-",
        "Ljava/lang/Throwable;",
        "-",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002H\u0012D\u0012B\u0008\u0001\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u000cJ`\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112F\u0010\u0012\u001aB\u0008\u0001\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0002H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Lio/ktor/server/application/hooks/CallFailed;",
        "Lio/ktor/server/application/Hook;",
        "Lkotlin/Function3;",
        "Lio/ktor/server/application/ApplicationCall;",
        "Lkotlin/ParameterName;",
        "name",
        "call",
        "",
        "cause",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "()V",
        "phase",
        "Lio/ktor/util/pipeline/PipelinePhase;",
        "install",
        "pipeline",
        "Lio/ktor/server/application/ApplicationCallPipeline;",
        "handler",
        "(Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function3;)V",
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
.field public static final INSTANCE:Lio/ktor/server/application/hooks/CallFailed;

.field private static final phase:Lio/ktor/util/pipeline/PipelinePhase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/server/application/hooks/CallFailed;

    invoke-direct {v0}, Lio/ktor/server/application/hooks/CallFailed;-><init>()V

    sput-object v0, Lio/ktor/server/application/hooks/CallFailed;->INSTANCE:Lio/ktor/server/application/hooks/CallFailed;

    .line 36
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "BeforeSetup"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/application/hooks/CallFailed;->phase:Lio/ktor/util/pipeline/PipelinePhase;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic install(Lio/ktor/server/application/ApplicationCallPipeline;Ljava/lang/Object;)V
    .locals 1
    .param p1, "pipeline"    # Lio/ktor/server/application/ApplicationCallPipeline;
    .param p2, "handler"    # Ljava/lang/Object;

    .line 34
    move-object v0, p2

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p0, p1, v0}, Lio/ktor/server/application/hooks/CallFailed;->install(Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public install(Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function3;)V
    .locals 3
    .param p1, "pipeline"    # Lio/ktor/server/application/ApplicationCallPipeline;
    .param p2, "handler"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCallPipeline;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-",
            "Ljava/lang/Throwable;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pipeline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lio/ktor/server/application/ApplicationCallPipeline;->ApplicationPhase:Lio/ktor/server/application/ApplicationCallPipeline$ApplicationPhase;

    invoke-virtual {v0}, Lio/ktor/server/application/ApplicationCallPipeline$ApplicationPhase;->getSetup()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v0

    sget-object v1, Lio/ktor/server/application/hooks/CallFailed;->phase:Lio/ktor/util/pipeline/PipelinePhase;

    invoke-virtual {p1, v0, v1}, Lio/ktor/server/application/ApplicationCallPipeline;->insertPhaseBefore(Lio/ktor/util/pipeline/PipelinePhase;Lio/ktor/util/pipeline/PipelinePhase;)V

    .line 42
    sget-object v0, Lio/ktor/server/application/hooks/CallFailed;->phase:Lio/ktor/util/pipeline/PipelinePhase;

    new-instance v1, Lio/ktor/server/application/hooks/CallFailed$install$1;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lio/ktor/server/application/hooks/CallFailed$install$1;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p1, v0, v1}, Lio/ktor/server/application/ApplicationCallPipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 52
    return-void
.end method
