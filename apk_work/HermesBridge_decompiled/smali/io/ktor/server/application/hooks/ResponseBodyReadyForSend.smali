.class public final Lio/ktor/server/application/hooks/ResponseBodyReadyForSend;
.super Ljava/lang/Object;
.source "CommonHooks.kt"

# interfaces
.implements Lio/ktor/server/application/Hook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/application/hooks/ResponseBodyReadyForSend$Context;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/server/application/Hook<",
        "Lkotlin/jvm/functions/Function4<",
        "-",
        "Lio/ktor/server/application/hooks/ResponseBodyReadyForSend$Context;",
        "-",
        "Lio/ktor/server/application/ApplicationCall;",
        "-",
        "Lio/ktor/http/content/OutgoingContent;",
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u000025\u00121\u0012/\u0008\u0001\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0002\u00a2\u0006\u0002\u0008\t0\u0001:\u0001\u0010B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\nJM\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\r23\u0010\u000e\u001a/\u0008\u0001\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0002\u00a2\u0006\u0002\u0008\tH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/ktor/server/application/hooks/ResponseBodyReadyForSend;",
        "Lio/ktor/server/application/Hook;",
        "Lkotlin/Function4;",
        "Lio/ktor/server/application/hooks/ResponseBodyReadyForSend$Context;",
        "Lio/ktor/server/application/ApplicationCall;",
        "Lio/ktor/http/content/OutgoingContent;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "()V",
        "install",
        "pipeline",
        "Lio/ktor/server/application/ApplicationCallPipeline;",
        "handler",
        "(Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function4;)V",
        "Context",
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
.field public static final INSTANCE:Lio/ktor/server/application/hooks/ResponseBodyReadyForSend;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/application/hooks/ResponseBodyReadyForSend;

    invoke-direct {v0}, Lio/ktor/server/application/hooks/ResponseBodyReadyForSend;-><init>()V

    sput-object v0, Lio/ktor/server/application/hooks/ResponseBodyReadyForSend;->INSTANCE:Lio/ktor/server/application/hooks/ResponseBodyReadyForSend;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic install(Lio/ktor/server/application/ApplicationCallPipeline;Ljava/lang/Object;)V
    .locals 1
    .param p1, "pipeline"    # Lio/ktor/server/application/ApplicationCallPipeline;
    .param p2, "handler"    # Ljava/lang/Object;

    .line 86
    move-object v0, p2

    check-cast v0, Lkotlin/jvm/functions/Function4;

    invoke-virtual {p0, p1, v0}, Lio/ktor/server/application/hooks/ResponseBodyReadyForSend;->install(Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public install(Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function4;)V
    .locals 4
    .param p1, "pipeline"    # Lio/ktor/server/application/ApplicationCallPipeline;
    .param p2, "handler"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCallPipeline;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lio/ktor/server/application/hooks/ResponseBodyReadyForSend$Context;",
            "-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-",
            "Lio/ktor/http/content/OutgoingContent;",
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

    .line 98
    invoke-virtual {p1}, Lio/ktor/server/application/ApplicationCallPipeline;->getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v0

    sget-object v1, Lio/ktor/server/response/ApplicationSendPipeline;->Phases:Lio/ktor/server/response/ApplicationSendPipeline$Phases;

    invoke-virtual {v1}, Lio/ktor/server/response/ApplicationSendPipeline$Phases;->getAfter()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v1

    new-instance v2, Lio/ktor/server/application/hooks/ResponseBodyReadyForSend$install$1;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lio/ktor/server/application/hooks/ResponseBodyReadyForSend$install$1;-><init>(Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1, v2}, Lio/ktor/server/response/ApplicationSendPipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 101
    return-void
.end method
