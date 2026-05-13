.class public final Lio/ktor/server/application/Application;
.super Lio/ktor/server/application/ApplicationCallPipeline;
.source "Application.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation runtime Lio/ktor/util/KtorDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/ktor/server/application/Application;",
        "Lio/ktor/server/application/ApplicationCallPipeline;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "environment",
        "Lio/ktor/server/application/ApplicationEnvironment;",
        "(Lio/ktor/server/application/ApplicationEnvironment;)V",
        "applicationJob",
        "Lkotlinx/coroutines/CompletableJob;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "getEnvironment",
        "()Lio/ktor/server/application/ApplicationEnvironment;",
        "dispose",
        "",
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


# instance fields
.field private final applicationJob:Lkotlinx/coroutines/CompletableJob;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final environment:Lio/ktor/server/application/ApplicationEnvironment;


# direct methods
.method public constructor <init>(Lio/ktor/server/application/ApplicationEnvironment;)V
    .locals 2
    .param p1, "environment"    # Lio/ktor/server/application/ApplicationEnvironment;

    const-string v0, "environment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {p1}, Lio/ktor/server/application/ApplicationEnvironment;->getDevelopmentMode()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lio/ktor/server/application/ApplicationCallPipeline;-><init>(ZLio/ktor/server/application/ApplicationEnvironment;)V

    .line 21
    iput-object p1, p0, Lio/ktor/server/application/Application;->environment:Lio/ktor/server/application/ApplicationEnvironment;

    .line 24
    invoke-virtual {p0}, Lio/ktor/server/application/Application;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/application/ApplicationEnvironment;->getParentCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-static {v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/application/Application;->applicationJob:Lkotlinx/coroutines/CompletableJob;

    .line 26
    invoke-virtual {p0}, Lio/ktor/server/application/Application;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/application/ApplicationEnvironment;->getParentCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/application/Application;->applicationJob:Lkotlinx/coroutines/CompletableJob;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/application/Application;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 20
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 3

    .line 33
    iget-object v0, p0, Lio/ktor/server/application/Application;->applicationJob:Lkotlinx/coroutines/CompletableJob;

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 34
    move-object v0, p0

    check-cast v0, Lio/ktor/util/pipeline/Pipeline;

    invoke-static {v0}, Lio/ktor/server/application/ApplicationPluginKt;->uninstallAllPlugins(Lio/ktor/util/pipeline/Pipeline;)V

    .line 35
    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/ktor/server/application/Application;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;
    .locals 1

    .line 21
    iget-object v0, p0, Lio/ktor/server/application/Application;->environment:Lio/ktor/server/application/ApplicationEnvironment;

    return-object v0
.end method
