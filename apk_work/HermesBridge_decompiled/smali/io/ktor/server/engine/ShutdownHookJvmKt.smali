.class public final Lio/ktor/server/engine/ShutdownHookJvmKt;
.super Ljava/lang/Object;
.source "ShutdownHookJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "SHUTDOWN_HOOK_DISABLED",
        "",
        "addShutdownHook",
        "",
        "Lio/ktor/server/engine/ApplicationEngine;",
        "stop",
        "Lkotlin/Function0;",
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


# static fields
.field private static final SHUTDOWN_HOOK_DISABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    const-string v0, "io.ktor.server.engine.ShutdownHook"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lio/ktor/server/engine/ShutdownHookJvmKt;->SHUTDOWN_HOOK_DISABLED:Z

    return-void
.end method

.method public static final addShutdownHook(Lio/ktor/server/engine/ApplicationEngine;Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .param p0, "$this$addShutdownHook"    # Lio/ktor/server/engine/ApplicationEngine;
    .param p1, "stop"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/engine/ApplicationEngine;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-boolean v0, Lio/ktor/server/engine/ShutdownHookJvmKt;->SHUTDOWN_HOOK_DISABLED:Z

    if-eqz v0, :cond_0

    return-void

    .line 22
    :cond_0
    new-instance v0, Lio/ktor/server/engine/ShutdownHook;

    invoke-direct {v0, p1}, Lio/ktor/server/engine/ShutdownHook;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 23
    .local v0, "hook":Lio/ktor/server/engine/ShutdownHook;
    invoke-interface {p0}, Lio/ktor/server/engine/ApplicationEngine;->getEnvironment()Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getMonitor()Lio/ktor/events/Events;

    move-result-object v1

    invoke-static {}, Lio/ktor/server/application/DefaultApplicationEventsKt;->getApplicationStarting()Lio/ktor/events/EventDefinition;

    move-result-object v2

    new-instance v3, Lio/ktor/server/engine/ShutdownHookJvmKt$addShutdownHook$1;

    invoke-direct {v3, p0, v0}, Lio/ktor/server/engine/ShutdownHookJvmKt$addShutdownHook$1;-><init>(Lio/ktor/server/engine/ApplicationEngine;Lio/ktor/server/engine/ShutdownHook;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v2, v3}, Lio/ktor/events/Events;->subscribe(Lio/ktor/events/EventDefinition;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 34
    return-void
.end method
