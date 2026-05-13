.class final Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$environment$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EmbeddedServer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/EmbeddedServerKt;->embeddedServer(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/server/engine/ApplicationEngineFactory;[Lio/ktor/server/engine/EngineConnectorConfig;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u0008\u0008\u0001\u0010\u0004*\u00020\u0005*\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "TEngine",
        "Lio/ktor/server/engine/ApplicationEngine;",
        "TConfiguration",
        "Lio/ktor/server/engine/ApplicationEngine$Configuration;",
        "Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;",
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
.field final synthetic $connectors:[Lio/ktor/server/engine/EngineConnectorConfig;

.field final synthetic $module:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lio/ktor/server/application/Application;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $parentCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field final synthetic $this_embeddedServer:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $watchPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Ljava/util/List;Lkotlin/jvm/functions/Function1;[Lio/ktor/server/engine/EngineConnectorConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/application/Application;",
            "Lkotlin/Unit;",
            ">;[",
            "Lio/ktor/server/engine/EngineConnectorConfig;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$environment$1;->$this_embeddedServer:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$environment$1;->$parentCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p3, p0, Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$environment$1;->$watchPaths:Ljava/util/List;

    iput-object p4, p0, Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$environment$1;->$module:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$environment$1;->$connectors:[Lio/ktor/server/engine/EngineConnectorConfig;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 92
    move-object v0, p1

    check-cast v0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;

    invoke-virtual {p0, v0}, Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$environment$1;->invoke(Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;)V
    .locals 2
    .param p1, "$this$applicationEngineEnvironment"    # Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;

    const-string v0, "$this$applicationEngineEnvironment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$environment$1;->$this_embeddedServer:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$environment$1;->$parentCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->setParentCoroutineContext(Lkotlin/coroutines/CoroutineContext;)V

    .line 94
    const-string v0, "ktor.application"

    invoke-static {v0}, Lio/ktor/util/logging/KtorSimpleLoggerJvmKt;->KtorSimpleLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->setLog(Lorg/slf4j/Logger;)V

    .line 95
    iget-object v0, p0, Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$environment$1;->$watchPaths:Ljava/util/List;

    invoke-virtual {p1, v0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->setWatchPaths(Ljava/util/List;)V

    .line 96
    iget-object v0, p0, Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$environment$1;->$module:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->module(Lkotlin/jvm/functions/Function1;)V

    .line 97
    invoke-virtual {p1}, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->getConnectors()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lio/ktor/server/engine/EmbeddedServerKt$embeddedServer$environment$1;->$connectors:[Lio/ktor/server/engine/EngineConnectorConfig;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 98
    return-void
.end method
