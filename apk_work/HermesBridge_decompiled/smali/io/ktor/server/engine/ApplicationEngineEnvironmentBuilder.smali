.class public final Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;
.super Ljava/lang/Object;
.source "ApplicationEngineEnvironmentJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001f\u00107\u001a\u0002082\u0017\u00109\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020#0!\u00a2\u0006\u0002\u0008$J\u001f\u0010:\u001a\u00020#2\u0017\u0010;\u001a\u0013\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0!\u00a2\u0006\u0002\u0008$R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR(\u0010 \u001a\u0019\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0!\u00a2\u0006\u0002\u0008$0\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0013R\u001a\u0010&\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u001a\u0010,\u001a\u00020-X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R \u00102\u001a\u0008\u0012\u0004\u0012\u00020-03X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0013\"\u0004\u00085\u00106\u00a8\u0006<"
    }
    d2 = {
        "Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;",
        "",
        "()V",
        "classLoader",
        "Ljava/lang/ClassLoader;",
        "getClassLoader",
        "()Ljava/lang/ClassLoader;",
        "setClassLoader",
        "(Ljava/lang/ClassLoader;)V",
        "config",
        "Lio/ktor/server/config/ApplicationConfig;",
        "getConfig",
        "()Lio/ktor/server/config/ApplicationConfig;",
        "setConfig",
        "(Lio/ktor/server/config/ApplicationConfig;)V",
        "connectors",
        "",
        "Lio/ktor/server/engine/EngineConnectorConfig;",
        "getConnectors",
        "()Ljava/util/List;",
        "developmentMode",
        "",
        "getDevelopmentMode",
        "()Z",
        "setDevelopmentMode",
        "(Z)V",
        "log",
        "Lorg/slf4j/Logger;",
        "getLog",
        "()Lorg/slf4j/Logger;",
        "setLog",
        "(Lorg/slf4j/Logger;)V",
        "modules",
        "Lkotlin/Function1;",
        "Lio/ktor/server/application/Application;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "getModules",
        "parentCoroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getParentCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "setParentCoroutineContext",
        "(Lkotlin/coroutines/CoroutineContext;)V",
        "rootPath",
        "",
        "getRootPath",
        "()Ljava/lang/String;",
        "setRootPath",
        "(Ljava/lang/String;)V",
        "watchPaths",
        "",
        "getWatchPaths",
        "setWatchPaths",
        "(Ljava/util/List;)V",
        "build",
        "Lio/ktor/server/engine/ApplicationEngineEnvironment;",
        "builder",
        "module",
        "body",
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
.field private classLoader:Ljava/lang/ClassLoader;

.field private config:Lio/ktor/server/config/ApplicationConfig;

.field private final connectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/server/engine/EngineConnectorConfig;",
            ">;"
        }
    .end annotation
.end field

.field private developmentMode:Z

.field private log:Lorg/slf4j/Logger;

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

.field private parentCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private rootPath:Ljava/lang/String;

.field private watchPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-class v0, Lio/ktor/server/engine/ApplicationEngineEnvironment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "ApplicationEngineEnviron\u2026t::class.java.classLoader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->classLoader:Ljava/lang/ClassLoader;

    .line 26
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    iput-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->parentCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 31
    invoke-static {}, Lio/ktor/server/engine/ServerEngineUtilsJvmKt;->getWORKING_DIRECTORY_PATH()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->watchPaths:Ljava/util/List;

    .line 36
    const-string v0, "Application"

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "getLogger(\"Application\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->log:Lorg/slf4j/Logger;

    .line 41
    new-instance v0, Lio/ktor/server/config/MapApplicationConfig;

    invoke-direct {v0}, Lio/ktor/server/config/MapApplicationConfig;-><init>()V

    check-cast v0, Lio/ktor/server/config/ApplicationConfig;

    iput-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->config:Lio/ktor/server/config/ApplicationConfig;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->connectors:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->modules:Ljava/util/List;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->rootPath:Ljava/lang/String;

    .line 61
    sget-object v0, Lio/ktor/util/PlatformUtils;->INSTANCE:Lio/ktor/util/PlatformUtils;

    invoke-virtual {v0}, Lio/ktor/util/PlatformUtils;->getIS_DEVELOPMENT_MODE()Z

    move-result v0

    iput-boolean v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->developmentMode:Z

    .line 17
    return-void
.end method


# virtual methods
.method public final build(Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngineEnvironment;
    .locals 11
    .param p1, "builder"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/engine/ApplicationEngineEnvironment;"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;

    .line 76
    iget-object v2, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->classLoader:Ljava/lang/ClassLoader;

    iget-object v3, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->log:Lorg/slf4j/Logger;

    iget-object v4, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->config:Lio/ktor/server/config/ApplicationConfig;

    iget-object v5, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->connectors:Ljava/util/List;

    iget-object v6, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->modules:Ljava/util/List;

    iget-object v7, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->watchPaths:Ljava/util/List;

    iget-object v8, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->parentCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iget-object v9, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->rootPath:Ljava/lang/String;

    iget-boolean v10, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->developmentMode:Z

    .line 75
    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;-><init>(Ljava/lang/ClassLoader;Lorg/slf4j/Logger;Lio/ktor/server/config/ApplicationConfig;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;Z)V

    check-cast v0, Lio/ktor/server/engine/ApplicationEngineEnvironment;

    return-object v0
.end method

.method public final getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 21
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public final getConfig()Lio/ktor/server/config/ApplicationConfig;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->config:Lio/ktor/server/config/ApplicationConfig;

    return-object v0
.end method

.method public final getConnectors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/server/engine/EngineConnectorConfig;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->connectors:Ljava/util/List;

    return-object v0
.end method

.method public final getDevelopmentMode()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->developmentMode:Z

    return v0
.end method

.method public final getLog()Lorg/slf4j/Logger;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public final getModules()Ljava/util/List;
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

    .line 51
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->modules:Ljava/util/List;

    return-object v0
.end method

.method public final getParentCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->parentCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final getRootPath()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->rootPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getWatchPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->watchPaths:Ljava/util/List;

    return-object v0
.end method

.method public final module(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "body"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/application/Application;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public final setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/ClassLoader;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public final setConfig(Lio/ktor/server/config/ApplicationConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/ktor/server/config/ApplicationConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->config:Lio/ktor/server/config/ApplicationConfig;

    return-void
.end method

.method public final setDevelopmentMode(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 61
    iput-boolean p1, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->developmentMode:Z

    return-void
.end method

.method public final setLog(Lorg/slf4j/Logger;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/slf4j/Logger;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public final setParentCoroutineContext(Lkotlin/coroutines/CoroutineContext;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/coroutines/CoroutineContext;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->parentCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method

.method public final setRootPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->rootPath:Ljava/lang/String;

    return-void
.end method

.method public final setWatchPaths(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->watchPaths:Ljava/util/List;

    return-void
.end method
