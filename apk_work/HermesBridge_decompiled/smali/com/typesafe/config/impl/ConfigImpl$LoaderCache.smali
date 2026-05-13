.class Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;
.super Ljava/lang/Object;
.source "ConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/ConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoaderCache"
.end annotation


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/Config;",
            ">;"
        }
    .end annotation
.end field

.field private currentLoader:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private currentSystemProperties:Lcom/typesafe/config/Config;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;->currentSystemProperties:Lcom/typesafe/config/Config;

    .line 44
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;->currentLoader:Ljava/lang/ref/WeakReference;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;->cache:Ljava/util/Map;

    .line 46
    return-void
.end method


# virtual methods
.method declared-synchronized getOrElseUpdate(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/typesafe/config/Config;
    .locals 5
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/typesafe/config/Config;",
            ">;)",
            "Lcom/typesafe/config/Config;"
        }
    .end annotation

    .local p3, "updater":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/typesafe/config/Config;>;"
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;->currentLoader:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;->currentLoader:Ljava/lang/ref/WeakReference;

    .line 57
    .end local p0    # "this":Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;
    :cond_0
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->systemPropertiesAsConfig()Lcom/typesafe/config/Config;

    move-result-object v0

    .line 58
    .local v0, "systemProperties":Lcom/typesafe/config/Config;
    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;->currentSystemProperties:Lcom/typesafe/config/Config;

    if-eq v0, v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;->cache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 60
    iput-object v0, p0, Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;->currentSystemProperties:Lcom/typesafe/config/Config;

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .local v1, "config":Lcom/typesafe/config/Config;
    if-nez v1, :cond_3

    .line 66
    :try_start_1
    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/Config;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    .line 71
    nop

    .line 72
    if-eqz v1, :cond_2

    .line 74
    :try_start_2
    iget-object v2, p0, Lcom/typesafe/config/impl/ConfigImpl$LoaderCache;->cache:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_2
    new-instance v2, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v3, "null config from cache updater"

    invoke-direct {v2, v3}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/typesafe/config/ConfigException$Generic;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/typesafe/config/ConfigException$Generic;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 67
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/RuntimeException;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_3
    :goto_0
    monitor-exit p0

    return-object v1

    .line 50
    .end local v0    # "systemProperties":Lcom/typesafe/config/Config;
    .end local v1    # "config":Lcom/typesafe/config/Config;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    .end local p2    # "key":Ljava/lang/String;
    .end local p3    # "updater":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/typesafe/config/Config;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
