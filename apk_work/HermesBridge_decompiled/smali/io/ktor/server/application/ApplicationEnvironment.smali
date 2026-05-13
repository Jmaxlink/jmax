.class public interface abstract Lio/ktor/server/application/ApplicationEnvironment;
.super Ljava/lang/Object;
.source "ApplicationEnvironment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000e\u001a\u00060\u000fj\u0002`\u0010X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0012\u0010\u0013\u001a\u00020\u0014X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0012\u0010\u0017\u001a\u00020\u0018X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0012\u0010\u001b\u001a\u00020\u001cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lio/ktor/server/application/ApplicationEnvironment;",
        "",
        "classLoader",
        "Ljava/lang/ClassLoader;",
        "getClassLoader",
        "()Ljava/lang/ClassLoader;",
        "config",
        "Lio/ktor/server/config/ApplicationConfig;",
        "getConfig",
        "()Lio/ktor/server/config/ApplicationConfig;",
        "developmentMode",
        "",
        "getDevelopmentMode",
        "()Z",
        "log",
        "Lorg/slf4j/Logger;",
        "Lio/ktor/util/logging/Logger;",
        "getLog",
        "()Lorg/slf4j/Logger;",
        "monitor",
        "Lio/ktor/events/Events;",
        "getMonitor",
        "()Lio/ktor/events/Events;",
        "parentCoroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getParentCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "rootPath",
        "",
        "getRootPath",
        "()Ljava/lang/String;",
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


# virtual methods
.method public abstract getClassLoader()Ljava/lang/ClassLoader;
.end method

.method public abstract getConfig()Lio/ktor/server/config/ApplicationConfig;
.end method

.method public abstract getDevelopmentMode()Z
.end method

.method public abstract getLog()Lorg/slf4j/Logger;
.end method

.method public abstract getMonitor()Lio/ktor/events/Events;
.end method

.method public abstract getParentCoroutineContext()Lkotlin/coroutines/CoroutineContext;
.end method

.method public abstract getRootPath()Ljava/lang/String;
.end method
