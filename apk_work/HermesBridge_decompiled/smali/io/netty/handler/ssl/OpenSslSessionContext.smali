.class public abstract Lio/netty/handler/ssl/OpenSslSessionContext;
.super Ljava/lang/Object;
.source "OpenSslSessionContext.java"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# instance fields
.field final context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

.field private final mask:J

.field private final provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

.field private final sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

.field private final stats:Lio/netty/handler/ssl/OpenSslSessionStats;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;JLio/netty/handler/ssl/OpenSslSessionCache;)V
    .locals 2
    .param p1, "context"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .param p2, "provider"    # Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .param p3, "mask"    # J
    .param p5, "cache"    # Lio/netty/handler/ssl/OpenSslSessionCache;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    .line 54
    iput-object p2, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    .line 55
    iput-wide p3, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->mask:J

    .line 56
    new-instance v0, Lio/netty/handler/ssl/OpenSslSessionStats;

    invoke-direct {v0, p1}, Lio/netty/handler/ssl/OpenSslSessionStats;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;)V

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->stats:Lio/netty/handler/ssl/OpenSslSessionStats;

    .line 57
    iput-object p5, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    .line 58
    iget-wide v0, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v0, v1, p5}, Lio/netty/internal/tcnative/SSLContext;->setSSLSessionCache(JLio/netty/internal/tcnative/SSLSessionCache;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/ssl/OpenSslSessionContext;)Lio/netty/handler/ssl/OpenSslSessionCache;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/OpenSslSessionContext;

    .line 33
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    return-object v0
.end method


# virtual methods
.method final destroy()V
    .locals 1

    .line 224
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->destroy()V

    .line 227
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslSessionCache;->clear()V

    .line 228
    return-void
.end method

.method public getIds()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "[B>;"
        }
    .end annotation

    .line 102
    new-instance v0, Lio/netty/handler/ssl/OpenSslSessionContext$1;

    invoke-direct {v0, p0}, Lio/netty/handler/ssl/OpenSslSessionContext$1;-><init>(Lio/netty/handler/ssl/OpenSslSessionContext;)V

    return-object v0
.end method

.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 2
    .param p1, "bytes"    # [B

    .line 97
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    new-instance v1, Lio/netty/handler/ssl/OpenSslSessionId;

    invoke-direct {v1, p1}, Lio/netty/handler/ssl/OpenSslSessionId;-><init>([B)V

    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/OpenSslSessionCache;->getSession(Lio/netty/handler/ssl/OpenSslSessionId;)Lio/netty/handler/ssl/OpenSslSession;

    move-result-object v0

    return-object v0
.end method

.method public getSessionCacheSize()I
    .locals 1

    .line 73
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslSessionCache;->getSessionCacheSize()I

    move-result v0

    return v0
.end method

.method public getSessionTimeout()I
    .locals 1

    .line 92
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslSessionCache;->getSessionTimeout()I

    move-result v0

    return v0
.end method

.method final isInCache(Lio/netty/handler/ssl/OpenSslSessionId;)Z
    .locals 1
    .param p1, "id"    # Lio/netty/handler/ssl/OpenSslSessionId;

    .line 216
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/OpenSslSessionCache;->containsSessionWithId(Lio/netty/handler/ssl/OpenSslSessionId;)Z

    move-result v0

    return v0
.end method

.method public isSessionCacheEnabled()Z
    .locals 5

    .line 192
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object v0, v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 193
    .local v0, "readerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 195
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v1, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->getSessionCacheMode(J)J

    move-result-wide v1

    iget-wide v3, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->mask:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 197
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 195
    return v1

    .line 197
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 198
    throw v1
.end method

.method final removeFromCache(Lio/netty/handler/ssl/OpenSslSessionId;)V
    .locals 1
    .param p1, "id"    # Lio/netty/handler/ssl/OpenSslSessionId;

    .line 212
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/OpenSslSessionCache;->removeSessionWithId(Lio/netty/handler/ssl/OpenSslSessionId;)V

    .line 213
    return-void
.end method

.method public setSessionCacheEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .line 174
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->mask:J

    sget-wide v2, Lio/netty/internal/tcnative/SSL;->SSL_SESS_CACHE_NO_INTERNAL_LOOKUP:J

    or-long/2addr v0, v2

    sget-wide v2, Lio/netty/internal/tcnative/SSL;->SSL_SESS_CACHE_NO_INTERNAL_STORE:J

    or-long/2addr v0, v2

    goto :goto_0

    :cond_0
    sget-wide v0, Lio/netty/internal/tcnative/SSL;->SSL_SESS_CACHE_OFF:J

    .line 176
    .local v0, "mode":J
    :goto_0
    iget-object v2, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object v2, v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 177
    .local v2, "writerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 179
    :try_start_0
    iget-object v3, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v3, v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v3, v4, v0, v1}, Lio/netty/internal/tcnative/SSLContext;->setSessionCacheMode(JJ)J

    .line 180
    if-nez p1, :cond_1

    .line 181
    iget-object v3, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-virtual {v3}, Lio/netty/handler/ssl/OpenSslSessionCache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 185
    nop

    .line 186
    return-void

    .line 184
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 185
    throw v3
.end method

.method public setSessionCacheSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 67
    const-string v0, "size"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 68
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/OpenSslSessionCache;->setSessionCacheSize(I)V

    .line 69
    return-void
.end method

.method setSessionFromCache(Ljava/lang/String;IJ)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "ssl"    # J

    .line 220
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-virtual {v0, p3, p4, p1, p2}, Lio/netty/handler/ssl/OpenSslSessionCache;->setSession(JLjava/lang/String;I)V

    .line 221
    return-void
.end method

.method public setSessionTimeout(I)V
    .locals 5
    .param p1, "seconds"    # I

    .line 78
    const-string v0, "seconds"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 80
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object v0, v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 81
    .local v0, "writerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 83
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v1, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    int-to-long v3, p1

    invoke-static {v1, v2, v3, v4}, Lio/netty/internal/tcnative/SSLContext;->setSessionCacheTimeout(JJ)J

    .line 84
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->sessionCache:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-virtual {v1, p1}, Lio/netty/handler/ssl/OpenSslSessionCache;->setSessionTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 87
    nop

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 87
    throw v1
.end method

.method public setTicketKeys([B)V
    .locals 7
    .param p1, "keys"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x30

    if-nez v0, :cond_1

    .line 125
    array-length v0, p1

    div-int/lit8 v0, v0, 0x30

    new-array v0, v0, [Lio/netty/internal/tcnative/SessionTicketKey;

    .line 126
    .local v0, "tickets":[Lio/netty/internal/tcnative/SessionTicketKey;
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 127
    const/16 v3, 0x10

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 128
    .local v4, "name":[B
    add-int/lit8 v2, v2, 0x10

    .line 129
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 130
    .local v5, "hmacKey":[B
    add-int/lit8 v1, v1, 0x10

    .line 131
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 132
    .local v6, "aesKey":[B
    add-int/2addr v2, v3

    .line 133
    new-instance v3, Lio/netty/internal/tcnative/SessionTicketKey;

    invoke-direct {v3, v4, v5, v6}, Lio/netty/internal/tcnative/SessionTicketKey;-><init>([B[B[B)V

    aput-object v3, v0, v1

    .line 126
    .end local v4    # "name":[B
    .end local v5    # "hmacKey":[B
    .end local v6    # "aesKey":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "i":I
    .end local v2    # "a":I
    :cond_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object v1, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 136
    .local v1, "writerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 138
    :try_start_0
    iget-object v2, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v2, v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    sget v4, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TICKET:I

    invoke-static {v2, v3, v4}, Lio/netty/internal/tcnative/SSLContext;->clearOptions(JI)V

    .line 139
    iget-object v2, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v2, v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v2, v3, v0}, Lio/netty/internal/tcnative/SSLContext;->setSessionTicketKeys(J[Lio/netty/internal/tcnative/SessionTicketKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 142
    nop

    .line 143
    return-void

    .line 141
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 142
    throw v2

    .line 123
    .end local v0    # "tickets":[Lio/netty/internal/tcnative/SessionTicketKey;
    .end local v1    # "writerLock":Ljava/util/concurrent/locks/Lock;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keys.length % 48 != 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs setTicketKeys([Lio/netty/handler/ssl/OpenSslSessionTicketKey;)V
    .locals 5
    .param p1, "keys"    # [Lio/netty/handler/ssl/OpenSslSessionTicketKey;

    .line 153
    const-string v0, "keys"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    array-length v0, p1

    new-array v0, v0, [Lio/netty/internal/tcnative/SessionTicketKey;

    .line 155
    .local v0, "ticketKeys":[Lio/netty/internal/tcnative/SessionTicketKey;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 156
    aget-object v2, p1, v1

    iget-object v2, v2, Lio/netty/handler/ssl/OpenSslSessionTicketKey;->key:Lio/netty/internal/tcnative/SessionTicketKey;

    aput-object v2, v0, v1

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object v1, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 159
    .local v1, "writerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 161
    :try_start_0
    iget-object v2, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v2, v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    sget v4, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TICKET:I

    invoke-static {v2, v3, v4}, Lio/netty/internal/tcnative/SSLContext;->clearOptions(JI)V

    .line 162
    array-length v2, v0

    if-lez v2, :cond_1

    .line 163
    iget-object v2, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v2, v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v2, v3, v0}, Lio/netty/internal/tcnative/SSLContext;->setSessionTicketKeys(J[Lio/netty/internal/tcnative/SessionTicketKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_1
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 167
    nop

    .line 168
    return-void

    .line 166
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 167
    throw v2
.end method

.method public stats()Lio/netty/handler/ssl/OpenSslSessionStats;
    .locals 1

    .line 205
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->stats:Lio/netty/handler/ssl/OpenSslSessionStats;

    return-object v0
.end method

.method final useKeyManager()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
