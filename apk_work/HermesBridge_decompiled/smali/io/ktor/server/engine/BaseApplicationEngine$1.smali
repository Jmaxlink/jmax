.class final Lio/ktor/server/engine/BaseApplicationEngine$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseApplicationEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/BaseApplicationEngine;-><init>(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lio/ktor/server/engine/EnginePipeline;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/server/application/Application;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lio/ktor/server/application/Application;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $info:Lio/ktor/server/engine/StartupInfo;

.field final synthetic $pipeline:Lio/ktor/server/engine/EnginePipeline;


# direct methods
.method constructor <init>(Lio/ktor/server/engine/StartupInfo;Lio/ktor/server/engine/EnginePipeline;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/engine/BaseApplicationEngine$1;->$info:Lio/ktor/server/engine/StartupInfo;

    iput-object p2, p0, Lio/ktor/server/engine/BaseApplicationEngine$1;->$pipeline:Lio/ktor/server/engine/EnginePipeline;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 50
    move-object v0, p1

    check-cast v0, Lio/ktor/server/application/Application;

    invoke-virtual {p0, v0}, Lio/ktor/server/engine/BaseApplicationEngine$1;->invoke(Lio/ktor/server/application/Application;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lio/ktor/server/application/Application;)V
    .locals 3
    .param p1, "it"    # Lio/ktor/server/application/Application;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lio/ktor/server/engine/BaseApplicationEngine$1;->$info:Lio/ktor/server/engine/StartupInfo;

    invoke-virtual {v0}, Lio/ktor/server/engine/StartupInfo;->isFirstLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lio/ktor/server/engine/BaseApplicationEngine$1;->$info:Lio/ktor/server/engine/StartupInfo;

    invoke-static {}, Lio/ktor/util/date/DateJvmKt;->getTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/ktor/server/engine/StartupInfo;->setInitializedStartAt(J)V

    .line 54
    :cond_0
    invoke-virtual {p1}, Lio/ktor/server/application/Application;->getReceivePipeline()Lio/ktor/server/request/ApplicationReceivePipeline;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/engine/BaseApplicationEngine$1;->$pipeline:Lio/ktor/server/engine/EnginePipeline;

    invoke-virtual {v1}, Lio/ktor/server/engine/EnginePipeline;->getReceivePipeline()Lio/ktor/server/request/ApplicationReceivePipeline;

    move-result-object v1

    check-cast v1, Lio/ktor/util/pipeline/Pipeline;

    invoke-virtual {v0, v1}, Lio/ktor/server/request/ApplicationReceivePipeline;->merge(Lio/ktor/util/pipeline/Pipeline;)V

    .line 55
    invoke-virtual {p1}, Lio/ktor/server/application/Application;->getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/engine/BaseApplicationEngine$1;->$pipeline:Lio/ktor/server/engine/EnginePipeline;

    invoke-virtual {v1}, Lio/ktor/server/engine/EnginePipeline;->getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v1

    check-cast v1, Lio/ktor/util/pipeline/Pipeline;

    invoke-virtual {v0, v1}, Lio/ktor/server/response/ApplicationSendPipeline;->merge(Lio/ktor/util/pipeline/Pipeline;)V

    .line 56
    invoke-virtual {p1}, Lio/ktor/server/application/Application;->getReceivePipeline()Lio/ktor/server/request/ApplicationReceivePipeline;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/server/engine/DefaultTransformKt;->installDefaultTransformations(Lio/ktor/server/request/ApplicationReceivePipeline;)V

    .line 57
    invoke-virtual {p1}, Lio/ktor/server/application/Application;->getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/server/engine/DefaultTransformKt;->installDefaultTransformations(Lio/ktor/server/response/ApplicationSendPipeline;)V

    .line 58
    invoke-static {p1}, Lio/ktor/server/engine/BaseApplicationEngineKt;->access$installDefaultInterceptors(Lio/ktor/server/application/Application;)V

    .line 59
    invoke-static {p1}, Lio/ktor/server/engine/BaseApplicationEngineKt;->access$installDefaultTransformationChecker(Lio/ktor/server/application/Application;)V

    .line 60
    return-void
.end method
