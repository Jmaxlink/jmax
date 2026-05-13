.class public final Lio/ktor/server/engine/internal/ApplicationUtilsJvmKt;
.super Ljava/lang/Object;
.source "ApplicationUtilsJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u001a\u0008\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0000\u001a\u0012\u0010\r\u001a\u00020\u00082\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0000\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0010"
    }
    d2 = {
        "IOBridge",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Lkotlinx/coroutines/Dispatchers;",
        "getIOBridge",
        "(Lkotlinx/coroutines/Dispatchers;)Lkotlinx/coroutines/CoroutineDispatcher;",
        "availableProcessorsBridge",
        "",
        "configureShutdownUrl",
        "",
        "environment",
        "Lio/ktor/server/application/ApplicationEnvironment;",
        "pipeline",
        "Lio/ktor/server/engine/EnginePipeline;",
        "printError",
        "message",
        "",
        "ktor-server-host-common"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final availableProcessorsBridge()I
    .locals 1

    .line 11
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method public static final configureShutdownUrl(Lio/ktor/server/application/ApplicationEnvironment;Lio/ktor/server/engine/EnginePipeline;)V
    .locals 4
    .param p0, "environment"    # Lio/ktor/server/application/ApplicationEnvironment;
    .param p1, "pipeline"    # Lio/ktor/server/engine/EnginePipeline;

    const-string v0, "environment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pipeline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationEnvironment;->getConfig()Lio/ktor/server/config/ApplicationConfig;

    move-result-object v0

    const-string v1, "ktor.deployment.shutdown.url"

    invoke-interface {v0, v1}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/ktor/server/config/ApplicationConfigValue;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 21
    .local v0, "url":Ljava/lang/String;
    :cond_0
    move-object v1, p1

    check-cast v1, Lio/ktor/util/pipeline/Pipeline;

    sget-object v2, Lio/ktor/server/engine/ShutDownUrl$EnginePlugin;->INSTANCE:Lio/ktor/server/engine/ShutDownUrl$EnginePlugin;

    check-cast v2, Lio/ktor/server/application/Plugin;

    new-instance v3, Lio/ktor/server/engine/internal/ApplicationUtilsJvmKt$configureShutdownUrl$1;

    invoke-direct {v3, v0}, Lio/ktor/server/engine/internal/ApplicationUtilsJvmKt$configureShutdownUrl$1;-><init>(Ljava/lang/String;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2, v3}, Lio/ktor/server/application/ApplicationPluginKt;->install(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/Plugin;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 24
    return-void

    .line 20
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method public static final getIOBridge(Lkotlinx/coroutines/Dispatchers;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1
    .param p0, "$this$IOBridge"    # Lkotlinx/coroutines/Dispatchers;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public static final printError(Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/Object;

    .line 16
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 17
    return-void
.end method
