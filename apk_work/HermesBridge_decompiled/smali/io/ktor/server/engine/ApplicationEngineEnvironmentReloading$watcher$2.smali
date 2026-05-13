.class final Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$watcher$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ApplicationEngineEnvironmentReloading.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;-><init>(Ljava/lang/ClassLoader;Lorg/slf4j/Logger;Lio/ktor/server/config/ApplicationConfig;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/nio/file/WatchService;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/nio/file/WatchService;",
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


# static fields
.field public static final INSTANCE:Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$watcher$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$watcher$2;

    invoke-direct {v0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$watcher$2;-><init>()V

    sput-object v0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$watcher$2;->INSTANCE:Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$watcher$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$watcher$2;->invoke()Ljava/nio/file/WatchService;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/nio/file/WatchService;
    .locals 2

    .line 80
    nop

    .line 81
    :try_start_0
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->newWatchService()Ljava/nio/file/WatchService;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "_":Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    move-object v0, v1

    .line 80
    .end local v0    # "_":Ljava/lang/NoClassDefFoundError;
    :goto_0
    return-object v0
.end method
