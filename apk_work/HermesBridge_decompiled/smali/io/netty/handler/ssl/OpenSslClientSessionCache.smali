.class final Lio/netty/handler/ssl/OpenSslClientSessionCache;
.super Lio/netty/handler/ssl/OpenSslSessionCache;
.source "OpenSslClientSessionCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;",
            "Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 27
    return-void
.end method

.method constructor <init>(Lio/netty/handler/ssl/OpenSslEngineMap;)V
    .locals 1
    .param p1, "engineMap"    # Lio/netty/handler/ssl/OpenSslEngineMap;

    .line 33
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/OpenSslSessionCache;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;)V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslClientSessionCache;->sessions:Ljava/util/Map;

    .line 34
    return-void
.end method

.method private static keyFor(Ljava/lang/String;I)Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 89
    if-nez p0, :cond_0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 97
    :try_start_0
    invoke-super {p0}, Lio/netty/handler/ssl/OpenSslSessionCache;->clear()V

    .line 98
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslClientSessionCache;->sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 96
    .end local p0    # "this":Lio/netty/handler/ssl/OpenSslClientSessionCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sessionCreated(Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;)Z
    .locals 2
    .param p1, "session"    # Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;

    .line 38
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->getPeerPort()I

    move-result v1

    invoke-static {v0, v1}, Lio/netty/handler/ssl/OpenSslClientSessionCache;->keyFor(Ljava/lang/String;I)Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;

    move-result-object v0

    .line 40
    .local v0, "hostPort":Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslClientSessionCache;->sessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslClientSessionCache;->sessions:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const/4 v1, 0x1

    return v1

    .line 41
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 38
    .end local v0    # "hostPort":Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected sessionRemoved(Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;)V
    .locals 2
    .param p1, "session"    # Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;

    .line 49
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->getPeerPort()I

    move-result v1

    invoke-static {v0, v1}, Lio/netty/handler/ssl/OpenSslClientSessionCache;->keyFor(Ljava/lang/String;I)Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;

    move-result-object v0

    .line 51
    .local v0, "hostPort":Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;
    if-nez v0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslClientSessionCache;->sessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void

    .line 49
    .end local v0    # "hostPort":Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method setSession(JLjava/lang/String;I)V
    .locals 4
    .param p1, "ssl"    # J
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I

    .line 59
    invoke-static {p3, p4}, Lio/netty/handler/ssl/OpenSslClientSessionCache;->keyFor(Ljava/lang/String;I)Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;

    move-result-object v0

    .line 60
    .local v0, "hostPort":Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;
    if-nez v0, :cond_0

    .line 61
    return-void

    .line 65
    :cond_0
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslClientSessionCache;->sessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;

    .line 67
    .local v1, "session":Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;
    if-nez v1, :cond_1

    .line 68
    monitor-exit p0

    return-void

    .line 70
    :cond_1
    invoke-virtual {v1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 71
    invoke-virtual {v1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->sessionId()Lio/netty/handler/ssl/OpenSslSessionId;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/netty/handler/ssl/OpenSslClientSessionCache;->removeSessionWithId(Lio/netty/handler/ssl/OpenSslSessionId;)V

    .line 72
    monitor-exit p0

    return-void

    .line 76
    :cond_2
    invoke-virtual {v1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->session()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Lio/netty/internal/tcnative/SSL;->setSession(JJ)Z

    move-result v2

    .line 77
    .local v2, "reused":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    if-eqz v2, :cond_4

    .line 80
    invoke-virtual {v1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->shouldBeSingleUse()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    invoke-virtual {v1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->invalidate()V

    .line 84
    :cond_3
    invoke-virtual {v1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->updateLastAccessedTime()V

    .line 86
    :cond_4
    return-void

    .line 77
    .end local v1    # "session":Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;
    .end local v2    # "reused":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
