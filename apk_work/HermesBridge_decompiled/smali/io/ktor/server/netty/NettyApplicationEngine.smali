.class public final Lio/ktor/server/netty/NettyApplicationEngine;
.super Lio/ktor/server/engine/BaseApplicationEngine;
.source "NettyApplicationEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/netty/NettyApplicationEngine$Configuration;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNettyApplicationEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NettyApplicationEngine.kt\nio/ktor/server/netty/NettyApplicationEngine\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,332:1\n1549#2:333\n1620#2,3:334\n1549#2:337\n1620#2,3:338\n1549#2:341\n1620#2,3:342\n1549#2:345\n1620#2,3:346\n1855#2,2:349\n1603#2,9:351\n1855#2:360\n1856#2:362\n1612#2:363\n1855#2,2:364\n1#3:361\n*S KotlinDebug\n*F\n+ 1 NettyApplicationEngine.kt\nio/ktor/server/netty/NettyApplicationEngine\n*L\n220#1:333\n220#1:334,3\n221#1:337\n221#1:338,3\n223#1:341\n223#1:342,3\n236#1:345\n236#1:346,3\n236#1:349,2\n250#1:351,9\n250#1:360\n250#1:362\n250#1:363\n270#1:364,2\n250#1:361\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001>B(\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0019\u0008\u0002\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0008\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u00101\u001a\u00020\u000c2\u0006\u00102\u001a\u000203H\u0002J\u0010\u00104\u001a\u00020\u00002\u0006\u00105\u001a\u000206H\u0016J\u0018\u00107\u001a\u00020\u00072\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u000209H\u0016J\u0008\u0010;\u001a\u00020\u0007H\u0002J\u0008\u0010<\u001a\u00020=H\u0016R!\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0013\u0010\u0014R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001b\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0010\u001a\u0004\u0008\u001c\u0010\u0014R\u001b\u0010\u001e\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u0010\u001a\u0004\u0008\u001f\u0010 R\u001b\u0010\"\u001a\u00020#8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u0010\u001a\u0004\u0008$\u0010%R\u000e\u0010\'\u001a\u00020(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010)\u001a\u00020*8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010\u0010\u001a\u0004\u0008+\u0010,R\u001b\u0010.\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u0010\u0010\u001a\u0004\u0008/\u0010\u0014\u00a8\u0006?"
    }
    d2 = {
        "Lio/ktor/server/netty/NettyApplicationEngine;",
        "Lio/ktor/server/engine/BaseApplicationEngine;",
        "environment",
        "Lio/ktor/server/engine/ApplicationEngineEnvironment;",
        "configure",
        "Lkotlin/Function1;",
        "Lio/ktor/server/netty/NettyApplicationEngine$Configuration;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lkotlin/jvm/functions/Function1;)V",
        "bootstraps",
        "",
        "Lio/netty/bootstrap/ServerBootstrap;",
        "getBootstraps$ktor_server_netty",
        "()Ljava/util/List;",
        "bootstraps$delegate",
        "Lkotlin/Lazy;",
        "callEventGroup",
        "Lio/netty/channel/EventLoopGroup;",
        "getCallEventGroup",
        "()Lio/netty/channel/EventLoopGroup;",
        "callEventGroup$delegate",
        "cancellationDeferred",
        "Lkotlinx/coroutines/CompletableJob;",
        "channels",
        "Lio/netty/channel/Channel;",
        "configuration",
        "connectionEventGroup",
        "getConnectionEventGroup",
        "connectionEventGroup$delegate",
        "customBootstrap",
        "getCustomBootstrap",
        "()Lio/netty/bootstrap/ServerBootstrap;",
        "customBootstrap$delegate",
        "nettyDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "getNettyDispatcher",
        "()Lkotlinx/coroutines/CoroutineDispatcher;",
        "nettyDispatcher$delegate",
        "userContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "workerDispatcher",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "getWorkerDispatcher",
        "()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "workerDispatcher$delegate",
        "workerEventGroup",
        "getWorkerEventGroup",
        "workerEventGroup$delegate",
        "createBootstrap",
        "connector",
        "Lio/ktor/server/engine/EngineConnectorConfig;",
        "start",
        "wait",
        "",
        "stop",
        "gracePeriodMillis",
        "",
        "timeoutMillis",
        "terminate",
        "toString",
        "",
        "Configuration",
        "ktor-server-netty"
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
.field private final bootstraps$delegate:Lkotlin/Lazy;

.field private final callEventGroup$delegate:Lkotlin/Lazy;

.field private cancellationDeferred:Lkotlinx/coroutines/CompletableJob;

.field private channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private final configuration:Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

.field private final connectionEventGroup$delegate:Lkotlin/Lazy;

.field private final customBootstrap$delegate:Lkotlin/Lazy;

.field private final nettyDispatcher$delegate:Lkotlin/Lazy;

.field private final userContext:Lkotlin/coroutines/CoroutineContext;

.field private final workerDispatcher$delegate:Lkotlin/Lazy;

.field private final workerEventGroup$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1, "environment"    # Lio/ktor/server/engine/ApplicationEngineEnvironment;
    .param p2, "configure"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/engine/ApplicationEngineEnvironment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/netty/NettyApplicationEngine$Configuration;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "environment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configure"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lio/ktor/server/engine/BaseApplicationEngine;-><init>(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lio/ktor/server/engine/EnginePipeline;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    new-instance v0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    invoke-direct {v0}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;-><init>()V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->configuration:Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    .line 118
    new-instance v0, Lio/ktor/server/netty/NettyApplicationEngine$connectionEventGroup$2;

    invoke-direct {v0, p0}, Lio/ktor/server/netty/NettyApplicationEngine$connectionEventGroup$2;-><init>(Lio/ktor/server/netty/NettyApplicationEngine;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->connectionEventGroup$delegate:Lkotlin/Lazy;

    .line 125
    new-instance v0, Lio/ktor/server/netty/NettyApplicationEngine$workerEventGroup$2;

    invoke-direct {v0, p0}, Lio/ktor/server/netty/NettyApplicationEngine$workerEventGroup$2;-><init>(Lio/ktor/server/netty/NettyApplicationEngine;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->workerEventGroup$delegate:Lkotlin/Lazy;

    .line 136
    new-instance v0, Lio/ktor/server/netty/NettyApplicationEngine$customBootstrap$2;

    invoke-direct {v0, p0}, Lio/ktor/server/netty/NettyApplicationEngine$customBootstrap$2;-><init>(Lio/ktor/server/netty/NettyApplicationEngine;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->customBootstrap$delegate:Lkotlin/Lazy;

    .line 143
    new-instance v0, Lio/ktor/server/netty/NettyApplicationEngine$callEventGroup$2;

    invoke-direct {v0, p0}, Lio/ktor/server/netty/NettyApplicationEngine$callEventGroup$2;-><init>(Lio/ktor/server/netty/NettyApplicationEngine;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->callEventGroup$delegate:Lkotlin/Lazy;

    .line 151
    sget-object v0, Lio/ktor/server/netty/NettyApplicationEngine$nettyDispatcher$2;->INSTANCE:Lio/ktor/server/netty/NettyApplicationEngine$nettyDispatcher$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->nettyDispatcher$delegate:Lkotlin/Lazy;

    .line 155
    new-instance v0, Lio/ktor/server/netty/NettyApplicationEngine$workerDispatcher$2;

    invoke-direct {v0, p0}, Lio/ktor/server/netty/NettyApplicationEngine$workerDispatcher$2;-><init>(Lio/ktor/server/netty/NettyApplicationEngine;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->workerDispatcher$delegate:Lkotlin/Lazy;

    .line 162
    new-instance v0, Lio/ktor/server/netty/NettyApplicationEngine$bootstraps$2;

    invoke-direct {v0, p1, p0}, Lio/ktor/server/netty/NettyApplicationEngine$bootstraps$2;-><init>(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lio/ktor/server/netty/NettyApplicationEngine;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->bootstraps$delegate:Lkotlin/Lazy;

    .line 166
    invoke-interface {p1}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getParentCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 167
    invoke-direct {p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getNettyDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    .line 166
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 168
    sget-object v2, Lio/ktor/server/netty/NettyApplicationCallHandler;->Companion:Lio/ktor/server/netty/NettyApplicationCallHandler$Companion;

    invoke-virtual {v2}, Lio/ktor/server/netty/NettyApplicationCallHandler$Companion;->getCallHandlerCoroutineName$ktor_server_netty()Lkotlinx/coroutines/CoroutineName;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    .line 166
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 169
    new-instance v2, Lio/ktor/server/engine/DefaultUncaughtExceptionHandler;

    invoke-interface {p1}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getLog()Lorg/slf4j/Logger;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/ktor/server/engine/DefaultUncaughtExceptionHandler;-><init>(Lorg/slf4j/Logger;)V

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    .line 166
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->userContext:Lkotlin/coroutines/CoroutineContext;

    .line 203
    nop

    .line 204
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v2, "After"

    invoke-direct {v0, v2}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "afterCall":Lio/ktor/util/pipeline/PipelinePhase;
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getPipeline()Lio/ktor/server/engine/EnginePipeline;

    move-result-object v2

    sget-object v3, Lio/ktor/server/engine/EnginePipeline;->Companion:Lio/ktor/server/engine/EnginePipeline$Companion;

    invoke-virtual {v3}, Lio/ktor/server/engine/EnginePipeline$Companion;->getCall()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lio/ktor/server/engine/EnginePipeline;->insertPhaseAfter(Lio/ktor/util/pipeline/PipelinePhase;Lio/ktor/util/pipeline/PipelinePhase;)V

    .line 206
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getPipeline()Lio/ktor/server/engine/EnginePipeline;

    move-result-object v2

    new-instance v3, Lio/ktor/server/netty/NettyApplicationEngine$2;

    invoke-direct {v3, v1}, Lio/ktor/server/netty/NettyApplicationEngine$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v2, v0, v3}, Lio/ktor/server/engine/EnginePipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 209
    .end local v0    # "afterCall":Lio/ktor/util/pipeline/PipelinePhase;
    nop

    .line 30
    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 30
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 32
    sget-object p2, Lio/ktor/server/netty/NettyApplicationEngine$1;->INSTANCE:Lio/ktor/server/netty/NettyApplicationEngine$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 30
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/ktor/server/netty/NettyApplicationEngine;-><init>(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lkotlin/jvm/functions/Function1;)V

    .line 277
    return-void
.end method

.method public static final synthetic access$createBootstrap(Lio/ktor/server/netty/NettyApplicationEngine;Lio/ktor/server/engine/EngineConnectorConfig;)Lio/netty/bootstrap/ServerBootstrap;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/NettyApplicationEngine;
    .param p1, "connector"    # Lio/ktor/server/engine/EngineConnectorConfig;

    .line 30
    invoke-direct {p0, p1}, Lio/ktor/server/netty/NettyApplicationEngine;->createBootstrap(Lio/ktor/server/engine/EngineConnectorConfig;)Lio/netty/bootstrap/ServerBootstrap;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getConfiguration$p(Lio/ktor/server/netty/NettyApplicationEngine;)Lio/ktor/server/netty/NettyApplicationEngine$Configuration;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/NettyApplicationEngine;

    .line 30
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->configuration:Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    return-object v0
.end method

.method public static final synthetic access$getCustomBootstrap(Lio/ktor/server/netty/NettyApplicationEngine;)Lio/netty/bootstrap/ServerBootstrap;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/NettyApplicationEngine;

    .line 30
    invoke-direct {p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getCustomBootstrap()Lio/netty/bootstrap/ServerBootstrap;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getWorkerEventGroup(Lio/ktor/server/netty/NettyApplicationEngine;)Lio/netty/channel/EventLoopGroup;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/NettyApplicationEngine;

    .line 30
    invoke-direct {p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getWorkerEventGroup()Lio/netty/channel/EventLoopGroup;

    move-result-object v0

    return-object v0
.end method

.method private final createBootstrap(Lio/ktor/server/engine/EngineConnectorConfig;)Lio/netty/bootstrap/ServerBootstrap;
    .locals 18
    .param p1, "connector"    # Lio/ktor/server/engine/EngineConnectorConfig;

    .line 172
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getCustomBootstrap()Lio/netty/bootstrap/ServerBootstrap;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/bootstrap/ServerBootstrap;->clone()Lio/netty/bootstrap/ServerBootstrap;

    move-result-object v1

    move-object v2, v1

    .local v2, "$this$createBootstrap_u24lambda_u240":Lio/netty/bootstrap/ServerBootstrap;
    const/4 v3, 0x0

    .line 173
    .local v3, "$i$a$-apply-NettyApplicationEngine$createBootstrap$1":I
    invoke-virtual {v2}, Lio/netty/bootstrap/ServerBootstrap;->config()Lio/netty/bootstrap/ServerBootstrapConfig;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/bootstrap/ServerBootstrapConfig;->group()Lio/netty/channel/EventLoopGroup;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lio/netty/bootstrap/ServerBootstrap;->config()Lio/netty/bootstrap/ServerBootstrapConfig;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/bootstrap/ServerBootstrapConfig;->childGroup()Lio/netty/channel/EventLoopGroup;

    move-result-object v4

    if-nez v4, :cond_0

    .line 174
    invoke-direct/range {p0 .. p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getConnectionEventGroup()Lio/netty/channel/EventLoopGroup;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getWorkerEventGroup()Lio/netty/channel/EventLoopGroup;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lio/netty/bootstrap/ServerBootstrap;->group(Lio/netty/channel/EventLoopGroup;Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/ServerBootstrap;

    .line 177
    :cond_0
    invoke-virtual {v2}, Lio/netty/bootstrap/ServerBootstrap;->config()Lio/netty/bootstrap/ServerBootstrapConfig;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/bootstrap/ServerBootstrapConfig;->channelFactory()Lio/netty/bootstrap/ChannelFactory;

    move-result-object v4

    if-nez v4, :cond_1

    .line 178
    invoke-static {}, Lio/ktor/server/netty/NettyApplicationEngineKt;->access$getChannelClass()Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/netty/bootstrap/ServerBootstrap;->channel(Ljava/lang/Class;)Lio/netty/bootstrap/AbstractBootstrap;

    .line 181
    :cond_1
    nop

    .line 182
    new-instance v4, Lio/ktor/server/netty/NettyChannelInitializer;

    .line 183
    invoke-virtual/range {p0 .. p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getPipeline()Lio/ktor/server/engine/EnginePipeline;

    move-result-object v6

    .line 184
    invoke-virtual/range {p0 .. p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getEnvironment()Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v7

    .line 185
    invoke-direct/range {p0 .. p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getCallEventGroup()Lio/netty/channel/EventLoopGroup;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lio/netty/util/concurrent/EventExecutorGroup;

    .line 186
    invoke-direct/range {p0 .. p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getWorkerDispatcher()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lkotlin/coroutines/CoroutineContext;

    .line 187
    iget-object v10, v0, Lio/ktor/server/netty/NettyApplicationEngine;->userContext:Lkotlin/coroutines/CoroutineContext;

    .line 188
    nop

    .line 189
    iget-object v5, v0, Lio/ktor/server/netty/NettyApplicationEngine;->configuration:Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    invoke-virtual {v5}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->getRequestQueueLimit()I

    move-result v12

    .line 190
    iget-object v5, v0, Lio/ktor/server/netty/NettyApplicationEngine;->configuration:Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    invoke-virtual {v5}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->getRunningLimit()I

    move-result v13

    .line 191
    iget-object v5, v0, Lio/ktor/server/netty/NettyApplicationEngine;->configuration:Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    invoke-virtual {v5}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->getResponseWriteTimeoutSeconds()I

    move-result v14

    .line 192
    iget-object v5, v0, Lio/ktor/server/netty/NettyApplicationEngine;->configuration:Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    invoke-virtual {v5}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->getRequestReadTimeoutSeconds()I

    move-result v15

    .line 193
    iget-object v5, v0, Lio/ktor/server/netty/NettyApplicationEngine;->configuration:Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    invoke-virtual {v5}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->getHttpServerCodec()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    .line 194
    iget-object v5, v0, Lio/ktor/server/netty/NettyApplicationEngine;->configuration:Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    invoke-virtual {v5}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->getChannelPipelineConfig()Lkotlin/jvm/functions/Function1;

    move-result-object v17

    .line 182
    move-object v5, v4

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v17}, Lio/ktor/server/netty/NettyChannelInitializer;-><init>(Lio/ktor/server/engine/EnginePipeline;Lio/ktor/server/engine/ApplicationEngineEnvironment;Lio/netty/util/concurrent/EventExecutorGroup;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lio/ktor/server/engine/EngineConnectorConfig;IIIILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lio/netty/channel/ChannelHandler;

    .line 181
    invoke-virtual {v2, v4}, Lio/netty/bootstrap/ServerBootstrap;->childHandler(Lio/netty/channel/ChannelHandler;)Lio/netty/bootstrap/ServerBootstrap;

    .line 197
    iget-object v4, v0, Lio/ktor/server/netty/NettyApplicationEngine;->configuration:Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    invoke-virtual {v4}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->getTcpKeepAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 198
    sget-object v4, Lio/netty/channel/ChannelOption;->SO_KEEPALIVE:Lio/netty/channel/ChannelOption;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lio/netty/bootstrap/ServerBootstrap;->childOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/ServerBootstrap;

    .line 200
    :cond_2
    nop

    .line 172
    .end local v2    # "$this$createBootstrap_u24lambda_u240":Lio/netty/bootstrap/ServerBootstrap;
    .end local v3    # "$i$a$-apply-NettyApplicationEngine$createBootstrap$1":I
    const-string v2, "customBootstrap.clone().\u2026)\n            }\n        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final getCallEventGroup()Lio/netty/channel/EventLoopGroup;
    .locals 1

    .line 143
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->callEventGroup$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/EventLoopGroup;

    return-object v0
.end method

.method private final getConnectionEventGroup()Lio/netty/channel/EventLoopGroup;
    .locals 1

    .line 118
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->connectionEventGroup$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/EventLoopGroup;

    return-object v0
.end method

.method private final getCustomBootstrap()Lio/netty/bootstrap/ServerBootstrap;
    .locals 1

    .line 136
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->customBootstrap$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/bootstrap/ServerBootstrap;

    return-object v0
.end method

.method private final getNettyDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 151
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->nettyDispatcher$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method private final getWorkerDispatcher()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .locals 1

    .line 155
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->workerDispatcher$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    return-object v0
.end method

.method private final getWorkerEventGroup()Lio/netty/channel/EventLoopGroup;
    .locals 1

    .line 125
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->workerEventGroup$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/EventLoopGroup;

    return-object v0
.end method

.method private final terminate()V
    .locals 1

    .line 243
    invoke-direct {p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getConnectionEventGroup()Lio/netty/channel/EventLoopGroup;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoopGroup;->shutdownGracefully()Lio/netty/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/Future;->sync()Lio/netty/util/concurrent/Future;

    .line 244
    invoke-direct {p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getWorkerEventGroup()Lio/netty/channel/EventLoopGroup;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoopGroup;->shutdownGracefully()Lio/netty/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/Future;->sync()Lio/netty/util/concurrent/Future;

    .line 245
    return-void
.end method


# virtual methods
.method public final getBootstraps$ktor_server_netty()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/bootstrap/ServerBootstrap;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->bootstraps$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic start(Z)Lio/ktor/server/engine/ApplicationEngine;
    .locals 1
    .param p1, "wait"    # Z

    .line 30
    invoke-virtual {p0, p1}, Lio/ktor/server/netty/NettyApplicationEngine;->start(Z)Lio/ktor/server/netty/NettyApplicationEngine;

    move-result-object v0

    check-cast v0, Lio/ktor/server/engine/ApplicationEngine;

    return-object v0
.end method

.method public start(Z)Lio/ktor/server/netty/NettyApplicationEngine;
    .locals 13
    .param p1, "wait"    # Z

    .line 212
    move-object v0, p0

    check-cast v0, Lio/ktor/server/engine/ApplicationEngine;

    new-instance v1, Lio/ktor/server/netty/NettyApplicationEngine$start$1;

    invoke-direct {v1, p0}, Lio/ktor/server/netty/NettyApplicationEngine$start$1;-><init>(Lio/ktor/server/netty/NettyApplicationEngine;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lio/ktor/server/engine/ShutdownHookJvmKt;->addShutdownHook(Lio/ktor/server/engine/ApplicationEngine;Lkotlin/jvm/functions/Function0;)V

    .line 216
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getEnvironment()Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->start()V

    .line 218
    nop

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getBootstraps$ktor_server_netty()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getEnvironment()Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getConnectors()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 220
    nop

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 333
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 334
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 335
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lkotlin/Pair;

    .local v8, "it":Lkotlin/Pair;
    const/4 v9, 0x0

    .line 220
    .local v9, "$i$a$-map-NettyApplicationEngine$start$2":I
    invoke-virtual {v8}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/netty/bootstrap/ServerBootstrap;

    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/ktor/server/engine/EngineConnectorConfig;

    invoke-interface {v11}, Lio/ktor/server/engine/EngineConnectorConfig;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/ktor/server/engine/EngineConnectorConfig;

    invoke-interface {v12}, Lio/ktor/server/engine/EngineConnectorConfig;->getPort()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lio/netty/bootstrap/ServerBootstrap;->bind(Ljava/lang/String;I)Lio/netty/channel/ChannelFuture;

    move-result-object v10

    .line 335
    .end local v8    # "it":Lkotlin/Pair;
    .end local v9    # "$i$a$-map-NettyApplicationEngine$start$2":I
    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 333
    nop

    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    check-cast v2, Ljava/lang/Iterable;

    .line 221
    move-object v0, v2

    .restart local v0    # "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 337
    .restart local v1    # "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .restart local v2    # "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .restart local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 338
    .restart local v5    # "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 339
    .restart local v7    # "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lio/netty/channel/ChannelFuture;

    .local v8, "it":Lio/netty/channel/ChannelFuture;
    const/4 v9, 0x0

    .line 221
    .local v9, "$i$a$-map-NettyApplicationEngine$start$3":I
    invoke-interface {v8}, Lio/netty/channel/ChannelFuture;->sync()Lio/netty/channel/ChannelFuture;

    move-result-object v10

    invoke-interface {v10}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v10

    .line 339
    .end local v8    # "it":Lio/netty/channel/ChannelFuture;
    .end local v9    # "$i$a$-map-NettyApplicationEngine$start$3":I
    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 340
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 337
    nop

    .line 219
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    iput-object v2, p0, Lio/ktor/server/netty/NettyApplicationEngine;->channels:Ljava/util/List;

    .line 222
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->channels:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getEnvironment()Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getConnectors()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 223
    nop

    .restart local v0    # "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 341
    .restart local v1    # "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .restart local v2    # "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .restart local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 342
    .restart local v5    # "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 343
    .restart local v7    # "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lkotlin/Pair;

    .local v8, "it":Lkotlin/Pair;
    const/4 v9, 0x0

    .line 223
    .local v9, "$i$a$-map-NettyApplicationEngine$start$connectors$1":I
    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/ktor/server/engine/EngineConnectorConfig;

    invoke-virtual {v8}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/netty/channel/Channel;

    invoke-interface {v11}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v11

    const-string v12, "it.first.localAddress()"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lio/ktor/util/network/NetworkAddressJvmKt;->getPort(Ljava/net/SocketAddress;)I

    move-result v11

    invoke-static {v10, v11}, Lio/ktor/server/engine/EngineConnectorConfigJvmKt;->withPort(Lio/ktor/server/engine/EngineConnectorConfig;I)Lio/ktor/server/engine/EngineConnectorConfig;

    move-result-object v10

    .line 343
    .end local v8    # "it":Lkotlin/Pair;
    .end local v9    # "$i$a$-map-NettyApplicationEngine$start$connectors$1":I
    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 344
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 341
    nop

    .line 223
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    nop

    .line 222
    move-object v0, v2

    .line 224
    .local v0, "connectors":Ljava/util/List;
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getResolvedConnectors()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v0    # "connectors":Ljava/util/List;
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getEnvironment()Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getMonitor()Lio/ktor/events/Events;

    move-result-object v0

    invoke-static {}, Lio/ktor/server/application/DefaultApplicationEventsKt;->getServerReady()Lio/ktor/events/EventDefinition;

    move-result-object v1

    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getEnvironment()Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v2

    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getEnvironment()Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v4

    invoke-interface {v4}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getLog()Lorg/slf4j/Logger;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lio/ktor/events/EventsKt;->raiseCatching(Lio/ktor/events/Events;Lio/ktor/events/EventDefinition;Ljava/lang/Object;Lorg/slf4j/Logger;)V

    .line 232
    nop

    .line 233
    move-object v0, p0

    check-cast v0, Lio/ktor/server/engine/ApplicationEngine;

    iget-object v1, p0, Lio/ktor/server/netty/NettyApplicationEngine;->configuration:Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    invoke-virtual {v1}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->getShutdownGracePeriod()J

    move-result-wide v1

    iget-object v4, p0, Lio/ktor/server/netty/NettyApplicationEngine;->configuration:Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    invoke-virtual {v4}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->getShutdownTimeout()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lio/ktor/server/engine/EngineContextCancellationHelperKt;->stopServerOnCancellation(Lio/ktor/server/engine/ApplicationEngine;JJ)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    .line 232
    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->cancellationDeferred:Lkotlinx/coroutines/CompletableJob;

    .line 235
    if-eqz p1, :cond_6

    .line 236
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->channels:Ljava/util/List;

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 345
    .restart local v1    # "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .restart local v2    # "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 346
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 347
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lio/netty/channel/Channel;

    .local v7, "it":Lio/netty/channel/Channel;
    const/4 v8, 0x0

    .line 236
    .local v8, "$i$a$-map-NettyApplicationEngine$start$4":I
    invoke-interface {v7}, Lio/netty/channel/Channel;->closeFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v7

    .line 347
    .end local v7    # "it":Lio/netty/channel/Channel;
    .end local v8    # "$i$a$-map-NettyApplicationEngine$start$4":I
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 348
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 345
    nop

    .line 236
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    move-object v0, v2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 349
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lio/netty/channel/ChannelFuture;

    .local v4, "it":Lio/netty/channel/ChannelFuture;
    const/4 v5, 0x0

    .line 236
    .local v5, "$i$a$-forEach-NettyApplicationEngine$start$5":I
    invoke-interface {v4}, Lio/netty/channel/ChannelFuture;->sync()Lio/netty/channel/ChannelFuture;

    .line 349
    .end local v4    # "it":Lio/netty/channel/ChannelFuture;
    .end local v5    # "$i$a$-forEach-NettyApplicationEngine$start$5":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_4

    .line 350
    :cond_4
    nop

    .line 237
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    :cond_5
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine;->configuration:Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    invoke-virtual {v0}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->getShutdownGracePeriod()J

    move-result-wide v0

    iget-object v2, p0, Lio/ktor/server/netty/NettyApplicationEngine;->configuration:Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    invoke-virtual {v2}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->getShutdownTimeout()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/ktor/server/netty/NettyApplicationEngine;->stop(JJ)V

    .line 239
    :cond_6
    return-object p0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "cause":Ljava/net/BindException;
    invoke-direct {p0}, Lio/ktor/server/netty/NettyApplicationEngine;->terminate()V

    .line 227
    throw v0
.end method

.method public stop(JJ)V
    .locals 16
    .param p1, "gracePeriodMillis"    # J
    .param p3, "timeoutMillis"    # J

    .line 248
    move-object/from16 v1, p0

    iget-object v0, v1, Lio/ktor/server/netty/NettyApplicationEngine;->cancellationDeferred:Lkotlinx/coroutines/CompletableJob;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 249
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getEnvironment()Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getMonitor()Lio/ktor/events/Events;

    move-result-object v0

    invoke-static {}, Lio/ktor/server/application/DefaultApplicationEventsKt;->getApplicationStopPreparing()Lio/ktor/events/EventDefinition;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getEnvironment()Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lio/ktor/events/Events;->raise(Lio/ktor/events/EventDefinition;Ljava/lang/Object;)V

    .line 250
    iget-object v0, v1, Lio/ktor/server/netty/NettyApplicationEngine;->channels:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 351
    .local v3, "$i$f$mapNotNull":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v0

    .local v5, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 359
    .local v6, "$i$f$mapNotNullTo":I
    move-object v7, v5

    .local v7, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 360
    .local v8, "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "element$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 359
    .local v12, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v13, v11

    check-cast v13, Lio/netty/channel/Channel;

    .local v13, "it":Lio/netty/channel/Channel;
    const/4 v14, 0x0

    .line 250
    .local v14, "$i$a$-mapNotNull-NettyApplicationEngine$stop$channelFutures$1":I
    invoke-interface {v13}, Lio/netty/channel/Channel;->isOpen()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v13}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    move-result-object v15

    goto :goto_1

    :cond_1
    move-object v15, v2

    .line 359
    .end local v13    # "it":Lio/netty/channel/Channel;
    .end local v14    # "$i$a$-mapNotNull-NettyApplicationEngine$stop$channelFutures$1":I
    :goto_1
    if-eqz v15, :cond_2

    move-object v13, v15

    .line 361
    .local v13, "it$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 359
    .local v14, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v4, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 360
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v13    # "it$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_2
    nop

    .end local v10    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 362
    :cond_3
    nop

    .line 363
    .end local v7    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapNotNullTo":I
    move-object v2, v4

    check-cast v2, Ljava/util/List;

    .line 351
    nop

    .line 250
    .end local v0    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$mapNotNull":I
    :cond_4
    if-nez v2, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 252
    .local v2, "channelFutures":Ljava/util/List;
    :cond_5
    nop

    .line 254
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getConnectionEventGroup()Lio/netty/channel/EventLoopGroup;

    move-result-object v3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v3 .. v8}, Lio/netty/channel/EventLoopGroup;->shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    .line 253
    nop

    .line 255
    .local v0, "shutdownConnections":Lio/netty/util/concurrent/Future;
    invoke-interface {v0}, Lio/netty/util/concurrent/Future;->await()Lio/netty/util/concurrent/Future;

    .line 258
    invoke-direct/range {p0 .. p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getWorkerEventGroup()Lio/netty/channel/EventLoopGroup;

    move-result-object v3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v3 .. v8}, Lio/netty/channel/EventLoopGroup;->shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;

    move-result-object v3

    .line 257
    nop

    .line 259
    .local v3, "shutdownWorkers":Lio/netty/util/concurrent/Future;
    iget-object v4, v1, Lio/ktor/server/netty/NettyApplicationEngine;->configuration:Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    invoke-virtual {v4}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->getShareWorkGroup()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 260
    invoke-interface {v3}, Lio/netty/util/concurrent/Future;->await()Lio/netty/util/concurrent/Future;

    goto :goto_2

    .line 263
    :cond_6
    invoke-direct/range {p0 .. p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getCallEventGroup()Lio/netty/channel/EventLoopGroup;

    move-result-object v5

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-interface/range {v5 .. v10}, Lio/netty/channel/EventLoopGroup;->shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;

    move-result-object v4

    .line 262
    nop

    .line 264
    .local v4, "shutdownCall":Lio/netty/util/concurrent/Future;
    invoke-interface {v3}, Lio/netty/util/concurrent/Future;->await()Lio/netty/util/concurrent/Future;

    .line 265
    invoke-interface {v4}, Lio/netty/util/concurrent/Future;->await()Lio/netty/util/concurrent/Future;

    .line 268
    .end local v4    # "shutdownCall":Lio/netty/util/concurrent/Future;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getEnvironment()Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v4

    invoke-interface {v4}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    .end local v0    # "shutdownConnections":Lio/netty/util/concurrent/Future;
    .end local v3    # "shutdownWorkers":Lio/netty/util/concurrent/Future;
    move-object v0, v2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 364
    .local v3, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lio/netty/channel/ChannelFuture;

    .local v6, "it":Lio/netty/channel/ChannelFuture;
    const/4 v7, 0x0

    .line 270
    .local v7, "$i$a$-forEach-NettyApplicationEngine$stop$1":I
    invoke-interface {v6}, Lio/netty/channel/ChannelFuture;->sync()Lio/netty/channel/ChannelFuture;

    .line 364
    .end local v6    # "it":Lio/netty/channel/ChannelFuture;
    .end local v7    # "$i$a$-forEach-NettyApplicationEngine$stop$1":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_3

    .line 365
    :cond_7
    nop

    .line 271
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    nop

    .line 272
    return-void

    .line 270
    :catchall_0
    move-exception v0

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 364
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lio/netty/channel/ChannelFuture;

    .local v7, "it":Lio/netty/channel/ChannelFuture;
    const/4 v8, 0x0

    .line 270
    .local v8, "$i$a$-forEach-NettyApplicationEngine$stop$1":I
    invoke-interface {v7}, Lio/netty/channel/ChannelFuture;->sync()Lio/netty/channel/ChannelFuture;

    .line 364
    .end local v7    # "it":Lio/netty/channel/ChannelFuture;
    .end local v8    # "$i$a$-forEach-NettyApplicationEngine$stop$1":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_4

    .line 365
    :cond_8
    nop

    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Netty("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationEngine;->getEnvironment()Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
