.class Lio/netty/handler/ssl/OpenSslSessionCache;
.super Ljava/lang/Object;
.source "OpenSslSessionCache.java"

# interfaces
.implements Lio/netty/internal/tcnative/SSLSessionCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;
    }
.end annotation


# static fields
.field private static final DEFAULT_CACHE_SIZE:I

.field private static final EMPTY_SESSIONS:[Lio/netty/handler/ssl/OpenSslSession;


# instance fields
.field private final engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

.field private final maximumCacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private sessionCounter:I

.field private final sessionTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/handler/ssl/OpenSslSessionId;",
            "Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Lio/netty/handler/ssl/OpenSslSession;

    sput-object v0, Lio/netty/handler/ssl/OpenSslSessionCache;->EMPTY_SESSIONS:[Lio/netty/handler/ssl/OpenSslSession;

    .line 45
    const-string v0, "javax.net.ssl.sessionCacheSize"

    const/16 v1, 0x5000

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 46
    .local v0, "cacheSize":I
    if-ltz v0, :cond_0

    .line 47
    sput v0, Lio/netty/handler/ssl/OpenSslSessionCache;->DEFAULT_CACHE_SIZE:I

    goto :goto_0

    .line 49
    :cond_0
    sput v1, Lio/netty/handler/ssl/OpenSslSessionCache;->DEFAULT_CACHE_SIZE:I

    .line 51
    .end local v0    # "cacheSize":I
    :goto_0
    return-void
.end method

.method constructor <init>(Lio/netty/handler/ssl/OpenSslEngineMap;)V
    .locals 2
    .param p1, "engineMap"    # Lio/netty/handler/ssl/OpenSslEngineMap;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lio/netty/handler/ssl/OpenSslSessionCache$1;

    invoke-direct {v0, p0}, Lio/netty/handler/ssl/OpenSslSessionCache$1;-><init>(Lio/netty/handler/ssl/OpenSslSessionCache;)V

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->sessions:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v1, Lio/netty/handler/ssl/OpenSslSessionCache;->DEFAULT_CACHE_SIZE:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->maximumCacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->sessionTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/ssl/OpenSslSessionCache;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/OpenSslSessionCache;

    .line 39
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->maximumCacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private expungeInvalidSessions()V
    .locals 5

    .line 124
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    return-void

    .line 127
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 128
    .local v0, "now":J
    iget-object v2, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 129
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lio/netty/handler/ssl/OpenSslSessionId;Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;

    .line 134
    .local v3, "session":Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;
    invoke-virtual {v3, v0, v1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->isValid(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    goto :goto_1

    .line 137
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 139
    invoke-direct {p0, v3}, Lio/netty/handler/ssl/OpenSslSessionCache;->notifyRemovalAndFree(Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;)V

    .line 140
    .end local v3    # "session":Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;
    goto :goto_0

    .line 141
    :cond_2
    :goto_1
    return-void
.end method

.method private notifyRemovalAndFree(Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;)V
    .locals 0
    .param p1, "session"    # Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;

    .line 232
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OpenSslSessionCache;->sessionRemoved(Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;)V

    .line 233
    invoke-virtual {p1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->free()V

    .line 234
    return-void
.end method


# virtual methods
.method declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 272
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lio/netty/handler/ssl/OpenSslSessionId;Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;

    .line 274
    .local v1, "session":Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 277
    invoke-direct {p0, v1}, Lio/netty/handler/ssl/OpenSslSessionCache;->notifyRemovalAndFree(Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .end local v1    # "session":Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;
    goto :goto_0

    .line 279
    .end local p0    # "this":Lio/netty/handler/ssl/OpenSslSessionCache;
    :cond_0
    monitor-exit p0

    return-void

    .line 270
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lio/netty/handler/ssl/OpenSslSessionId;Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;>;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized containsSessionWithId(Lio/netty/handler/ssl/OpenSslSessionId;)Z
    .locals 1
    .param p1, "id"    # Lio/netty/handler/ssl/OpenSslSessionId;

    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->sessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 228
    .end local p0    # "this":Lio/netty/handler/ssl/OpenSslSessionCache;
    .end local p1    # "id":Lio/netty/handler/ssl/OpenSslSessionId;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final getIds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/handler/ssl/OpenSslSessionId;",
            ">;"
        }
    .end annotation

    .line 255
    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lio/netty/handler/ssl/OpenSslSessionCache;->EMPTY_SESSIONS:[Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/ssl/OpenSslSession;

    .line 257
    .local v0, "sessionsArray":[Lio/netty/handler/ssl/OpenSslSession;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/ssl/OpenSslSessionId;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 260
    .local v4, "session":Lio/netty/handler/ssl/OpenSslSession;
    invoke-interface {v4}, Lio/netty/handler/ssl/OpenSslSession;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 261
    invoke-interface {v4}, Lio/netty/handler/ssl/OpenSslSession;->sessionId()Lio/netty/handler/ssl/OpenSslSessionId;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    .end local v4    # "session":Lio/netty/handler/ssl/OpenSslSession;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    :cond_1
    return-object v1

    .line 257
    .end local v0    # "sessionsArray":[Lio/netty/handler/ssl/OpenSslSession;
    .end local v1    # "ids":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/ssl/OpenSslSessionId;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getSession(J[B)J
    .locals 5
    .param p1, "ssl"    # J
    .param p3, "sessionId"    # [B

    .line 178
    new-instance v0, Lio/netty/handler/ssl/OpenSslSessionId;

    invoke-direct {v0, p3}, Lio/netty/handler/ssl/OpenSslSessionId;-><init>([B)V

    .line 180
    .local v0, "id":Lio/netty/handler/ssl/OpenSslSessionId;
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->sessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;

    .line 182
    .local v1, "session":Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;
    const-wide/16 v2, -0x1

    if-nez v1, :cond_0

    .line 183
    monitor-exit p0

    return-wide v2

    .line 188
    :cond_0
    invoke-virtual {v1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 193
    invoke-virtual {v1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->upRef()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {v1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->shouldBeSingleUse()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    invoke-virtual {v1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->sessionId()Lio/netty/handler/ssl/OpenSslSessionId;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/netty/handler/ssl/OpenSslSessionCache;->removeSessionWithId(Lio/netty/handler/ssl/OpenSslSessionId;)V

    .line 205
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-virtual {v1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->updateLastAccessedTime()V

    .line 207
    invoke-virtual {v1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->session()J

    move-result-wide v2

    return-wide v2

    .line 195
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->sessionId()Lio/netty/handler/ssl/OpenSslSessionId;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/netty/handler/ssl/OpenSslSessionCache;->removeSessionWithId(Lio/netty/handler/ssl/OpenSslSessionId;)V

    .line 196
    monitor-exit p0

    return-wide v2

    .line 205
    .end local v1    # "session":Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method final declared-synchronized getSession(Lio/netty/handler/ssl/OpenSslSessionId;)Lio/netty/handler/ssl/OpenSslSession;
    .locals 2
    .param p1, "id"    # Lio/netty/handler/ssl/OpenSslSessionId;

    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->sessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;

    .line 241
    .local v0, "session":Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->sessionId()Lio/netty/handler/ssl/OpenSslSessionId;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/netty/handler/ssl/OpenSslSessionCache;->removeSessionWithId(Lio/netty/handler/ssl/OpenSslSessionId;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 247
    .end local p0    # "this":Lio/netty/handler/ssl/OpenSslSessionCache;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 239
    .end local v0    # "session":Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;
    .end local p1    # "id":Lio/netty/handler/ssl/OpenSslSessionId;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final getSessionCacheSize()I
    .locals 1

    .line 120
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->maximumCacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method final getSessionTimeout()I
    .locals 1

    .line 91
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->sessionTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method final declared-synchronized removeSessionWithId(Lio/netty/handler/ssl/OpenSslSessionId;)V
    .locals 1
    .param p1, "id"    # Lio/netty/handler/ssl/OpenSslSessionId;

    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->sessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;

    .line 219
    .local v0, "sslSession":Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;
    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/OpenSslSessionCache;->notifyRemovalAndFree(Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .end local p0    # "this":Lio/netty/handler/ssl/OpenSslSessionCache;
    :cond_0
    monitor-exit p0

    return-void

    .line 217
    .end local v0    # "sslSession":Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;
    .end local p1    # "id":Lio/netty/handler/ssl/OpenSslSessionId;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final sessionCreated(JJ)Z
    .locals 10
    .param p1, "ssl"    # J
    .param p3, "sslSession"    # J

    .line 145
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/ssl/OpenSslEngineMap;->get(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object v0

    .line 146
    .local v0, "engine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 148
    return v1

    .line 150
    :cond_0
    new-instance v9, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;

    invoke-virtual {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getPeerPort()I

    move-result v6

    .line 151
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslSessionCache;->getSessionTimeout()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, v2

    move-object v2, v9

    move-wide v3, p3

    invoke-direct/range {v2 .. v8}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;-><init>(JLjava/lang/String;IJ)V

    .line 152
    .local v2, "session":Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;
    invoke-virtual {v2}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->sessionId()Lio/netty/handler/ssl/OpenSslSessionId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->setSessionId(Lio/netty/handler/ssl/OpenSslSessionId;)V

    .line 153
    monitor-enter p0

    .line 156
    :try_start_0
    iget v3, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->sessionCounter:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->sessionCounter:I

    const/16 v5, 0xff

    if-ne v3, v5, :cond_1

    .line 157
    iput v1, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->sessionCounter:I

    .line 158
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslSessionCache;->expungeInvalidSessions()V

    .line 161
    :cond_1
    invoke-virtual {p0, v2}, Lio/netty/handler/ssl/OpenSslSessionCache;->sessionCreated(Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 164
    invoke-virtual {v2}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->close()V

    .line 165
    monitor-exit p0

    return v1

    .line 168
    :cond_2
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->sessions:Ljava/util/Map;

    invoke-virtual {v2}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->sessionId()Lio/netty/handler/ssl/OpenSslSessionId;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;

    .line 169
    .local v1, "old":Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;
    if-eqz v1, :cond_3

    .line 170
    invoke-direct {p0, v1}, Lio/netty/handler/ssl/OpenSslSessionCache;->notifyRemovalAndFree(Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;)V

    .line 172
    .end local v1    # "old":Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;
    :cond_3
    monitor-exit p0

    .line 173
    return v4

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected sessionCreated(Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;)Z
    .locals 1
    .param p1, "session"    # Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method protected sessionRemoved(Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;)V
    .locals 0
    .param p1, "session"    # Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;

    .line 109
    return-void
.end method

.method setSession(JLjava/lang/String;I)V
    .locals 0
    .param p1, "ssl"    # J
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I

    .line 212
    return-void
.end method

.method final setSessionCacheSize(I)V
    .locals 4
    .param p1, "size"    # I

    .line 112
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->maximumCacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    int-to-long v0, v0

    .line 113
    .local v0, "oldSize":J
    int-to-long v2, p1

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    if-nez p1, :cond_1

    .line 115
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslSessionCache;->clear()V

    .line 117
    :cond_1
    return-void
.end method

.method final setSessionTimeout(I)V
    .locals 1
    .param p1, "seconds"    # I

    .line 82
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache;->sessionTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 83
    .local v0, "oldTimeout":I
    if-le v0, p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslSessionCache;->clear()V

    .line 88
    :cond_0
    return-void
.end method
