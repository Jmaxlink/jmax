.class final Lio/ktor/server/engine/ShutdownHookJvmKt$addShutdownHook$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ShutdownHookJvm.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/ShutdownHookJvmKt;->addShutdownHook(Lio/ktor/server/engine/ApplicationEngine;Lkotlin/jvm/functions/Function0;)V
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
.field final synthetic $hook:Lio/ktor/server/engine/ShutdownHook;

.field final synthetic $this_addShutdownHook:Lio/ktor/server/engine/ApplicationEngine;


# direct methods
.method constructor <init>(Lio/ktor/server/engine/ApplicationEngine;Lio/ktor/server/engine/ShutdownHook;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/engine/ShutdownHookJvmKt$addShutdownHook$1;->$this_addShutdownHook:Lio/ktor/server/engine/ApplicationEngine;

    iput-object p2, p0, Lio/ktor/server/engine/ShutdownHookJvmKt$addShutdownHook$1;->$hook:Lio/ktor/server/engine/ShutdownHook;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 23
    move-object v0, p1

    check-cast v0, Lio/ktor/server/application/Application;

    invoke-virtual {p0, v0}, Lio/ktor/server/engine/ShutdownHookJvmKt$addShutdownHook$1;->invoke(Lio/ktor/server/application/Application;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lio/ktor/server/application/Application;)V
    .locals 4
    .param p1, "it"    # Lio/ktor/server/application/Application;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lio/ktor/server/engine/ShutdownHookJvmKt$addShutdownHook$1;->$this_addShutdownHook:Lio/ktor/server/engine/ApplicationEngine;

    invoke-interface {v0}, Lio/ktor/server/engine/ApplicationEngine;->getEnvironment()Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getMonitor()Lio/ktor/events/Events;

    move-result-object v0

    invoke-static {}, Lio/ktor/server/application/DefaultApplicationEventsKt;->getApplicationStopping()Lio/ktor/events/EventDefinition;

    move-result-object v1

    new-instance v2, Lio/ktor/server/engine/ShutdownHookJvmKt$addShutdownHook$1$1;

    iget-object v3, p0, Lio/ktor/server/engine/ShutdownHookJvmKt$addShutdownHook$1;->$hook:Lio/ktor/server/engine/ShutdownHook;

    invoke-direct {v2, v3}, Lio/ktor/server/engine/ShutdownHookJvmKt$addShutdownHook$1$1;-><init>(Lio/ktor/server/engine/ShutdownHook;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lio/ktor/events/Events;->subscribe(Lio/ktor/events/EventDefinition;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 32
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/engine/ShutdownHookJvmKt$addShutdownHook$1;->$hook:Lio/ktor/server/engine/ShutdownHook;

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 33
    return-void
.end method
