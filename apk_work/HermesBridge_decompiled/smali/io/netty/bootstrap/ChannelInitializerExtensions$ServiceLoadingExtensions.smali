.class final Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions;
.super Lio/netty/bootstrap/ChannelInitializerExtensions;
.source "ChannelInitializerExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/bootstrap/ChannelInitializerExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceLoadingExtensions"
.end annotation


# instance fields
.field private classLoader:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private extensions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/netty/bootstrap/ChannelInitializerExtension;",
            ">;"
        }
    .end annotation
.end field

.field private final loadAndCache:Z

.field private final logLevel:Lio/netty/util/internal/logging/InternalLogLevel;


# direct methods
.method constructor <init>(Lio/netty/util/internal/logging/InternalLogLevel;Z)V
    .locals 1
    .param p1, "logLevel"    # Lio/netty/util/internal/logging/InternalLogLevel;
    .param p2, "loadAndCache"    # Z

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/bootstrap/ChannelInitializerExtensions;-><init>(Lio/netty/bootstrap/ChannelInitializerExtensions$1;)V

    .line 88
    iput-object p1, p0, Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions;->logLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    .line 89
    iput-boolean p2, p0, Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions;->loadAndCache:Z

    .line 90
    return-void
.end method

.method private static serviceLoadExtensions(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/ClassLoader;)Ljava/util/Collection;
    .locals 7
    .param p0, "logLevel"    # Lio/netty/util/internal/logging/InternalLogLevel;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/logging/InternalLogLevel;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Collection<",
            "Lio/netty/bootstrap/ChannelInitializerExtension;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/netty/bootstrap/ChannelInitializerExtension;>;"
    const-class v1, Lio/netty/bootstrap/ChannelInitializerExtension;

    invoke-static {v1, p1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 110
    .local v1, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Lio/netty/bootstrap/ChannelInitializerExtension;>;"
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/bootstrap/ChannelInitializerExtension;

    .line 111
    .local v3, "extension":Lio/netty/bootstrap/ChannelInitializerExtension;
    invoke-static {}, Lio/netty/bootstrap/ChannelInitializerExtensions;->access$200()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v4

    const-string v5, "Loaded extension: {}"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v4, p0, v5, v6}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v3    # "extension":Lio/netty/bootstrap/ChannelInitializerExtension;
    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 116
    new-instance v2, Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions$1;

    invoke-direct {v2}, Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions$1;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 122
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 124
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method declared-synchronized extensions(Ljava/lang/ClassLoader;)Ljava/util/Collection;
    .locals 3
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Collection<",
            "Lio/netty/bootstrap/ChannelInitializerExtension;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions;->classLoader:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions;->classLoader:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 96
    .local v0, "configured":Ljava/lang/ClassLoader;
    :goto_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_3

    .line 97
    :cond_1
    iget-object v1, p0, Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions;->logLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-static {v1, p1}, Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions;->serviceLoadExtensions(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/ClassLoader;)Ljava/util/Collection;

    move-result-object v1

    .line 98
    .local v1, "loaded":Ljava/util/Collection;, "Ljava/util/Collection<Lio/netty/bootstrap/ChannelInitializerExtension;>;"
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions;->classLoader:Ljava/lang/ref/WeakReference;

    .line 99
    iget-boolean v2, p0, Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions;->loadAndCache:Z

    if-eqz v2, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions;->extensions:Ljava/util/Collection;

    .line 101
    .end local v1    # "loaded":Ljava/util/Collection;, "Ljava/util/Collection<Lio/netty/bootstrap/ChannelInitializerExtension;>;"
    :cond_3
    iget-object v1, p0, Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions;->extensions:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 94
    .end local v0    # "configured":Ljava/lang/ClassLoader;
    .end local p0    # "this":Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions;
    .end local p1    # "cl":Ljava/lang/ClassLoader;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
