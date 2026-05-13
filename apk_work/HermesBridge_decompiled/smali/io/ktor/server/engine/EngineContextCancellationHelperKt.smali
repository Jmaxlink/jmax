.class public final Lio/ktor/server/engine/EngineContextCancellationHelperKt;
.super Ljava/lang/Object;
.source "EngineContextCancellationHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u001a2\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u001c\u0010\u0003\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008\u001a\u001e\u0010\t\u001a\u00020\u0001*\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "launchOnCancellation",
        "Lkotlinx/coroutines/CompletableJob;",
        "Lkotlinx/coroutines/Job;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "(Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CompletableJob;",
        "stopServerOnCancellation",
        "Lio/ktor/server/engine/ApplicationEngine;",
        "gracePeriodMillis",
        "",
        "timeoutMillis",
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
.method public static final launchOnCancellation(Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CompletableJob;
    .locals 8
    .param p0, "$this$launchOnCancellation"    # Lkotlinx/coroutines/Job;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Job;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/CompletableJob;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/InternalAPI;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->Job(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    .line 33
    .local v0, "deferred":Lkotlinx/coroutines/CompletableJob;
    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->INSTANCE:Lkotlinx/coroutines/Dispatchers;

    invoke-static {v1}, Lio/ktor/server/engine/internal/ApplicationUtilsJvmKt;->getIOBridge(Lkotlinx/coroutines/Dispatchers;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p0, v1}, Lkotlinx/coroutines/Job;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    new-instance v1, Lio/ktor/server/engine/EngineContextCancellationHelperKt$launchOnCancellation$1;

    const/4 v4, 0x0

    invoke-direct {v1, v0, p1, v4}, Lio/ktor/server/engine/EngineContextCancellationHelperKt$launchOnCancellation$1;-><init>(Lkotlinx/coroutines/CompletableJob;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 46
    return-object v0
.end method

.method public static final stopServerOnCancellation(Lio/ktor/server/engine/ApplicationEngine;JJ)Lkotlinx/coroutines/CompletableJob;
    .locals 9
    .param p0, "$this$stopServerOnCancellation"    # Lio/ktor/server/engine/ApplicationEngine;
    .param p1, "gracePeriodMillis"    # J
    .param p3, "timeoutMillis"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {p0}, Lio/ktor/server/engine/ApplicationEngine;->getEnvironment()Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getParentCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    new-instance v8, Lio/ktor/server/engine/EngineContextCancellationHelperKt$stopServerOnCancellation$1;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lio/ktor/server/engine/EngineContextCancellationHelperKt$stopServerOnCancellation$1;-><init>(Lio/ktor/server/engine/ApplicationEngine;JJLkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v8}, Lio/ktor/server/engine/EngineContextCancellationHelperKt;->launchOnCancellation(Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    if-nez v0, :cond_1

    .line 21
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static synthetic stopServerOnCancellation$default(Lio/ktor/server/engine/ApplicationEngine;JJILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;
    .locals 0

    .line 15
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 16
    const-wide/16 p1, 0x32

    .line 15
    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    .line 17
    const-wide/16 p3, 0x1388

    .line 15
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/server/engine/EngineContextCancellationHelperKt;->stopServerOnCancellation(Lio/ktor/server/engine/ApplicationEngine;JJ)Lkotlinx/coroutines/CompletableJob;

    move-result-object p0

    return-object p0
.end method
