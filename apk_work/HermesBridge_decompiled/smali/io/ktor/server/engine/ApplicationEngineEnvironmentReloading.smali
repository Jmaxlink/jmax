.class public final Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;
.super Ljava/lang/Object;
.source "ApplicationEngineEnvironmentReloading.kt"

# interfaces
.implements Lio/ktor/server/engine/ApplicationEngineEnvironment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApplicationEngineEnvironmentReloading.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplicationEngineEnvironmentReloading.kt\nio/ktor/server/engine/ApplicationEngineEnvironmentReloading\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,388:1\n1360#2:389\n1446#2,5:390\n1360#2:395\n1446#2,5:396\n1855#2,2:401\n1549#2:403\n1620#2,3:404\n766#2:407\n857#2,2:408\n1611#2:410\n1855#2:411\n1856#2:413\n1612#2:414\n766#2:415\n857#2:416\n1747#2,3:417\n858#2:420\n1855#2,2:421\n1855#2,2:424\n1603#2,9:427\n1855#2:436\n1856#2:438\n1612#2:439\n1#3:412\n1#3:423\n1#3:437\n1#3:440\n26#4:426\n*S KotlinDebug\n*F\n+ 1 ApplicationEngineEnvironmentReloading.kt\nio/ktor/server/engine/ApplicationEngineEnvironmentReloading\n*L\n111#1:389\n111#1:390,5\n121#1:395\n121#1:396,5\n131#1:401,2\n173#1:403\n173#1:404,3\n175#1:407\n175#1:408,2\n189#1:410\n189#1:411\n189#1:413\n189#1:414\n191#1:415\n191#1:416\n192#1:417,3\n191#1:420\n226#1:421,2\n262#1:424,2\n267#1:427,9\n267#1:436\n267#1:438\n267#1:439\n189#1:412\n267#1:437\n266#1:426\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 ]2\u00020\u0001:\u0001]Bt\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u001d\u0010\u000c\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r\u00a2\u0006\u0002\u0008\u00100\n\u0012\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\n\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0016B|\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u001d\u0010\u000c\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r\u00a2\u0006\u0002\u0008\u00100\n\u0012\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\n\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0002\u0010\u0019J\u0016\u0010D\u001a\u00020\u000f2\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u000f0FH\u0002J\u001e\u0010G\u001a\u00020\u000f2\u0006\u0010H\u001a\u00020\u00122\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u000f0FH\u0002J\u0008\u0010I\u001a\u00020\u000fH\u0002J\u0014\u0010J\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00030KH\u0002J\u0008\u0010L\u001a\u00020\u0003H\u0002J\u0008\u0010M\u001a\u00020\u000eH\u0002J\u0008\u0010N\u001a\u00020\u000fH\u0002J\u0010\u0010O\u001a\u00020\u000e2\u0006\u0010P\u001a\u00020\u0003H\u0002J \u0010Q\u001a\u00020\u000f2\u0006\u0010R\u001a\u00020\u00122\u0006\u0010P\u001a\u00020\u00032\u0006\u0010S\u001a\u00020\u000eH\u0002J\u0006\u0010T\u001a\u00020\u000fJ\u001e\u0010U\u001a\u00020\u000f2\u000c\u0010V\u001a\u0008\u0012\u0004\u0012\u00020\u000e0W2\u0006\u0010\u001c\u001a\u00020\u000eH\u0002J\u0008\u0010X\u001a\u00020\u000fH\u0016J\u0008\u0010Y\u001a\u00020\u000fH\u0016J\u0016\u0010Z\u001a\u00020\u000f2\u000c\u0010[\u001a\u0008\u0012\u0004\u0012\u00020\\0\nH\u0002R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0014\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00120\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00120\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(R\u001a\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010(R\u0014\u0010\u0017\u001a\u00020\u0018X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u0018\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R+\u0010\u000c\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r\u00a2\u0006\u0002\u0008\u00100\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010(R\u001a\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00120\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010(R\u0014\u00101\u001a\u000202X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u00104R\u0014\u00105\u001a\u0008\u0012\u0004\u0012\u0002060\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u0014X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108R\u000e\u00109\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010;R\u001a\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010(R\u0014\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00120\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010>\u001a\u0004\u0018\u00010?8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008B\u0010C\u001a\u0004\u0008@\u0010A\u00a8\u0006^"
    }
    d2 = {
        "Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;",
        "Lio/ktor/server/engine/ApplicationEngineEnvironment;",
        "classLoader",
        "Ljava/lang/ClassLoader;",
        "log",
        "Lorg/slf4j/Logger;",
        "Lio/ktor/util/logging/Logger;",
        "config",
        "Lio/ktor/server/config/ApplicationConfig;",
        "connectors",
        "",
        "Lio/ktor/server/engine/EngineConnectorConfig;",
        "modules",
        "Lkotlin/Function1;",
        "Lio/ktor/server/application/Application;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "watchPaths",
        "",
        "parentCoroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "rootPath",
        "(Ljava/lang/ClassLoader;Lorg/slf4j/Logger;Lio/ktor/server/config/ApplicationConfig;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;)V",
        "developmentMode",
        "",
        "(Ljava/lang/ClassLoader;Lorg/slf4j/Logger;Lio/ktor/server/config/ApplicationConfig;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;Z)V",
        "_applicationClassLoader",
        "_applicationInstance",
        "application",
        "getApplication",
        "()Lio/ktor/server/application/Application;",
        "applicationInstanceLock",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
        "getClassLoader",
        "()Ljava/lang/ClassLoader;",
        "getConfig",
        "()Lio/ktor/server/config/ApplicationConfig;",
        "configModulesNames",
        "configuredWatchPath",
        "getConfiguredWatchPath",
        "()Ljava/util/List;",
        "getConnectors",
        "getDevelopmentMode",
        "()Z",
        "getLog",
        "()Lorg/slf4j/Logger;",
        "getModules$ktor_server_host_common",
        "modulesNames",
        "getModulesNames$ktor_server_host_common",
        "monitor",
        "Lio/ktor/events/Events;",
        "getMonitor",
        "()Lio/ktor/events/Events;",
        "packageWatchKeys",
        "Ljava/nio/file/WatchKey;",
        "getParentCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "recreateInstance",
        "getRootPath",
        "()Ljava/lang/String;",
        "getWatchPaths$ktor_server_host_common",
        "watchPatterns",
        "watcher",
        "Ljava/nio/file/WatchService;",
        "getWatcher",
        "()Ljava/nio/file/WatchService;",
        "watcher$delegate",
        "Lkotlin/Lazy;",
        "avoidingDoubleStartup",
        "block",
        "Lkotlin/Function0;",
        "avoidingDoubleStartupFor",
        "fqName",
        "cleanupWatcher",
        "createApplication",
        "Lkotlin/Pair;",
        "createClassLoader",
        "currentApplication",
        "destroyApplication",
        "instantiateAndConfigureApplication",
        "currentClassLoader",
        "launchModuleByName",
        "name",
        "newInstance",
        "reload",
        "safeRiseEvent",
        "event",
        "Lio/ktor/events/EventDefinition;",
        "start",
        "stop",
        "watchUrls",
        "urls",
        "Ljava/net/URL;",
        "Companion",
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


# static fields
.field public static final Companion:Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$Companion;


# instance fields
.field private _applicationClassLoader:Ljava/lang/ClassLoader;

.field private _applicationInstance:Lio/ktor/server/application/Application;

.field private final applicationInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final classLoader:Ljava/lang/ClassLoader;

.field private final config:Lio/ktor/server/config/ApplicationConfig;

.field private final configModulesNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final connectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/server/engine/EngineConnectorConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final developmentMode:Z

.field private final log:Lorg/slf4j/Logger;

.field private final modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/ktor/server/application/Application;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final modulesNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final monitor:Lio/ktor/events/Events;

.field private packageWatchKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/nio/file/WatchKey;",
            ">;"
        }
    .end annotation
.end field

.field private final parentCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private recreateInstance:Z

.field private final rootPath:Ljava/lang/String;

.field private final watchPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final watchPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final watcher$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->Companion:Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Lorg/slf4j/Logger;Lio/ktor/server/config/ApplicationConfig;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;)V
    .locals 16
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "log"    # Lorg/slf4j/Logger;
    .param p3, "config"    # Lio/ktor/server/config/ApplicationConfig;
    .param p4, "connectors"    # Ljava/util/List;
    .param p5, "modules"    # Ljava/util/List;
    .param p6, "watchPaths"    # Ljava/util/List;
    .param p7, "parentCoroutineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p8, "rootPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Lorg/slf4j/Logger;",
            "Lio/ktor/server/config/ApplicationConfig;",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/server/engine/EngineConnectorConfig;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/application/Application;",
            "Lkotlin/Unit;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "classLoader"

    move-object/from16 v11, p1

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "log"

    move-object/from16 v12, p2

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    move-object/from16 v13, p3

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectors"

    move-object/from16 v14, p4

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modules"

    move-object/from16 v15, p5

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "watchPaths"

    move-object/from16 v10, p6

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentCoroutineContext"

    move-object/from16 v9, p7

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootPath"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    nop

    .line 63
    nop

    .line 64
    nop

    .line 62
    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move v10, v0

    invoke-direct/range {v1 .. v10}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;-><init>(Ljava/lang/ClassLoader;Lorg/slf4j/Logger;Lio/ktor/server/config/ApplicationConfig;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;Z)V

    .line 65
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/ClassLoader;Lorg/slf4j/Logger;Lio/ktor/server/config/ApplicationConfig;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    .line 53
    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    .line 59
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v8, v1

    goto :goto_0

    .line 53
    :cond_0
    move-object/from16 v8, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    .line 60
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    move-object v9, v1

    goto :goto_1

    .line 53
    :cond_1
    move-object/from16 v9, p7

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    .line 61
    const-string v0, ""

    move-object v10, v0

    goto :goto_2

    .line 53
    :cond_2
    move-object/from16 v10, p8

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v10}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;-><init>(Ljava/lang/ClassLoader;Lorg/slf4j/Logger;Lio/ktor/server/config/ApplicationConfig;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Lorg/slf4j/Logger;Lio/ktor/server/config/ApplicationConfig;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "log"    # Lorg/slf4j/Logger;
    .param p3, "config"    # Lio/ktor/server/config/ApplicationConfig;
    .param p4, "connectors"    # Ljava/util/List;
    .param p5, "modules"    # Ljava/util/List;
    .param p6, "watchPaths"    # Ljava/util/List;
    .param p7, "parentCoroutineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p8, "rootPath"    # Ljava/lang/String;
    .param p9, "developmentMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Lorg/slf4j/Logger;",
            "Lio/ktor/server/config/ApplicationConfig;",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/server/engine/EngineConnectorConfig;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/application/Application;",
            "Lkotlin/Unit;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "classLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "log"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectors"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modules"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "watchPaths"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentCoroutineContext"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootPath"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->classLoader:Ljava/lang/ClassLoader;

    .line 34
    iput-object p2, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->log:Lorg/slf4j/Logger;

    .line 35
    iput-object p3, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->config:Lio/ktor/server/config/ApplicationConfig;

    .line 36
    iput-object p4, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->connectors:Ljava/util/List;

    .line 37
    iput-object p5, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->modules:Ljava/util/List;

    .line 38
    iput-object p6, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->watchPaths:Ljava/util/List;

    .line 40
    iput-object p8, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->rootPath:Ljava/lang/String;

    .line 41
    iput-boolean p9, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->developmentMode:Z

    .line 45
    invoke-direct {p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getConfiguredWatchPath()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->watchPaths:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->watchPatterns:Ljava/util/List;

    .line 47
    nop

    .line 48
    invoke-virtual {p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getDevelopmentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->watchPatterns:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lio/ktor/server/engine/ClassLoaderAwareContinuationInterceptor;->INSTANCE:Lio/ktor/server/engine/ClassLoaderAwareContinuationInterceptor;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p7, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_0
    move-object v0, p7

    .line 47
    :goto_0
    iput-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->parentCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 67
    new-instance v0, Lio/ktor/server/application/Application;

    move-object v1, p0

    check-cast v1, Lio/ktor/server/application/ApplicationEnvironment;

    invoke-direct {v0, v1}, Lio/ktor/server/application/Application;-><init>(Lio/ktor/server/application/ApplicationEnvironment;)V

    iput-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->_applicationInstance:Lio/ktor/server/application/Application;

    .line 70
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->applicationInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 71
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->packageWatchKeys:Ljava/util/List;

    .line 73
    move-object v0, p0

    check-cast v0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;

    .local v0, "$this$configModulesNames_u24lambda_u240":Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;
    const/4 v1, 0x0

    .line 74
    .local v1, "$i$a$-run-ApplicationEngineEnvironmentReloading$configModulesNames$1":I
    invoke-virtual {v0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getConfig()Lio/ktor/server/config/ApplicationConfig;

    move-result-object v2

    const-string v3, "ktor.application.modules"

    invoke-interface {v2, v3}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lio/ktor/server/config/ApplicationConfigValue;->getList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 73
    .end local v0    # "$this$configModulesNames_u24lambda_u240":Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;
    .end local v1    # "$i$a$-run-ApplicationEngineEnvironmentReloading$configModulesNames$1":I
    :cond_2
    iput-object v2, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->configModulesNames:Ljava/util/List;

    .line 77
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->configModulesNames:Ljava/util/List;

    iput-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->modulesNames:Ljava/util/List;

    .line 79
    sget-object v0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$watcher$2;->INSTANCE:Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$watcher$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->watcher$delegate:Lkotlin/Lazy;

    .line 87
    new-instance v0, Lio/ktor/events/Events;

    invoke-direct {v0}, Lio/ktor/events/Events;-><init>()V

    iput-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->monitor:Lio/ktor/events/Events;

    .line 32
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/ClassLoader;Lorg/slf4j/Logger;Lio/ktor/server/config/ApplicationConfig;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    .line 32
    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    .line 38
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v8, v1

    goto :goto_0

    .line 32
    :cond_0
    move-object/from16 v8, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    .line 39
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    move-object v9, v1

    goto :goto_1

    .line 32
    :cond_1
    move-object/from16 v9, p7

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    .line 40
    const-string v1, ""

    move-object v10, v1

    goto :goto_2

    .line 32
    :cond_2
    move-object/from16 v10, p8

    :goto_2
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_3

    .line 41
    const/4 v0, 0x1

    move v11, v0

    goto :goto_3

    .line 32
    :cond_3
    move/from16 v11, p9

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v11}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;-><init>(Ljava/lang/ClassLoader;Lorg/slf4j/Logger;Lio/ktor/server/config/ApplicationConfig;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;Z)V

    .line 370
    return-void
.end method

.method public static final synthetic access$launchModuleByName(Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;Ljava/lang/String;Ljava/lang/ClassLoader;Lio/ktor/server/application/Application;)V
    .locals 0
    .param p0, "$this"    # Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "currentClassLoader"    # Ljava/lang/ClassLoader;
    .param p3, "newInstance"    # Lio/ktor/server/application/Application;

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->launchModuleByName(Ljava/lang/String;Ljava/lang/ClassLoader;Lio/ktor/server/application/Application;)V

    return-void
.end method

.method private final avoidingDoubleStartup(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 337
    nop

    .line 338
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    invoke-static {}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->getCurrentStartupModules()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .local v0, "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 341
    .local v1, "$i$a$-let-ApplicationEngineEnvironmentReloading$avoidingDoubleStartup$1":I
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    invoke-static {}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->getCurrentStartupModules()Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 344
    :cond_0
    nop

    .line 340
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-ApplicationEngineEnvironmentReloading$avoidingDoubleStartup$1":I
    nop

    .line 345
    :cond_1
    nop

    .line 346
    return-void

    .line 340
    :catchall_0
    move-exception v0

    invoke-static {}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->getCurrentStartupModules()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .local v1, "it":Ljava/util/List;
    const/4 v2, 0x0

    .line 341
    .local v2, "$i$a$-let-ApplicationEngineEnvironmentReloading$avoidingDoubleStartup$1":I
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 342
    invoke-static {}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->getCurrentStartupModules()Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 344
    :cond_2
    nop

    .line 340
    .end local v1    # "it":Ljava/util/List;
    .end local v2    # "$i$a$-let-ApplicationEngineEnvironmentReloading$avoidingDoubleStartup$1":I
    nop

    :cond_3
    throw v0
.end method

.method private final avoidingDoubleStartupFor(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .param p1, "fqName"    # Ljava/lang/String;
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 349
    invoke-static {}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->getCurrentStartupModules()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 440
    const/4 v1, 0x0

    .line 349
    .local v1, "$i$a$-getOrSet-ApplicationEngineEnvironmentReloading$avoidingDoubleStartupFor$modules$1":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .end local v1    # "$i$a$-getOrSet-ApplicationEngineEnvironmentReloading$avoidingDoubleStartupFor$modules$1":I
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    move-object v0, v1

    check-cast v0, Ljava/util/List;

    .line 350
    .local v0, "modules":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 354
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    nop

    .line 356
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 359
    nop

    .line 360
    return-void

    .line 358
    :catchall_0
    move-exception v1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw v1

    .line 350
    :cond_1
    const/4 v1, 0x0

    .line 351
    .local v1, "$i$a$-check-ApplicationEngineEnvironmentReloading$avoidingDoubleStartupFor$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Module startup is already in progress for function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (recursive module startup from module main?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    .end local v1    # "$i$a$-check-ApplicationEngineEnvironmentReloading$avoidingDoubleStartupFor$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final cleanupWatcher()V
    .locals 1

    .line 363
    nop

    .line 364
    :try_start_0
    invoke-direct {p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getWatcher()Ljava/nio/file/WatchService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/nio/file/WatchService;->close()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 367
    :cond_0
    :goto_0
    return-void
.end method

.method private final createApplication()Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lio/ktor/server/application/Application;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->createClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 145
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 146
    .local v1, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 147
    .local v2, "oldThreadClassLoader":Ljava/lang/ClassLoader;
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 149
    nop

    .line 150
    :try_start_0
    invoke-direct {p0, v0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->instantiateAndConfigureApplication(Ljava/lang/ClassLoader;)Lio/ktor/server/application/Application;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 150
    return-object v3

    .line 152
    :catchall_0
    move-exception v3

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v3
.end method

.method private final createClassLoader()Ljava/lang/ClassLoader;
    .locals 30

    .line 158
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 160
    .local v1, "baseClassLoader":Ljava/lang/ClassLoader;
    invoke-virtual/range {p0 .. p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getDevelopmentMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    invoke-virtual/range {p0 .. p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getLog()Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "Autoreload is disabled because the development mode is off."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 162
    return-object v1

    .line 165
    :cond_0
    iget-object v2, v0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->watchPatterns:Ljava/util/List;

    .line 166
    .local v2, "watchPatterns":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    invoke-virtual/range {p0 .. p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getLog()Lorg/slf4j/Logger;

    move-result-object v3

    const-string v4, "No ktor.deployment.watch patterns specified, automatic reload is not active."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 168
    return-object v1

    .line 171
    :cond_1
    invoke-static {v1}, Lio/ktor/server/engine/ClassLoadersKt;->allURLs(Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v3

    .line 172
    .local v3, "allUrls":Ljava/util/Set;
    new-instance v4, Ljava/io/File;

    const-string v5, "java.home"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "jre":Ljava/lang/String;
    move-object v5, v3

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 403
    .local v6, "$i$f$map":I
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v5, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v5

    .local v8, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 404
    .local v9, "$i$f$mapTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 405
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/net/URL;

    .local v12, "it":Ljava/net/URL;
    const/4 v13, 0x0

    .line 173
    .local v13, "$i$a$-map-ApplicationEngineEnvironmentReloading$createClassLoader$debugUrls$1":I
    invoke-virtual {v12}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v12

    .line 405
    .end local v12    # "it":Ljava/net/URL;
    .end local v13    # "$i$a$-map-ApplicationEngineEnvironmentReloading$createClassLoader$debugUrls$1":I
    invoke-interface {v7, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 406
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$mapTo":I
    check-cast v7, Ljava/util/List;

    .line 403
    nop

    .line 173
    .end local v5    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$map":I
    move-object v5, v7

    .line 174
    .local v5, "debugUrls":Ljava/util/List;
    invoke-virtual/range {p0 .. p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getLog()Lorg/slf4j/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Java Home: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getLog()Lorg/slf4j/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Class Loader: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 407
    .local v9, "$i$f$filter":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    move-object v11, v8

    .local v11, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 408
    .local v12, "$i$f$filterTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const-string v15, "jre"

    move-object/from16 v16, v5

    .end local v5    # "debugUrls":Ljava/util/List;
    .local v16, "debugUrls":Ljava/util/List;
    const/16 v17, 0x1

    const/4 v5, 0x0

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v14

    check-cast v18, Ljava/lang/String;

    .local v18, "it":Ljava/lang/String;
    const/16 v19, 0x0

    .line 175
    .local v19, "$i$a$-filter-ApplicationEngineEnvironmentReloading$createClassLoader$1":I
    move-object/from16 v20, v8

    .end local v8    # "$this$filter$iv":Ljava/lang/Iterable;
    .local v20, "$this$filter$iv":Ljava/lang/Iterable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v21, v9

    const/4 v9, 0x2

    const/4 v15, 0x0

    .end local v9    # "$i$f$filter":I
    .local v21, "$i$f$filter":I
    invoke-static {v8, v4, v5, v9, v15}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    .line 408
    .end local v18    # "it":Ljava/lang/String;
    .end local v19    # "$i$a$-filter-ApplicationEngineEnvironmentReloading$createClassLoader$1":I
    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v10, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v5, v16

    move-object/from16 v8, v20

    move/from16 v9, v21

    goto :goto_1

    .line 409
    .end local v14    # "element$iv$iv":Ljava/lang/Object;
    .end local v20    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v21    # "$i$f$filter":I
    .restart local v8    # "$this$filter$iv":Ljava/lang/Iterable;
    .restart local v9    # "$i$f$filter":I
    :cond_4
    move-object/from16 v20, v8

    move/from16 v21, v9

    .end local v8    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$filter":I
    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$filterTo":I
    .restart local v20    # "$this$filter$iv":Ljava/lang/Iterable;
    .restart local v21    # "$i$f$filter":I
    move-object v8, v10

    check-cast v8, Ljava/util/List;

    .line 407
    nop

    .line 175
    .end local v20    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v21    # "$i$f$filter":I
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 180
    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Lio/ktor/server/application/ApplicationEnvironment;

    aput-object v7, v6, v5

    const-class v7, Lio/ktor/server/engine/ApplicationEngineEnvironment;

    aput-object v7, v6, v17

    const-class v7, Lio/ktor/util/pipeline/Pipeline;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-class v7, Lio/ktor/http/HttpStatusCode;

    const/4 v8, 0x3

    aput-object v7, v6, v8

    const-class v7, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x4

    aput-object v7, v6, v8

    const-class v7, Lorg/slf4j/Logger;

    const/4 v8, 0x5

    aput-object v7, v6, v8

    const-class v7, Lio/ktor/utils/io/ByteReadChannel;

    const/4 v8, 0x6

    aput-object v7, v6, v8

    const-class v7, Lio/ktor/utils/io/core/Input;

    const/4 v8, 0x7

    aput-object v7, v6, v8

    const-class v7, Lio/ktor/util/Attributes;

    const/16 v8, 0x8

    aput-object v7, v6, v8

    .line 179
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 189
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v6, "$this$mapNotNullTo$iv":Ljava/lang/Iterable;
    .local v7, "destination$iv":Ljava/util/Collection;
    const/4 v8, 0x0

    .line 410
    .local v8, "$i$f$mapNotNullTo":I
    move-object v9, v6

    .local v9, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 411
    .local v10, "$i$f$forEach":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "element$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 410
    .local v14, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv":I
    move-object/from16 v18, v13

    check-cast v18, Ljava/lang/Class;

    .local v18, "it":Ljava/lang/Class;
    const/16 v19, 0x0

    .line 189
    .local v19, "$i$a$-mapNotNullTo-ApplicationEngineEnvironmentReloading$createClassLoader$coreUrls$1":I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v18

    .line 410
    .end local v18    # "it":Ljava/lang/Class;
    .end local v19    # "$i$a$-mapNotNullTo-ApplicationEngineEnvironmentReloading$createClassLoader$coreUrls$1":I
    if-eqz v18, :cond_5

    move-object/from16 v19, v18

    .line 412
    .local v19, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 410
    .local v18, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv":I
    move-object/from16 v5, v19

    .end local v19    # "it$iv":Ljava/lang/Object;
    .local v5, "it$iv":Ljava/lang/Object;
    invoke-interface {v7, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 411
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v13    # "element$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv":I
    .end local v18    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv":I
    :cond_5
    const/4 v5, 0x0

    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_2

    .line 413
    :cond_6
    nop

    .line 414
    .end local v9    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$forEach":I
    nop

    .line 189
    .end local v6    # "$this$mapNotNullTo$iv":Ljava/lang/Iterable;
    .end local v7    # "destination$iv":Ljava/util/Collection;
    .end local v8    # "$i$f$mapNotNullTo":I
    move-object v5, v7

    check-cast v5, Ljava/util/HashSet;

    .line 179
    nop

    .line 191
    .local v5, "coreUrls":Ljava/util/HashSet;
    move-object v6, v3

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 415
    .local v7, "$i$f$filter":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .local v8, "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v6

    .local v9, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 416
    .local v10, "$i$f$filterTo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .restart local v12    # "element$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Ljava/net/URL;

    .local v13, "url":Ljava/net/URL;
    const/4 v14, 0x0

    .line 192
    .local v14, "$i$a$-filter-ApplicationEngineEnvironmentReloading$createClassLoader$watchUrls$1":I
    invoke-virtual {v5, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    move-object/from16 v18, v3

    .end local v3    # "allUrls":Ljava/util/Set;
    .local v18, "allUrls":Ljava/util/Set;
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$any$iv":Ljava/lang/Iterable;
    const/16 v19, 0x0

    .line 417
    .local v19, "$i$f$any":I
    move-object/from16 v21, v2

    .end local v2    # "watchPatterns":Ljava/util/List;
    .local v21, "watchPatterns":Ljava/util/List;
    instance-of v2, v3, Ljava/util/Collection;

    if-eqz v2, :cond_7

    move-object v2, v3

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move/from16 v29, v7

    const/4 v7, 0x0

    goto :goto_5

    .line 418
    :cond_7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    .local v22, "element$iv":Ljava/lang/Object;
    move-object/from16 v23, v22

    check-cast v23, Ljava/lang/String;

    .local v23, "pattern":Ljava/lang/String;
    const/16 v24, 0x0

    .line 192
    .local v24, "$i$a$-any-ApplicationEngineEnvironmentReloading$createClassLoader$watchUrls$1$1":I
    move-object/from16 v25, v2

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v26, v3

    .end local v3    # "$this$any$iv":Ljava/lang/Iterable;
    .local v26, "$this$any$iv":Ljava/lang/Iterable;
    const-string v3, "url.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    move-object/from16 v3, v23

    check-cast v3, Ljava/lang/CharSequence;

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move/from16 v29, v7

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .end local v5    # "coreUrls":Ljava/util/HashSet;
    .end local v6    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$filter":I
    .local v27, "coreUrls":Ljava/util/HashSet;
    .local v28, "$this$filter$iv":Ljava/lang/Iterable;
    .local v29, "$i$f$filter":I
    invoke-static {v2, v3, v7, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    .line 418
    .end local v23    # "pattern":Ljava/lang/String;
    .end local v24    # "$i$a$-any-ApplicationEngineEnvironmentReloading$createClassLoader$watchUrls$1$1":I
    if-eqz v2, :cond_8

    move/from16 v7, v17

    goto :goto_5

    :cond_8
    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v5, v27

    move-object/from16 v6, v28

    move/from16 v7, v29

    goto :goto_4

    .line 419
    .end local v22    # "element$iv":Ljava/lang/Object;
    .end local v26    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v27    # "coreUrls":Ljava/util/HashSet;
    .end local v28    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v29    # "$i$f$filter":I
    .restart local v3    # "$this$any$iv":Ljava/lang/Iterable;
    .restart local v5    # "coreUrls":Ljava/util/HashSet;
    .restart local v6    # "$this$filter$iv":Ljava/lang/Iterable;
    .restart local v7    # "$i$f$filter":I
    :cond_9
    move-object/from16 v26, v3

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move/from16 v29, v7

    .end local v3    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v5    # "coreUrls":Ljava/util/HashSet;
    .end local v6    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$filter":I
    .restart local v26    # "$this$any$iv":Ljava/lang/Iterable;
    .restart local v27    # "coreUrls":Ljava/util/HashSet;
    .restart local v28    # "$this$filter$iv":Ljava/lang/Iterable;
    .restart local v29    # "$i$f$filter":I
    const/4 v7, 0x0

    .end local v19    # "$i$f$any":I
    .end local v26    # "$this$any$iv":Ljava/lang/Iterable;
    :goto_5
    if-eqz v7, :cond_b

    .line 193
    invoke-virtual {v13}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    const-string v2, ""

    goto :goto_6

    :cond_a
    const-string v3, "url.path ?: \"\""

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    invoke-static {v2, v4, v7, v5, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move/from16 v2, v17

    goto :goto_8

    .line 419
    :cond_b
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    goto :goto_7

    .line 192
    .end local v18    # "allUrls":Ljava/util/Set;
    .end local v21    # "watchPatterns":Ljava/util/List;
    .end local v27    # "coreUrls":Ljava/util/HashSet;
    .end local v28    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v29    # "$i$f$filter":I
    .restart local v2    # "watchPatterns":Ljava/util/List;
    .local v3, "allUrls":Ljava/util/Set;
    .restart local v5    # "coreUrls":Ljava/util/HashSet;
    .restart local v6    # "$this$filter$iv":Ljava/lang/Iterable;
    .restart local v7    # "$i$f$filter":I
    :cond_c
    move-object/from16 v21, v2

    move-object/from16 v18, v3

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move/from16 v29, v7

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    .line 193
    .end local v2    # "watchPatterns":Ljava/util/List;
    .end local v3    # "allUrls":Ljava/util/Set;
    .end local v5    # "coreUrls":Ljava/util/HashSet;
    .end local v6    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$filter":I
    .restart local v18    # "allUrls":Ljava/util/Set;
    .restart local v21    # "watchPatterns":Ljava/util/List;
    .restart local v27    # "coreUrls":Ljava/util/HashSet;
    .restart local v28    # "$this$filter$iv":Ljava/lang/Iterable;
    .restart local v29    # "$i$f$filter":I
    :cond_d
    :goto_7
    move v2, v7

    .line 192
    :goto_8
    nop

    .line 416
    .end local v13    # "url":Ljava/net/URL;
    .end local v14    # "$i$a$-filter-ApplicationEngineEnvironmentReloading$createClassLoader$watchUrls$1":I
    if-eqz v2, :cond_e

    invoke-interface {v8, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_e
    move-object/from16 v3, v18

    move-object/from16 v2, v21

    move-object/from16 v5, v27

    move-object/from16 v6, v28

    move/from16 v7, v29

    goto/16 :goto_3

    .line 420
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    .end local v18    # "allUrls":Ljava/util/Set;
    .end local v21    # "watchPatterns":Ljava/util/List;
    .end local v27    # "coreUrls":Ljava/util/HashSet;
    .end local v28    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v29    # "$i$f$filter":I
    .restart local v2    # "watchPatterns":Ljava/util/List;
    .restart local v3    # "allUrls":Ljava/util/Set;
    .restart local v5    # "coreUrls":Ljava/util/HashSet;
    .restart local v6    # "$this$filter$iv":Ljava/lang/Iterable;
    .restart local v7    # "$i$f$filter":I
    :cond_f
    move-object/from16 v21, v2

    move-object/from16 v18, v3

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move/from16 v29, v7

    .end local v2    # "watchPatterns":Ljava/util/List;
    .end local v3    # "allUrls":Ljava/util/Set;
    .end local v5    # "coreUrls":Ljava/util/HashSet;
    .end local v6    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$filter":I
    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$filterTo":I
    .restart local v18    # "allUrls":Ljava/util/Set;
    .restart local v21    # "watchPatterns":Ljava/util/List;
    .restart local v27    # "coreUrls":Ljava/util/HashSet;
    .restart local v28    # "$this$filter$iv":Ljava/lang/Iterable;
    .restart local v29    # "$i$f$filter":I
    move-object v2, v8

    check-cast v2, Ljava/util/List;

    .line 415
    nop

    .line 191
    .end local v28    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v29    # "$i$f$filter":I
    nop

    .line 196
    .local v2, "watchUrls":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 197
    invoke-virtual/range {p0 .. p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getLog()Lorg/slf4j/Logger;

    move-result-object v3

    const-string v5, "No ktor.deployment.watch patterns match classpath entries, automatic reload is not active"

    invoke-interface {v3, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 198
    return-object v1

    .line 201
    :cond_10
    invoke-direct {v0, v2}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->watchUrls(Ljava/util/List;)V

    .line 202
    new-instance v3, Lio/ktor/server/engine/OverridingClassLoader;

    invoke-direct {v3, v2, v1}, Lio/ktor/server/engine/OverridingClassLoader;-><init>(Ljava/util/List;Ljava/lang/ClassLoader;)V

    check-cast v3, Ljava/lang/ClassLoader;

    return-object v3
.end method

.method private final currentApplication()Lio/ktor/server/application/Application;
    .locals 18

    .line 104
    move-object/from16 v1, p0

    iget-object v0, v1, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->applicationInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    const/4 v3, 0x0

    .line 105
    .local v3, "$i$a$-read-ApplicationEngineEnvironmentReloading$currentApplication$1":I
    :try_start_0
    iget-object v0, v1, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->_applicationInstance:Lio/ktor/server/application/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v4, "ApplicationEngineEnvironment was not started"

    if-eqz v0, :cond_b

    move-object v5, v0

    .line 107
    .local v5, "currentApplication":Lio/ktor/server/application/Application;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getDevelopmentMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    goto/16 :goto_7

    .line 111
    :cond_0
    iget-object v0, v1, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->packageWatchKeys:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 389
    .local v6, "$i$f$flatMap":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v0

    .local v8, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 390
    .local v9, "$i$f$flatMapTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v12, "it.pollEvents()"

    if-eqz v11, :cond_1

    :try_start_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 391
    .local v11, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v11

    check-cast v13, Ljava/nio/file/WatchKey;

    .local v13, "it":Ljava/nio/file/WatchKey;
    const/4 v14, 0x0

    .line 111
    .local v14, "$i$a$-flatMap-ApplicationEngineEnvironmentReloading$currentApplication$1$changes$1":I
    invoke-interface {v13}, Ljava/nio/file/WatchKey;->pollEvents()Ljava/util/List;

    move-result-object v15

    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    .end local v13    # "it":Ljava/nio/file/WatchKey;
    .end local v14    # "$i$a$-flatMap-ApplicationEngineEnvironmentReloading$currentApplication$1$changes$1":I
    check-cast v15, Ljava/lang/Iterable;

    move-object v12, v15

    .line 392
    .local v12, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v7, v12}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 394
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    .end local v12    # "list$iv$iv":Ljava/lang/Iterable;
    :cond_1
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$flatMapTo":I
    check-cast v7, Ljava/util/List;

    .line 389
    nop

    .line 111
    .end local v0    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$flatMap":I
    move-object v6, v7

    .line 112
    .local v6, "changes":Ljava/util/List;
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    goto/16 :goto_7

    .line 116
    .end local v5    # "currentApplication":Lio/ktor/server/application/Application;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getLog()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v7, "Changes in application detected."

    invoke-interface {v0, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 118
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v7, v0

    .line 119
    .local v7, "count":I
    :goto_1
    nop

    .line 120
    const-wide/16 v8, 0xc8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 121
    iget-object v0, v1, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->packageWatchKeys:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .restart local v0    # "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 395
    .local v8, "$i$f$flatMap":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v0

    .local v10, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 396
    .local v11, "$i$f$flatMapTo":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 397
    .local v14, "element$iv$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Ljava/nio/file/WatchKey;

    .local v15, "it":Ljava/nio/file/WatchKey;
    const/16 v16, 0x0

    .line 121
    .local v16, "$i$a$-flatMap-ApplicationEngineEnvironmentReloading$currentApplication$1$moreChanges$1":I
    move-object/from16 v17, v0

    .end local v0    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .local v17, "$this$flatMap$iv":Ljava/lang/Iterable;
    invoke-interface {v15}, Ljava/nio/file/WatchKey;->pollEvents()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    .end local v15    # "it":Ljava/nio/file/WatchKey;
    .end local v16    # "$i$a$-flatMap-ApplicationEngineEnvironmentReloading$currentApplication$1$moreChanges$1":I
    check-cast v0, Ljava/lang/Iterable;

    .line 398
    .local v0, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v9, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move-object/from16 v0, v17

    goto :goto_2

    .line 400
    .end local v14    # "element$iv$iv":Ljava/lang/Object;
    .end local v17    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .local v0, "$this$flatMap$iv":Ljava/lang/Iterable;
    .restart local v5    # "currentApplication":Lio/ktor/server/application/Application;
    :cond_3
    move-object/from16 v17, v0

    .end local v0    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$flatMapTo":I
    .restart local v17    # "$this$flatMap$iv":Ljava/lang/Iterable;
    move-object v0, v9

    check-cast v0, Ljava/util/List;

    .line 395
    nop

    .line 121
    .end local v8    # "$i$f$flatMap":I
    .end local v17    # "$this$flatMap$iv":Ljava/lang/Iterable;
    nop

    .line 122
    .local v0, "moreChanges":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 123
    nop

    .line 130
    .end local v0    # "moreChanges":Ljava/util/List;
    invoke-virtual/range {p0 .. p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getLog()Lorg/slf4j/Logger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Changes to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " files caused application restart."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 131
    move-object v0, v6

    check-cast v0, Ljava/lang/Iterable;

    const/4 v8, 0x5

    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 401
    .local v8, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Ljava/nio/file/WatchEvent;

    .local v11, "it":Ljava/nio/file/WatchEvent;
    const/4 v12, 0x0

    .line 131
    .local v12, "$i$a$-forEach-ApplicationEngineEnvironmentReloading$currentApplication$1$1":I
    invoke-virtual/range {p0 .. p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getLog()Lorg/slf4j/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "...  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v11}, Ljava/nio/file/WatchEvent;->context()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 401
    .end local v11    # "it":Ljava/nio/file/WatchEvent;
    .end local v12    # "$i$a$-forEach-ApplicationEngineEnvironmentReloading$currentApplication$1$1":I
    nop

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto :goto_3

    .line 402
    :cond_4
    nop

    .line 133
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    iget-object v0, v1, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->applicationInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_5

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v9

    goto :goto_4

    :cond_5
    move v9, v10

    :goto_4
    move v11, v10

    :goto_5
    if-ge v11, v9, :cond_6

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    .line 134
    .local v0, "$i$a$-write-ApplicationEngineEnvironmentReloading$currentApplication$1$2":I
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->destroyApplication()V

    .line 135
    invoke-direct/range {p0 .. p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->createApplication()Lkotlin/Pair;

    move-result-object v12

    invoke-virtual {v12}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/ktor/server/application/Application;

    .local v13, "application":Lio/ktor/server/application/Application;
    invoke-virtual {v12}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ClassLoader;

    .line 136
    .local v12, "classLoader":Ljava/lang/ClassLoader;
    iput-object v13, v1, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->_applicationInstance:Lio/ktor/server/application/Application;

    .line 137
    iput-object v12, v1, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->_applicationClassLoader:Ljava/lang/ClassLoader;

    .line 138
    nop

    .end local v0    # "$i$a$-write-ApplicationEngineEnvironmentReloading$currentApplication$1$2":I
    .end local v12    # "classLoader":Ljava/lang/ClassLoader;
    .end local v13    # "application":Lio/ktor/server/application/Application;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    nop

    :goto_6
    if-ge v10, v9, :cond_7

    :try_start_4
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 140
    iget-object v0, v1, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->_applicationInstance:Lio/ktor/server/application/Application;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_8

    move-object v5, v0

    .line 104
    .end local v3    # "$i$a$-read-ApplicationEngineEnvironmentReloading$currentApplication$1":I
    .end local v5    # "currentApplication":Lio/ktor/server/application/Application;
    .end local v6    # "changes":Ljava/util/List;
    .end local v7    # "count":I
    :goto_7
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 141
    return-object v5

    .line 140
    .restart local v3    # "$i$a$-read-ApplicationEngineEnvironmentReloading$currentApplication$1":I
    .restart local v5    # "currentApplication":Lio/ktor/server/application/Application;
    .restart local v6    # "changes":Ljava/util/List;
    .restart local v7    # "count":I
    :cond_8
    :try_start_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :catchall_0
    move-exception v0

    :goto_8
    if-ge v10, v9, :cond_9

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_9
    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    .line 126
    .local v0, "moreChanges":Ljava/util/List;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getLog()Lorg/slf4j/Logger;

    move-result-object v8

    const-string v9, "Waiting for more changes."

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    .end local v0    # "moreChanges":Ljava/util/List;
    goto/16 :goto_1

    .line 105
    .end local v5    # "currentApplication":Lio/ktor/server/application/Application;
    .end local v6    # "changes":Ljava/util/List;
    .end local v7    # "count":I
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 104
    .end local v3    # "$i$a$-read-ApplicationEngineEnvironmentReloading$currentApplication$1":I
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private final destroyApplication()V
    .locals 8

    .line 210
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->_applicationInstance:Lio/ktor/server/application/Application;

    .line 211
    .local v0, "currentApplication":Lio/ktor/server/application/Application;
    iget-object v1, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->_applicationClassLoader:Ljava/lang/ClassLoader;

    .line 212
    .local v1, "applicationClassLoader":Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    iput-object v2, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->_applicationInstance:Lio/ktor/server/application/Application;

    .line 213
    iput-object v2, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->_applicationClassLoader:Ljava/lang/ClassLoader;

    .line 215
    if-eqz v0, :cond_2

    .line 216
    invoke-static {}, Lio/ktor/server/application/DefaultApplicationEventsKt;->getApplicationStopping()Lio/ktor/events/EventDefinition;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->safeRiseEvent(Lio/ktor/events/EventDefinition;Lio/ktor/server/application/Application;)V

    .line 217
    nop

    .line 218
    :try_start_0
    invoke-virtual {v0}, Lio/ktor/server/application/Application;->dispose()V

    .line 219
    instance-of v3, v1, Lio/ktor/server/engine/OverridingClassLoader;

    if-eqz v3, :cond_0

    move-object v2, v1

    check-cast v2, Lio/ktor/server/engine/OverridingClassLoader;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lio/ktor/server/engine/OverridingClassLoader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v2

    .line 221
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getLog()Lorg/slf4j/Logger;

    move-result-object v3

    const-string v4, "Failed to destroy application instance."

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    invoke-static {}, Lio/ktor/server/application/DefaultApplicationEventsKt;->getApplicationStopped()Lio/ktor/events/EventDefinition;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->safeRiseEvent(Lio/ktor/events/EventDefinition;Lio/ktor/server/application/Application;)V

    .line 226
    :cond_2
    iget-object v2, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->packageWatchKeys:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 421
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/nio/file/WatchKey;

    .local v6, "it":Ljava/nio/file/WatchKey;
    const/4 v7, 0x0

    .line 226
    .local v7, "$i$a$-forEach-ApplicationEngineEnvironmentReloading$destroyApplication$1":I
    invoke-interface {v6}, Ljava/nio/file/WatchKey;->cancel()V

    .line 421
    .end local v6    # "it":Ljava/nio/file/WatchKey;
    .end local v7    # "$i$a$-forEach-ApplicationEngineEnvironmentReloading$destroyApplication$1":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 422
    :cond_3
    nop

    .line 227
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->packageWatchKeys:Ljava/util/List;

    .line 228
    return-void
.end method

.method private final getConfiguredWatchPath()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getConfig()Lio/ktor/server/config/ApplicationConfig;

    move-result-object v0

    const-string v1, "ktor.deployment.watch"

    invoke-interface {v0, v1}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/ktor/server/config/ApplicationConfigValue;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private final getWatcher()Ljava/nio/file/WatchService;
    .locals 1

    .line 79
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->watcher$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/WatchService;

    return-object v0
.end method

.method private final instantiateAndConfigureApplication(Ljava/lang/ClassLoader;)Lio/ktor/server/application/Application;
    .locals 2
    .param p1, "currentClassLoader"    # Ljava/lang/ClassLoader;

    .line 301
    iget-boolean v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->recreateInstance:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->_applicationInstance:Lio/ktor/server/application/Application;

    if-nez v0, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->recreateInstance:Z

    .line 305
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->_applicationInstance:Lio/ktor/server/application/Application;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    .line 302
    :cond_1
    :goto_0
    new-instance v0, Lio/ktor/server/application/Application;

    move-object v1, p0

    check-cast v1, Lio/ktor/server/application/ApplicationEnvironment;

    invoke-direct {v0, v1}, Lio/ktor/server/application/Application;-><init>(Lio/ktor/server/application/ApplicationEnvironment;)V

    .line 301
    :goto_1
    nop

    .line 308
    .local v0, "newInstance":Lio/ktor/server/application/Application;
    invoke-static {}, Lio/ktor/server/application/DefaultApplicationEventsKt;->getApplicationStarting()Lio/ktor/events/EventDefinition;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->safeRiseEvent(Lio/ktor/events/EventDefinition;Lio/ktor/server/application/Application;)V

    .line 310
    new-instance v1, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1;

    invoke-direct {v1, p0, p1, v0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$instantiateAndConfigureApplication$1;-><init>(Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;Ljava/lang/ClassLoader;Lio/ktor/server/application/Application;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v1}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->avoidingDoubleStartup(Lkotlin/jvm/functions/Function0;)V

    .line 326
    invoke-static {}, Lio/ktor/server/application/DefaultApplicationEventsKt;->getApplicationStarted()Lio/ktor/events/EventDefinition;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->safeRiseEvent(Lio/ktor/events/EventDefinition;Lio/ktor/server/application/Application;)V

    .line 327
    return-object v0
.end method

.method private final launchModuleByName(Ljava/lang/String;Ljava/lang/ClassLoader;Lio/ktor/server/application/Application;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "currentClassLoader"    # Ljava/lang/ClassLoader;
    .param p3, "newInstance"    # Lio/ktor/server/application/Application;

    .line 331
    new-instance v0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$launchModuleByName$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$launchModuleByName$1;-><init>(Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;Ljava/lang/ClassLoader;Ljava/lang/String;Lio/ktor/server/application/Application;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, v0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->avoidingDoubleStartupFor(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 334
    return-void
.end method

.method private final safeRiseEvent(Lio/ktor/events/EventDefinition;Lio/ktor/server/application/Application;)V
    .locals 6
    .param p1, "event"    # Lio/ktor/events/EventDefinition;
    .param p2, "application"    # Lio/ktor/server/application/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/server/application/Application;",
            ">;",
            "Lio/ktor/server/application/Application;",
            ")V"
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getMonitor()Lio/ktor/events/Events;

    move-result-object v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lio/ktor/events/EventsKt;->raiseCatching$default(Lio/ktor/events/Events;Lio/ktor/events/EventDefinition;Ljava/lang/Object;Lorg/slf4j/Logger;ILjava/lang/Object;)V

    .line 207
    return-void
.end method

.method private final watchUrls(Ljava/util/List;)V
    .locals 23
    .param p1, "urls"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .line 231
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v2, v0

    .line 232
    .local v2, "paths":Ljava/util/HashSet;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/net/URL;

    .line 233
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v7, v0

    .line 234
    .local v7, "path":Ljava/lang/String;
    const-string v0, "utf-8"

    invoke-static {v7, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 235
    .local v8, "decodedPath":Ljava/lang/String;
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;

    .line 423
    .local v0, "$this$watchUrls_u24lambda_u2413":Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;
    const/4 v9, 0x0

    .line 235
    .local v9, "$i$a$-runCatching-ApplicationEngineEnvironmentReloading$watchUrls$folder$1":I
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v10

    .end local v0    # "$this$watchUrls_u24lambda_u2413":Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;
    .end local v9    # "$i$a$-runCatching-ApplicationEngineEnvironmentReloading$watchUrls$folder$1":I
    invoke-static {v10}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object v4, v0

    :goto_2
    check-cast v4, Ljava/nio/file/Path;

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v4

    .line 237
    .local v0, "folder":Ljava/nio/file/Path;
    new-array v4, v5, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 238
    goto :goto_0

    .line 241
    :cond_4
    new-instance v4, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$watchUrls$visitor$1;

    invoke-direct {v4, v2}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$watchUrls$visitor$1;-><init>(Ljava/util/HashSet;)V

    .line 257
    .local v4, "visitor":Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$watchUrls$visitor$1;
    new-array v5, v5, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v5}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 258
    move-object v5, v4

    check-cast v5, Ljava/nio/file/FileVisitor;

    invoke-static {v0, v5}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    goto :goto_0

    .line 262
    .end local v0    # "folder":Ljava/nio/file/Path;
    .end local v4    # "visitor":Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$watchUrls$visitor$1;
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "decodedPath":Ljava/lang/String;
    :cond_5
    move-object v0, v2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 424
    .local v3, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/nio/file/Path;

    .local v8, "path":Ljava/nio/file/Path;
    const/4 v9, 0x0

    .line 263
    .local v9, "$i$a$-forEach-ApplicationEngineEnvironmentReloading$watchUrls$1":I
    invoke-virtual/range {p0 .. p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getLog()Lorg/slf4j/Logger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Watching "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " for changes."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 264
    nop

    .line 424
    .end local v8    # "path":Ljava/nio/file/Path;
    .end local v9    # "$i$a$-forEach-ApplicationEngineEnvironmentReloading$watchUrls$1":I
    nop

    .end local v7    # "element$iv":Ljava/lang/Object;
    goto :goto_3

    .line 425
    :cond_6
    nop

    .line 266
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    invoke-static {}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->get_com_sun_nio_file_SensitivityWatchEventModifier_HIGH()Ljava/nio/file/WatchEvent$Modifier;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    .line 423
    .local v0, "it":Ljava/nio/file/WatchEvent$Modifier;
    const/4 v6, 0x0

    .line 266
    .local v6, "$i$a$-let-ApplicationEngineEnvironmentReloading$watchUrls$modifiers$1":I
    new-array v7, v3, [Ljava/nio/file/WatchEvent$Modifier;

    aput-object v0, v7, v5

    .end local v0    # "it":Ljava/nio/file/WatchEvent$Modifier;
    .end local v6    # "$i$a$-let-ApplicationEngineEnvironmentReloading$watchUrls$modifiers$1":I
    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    .line 426
    .local v0, "$i$f$emptyArray":I
    new-array v7, v5, [Ljava/nio/file/WatchEvent$Modifier;

    .line 266
    .end local v0    # "$i$f$emptyArray":I
    :goto_4
    move-object v0, v7

    .line 267
    .local v0, "modifiers":[Ljava/nio/file/WatchEvent$Modifier;
    move-object v6, v2

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 427
    .local v7, "$i$f$mapNotNull":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .local v8, "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v6

    .local v9, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 435
    .local v10, "$i$f$mapNotNullTo":I
    move-object v11, v9

    .local v11, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 436
    .local v12, "$i$f$forEach":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v15, v14

    .local v15, "element$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 435
    .local v16, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v4, v15

    check-cast v4, Ljava/nio/file/Path;

    .local v4, "path":Ljava/nio/file/Path;
    const/16 v17, 0x0

    .line 268
    .local v17, "$i$a$-mapNotNull-ApplicationEngineEnvironmentReloading$watchUrls$2":I
    invoke-direct/range {p0 .. p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->getWatcher()Ljava/nio/file/WatchService;

    move-result-object v18

    if-eqz v18, :cond_8

    move-object/from16 v19, v18

    .local v19, "it":Ljava/nio/file/WatchService;
    const/16 v18, 0x0

    .line 269
    .local v18, "$i$a$-let-ApplicationEngineEnvironmentReloading$watchUrls$2$1":I
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/nio/file/WatchEvent$Kind;

    sget-object v21, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    aput-object v21, v3, v5

    sget-object v21, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    const/16 v20, 0x1

    aput-object v21, v3, v20

    sget-object v21, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    const/16 v22, 0x2

    aput-object v21, v3, v22

    array-length v5, v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/nio/file/WatchEvent$Modifier;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    .end local v19    # "it":Ljava/nio/file/WatchService;
    .local v0, "it":Ljava/nio/file/WatchService;
    .local v22, "modifiers":[Ljava/nio/file/WatchEvent$Modifier;
    invoke-interface {v4, v0, v3, v5}, Ljava/nio/file/Path;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;

    move-result-object v0

    .line 268
    .end local v0    # "it":Ljava/nio/file/WatchService;
    .end local v18    # "$i$a$-let-ApplicationEngineEnvironmentReloading$watchUrls$2$1":I
    goto :goto_6

    .end local v22    # "modifiers":[Ljava/nio/file/WatchEvent$Modifier;
    .local v0, "modifiers":[Ljava/nio/file/WatchEvent$Modifier;
    :cond_8
    move-object/from16 v22, v0

    move/from16 v20, v3

    .end local v0    # "modifiers":[Ljava/nio/file/WatchEvent$Modifier;
    .restart local v22    # "modifiers":[Ljava/nio/file/WatchEvent$Modifier;
    const/4 v0, 0x0

    .line 435
    .end local v4    # "path":Ljava/nio/file/Path;
    .end local v17    # "$i$a$-mapNotNull-ApplicationEngineEnvironmentReloading$watchUrls$2":I
    :goto_6
    if-eqz v0, :cond_9

    .line 437
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 435
    .local v3, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v8, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 436
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v3    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v15    # "element$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :cond_9
    move/from16 v3, v20

    move-object/from16 v0, v22

    const/4 v5, 0x0

    .end local v14    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_5

    .line 438
    .end local v22    # "modifiers":[Ljava/nio/file/WatchEvent$Modifier;
    .local v0, "modifiers":[Ljava/nio/file/WatchEvent$Modifier;
    :cond_a
    move-object/from16 v22, v0

    .line 439
    .end local v0    # "modifiers":[Ljava/nio/file/WatchEvent$Modifier;
    .end local v11    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$forEach":I
    .restart local v22    # "modifiers":[Ljava/nio/file/WatchEvent$Modifier;
    nop

    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$mapNotNullTo":I
    move-object v0, v8

    check-cast v0, Ljava/util/List;

    .line 427
    nop

    .line 267
    .end local v6    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapNotNull":I
    iput-object v0, v1, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->packageWatchKeys:Ljava/util/List;

    .line 272
    return-void
.end method


# virtual methods
.method public getApplication()Lio/ktor/server/application/Application;
    .locals 1

    .line 90
    invoke-direct {p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->currentApplication()Lio/ktor/server/application/Application;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getConfig()Lio/ktor/server/config/ApplicationConfig;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->config:Lio/ktor/server/config/ApplicationConfig;

    return-object v0
.end method

.method public getConnectors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/server/engine/EngineConnectorConfig;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->connectors:Ljava/util/List;

    return-object v0
.end method

.method public getDevelopmentMode()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->developmentMode:Z

    return v0
.end method

.method public getLog()Lorg/slf4j/Logger;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public final getModules$ktor_server_host_common()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/ktor/server/application/Application;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->modules:Ljava/util/List;

    return-object v0
.end method

.method public final getModulesNames$ktor_server_host_common()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->modulesNames:Ljava/util/List;

    return-object v0
.end method

.method public getMonitor()Lio/ktor/events/Events;
    .locals 1

    .line 87
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->monitor:Lio/ktor/events/Events;

    return-object v0
.end method

.method public getParentCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 47
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->parentCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getRootPath()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->rootPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getWatchPaths$ktor_server_host_common()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->watchPaths:Ljava/util/List;

    return-object v0
.end method

.method public final reload()V
    .locals 7

    .line 96
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->applicationInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v4, 0x0

    .line 97
    .local v4, "$i$a$-write-ApplicationEngineEnvironmentReloading$reload$1":I
    :try_start_0
    invoke-direct {p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->destroyApplication()V

    .line 98
    invoke-direct {p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->createApplication()Lkotlin/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/ktor/server/application/Application;

    .local v6, "application":Lio/ktor/server/application/Application;
    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ClassLoader;

    .line 99
    .local v5, "classLoader":Ljava/lang/ClassLoader;
    iput-object v6, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->_applicationInstance:Lio/ktor/server/application/Application;

    .line 100
    iput-object v5, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->_applicationClassLoader:Ljava/lang/ClassLoader;

    .line 101
    nop

    .end local v4    # "$i$a$-write-ApplicationEngineEnvironmentReloading$reload$1":I
    .end local v5    # "classLoader":Ljava/lang/ClassLoader;
    .end local v6    # "application":Lio/ktor/server/application/Application;
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    nop

    :goto_2
    if-ge v3, v2, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 102
    return-void

    .line 96
    :catchall_0
    move-exception v4

    :goto_3
    if-ge v3, v2, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v4
.end method

.method public start()V
    .locals 7

    .line 275
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->applicationInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v4, 0x0

    .line 276
    .local v4, "$i$a$-write-ApplicationEngineEnvironmentReloading$start$1":I
    nop

    .line 277
    :try_start_0
    invoke-direct {p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->createApplication()Lkotlin/Pair;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :try_start_1
    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/ktor/server/application/Application;

    .local v6, "application":Lio/ktor/server/application/Application;
    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ClassLoader;

    .line 286
    .local v5, "classLoader":Ljava/lang/ClassLoader;
    iput-object v6, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->_applicationInstance:Lio/ktor/server/application/Application;

    .line 287
    iput-object v5, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->_applicationClassLoader:Ljava/lang/ClassLoader;

    .line 288
    nop

    .end local v4    # "$i$a$-write-ApplicationEngineEnvironmentReloading$start$1":I
    .end local v5    # "classLoader":Ljava/lang/ClassLoader;
    .end local v6    # "application":Lio/ktor/server/application/Application;
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 275
    nop

    :goto_2
    if-ge v3, v2, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 289
    return-void

    .line 278
    .restart local v4    # "$i$a$-write-ApplicationEngineEnvironmentReloading$start$1":I
    :catchall_0
    move-exception v5

    .line 279
    .local v5, "cause":Ljava/lang/Throwable;
    :try_start_2
    invoke-direct {p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->destroyApplication()V

    .line 280
    iget-object v6, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->watchPatterns:Ljava/util/List;

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    .line 281
    invoke-direct {p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->cleanupWatcher()V

    .line 284
    :cond_3
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 275
    .end local v4    # "$i$a$-write-ApplicationEngineEnvironmentReloading$start$1":I
    .end local v5    # "cause":Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    :goto_3
    if-ge v3, v2, :cond_4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v4
.end method

.method public stop()V
    .locals 5

    .line 292
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->applicationInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v4, 0x0

    .line 293
    .local v4, "$i$a$-write-ApplicationEngineEnvironmentReloading$stop$1":I
    :try_start_0
    invoke-direct {p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->destroyApplication()V

    .line 294
    nop

    .end local v4    # "$i$a$-write-ApplicationEngineEnvironmentReloading$stop$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    nop

    :goto_2
    if-ge v3, v2, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 295
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->watchPatterns:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 296
    invoke-direct {p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->cleanupWatcher()V

    .line 298
    :cond_3
    return-void

    .line 292
    :catchall_0
    move-exception v4

    :goto_3
    if-ge v3, v2, :cond_4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v4
.end method
