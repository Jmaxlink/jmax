.class public abstract Lio/ktor/server/engine/BaseApplicationEngine;
.super Ljava/lang/Object;
.source "BaseApplicationEngine.kt"

# interfaces
.implements Lio/ktor/server/engine/ApplicationEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/engine/BaseApplicationEngine$Configuration;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001:\u0001\u0012B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR \u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000cX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/ktor/server/engine/BaseApplicationEngine;",
        "Lio/ktor/server/engine/ApplicationEngine;",
        "environment",
        "Lio/ktor/server/engine/ApplicationEngineEnvironment;",
        "pipeline",
        "Lio/ktor/server/engine/EnginePipeline;",
        "(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lio/ktor/server/engine/EnginePipeline;)V",
        "getEnvironment",
        "()Lio/ktor/server/engine/ApplicationEngineEnvironment;",
        "getPipeline",
        "()Lio/ktor/server/engine/EnginePipeline;",
        "resolvedConnectors",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "",
        "Lio/ktor/server/engine/EngineConnectorConfig;",
        "getResolvedConnectors",
        "()Lkotlinx/coroutines/CompletableDeferred;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Configuration",
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
.field private final environment:Lio/ktor/server/engine/ApplicationEngineEnvironment;

.field private final pipeline:Lio/ktor/server/engine/EnginePipeline;

.field private final resolvedConnectors:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Ljava/util/List<",
            "Lio/ktor/server/engine/EngineConnectorConfig;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lio/ktor/server/engine/EnginePipeline;)V
    .locals 13
    .param p1, "environment"    # Lio/ktor/server/engine/ApplicationEngineEnvironment;
    .param p2, "pipeline"    # Lio/ktor/server/engine/EnginePipeline;

    const-string v0, "environment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pipeline"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lio/ktor/server/engine/BaseApplicationEngine;->environment:Lio/ktor/server/engine/ApplicationEngineEnvironment;

    .line 33
    iput-object p2, p0, Lio/ktor/server/engine/BaseApplicationEngine;->pipeline:Lio/ktor/server/engine/EnginePipeline;

    .line 41
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/engine/BaseApplicationEngine;->resolvedConnectors:Lkotlinx/coroutines/CompletableDeferred;

    .line 43
    nop

    .line 44
    iget-object v0, p0, Lio/ktor/server/engine/BaseApplicationEngine;->environment:Lio/ktor/server/engine/ApplicationEngineEnvironment;

    .line 45
    .local v0, "environment":Lio/ktor/server/engine/ApplicationEngineEnvironment;
    new-instance v2, Lio/ktor/server/engine/StartupInfo;

    invoke-direct {v2}, Lio/ktor/server/engine/StartupInfo;-><init>()V

    .line 46
    .local v2, "info":Lio/ktor/server/engine/StartupInfo;
    iget-object v3, p0, Lio/ktor/server/engine/BaseApplicationEngine;->pipeline:Lio/ktor/server/engine/EnginePipeline;

    .line 48
    .local v3, "pipeline":Lio/ktor/server/engine/EnginePipeline;
    sget-object v4, Lio/ktor/server/engine/BaseApplicationResponse;->Companion:Lio/ktor/server/engine/BaseApplicationResponse$Companion;

    invoke-virtual {v3}, Lio/ktor/server/engine/EnginePipeline;->getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/ktor/server/engine/BaseApplicationResponse$Companion;->setupSendPipeline(Lio/ktor/server/response/ApplicationSendPipeline;)V

    .line 50
    invoke-interface {v0}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getMonitor()Lio/ktor/events/Events;

    move-result-object v4

    invoke-static {}, Lio/ktor/server/application/DefaultApplicationEventsKt;->getApplicationStarting()Lio/ktor/events/EventDefinition;

    move-result-object v5

    new-instance v6, Lio/ktor/server/engine/BaseApplicationEngine$1;

    invoke-direct {v6, v2, v3}, Lio/ktor/server/engine/BaseApplicationEngine$1;-><init>(Lio/ktor/server/engine/StartupInfo;Lio/ktor/server/engine/EnginePipeline;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v5, v6}, Lio/ktor/events/Events;->subscribe(Lio/ktor/events/EventDefinition;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 61
    invoke-interface {v0}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getMonitor()Lio/ktor/events/Events;

    move-result-object v4

    invoke-static {}, Lio/ktor/server/application/DefaultApplicationEventsKt;->getApplicationStarted()Lio/ktor/events/EventDefinition;

    move-result-object v5

    new-instance v6, Lio/ktor/server/engine/BaseApplicationEngine$2;

    invoke-direct {v6, v2, v0}, Lio/ktor/server/engine/BaseApplicationEngine$2;-><init>(Lio/ktor/server/engine/StartupInfo;Lio/ktor/server/engine/ApplicationEngineEnvironment;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v5, v6}, Lio/ktor/events/Events;->subscribe(Lio/ktor/events/EventDefinition;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 72
    iget-object v4, p0, Lio/ktor/server/engine/BaseApplicationEngine;->resolvedConnectors:Lkotlinx/coroutines/CompletableDeferred;

    .line 73
    .local v4, "connectors":Lkotlinx/coroutines/CompletableDeferred;
    invoke-interface {v0}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getLog()Lorg/slf4j/Logger;

    move-result-object v5

    .line 74
    .local v5, "log":Lorg/slf4j/Logger;
    invoke-interface {v0}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v6

    invoke-virtual {v6}, Lio/ktor/server/application/Application;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    invoke-static {v6}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    new-instance v6, Lio/ktor/server/engine/BaseApplicationEngine$3;

    invoke-direct {v6, v4, v5, v1}, Lio/ktor/server/engine/BaseApplicationEngine$3;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lorg/slf4j/Logger;Lkotlin/coroutines/Continuation;)V

    move-object v10, v6

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 82
    .end local v0    # "environment":Lio/ktor/server/engine/ApplicationEngineEnvironment;
    .end local v2    # "info":Lio/ktor/server/engine/StartupInfo;
    .end local v3    # "pipeline":Lio/ktor/server/engine/EnginePipeline;
    .end local v4    # "connectors":Lkotlinx/coroutines/CompletableDeferred;
    .end local v5    # "log":Lorg/slf4j/Logger;
    nop

    .line 31
    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lio/ktor/server/engine/EnginePipeline;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 31
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 33
    move-object p2, p1

    check-cast p2, Lio/ktor/server/application/ApplicationEnvironment;

    invoke-static {p2}, Lio/ktor/server/engine/DefaultEnginePipelineKt;->defaultEnginePipeline(Lio/ktor/server/application/ApplicationEnvironment;)Lio/ktor/server/engine/EnginePipeline;

    move-result-object p2

    .line 31
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/ktor/server/engine/BaseApplicationEngine;-><init>(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lio/ktor/server/engine/EnginePipeline;)V

    .line 87
    return-void
.end method

.method static synthetic resolvedConnectors$suspendImpl(Lio/ktor/server/engine/BaseApplicationEngine;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/engine/BaseApplicationEngine;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/engine/BaseApplicationEngine;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/server/engine/EngineConnectorConfig;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lio/ktor/server/engine/BaseApplicationEngine;->resolvedConnectors:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApplication()Lio/ktor/server/application/Application;
    .locals 1

    .line 31
    invoke-static {p0}, Lio/ktor/server/engine/ApplicationEngine$DefaultImpls;->getApplication(Lio/ktor/server/engine/ApplicationEngine;)Lio/ktor/server/application/Application;

    move-result-object v0

    return-object v0
.end method

.method public final getEnvironment()Lio/ktor/server/engine/ApplicationEngineEnvironment;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/ktor/server/engine/BaseApplicationEngine;->environment:Lio/ktor/server/engine/ApplicationEngineEnvironment;

    return-object v0
.end method

.method public final getPipeline()Lio/ktor/server/engine/EnginePipeline;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/ktor/server/engine/BaseApplicationEngine;->pipeline:Lio/ktor/server/engine/EnginePipeline;

    return-object v0
.end method

.method protected final getResolvedConnectors()Lkotlinx/coroutines/CompletableDeferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Ljava/util/List<",
            "Lio/ktor/server/engine/EngineConnectorConfig;",
            ">;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/ktor/server/engine/BaseApplicationEngine;->resolvedConnectors:Lkotlinx/coroutines/CompletableDeferred;

    return-object v0
.end method

.method public resolvedConnectors(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/server/engine/EngineConnectorConfig;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/ktor/server/engine/BaseApplicationEngine;->resolvedConnectors$suspendImpl(Lio/ktor/server/engine/BaseApplicationEngine;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
