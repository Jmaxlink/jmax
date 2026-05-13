.class public final Lio/ktor/server/engine/BaseApplicationResponse$Companion;
.super Ljava/lang/Object;
.source "BaseApplicationResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/engine/BaseApplicationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/ktor/server/engine/BaseApplicationResponse$Companion;",
        "",
        "()V",
        "EngineResponseAttributeKey",
        "Lio/ktor/util/AttributeKey;",
        "Lio/ktor/server/engine/BaseApplicationResponse;",
        "getEngineResponseAttributeKey",
        "()Lio/ktor/util/AttributeKey;",
        "setupSendPipeline",
        "",
        "sendPipeline",
        "Lio/ktor/server/response/ApplicationSendPipeline;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/ktor/server/engine/BaseApplicationResponse$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEngineResponseAttributeKey()Lio/ktor/util/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/server/engine/BaseApplicationResponse;",
            ">;"
        }
    .end annotation

    .line 297
    invoke-static {}, Lio/ktor/server/engine/BaseApplicationResponse;->access$getEngineResponseAttributeKey$cp()Lio/ktor/util/AttributeKey;

    move-result-object v0

    return-object v0
.end method

.method public final setupSendPipeline(Lio/ktor/server/response/ApplicationSendPipeline;)V
    .locals 3
    .param p1, "sendPipeline"    # Lio/ktor/server/response/ApplicationSendPipeline;

    const-string v0, "sendPipeline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    sget-object v0, Lio/ktor/server/response/ApplicationSendPipeline;->Phases:Lio/ktor/server/response/ApplicationSendPipeline$Phases;

    invoke-virtual {v0}, Lio/ktor/server/response/ApplicationSendPipeline$Phases;->getEngine()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v0

    new-instance v1, Lio/ktor/server/engine/BaseApplicationResponse$Companion$setupSendPipeline$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/ktor/server/engine/BaseApplicationResponse$Companion$setupSendPipeline$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p1, v0, v1}, Lio/ktor/server/response/ApplicationSendPipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 319
    return-void
.end method
