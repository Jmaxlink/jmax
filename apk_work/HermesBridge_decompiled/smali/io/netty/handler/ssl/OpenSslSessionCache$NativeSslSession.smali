.class final Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;
.super Ljava/lang/Object;
.source "OpenSslSessionCache.java"

# interfaces
.implements Lio/netty/handler/ssl/OpenSslSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/OpenSslSessionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NativeSslSession"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final LEAK_DETECTOR:Lio/netty/util/ResourceLeakDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakDetector<",
            "Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final creationTime:J

.field private freed:Z

.field private final id:Lio/netty/handler/ssl/OpenSslSessionId;

.field private volatile lastAccessedTime:J

.field private final leakTracker:Lio/netty/util/ResourceLeakTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;",
            ">;"
        }
    .end annotation
.end field

.field private final peerHost:Ljava/lang/String;

.field private final peerPort:I

.field private final session:J

.field private final timeout:J

.field private volatile valid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 284
    const-class v0, Lio/netty/handler/ssl/OpenSslSessionCache;

    .line 285
    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->instance()Lio/netty/util/ResourceLeakDetectorFactory;

    move-result-object v0

    .line 286
    const-class v1, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;

    invoke-virtual {v0, v1}, Lio/netty/util/ResourceLeakDetectorFactory;->newResourceLeakDetector(Ljava/lang/Class;)Lio/netty/util/ResourceLeakDetector;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->LEAK_DETECTOR:Lio/netty/util/ResourceLeakDetector;

    .line 285
    return-void
.end method

.method constructor <init>(JLjava/lang/String;IJ)V
    .locals 2
    .param p1, "session"    # J
    .param p3, "peerHost"    # Ljava/lang/String;
    .param p4, "peerPort"    # I
    .param p5, "timeout"    # J

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->creationTime:J

    .line 294
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->creationTime:J

    iput-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->lastAccessedTime:J

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->valid:Z

    .line 299
    iput-wide p1, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->session:J

    .line 300
    iput-object p3, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->peerHost:Ljava/lang/String;

    .line 301
    iput p4, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->peerPort:I

    .line 302
    iput-wide p5, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->timeout:J

    .line 303
    new-instance v0, Lio/netty/handler/ssl/OpenSslSessionId;

    invoke-static {p1, p2}, Lio/netty/internal/tcnative/SSLSession;->getSessionId(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/OpenSslSessionId;-><init>([B)V

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->id:Lio/netty/handler/ssl/OpenSslSessionId;

    .line 304
    sget-object v0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->LEAK_DETECTOR:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {v0, p0}, Lio/netty/util/ResourceLeakDetector;->track(Ljava/lang/Object;)Lio/netty/util/ResourceLeakTracker;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->leakTracker:Lio/netty/util/ResourceLeakTracker;

    .line 305
    return-void
.end method


# virtual methods
.method close()V
    .locals 1

    .line 333
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->freed:Z

    if-nez v0, :cond_1

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->freed:Z

    .line 335
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->invalidate()V

    .line 336
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->leakTracker:Lio/netty/util/ResourceLeakTracker;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->leakTracker:Lio/netty/util/ResourceLeakTracker;

    invoke-interface {v0, p0}, Lio/netty/util/ResourceLeakTracker;->close(Ljava/lang/Object;)Z

    .line 339
    :cond_0
    return-void

    .line 333
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 482
    if-ne p0, p1, :cond_0

    .line 483
    const/4 v0, 0x1

    return v0

    .line 485
    :cond_0
    instance-of v0, p1, Lio/netty/handler/ssl/OpenSslSession;

    if-nez v0, :cond_1

    .line 486
    const/4 v0, 0x0

    return v0

    .line 488
    :cond_1
    move-object v0, p1

    check-cast v0, Lio/netty/handler/ssl/OpenSslSession;

    .line 489
    .local v0, "session1":Lio/netty/handler/ssl/OpenSslSession;
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->id:Lio/netty/handler/ssl/OpenSslSessionId;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->sessionId()Lio/netty/handler/ssl/OpenSslSessionId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/ssl/OpenSslSessionId;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method declared-synchronized free()V
    .locals 2

    monitor-enter p0

    .line 328
    :try_start_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->close()V

    .line 329
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->session:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSLSession;->free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    monitor-exit p0

    return-void

    .line 327
    .end local p0    # "this":Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApplicationBufferSize()I
    .locals 1

    .line 472
    sget v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_PLAINTEXT_LENGTH:I

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .line 447
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .line 378
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->creationTime:J

    return-wide v0
.end method

.method public getId()[B
    .locals 1

    .line 373
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->id:Lio/netty/handler/ssl/OpenSslSessionId;

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslSessionId;->cloneBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessedTime()J
    .locals 2

    .line 387
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->lastAccessedTime:J

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 427
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .line 442
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPacketBufferSize()I
    .locals 1

    .line 467
    sget v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_RECORD_SIZE:I

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 1

    .line 432
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 422
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    .line 457
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    .line 462
    iget v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->peerPort:I

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1

    .line 437
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 452
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;
    .locals 1

    .line 357
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .line 284
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->getSessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 407
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 1

    .line 417
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method public handshakeFinished([BLjava/lang/String;Ljava/lang/String;[B[[BJJ)V
    .locals 1
    .param p1, "id"    # [B
    .param p2, "cipher"    # Ljava/lang/String;
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "peerCertificate"    # [B
    .param p5, "peerCertificateChain"    # [[B
    .param p6, "creationTime"    # J
    .param p8, "timeout"    # J

    .line 368
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 477
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->id:Lio/netty/handler/ssl/OpenSslSessionId;

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslSessionId;->hashCode()I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->valid:Z

    .line 393
    return-void
.end method

.method public isValid()Z
    .locals 2

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->isValid(J)Z

    move-result v0

    return v0
.end method

.method isValid(J)Z
    .locals 4
    .param p1, "now"    # J

    .line 347
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->creationTime:J

    iget-wide v2, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->timeout:J

    add-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->valid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 402
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 413
    return-void
.end method

.method session()J
    .locals 2

    .line 318
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->freed:Z

    if-nez v0, :cond_0

    .line 319
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->session:J

    return-wide v0

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public sessionId()Lio/netty/handler/ssl/OpenSslSessionId;
    .locals 1

    .line 343
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->id:Lio/netty/handler/ssl/OpenSslSessionId;

    return-object v0
.end method

.method public setLocalCertificate([Ljava/security/cert/Certificate;)V
    .locals 1
    .param p1, "localCertificate"    # [Ljava/security/cert/Certificate;

    .line 352
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setSessionId(Lio/netty/handler/ssl/OpenSslSessionId;)V
    .locals 1
    .param p1, "id"    # Lio/netty/handler/ssl/OpenSslSessionId;

    .line 309
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method shouldBeSingleUse()Z
    .locals 2

    .line 313
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->freed:Z

    if-nez v0, :cond_0

    .line 314
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->session:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSLSession;->shouldBeSingleUse(J)Z

    move-result v0

    return v0

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public tryExpandApplicationBufferSize(I)V
    .locals 1
    .param p1, "packetLengthDataOnly"    # I

    .line 362
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method upRef()Z
    .locals 2

    .line 323
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->freed:Z

    if-nez v0, :cond_0

    .line 324
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->session:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSLSession;->upRef(J)Z

    move-result v0

    return v0

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method updateLastAccessedTime()V
    .locals 2

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->lastAccessedTime:J

    .line 383
    return-void
.end method
