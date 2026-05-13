.class public Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
.super Ljavax/net/ssl/SSLEngine;
.source "ReferenceCountedOpenSslEngine.java"

# interfaces
.implements Lio/netty/util/ReferenceCounted;
.implements Lio/netty/handler/ssl/ApplicationProtocolAccessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$OpenSslHandshakeException;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$OpenSslException;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$NativeSslException;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$AsyncTaskDecorator;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

.field private static final JAVAX_CERTS_NOT_SUPPORTED:[Ljavax/security/cert/X509Certificate;

.field static final MAX_PLAINTEXT_LENGTH:I

.field static final MAX_RECORD_SIZE:I

.field private static final NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

.field private static final OPENSSL_OP_NO_PROTOCOLS:[I

.field private static final OPENSSL_OP_NO_PROTOCOL_INDEX_SSLV2:I = 0x0

.field private static final OPENSSL_OP_NO_PROTOCOL_INDEX_SSLV3:I = 0x1

.field private static final OPENSSL_OP_NO_PROTOCOL_INDEX_TLSv1:I = 0x2

.field private static final OPENSSL_OP_NO_PROTOCOL_INDEX_TLSv1_1:I = 0x3

.field private static final OPENSSL_OP_NO_PROTOCOL_INDEX_TLSv1_2:I = 0x4

.field private static final OPENSSL_OP_NO_PROTOCOL_INDEX_TLSv1_3:I = 0x5

.field private static final leakDetector:Lio/netty/util/ResourceLeakDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakDetector<",
            "Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private algorithmConstraints:Ljava/lang/Object;

.field final alloc:Lio/netty/buffer/ByteBufAllocator;

.field private final apn:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

.field private volatile applicationProtocol:Ljava/lang/String;

.field private volatile clientAuth:Lio/netty/handler/ssl/ClientAuth;

.field private final clientMode:Z

.field private volatile destroyed:Z

.field private final enableOcsp:Z

.field private endPointIdentificationAlgorithm:Ljava/lang/String;

.field private final engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

.field private explicitlyEnabledProtocols:[Ljava/lang/String;

.field private handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

.field private isInboundDone:Z

.field final jdkCompatibilityMode:Z

.field private volatile lastAccessed:J

.field private final leak:Lio/netty/util/ResourceLeakTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;",
            ">;"
        }
    .end annotation
.end field

.field private volatile matchers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "*>;"
        }
    .end annotation
.end field

.field private maxWrapBufferSize:I

.field private maxWrapOverhead:I

.field private volatile needTask:Z

.field private networkBIO:J

.field private outboundClosed:Z

.field private final parentContext:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

.field private pendingException:Ljava/lang/Throwable;

.field private receivedShutdown:Z

.field private final refCnt:Lio/netty/util/AbstractReferenceCounted;

.field private final session:Lio/netty/handler/ssl/OpenSslSession;

.field private sessionSet:Z

.field private final singleDstBuffer:[Ljava/nio/ByteBuffer;

.field private final singleSrcBuffer:[Ljava/nio/ByteBuffer;

.field private sniHostNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ssl:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 96
    nop

    .line 98
    const-class v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 101
    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->instance()Lio/netty/util/ResourceLeakDetectorFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/netty/util/ResourceLeakDetectorFactory;->newResourceLeakDetector(Ljava/lang/Class;)Lio/netty/util/ResourceLeakDetector;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    .line 108
    sget v1, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv2:I

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv3:I

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1:I

    sget v4, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_1:I

    sget v5, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_2:I

    sget v6, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_3:I

    filled-new-array/range {v1 .. v6}, [I

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->OPENSSL_OP_NO_PROTOCOLS:[I

    .line 120
    sget v0, Lio/netty/internal/tcnative/SSL;->SSL_MAX_PLAINTEXT_LENGTH:I

    sput v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_PLAINTEXT_LENGTH:I

    .line 124
    sget v0, Lio/netty/internal/tcnative/SSL;->SSL_MAX_RECORD_LENGTH:I

    sput v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_RECORD_SIZE:I

    .line 126
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    .line 127
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    .line 128
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    .line 129
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    .line 130
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    .line 2358
    new-array v0, v3, [Ljavax/security/cert/X509Certificate;

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->JAVAX_CERTS_NOT_SUPPORTED:[Ljavax/security/cert/X509Certificate;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZZ)V
    .locals 8
    .param p1, "context"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .param p2, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p3, "peerHost"    # Ljava/lang/String;
    .param p4, "peerPort"    # I
    .param p5, "jdkCompatibilityMode"    # Z
    .param p6, "leakDetection"    # Z

    .line 232
    invoke-direct {p0, p3, p4}, Ljavax/net/ssl/SSLEngine;-><init>(Ljava/lang/String;I)V

    .line 155
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->NOT_STARTED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 165
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$1;

    invoke-direct {v0, p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$1;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)V

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    .line 186
    sget-object v0, Lio/netty/handler/ssl/ClientAuth;->NONE:Lio/netty/handler/ssl/ClientAuth;

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    .line 189
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->lastAccessed:J

    .line 211
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    .line 212
    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    .line 233
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->ensureAvailability()V

    .line 234
    iget-object v1, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    .line 235
    iget-boolean v1, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->enableOcsp:Z

    iput-boolean v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->enableOcsp:Z

    .line 236
    iput-boolean p5, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z

    .line 237
    const-string v1, "alloc"

    invoke-static {p2, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBufAllocator;

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 238
    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->applicationProtocolNegotiator()Lio/netty/handler/ssl/ApplicationProtocolNegotiator;

    move-result-object v1

    check-cast v1, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->apn:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    .line 239
    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->isClient()Z

    move-result v1

    iput-boolean v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    .line 241
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    .line 242
    new-instance v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$2;

    new-instance v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;

    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Lio/netty/handler/ssl/OpenSslSessionContext;)V

    invoke-direct {v1, p0, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$2;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Lio/netty/handler/ssl/OpenSslSession;)V

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    goto :goto_0

    .line 315
    :cond_0
    new-instance v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;

    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Lio/netty/handler/ssl/OpenSslSessionContext;)V

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    .line 318
    :goto_0
    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/ssl/OpenSslSessionContext;->useKeyManager()Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    iget-object v2, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->keyCertChain:[Ljava/security/cert/Certificate;

    invoke-interface {v1, v2}, Lio/netty/handler/ssl/OpenSslSession;->setLocalCertificate([Ljava/security/cert/Certificate;)V

    .line 322
    :cond_1
    iget-object v1, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 323
    .local v1, "readerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 326
    :try_start_0
    iget-wide v2, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->isClient()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-static {v2, v3, v4}, Lio/netty/internal/tcnative/SSL;->newSSL(JZ)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 328
    .local v2, "finalSsl":J
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 329
    nop

    .line 330
    monitor-enter p0

    .line 331
    :try_start_1
    iput-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 333
    :try_start_2
    iget-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->getBioNonApplicationBufferSize()I

    move-result v6

    invoke-static {v4, v5, v6}, Lio/netty/internal/tcnative/SSL;->bioNewByteBuffer(JI)J

    move-result-wide v4

    iput-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    .line 337
    iget-boolean v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-eqz v4, :cond_3

    sget-object v4, Lio/netty/handler/ssl/ClientAuth;->NONE:Lio/netty/handler/ssl/ClientAuth;

    goto :goto_2

    :cond_3
    iget-object v4, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    :goto_2
    invoke-direct {p0, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->setClientAuth(Lio/netty/handler/ssl/ClientAuth;)V

    .line 339
    iget-object v4, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->protocols:[Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 340
    iget-object v4, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->protocols:[Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->setEnabledProtocols0([Ljava/lang/String;Z)V

    goto :goto_3

    .line 342
    :cond_4
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->explicitlyEnabledProtocols:[Ljava/lang/String;

    .line 347
    :goto_3
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-eqz v0, :cond_6

    invoke-static {p3}, Lio/netty/handler/ssl/SslUtils;->isValidHostNameForSNI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 350
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/16 v4, 0x8

    if-lt v0, v4, :cond_5

    .line 351
    invoke-static {p3}, Lio/netty/handler/ssl/Java8SslUtils;->isValidHostNameForSNI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 352
    iget-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v4, v5, p3}, Lio/netty/internal/tcnative/SSL;->setTlsExtHostName(JLjava/lang/String;)V

    .line 353
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sniHostNames:Ljava/util/List;

    goto :goto_4

    .line 356
    :cond_5
    iget-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v4, v5, p3}, Lio/netty/internal/tcnative/SSL;->setTlsExtHostName(JLjava/lang/String;)V

    .line 357
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sniHostNames:Ljava/util/List;

    .line 361
    :cond_6
    :goto_4
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->enableOcsp:Z

    if-eqz v0, :cond_7

    .line 362
    iget-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v4, v5}, Lio/netty/internal/tcnative/SSL;->enableOcsp(J)V

    .line 365
    :cond_7
    if-nez p5, :cond_8

    .line 366
    iget-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    iget-wide v6, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v6, v7}, Lio/netty/internal/tcnative/SSL;->getMode(J)I

    move-result v0

    sget v6, Lio/netty/internal/tcnative/SSL;->SSL_MODE_ENABLE_PARTIAL_WRITE:I

    or-int/2addr v0, v6

    invoke-static {v4, v5, v0}, Lio/netty/internal/tcnative/SSL;->setMode(JI)I

    .line 369
    :cond_8
    iget-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v4, v5}, Lio/netty/internal/tcnative/SSL;->getOptions(J)I

    move-result v0

    sget v4, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_3:I

    const-string v5, "TLSv1.3"

    invoke-static {v0, v4, v5}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isProtocolEnabled(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 370
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->CLIENT_ENABLE_SESSION_TICKET_TLSV13:Z

    goto :goto_5

    :cond_9
    sget-boolean v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->SERVER_ENABLE_SESSION_TICKET_TLSV13:Z

    .line 373
    .local v0, "enableTickets":Z
    :goto_5
    if-eqz v0, :cond_a

    .line 381
    iget-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    sget v6, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TICKET:I

    invoke-static {v4, v5, v6}, Lio/netty/internal/tcnative/SSL;->clearOptions(JI)V

    .line 385
    .end local v0    # "enableTickets":Z
    :cond_a
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isBoringSSL()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-eqz v0, :cond_b

    .line 390
    iget-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    sget v0, Lio/netty/internal/tcnative/SSL;->SSL_RENEGOTIATE_ONCE:I

    invoke-static {v4, v5, v0}, Lio/netty/internal/tcnative/SSL;->setRenegotiateMode(JI)V

    .line 393
    :cond_b
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->calculateMaxWrapOverhead()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    goto :goto_6

    .line 394
    :catchall_0
    move-exception v0

    .line 397
    .local v0, "cause":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    .line 399
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 401
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 405
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->parentContext:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    .line 406
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->parentContext:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    invoke-virtual {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->retain()Lio/netty/util/ReferenceCounted;

    .line 410
    if-eqz p6, :cond_c

    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {v0, p0}, Lio/netty/util/ResourceLeakDetector;->track(Ljava/lang/Object;)Lio/netty/util/ResourceLeakTracker;

    move-result-object v0

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    :goto_7
    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->leak:Lio/netty/util/ResourceLeakTracker;

    .line 411
    return-void

    .line 401
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 328
    .end local v2    # "finalSsl":J
    :catchall_2
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 329
    throw v0
.end method

.method static synthetic access$000(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Lio/netty/util/ResourceLeakTracker;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 96
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->leak:Lio/netty/util/ResourceLeakTracker;

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 96
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->parentContext:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    return-object v0
.end method

.method static synthetic access$1000(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 96
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->toJavaCipherSuite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100([Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;

    .line 96
    invoke-static {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200()[Ljavax/security/cert/X509Certificate;
    .locals 1

    .line 96
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->JAVAX_CERTS_NOT_SUPPORTED:[Ljavax/security/cert/X509Certificate;

    return-object v0
.end method

.method static synthetic access$1300([B)Z
    .locals 1
    .param p0, "x0"    # [B

    .line 96
    invoke-static {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isEmpty([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 96
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->calculateMaxWrapOverhead()V

    return-void
.end method

.method static synthetic access$1502(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .param p1, "x1"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 96
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    return-object p1
.end method

.method static synthetic access$200(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 96
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    return v0
.end method

.method static synthetic access$300(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 96
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sniHostNames:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 96
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J
    .locals 2
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 96
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    return-wide v0
.end method

.method static synthetic access$600(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 96
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->enableOcsp:Z

    return v0
.end method

.method static synthetic access$700(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 96
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->runAndResetNeedTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$800(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Lio/netty/handler/ssl/OpenSslSession;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 96
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    return-object v0
.end method

.method static synthetic access$900(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J
    .locals 2
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 96
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->lastAccessed:J

    return-wide v0
.end method

.method private static bufferAddress(Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    .line 2286
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2287
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2288
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0

    .line 2290
    :cond_0
    invoke-static {p0}, Lio/netty/internal/tcnative/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0

    .line 2286
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private calculateMaxWrapOverhead()V
    .locals 2

    .line 735
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getMaxWrapOverhead(J)I

    move-result v0

    iput v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapOverhead:I

    .line 740
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxEncryptedPacketLength0()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxEncryptedPacketLength0()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    :goto_0
    iput v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapBufferSize:I

    .line 741
    return-void
.end method

.method private checkEngineClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1914
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1917
    return-void

    .line 1915
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "engine closed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private closeAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->receivedShutdown:Z

    .line 1420
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->closeOutbound()V

    .line 1421
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->closeInbound()V

    .line 1422
    return-void
.end method

.method private doSSLShutdown()Z
    .locals 8

    .line 1605
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->isInInit(J)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1610
    return v1

    .line 1612
    :cond_0
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->shutdownSSL(J)I

    move-result v0

    .line 1613
    .local v0, "err":I
    if-gez v0, :cond_4

    .line 1614
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v2, v3, v0}, Lio/netty/internal/tcnative/SSL;->getError(JI)I

    move-result v2

    .line 1615
    .local v2, "sslErr":I
    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_SYSCALL:I

    if-eq v2, v3, :cond_2

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_SSL:I

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 1624
    :cond_1
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->clearError()V

    goto :goto_1

    .line 1616
    :cond_2
    :goto_0
    sget-object v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1617
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->getLastErrorNumber()I

    move-result v3

    .line 1618
    .local v3, "error":I
    sget-object v4, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    int-to-long v6, v3

    invoke-static {v6, v7}, Lio/netty/internal/tcnative/SSL;->getErrorString(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SSL_shutdown failed: OpenSSL error: {} {}"

    invoke-interface {v4, v7, v5, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1621
    .end local v3    # "error":I
    :cond_3
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    .line 1622
    return v1

    .line 1626
    .end local v2    # "sslErr":I
    :cond_4
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method private getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1
    .param p1, "pending"    # I

    .line 2070
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needPendingStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2071
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needTask:Z

    if-eqz v0, :cond_0

    .line 2073
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 2075
    :cond_0
    invoke-static {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0

    .line 2077
    :cond_1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0
.end method

.method private handleUnwrapException(IILjavax/net/ssl/SSLException;)Ljavax/net/ssl/SSLEngineResult;
    .locals 2
    .param p1, "bytesConsumed"    # I
    .param p2, "bytesProduced"    # I
    .param p3, "e"    # Ljavax/net/ssl/SSLException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1116
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->getLastErrorNumber()I

    move-result v0

    .line 1117
    .local v0, "lastError":I
    if-eqz v0, :cond_0

    .line 1118
    sget v1, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_SSL:I

    invoke-direct {p0, v1, v0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sslReadErrorResult(IIII)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    return-object v1

    .line 1121
    :cond_0
    throw p3
.end method

.method private handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1963
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needTask:Z

    if-eqz v0, :cond_0

    .line 1964
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 1966
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-ne v0, v1, :cond_1

    .line 1967
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 1970
    :cond_1
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->checkEngineClosed()V

    .line 1972
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingException:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 1975
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->doHandshake(J)I

    move-result v0

    if-gtz v0, :cond_2

    .line 1977
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->clearError()V

    .line 1979
    :cond_2
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0

    .line 1983
    :cond_3
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-interface {v0, p0}, Lio/netty/handler/ssl/OpenSslEngineMap;->add(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)V

    .line 1985
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sessionSet:Z

    if-nez v0, :cond_4

    .line 1986
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->parentContext:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    invoke-virtual {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getPeerPort()I

    move-result v2

    iget-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/netty/handler/ssl/OpenSslSessionContext;->setSessionFromCache(Ljava/lang/String;IJ)V

    .line 1987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sessionSet:Z

    .line 1990
    :cond_4
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->lastAccessed:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 1991
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->lastAccessed:J

    .line 1994
    :cond_5
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->doHandshake(J)I

    move-result v0

    .line 1995
    .local v0, "code":I
    if-gtz v0, :cond_c

    .line 1996
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v1, v2, v0}, Lio/netty/internal/tcnative/SSL;->getError(JI)I

    move-result v1

    .line 1997
    .local v1, "sslError":I
    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_READ:I

    if-eq v1, v2, :cond_b

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_WRITE:I

    if-ne v1, v2, :cond_6

    goto :goto_1

    .line 2001
    :cond_6
    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_X509_LOOKUP:I

    if-eq v1, v2, :cond_a

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_CERTIFICATE_VERIFY:I

    if-eq v1, v2, :cond_a

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_PRIVATE_KEY_OPERATION:I

    if-ne v1, v2, :cond_7

    goto :goto_0

    .line 2007
    :cond_7
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->getLastErrorNumber()I

    move-result v2

    invoke-direct {p0, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needWrapAgain(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2010
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v2

    .line 2014
    :cond_8
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingException:Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    .line 2015
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    return-object v2

    .line 2019
    :cond_9
    const-string v2, "SSL_do_handshake"

    invoke-direct {p0, v2, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdownWithError(Ljava/lang/String;I)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 2004
    :cond_a
    :goto_0
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v2

    .line 1998
    :cond_b
    :goto_1
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v2

    invoke-static {v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    return-object v2

    .line 2022
    .end local v1    # "sslError":I
    :cond_c
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v1

    if-lez v1, :cond_d

    .line 2023
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v1

    .line 2026
    :cond_d
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    iget-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v3, v4}, Lio/netty/internal/tcnative/SSL;->getSessionId(J)[B

    move-result-object v3

    iget-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v4, v5}, Lio/netty/internal/tcnative/SSL;->getCipherForSSL(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v5, v6}, Lio/netty/internal/tcnative/SSL;->getVersion(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    .line 2027
    invoke-static {v6, v7}, Lio/netty/internal/tcnative/SSL;->getPeerCertificate(J)[B

    move-result-object v6

    iget-wide v7, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v7, v8}, Lio/netty/internal/tcnative/SSL;->getPeerCertChain(J)[[B

    move-result-object v7

    iget-wide v8, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    .line 2028
    invoke-static {v8, v9}, Lio/netty/internal/tcnative/SSL;->getTime(J)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->parentContext:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    invoke-virtual {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionTimeout()J

    move-result-wide v12

    mul-long/2addr v10, v12

    .line 2026
    invoke-interface/range {v2 .. v11}, Lio/netty/handler/ssl/OpenSslSession;->handshakeFinished([BLjava/lang/String;Ljava/lang/String;[B[[BJJ)V

    .line 2029
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->selectApplicationProtocol()V

    .line 2030
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v1
.end method

.method private handshakeException()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1933
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0

    if-lez v0, :cond_0

    .line 1935
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 1938
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingException:Ljava/lang/Throwable;

    .line 1939
    .local v0, "exception":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 1940
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingException:Ljava/lang/Throwable;

    .line 1941
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    .line 1942
    instance-of v1, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_1

    .line 1943
    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/SSLHandshakeException;

    throw v1

    .line 1945
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "General OpenSslEngine problem"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 1946
    .local v1, "e":Ljavax/net/ssl/SSLHandshakeException;
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1947
    throw v1

    .line 1939
    .end local v1    # "e":Ljavax/net/ssl/SSLHandshakeException;
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private isBytesAvailableEnoughForWrap(III)Z
    .locals 6
    .param p1, "bytesAvailable"    # I
    .param p2, "plaintextLength"    # I
    .param p3, "numComponents"    # I

    .line 752
    int-to-long v0, p1

    iget v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapOverhead:I

    int-to-long v2, v2

    int-to-long v4, p3

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    int-to-long v2, p2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDestroyed()Z
    .locals 1

    .line 2273
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->destroyed:Z

    return v0
.end method

.method private static isEmpty([B)Z
    .locals 1
    .param p0, "cert"    # [B

    .line 1929
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .param p0, "arr"    # [Ljava/lang/Object;

    .line 1925
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isEndPointVerificationEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "endPointIdentificationAlgorithm"    # Ljava/lang/String;

    .line 2269
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isProtocolEnabled(IILjava/lang/String;)Z
    .locals 1
    .param p0, "opts"    # I
    .param p1, "disableMask"    # I
    .param p2, "protocolString"    # Ljava/lang/String;

    .line 1778
    and-int v0, p0, p1

    if-nez v0, :cond_0

    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->SUPPORTED_PROTOCOLS_SET:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 2
    .param p1, "status"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 2041
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_1

    .line 2042
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v0, v1, :cond_0

    .line 2045
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0

    .line 2047
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0

    if-lez v0, :cond_1

    .line 2049
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 2052
    :cond_1
    return-object p1
.end method

.method private mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1
    .param p1, "hs"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .param p2, "bytesConsumed"    # I
    .param p3, "bytesProduced"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 2035
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_2

    if-lez p2, :cond_2

    .line 2036
    :cond_1
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_0
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    .line 2035
    :goto_1
    return-object v0
.end method

.method private needPendingStatus()Z
    .locals 2

    .line 2081
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->NOT_STARTED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-ne v0, v1, :cond_0

    .line 2082
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2081
    :goto_0
    return v0
.end method

.method private needWrapAgain(I)Z
    .locals 2
    .param p1, "stackError"    # I

    .line 1375
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0

    if-lez v0, :cond_2

    .line 1378
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingException:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1379
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newSSLExceptionForError(I)Ljavax/net/ssl/SSLException;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingException:Ljava/lang/Throwable;

    goto :goto_0

    .line 1380
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingException:Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shouldAddSuppressed(Ljava/lang/Throwable;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1381
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingException:Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newSSLExceptionForError(I)Ljavax/net/ssl/SSLException;

    move-result-object v1

    invoke-static {v0, v1}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 1385
    :cond_1
    :goto_0
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->clearError()V

    .line 1386
    const/4 v0, 0x1

    return v0

    .line 1388
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .param p1, "hs"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .param p2, "bytesConsumed"    # I
    .param p3, "bytesProduced"    # I

    .line 1052
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {p0, v0, p1, p2, p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method private newResult(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 2
    .param p1, "status"    # Ljavax/net/ssl/SSLEngineResult$Status;
    .param p2, "hs"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .param p3, "bytesConsumed"    # I
    .param p4, "bytesProduced"    # I

    .line 1060
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1061
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    sget-object p2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 1066
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    .line 1068
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v0, v1, p2, p3, p4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v0

    .line 1070
    :cond_1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p2, v0, :cond_2

    .line 1072
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needTask:Z

    .line 1074
    :cond_2
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v0
.end method

.method private newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .param p1, "hs"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .param p2, "bytesConsumed"    # I
    .param p3, "bytesProduced"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1079
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method private newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .param p1, "status"    # Ljavax/net/ssl/SSLEngineResult$Status;
    .param p2, "hs"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .param p3, "bytesConsumed"    # I
    .param p4, "bytesProduced"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1085
    invoke-direct {p0, p2, p3, p4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method private newSSLExceptionForError(I)Ljavax/net/ssl/SSLException;
    .locals 3
    .param p1, "stackError"    # I

    .line 1392
    int-to-long v0, p1

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getErrorString(J)Ljava/lang/String;

    move-result-object v0

    .line 1393
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-ne v1, v2, :cond_0

    new-instance v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$OpenSslException;

    invoke-direct {v1, v0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$OpenSslException;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$OpenSslHandshakeException;

    invoke-direct {v1, v0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$OpenSslHandshakeException;-><init>(Ljava/lang/String;I)V

    :goto_0
    return-object v1
.end method

.method private static pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1
    .param p0, "pendingStatus"    # I

    .line 1921
    if-lez p0, :cond_0

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_0
    return-object v0
.end method

.method private readPlaintextData(Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 657
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 658
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->bufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v1, v2, v3, v4, v5}, Lio/netty/internal/tcnative/SSL;->readFromSSL(JJI)I

    move-result v1

    .line 660
    .local v1, "sslRead":I
    if-lez v1, :cond_2

    .line 661
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 664
    .end local v1    # "sslRead":I
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 665
    .local v1, "limit":I
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxEncryptedPacketLength0()I

    move-result v2

    sub-int v3, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 666
    .local v2, "len":I
    iget-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v3, v2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 668
    .local v3, "buf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    iget-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v3}, Lio/netty/handler/ssl/OpenSsl;->memoryAddress(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7, v2}, Lio/netty/internal/tcnative/SSL;->readFromSSL(JJI)I

    move-result v4

    .line 669
    .local v4, "sslRead":I
    if-lez v4, :cond_1

    .line 670
    add-int v5, v0, v4

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 671
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    invoke-virtual {v3, v5, p1}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 672
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    :cond_1
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 676
    move v1, v4

    .line 679
    .end local v2    # "len":I
    .end local v3    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v4    # "sslRead":I
    .local v1, "sslRead":I
    :cond_2
    :goto_0
    return v1

    .line 675
    .local v1, "limit":I
    .restart local v2    # "len":I
    .restart local v3    # "buf":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 676
    throw v4
.end method

.method private rejectRemoteInitiatedRenegotiation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;
        }
    .end annotation

    .line 1428
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getHandshakeCount(J)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    .line 1430
    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getHandshakeCount(J)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    .line 1433
    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TLSv1.3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 1436
    :cond_2
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    .line 1437
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "remote-initiated renegotiation not allowed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1439
    :cond_3
    :goto_0
    return-void
.end method

.method private resetSingleDstBuffer()V
    .locals 3

    .line 1460
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1461
    return-void
.end method

.method private resetSingleSrcBuffer()V
    .locals 3

    .line 1451
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1452
    return-void
.end method

.method private declared-synchronized runAndResetNeedTask(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 1530
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1537
    :try_start_1
    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needTask:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1532
    monitor-exit p0

    return-void

    .line 1534
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_0
    :try_start_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1537
    :try_start_3
    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needTask:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1538
    nop

    .line 1539
    monitor-exit p0

    return-void

    .line 1537
    :catchall_0
    move-exception v1

    :try_start_4
    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needTask:Z

    .line 1538
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1529
    .end local p1    # "task":Ljava/lang/Runnable;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private selectApplicationProtocol(Ljava/util/List;Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p2, "behavior"    # Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;
    .param p3, "applicationProtocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 2337
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;->ACCEPT:Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    if-ne p2, v0, :cond_0

    .line 2338
    return-object p3

    .line 2340
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2341
    .local v0, "size":I
    if-lez v0, :cond_3

    .line 2342
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2343
    return-object p3

    .line 2345
    :cond_1
    sget-object v1, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;->CHOOSE_MY_LAST_PROTOCOL:Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    if-ne p2, v1, :cond_2

    .line 2346
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2348
    :cond_2
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown protocol "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2341
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private selectApplicationProtocol()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 2297
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->apn:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;->selectedListenerFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v0

    .line 2298
    .local v0, "behavior":Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->apn:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    invoke-interface {v1}, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v1

    .line 2300
    .local v1, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol:[I

    iget-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->apn:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    invoke-interface {v3}, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;->protocol()Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2330
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2}, Ljava/lang/Error;-><init>()V

    throw v2

    .line 2320
    :pswitch_0
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->getAlpnSelected(J)Ljava/lang/String;

    move-result-object v2

    .line 2321
    .local v2, "applicationProtocol":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 2322
    iget-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v3, v4}, Lio/netty/internal/tcnative/SSL;->getNextProtoNegotiated(J)Ljava/lang/String;

    move-result-object v2

    .line 2324
    :cond_0
    if-eqz v2, :cond_1

    .line 2325
    invoke-direct {p0, v1, v0, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->selectApplicationProtocol(Ljava/util/List;Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->applicationProtocol:Ljava/lang/String;

    goto :goto_0

    .line 2313
    .end local v2    # "applicationProtocol":Ljava/lang/String;
    :pswitch_1
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->getNextProtoNegotiated(J)Ljava/lang/String;

    move-result-object v2

    .line 2314
    .restart local v2    # "applicationProtocol":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 2315
    invoke-direct {p0, v1, v0, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->selectApplicationProtocol(Ljava/util/List;Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->applicationProtocol:Ljava/lang/String;

    goto :goto_0

    .line 2306
    .end local v2    # "applicationProtocol":Ljava/lang/String;
    :pswitch_2
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->getAlpnSelected(J)Ljava/lang/String;

    move-result-object v2

    .line 2307
    .restart local v2    # "applicationProtocol":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 2308
    invoke-direct {p0, v1, v0, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->selectApplicationProtocol(Ljava/util/List;Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->applicationProtocol:Ljava/lang/String;

    goto :goto_0

    .line 2302
    .end local v2    # "applicationProtocol":Ljava/lang/String;
    :pswitch_3
    nop

    .line 2332
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setClientAuth(Lio/netty/handler/ssl/ClientAuth;)V
    .locals 4
    .param p1, "mode"    # Lio/netty/handler/ssl/ClientAuth;

    .line 2163
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-eqz v0, :cond_0

    .line 2164
    return-void

    .line 2166
    :cond_0
    monitor-enter p0

    .line 2167
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    if-ne v0, p1, :cond_1

    .line 2169
    monitor-exit p0

    return-void

    .line 2171
    :cond_1
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2172
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$3;->$SwitchMap$io$netty$handler$ssl$ClientAuth:[I

    invoke-virtual {p1}, Lio/netty/handler/ssl/ClientAuth;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xa

    packed-switch v0, :pswitch_data_0

    .line 2183
    new-instance v0, Ljava/lang/Error;

    goto :goto_0

    .line 2180
    :pswitch_0
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    const/4 v0, 0x1

    invoke-static {v2, v3, v0, v1}, Lio/netty/internal/tcnative/SSL;->setVerify(JII)V

    .line 2181
    goto :goto_1

    .line 2177
    :pswitch_1
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    const/4 v0, 0x2

    invoke-static {v2, v3, v0, v1}, Lio/netty/internal/tcnative/SSL;->setVerify(JII)V

    .line 2178
    goto :goto_1

    .line 2174
    :pswitch_2
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    const/4 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Lio/netty/internal/tcnative/SSL;->setVerify(JII)V

    .line 2175
    goto :goto_1

    .line 2183
    :goto_0
    invoke-virtual {p1}, Lio/netty/handler/ssl/ClientAuth;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .end local p1    # "mode":Lio/netty/handler/ssl/ClientAuth;
    throw v0

    .line 2186
    .restart local p1    # "mode":Lio/netty/handler/ssl/ClientAuth;
    :cond_2
    :goto_1
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    .line 2187
    monitor-exit p0

    .line 2188
    return-void

    .line 2187
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setEnabledProtocols0([Ljava/lang/String;Z)V
    .locals 6
    .param p1, "protocols"    # [Ljava/lang/String;
    .param p2, "cache"    # Z

    .line 1797
    const-string v0, "protocols"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNullWithIAE(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1798
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->OPENSSL_OP_NO_PROTOCOLS:[I

    array-length v0, v0

    .line 1799
    .local v0, "minProtocolIndex":I
    const/4 v1, 0x0

    .line 1800
    .local v1, "maxProtocolIndex":I
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_d

    aget-object v4, p1, v3

    .line 1801
    .local v4, "p":Ljava/lang/String;
    sget-object v5, Lio/netty/handler/ssl/OpenSsl;->SUPPORTED_PROTOCOLS_SET:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1804
    const-string v5, "SSLv2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1805
    if-lez v0, :cond_0

    .line 1806
    const/4 v0, 0x0

    .line 1808
    :cond_0
    if-gez v1, :cond_b

    .line 1809
    const/4 v1, 0x0

    goto :goto_1

    .line 1811
    :cond_1
    const-string v5, "SSLv3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1812
    const/4 v5, 0x1

    if-le v0, v5, :cond_2

    .line 1813
    const/4 v0, 0x1

    .line 1815
    :cond_2
    if-ge v1, v5, :cond_b

    .line 1816
    const/4 v1, 0x1

    goto :goto_1

    .line 1818
    :cond_3
    const-string v5, "TLSv1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1819
    const/4 v5, 0x2

    if-le v0, v5, :cond_4

    .line 1820
    const/4 v0, 0x2

    .line 1822
    :cond_4
    if-ge v1, v5, :cond_b

    .line 1823
    const/4 v1, 0x2

    goto :goto_1

    .line 1825
    :cond_5
    const-string v5, "TLSv1.1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1826
    const/4 v5, 0x3

    if-le v0, v5, :cond_6

    .line 1827
    const/4 v0, 0x3

    .line 1829
    :cond_6
    if-ge v1, v5, :cond_b

    .line 1830
    const/4 v1, 0x3

    goto :goto_1

    .line 1832
    :cond_7
    const-string v5, "TLSv1.2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1833
    const/4 v5, 0x4

    if-le v0, v5, :cond_8

    .line 1834
    const/4 v0, 0x4

    .line 1836
    :cond_8
    if-ge v1, v5, :cond_b

    .line 1837
    const/4 v1, 0x4

    goto :goto_1

    .line 1839
    :cond_9
    const-string v5, "TLSv1.3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1840
    const/4 v5, 0x5

    if-le v0, v5, :cond_a

    .line 1841
    const/4 v0, 0x5

    .line 1843
    :cond_a
    if-ge v1, v5, :cond_b

    .line 1844
    const/4 v1, 0x5

    .line 1800
    .end local v4    # "p":Ljava/lang/String;
    :cond_b
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1802
    .restart local v4    # "p":Ljava/lang/String;
    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Protocol "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is not supported."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1848
    .end local v4    # "p":Ljava/lang/String;
    :cond_d
    monitor-enter p0

    .line 1849
    if-eqz p2, :cond_e

    .line 1850
    :try_start_0
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->explicitlyEnabledProtocols:[Ljava/lang/String;

    .line 1852
    :cond_e
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1854
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    sget v4, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv2:I

    sget v5, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv3:I

    or-int/2addr v4, v5

    sget v5, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1:I

    or-int/2addr v4, v5

    sget v5, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_1:I

    or-int/2addr v4, v5

    sget v5, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_2:I

    or-int/2addr v4, v5

    sget v5, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_3:I

    or-int/2addr v4, v5

    invoke-static {v2, v3, v4}, Lio/netty/internal/tcnative/SSL;->clearOptions(JI)V

    .line 1857
    const/4 v2, 0x0

    .line 1858
    .local v2, "opts":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_f

    .line 1859
    sget-object v4, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->OPENSSL_OP_NO_PROTOCOLS:[I

    aget v4, v4, v3

    or-int/2addr v2, v4

    .line 1858
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1861
    .end local v3    # "i":I
    :cond_f
    const v3, 0x7fffffff

    if-eq v1, v3, :cond_11

    .line 1862
    add-int/lit8 v3, v1, 0x1

    .restart local v3    # "i":I
    :goto_3
    sget-object v4, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->OPENSSL_OP_NO_PROTOCOLS:[I

    array-length v4, v4

    if-ge v3, v4, :cond_10

    .line 1863
    sget-object v4, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->OPENSSL_OP_NO_PROTOCOLS:[I

    aget v4, v4, v3

    or-int/2addr v2, v4

    .line 1862
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1867
    .end local v3    # "i":I
    :cond_10
    iget-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v3, v4, v2}, Lio/netty/internal/tcnative/SSL;->setOptions(JI)V

    .line 1868
    .end local v2    # "opts":I
    nop

    .line 1871
    monitor-exit p0

    .line 1872
    return-void

    .line 1861
    .restart local v2    # "opts":I
    :cond_11
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "minProtocolIndex":I
    .end local v1    # "maxProtocolIndex":I
    .end local p1    # "protocols":[Ljava/lang/String;
    .end local p2    # "cache":Z
    throw v3

    .line 1869
    .end local v2    # "opts":I
    .restart local v0    # "minProtocolIndex":I
    .restart local v1    # "maxProtocolIndex":I
    .restart local p1    # "protocols":[Ljava/lang/String;
    .restart local p2    # "cache":Z
    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to enable protocols: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "minProtocolIndex":I
    .end local v1    # "maxProtocolIndex":I
    .end local p1    # "protocols":[Ljava/lang/String;
    .end local p2    # "cache":Z
    throw v2

    .line 1871
    .restart local v0    # "minProtocolIndex":I
    .restart local v1    # "maxProtocolIndex":I
    .restart local p1    # "protocols":[Ljava/lang/String;
    .restart local p2    # "cache":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static shouldAddSuppressed(Ljava/lang/Throwable;I)Z
    .locals 6
    .param p0, "target"    # Ljava/lang/Throwable;
    .param p1, "errorCode"    # I

    .line 1398
    invoke-static {p0}, Lio/netty/util/internal/ThrowableUtil;->getSuppressed(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1399
    .local v4, "suppressed":Ljava/lang/Throwable;
    instance-of v5, v4, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$NativeSslException;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$NativeSslException;

    .line 1400
    invoke-interface {v5}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$NativeSslException;->errorCode()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 1402
    return v2

    .line 1398
    .end local v4    # "suppressed":Ljava/lang/Throwable;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1405
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private shutdownWithError(Ljava/lang/String;I)Ljavax/net/ssl/SSLException;
    .locals 1
    .param p1, "operations"    # Ljava/lang/String;
    .param p2, "sslError"    # I

    .line 1092
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->getLastErrorNumber()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdownWithError(Ljava/lang/String;II)Ljavax/net/ssl/SSLException;

    move-result-object v0

    return-object v0
.end method

.method private shutdownWithError(Ljava/lang/String;II)Ljavax/net/ssl/SSLException;
    .locals 4
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "sslError"    # I
    .param p3, "error"    # I

    .line 1096
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    int-to-long v0, p3

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getErrorString(J)Ljava/lang/String;

    move-result-object v0

    .line 1098
    .local v0, "errorString":Ljava/lang/String;
    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 1099
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v2, v3, v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 1098
    const-string v3, "{} failed with {}: OpenSSL error: {} {}"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1103
    .end local v0    # "errorString":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    .line 1105
    invoke-direct {p0, p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newSSLExceptionForError(I)Ljavax/net/ssl/SSLException;

    move-result-object v0

    .line 1107
    .local v0, "exception":Ljavax/net/ssl/SSLException;
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingException:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1108
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingException:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1109
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingException:Ljava/lang/Throwable;

    .line 1111
    :cond_1
    return-object v0
.end method

.method private singleDstBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 1455
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1456
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 1446
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1447
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private sslPending0()I
    .locals 2

    .line 748
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->sslPending(J)I

    move-result v0

    :goto_0
    return v0
.end method

.method private sslReadErrorResult(IIII)Ljavax/net/ssl/SSLEngineResult;
    .locals 3
    .param p1, "error"    # I
    .param p2, "stackError"    # I
    .param p3, "bytesConsumed"    # I
    .param p4, "bytesProduced"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1410
    invoke-direct {p0, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needWrapAgain(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1413
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, p3, p4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v0

    .line 1415
    :cond_0
    const-string v0, "SSL_read"

    invoke-direct {p0, v0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdownWithError(Ljava/lang/String;II)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method

.method private toJavaCipherSuite(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "openSslCipherSuite"    # Ljava/lang/String;

    .line 2089
    if-nez p1, :cond_0

    .line 2090
    const/4 v0, 0x0

    return-object v0

    .line 2093
    :cond_0
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getVersion(J)Ljava/lang/String;

    move-result-object v0

    .line 2094
    .local v0, "version":Ljava/lang/String;
    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->toJavaCipherSuitePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2095
    .local v1, "prefix":Ljava/lang/String;
    invoke-static {p1, v1}, Lio/netty/handler/ssl/CipherSuiteConverter;->toJava(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static toJavaCipherSuitePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "protocolVersion"    # Ljava/lang/String;

    .line 2103
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2106
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    goto :goto_1

    .line 2104
    .end local v0    # "c":C
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 2109
    .restart local v0    # "c":C
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 2115
    const-string v1, "UNKNOWN"

    return-object v1

    .line 2111
    :pswitch_0
    const-string v1, "TLS"

    return-object v1

    .line 2113
    :pswitch_1
    const-string v1, "SSL"

    return-object v1

    :pswitch_data_0
    .packed-switch 0x53
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeEncryptedData(Ljava/nio/ByteBuffer;I)Lio/netty/buffer/ByteBuf;
    .locals 10
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 629
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 630
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->bufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    const/4 v7, 0x0

    move v6, p2

    invoke-static/range {v2 .. v7}, Lio/netty/internal/tcnative/SSL;->bioSetByteBuffer(JJIZ)V

    goto :goto_0

    .line 633
    :cond_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v1, p2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 635
    .local v1, "buf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 636
    .local v2, "limit":I
    add-int v3, v0, p2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 637
    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 639
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 640
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 642
    iget-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v1}, Lio/netty/handler/ssl/OpenSsl;->memoryAddress(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v6

    const/4 v9, 0x0

    move v8, p2

    invoke-static/range {v4 .. v9}, Lio/netty/internal/tcnative/SSL;->bioSetByteBuffer(JJIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    return-object v1

    .line 644
    .end local v2    # "limit":I
    :catchall_0
    move-exception v2

    .line 645
    .local v2, "cause":Ljava/lang/Throwable;
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 646
    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 649
    .end local v1    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v2    # "cause":Ljava/lang/Throwable;
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private writePlaintextData(Ljava/nio/ByteBuffer;I)I
    .locals 8
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I

    .line 589
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 590
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 593
    .local v1, "limit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->bufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5, p2}, Lio/netty/internal/tcnative/SSL;->writeToSSL(JJI)I

    move-result v2

    .line 595
    .local v2, "sslWrote":I
    if-lez v2, :cond_2

    .line 596
    add-int v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 599
    .end local v2    # "sslWrote":I
    :cond_0
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v2, p2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 601
    .local v2, "buf":Lio/netty/buffer/ByteBuf;
    add-int v3, v0, p2

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 603
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 604
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 606
    iget-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v2}, Lio/netty/handler/ssl/OpenSsl;->memoryAddress(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, p2}, Lio/netty/internal/tcnative/SSL;->writeToSSL(JJI)I

    move-result v3

    .line 607
    .local v3, "sslWrote":I
    if-lez v3, :cond_1

    .line 608
    add-int v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 610
    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :goto_0
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 614
    move v2, v3

    .line 616
    .end local v3    # "sslWrote":I
    .local v2, "sslWrote":I
    :cond_2
    :goto_1
    return v2

    .line 613
    .local v2, "buf":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 614
    throw v3
.end method


# virtual methods
.method final declared-synchronized authMethods()[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 414
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 417
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->authenticationMethods(J)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized beginHandshake()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 1881
    :try_start_0
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$3;->$SwitchMap$io$netty$handler$ssl$ReferenceCountedOpenSslEngine$HandshakeState:[I

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    invoke-virtual {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1909
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    new-instance v0, Ljava/lang/Error;

    goto :goto_1

    .line 1897
    .restart local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :pswitch_0
    goto :goto_0

    .line 1883
    :pswitch_1
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->checkEngineClosed()V

    .line 1891
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_EXPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 1892
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->calculateMaxWrapOverhead()V

    .line 1894
    goto :goto_0

    .line 1899
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :pswitch_2
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "renegotiation unsupported"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1901
    :pswitch_3
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_EXPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 1902
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_0

    .line 1904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needTask:Z

    .line 1906
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->calculateMaxWrapOverhead()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1907
    nop

    .line 1911
    :goto_0
    monitor-exit p0

    return-void

    .line 1909
    :goto_1
    :try_start_1
    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1880
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized bioSetFd(I)V
    .locals 2
    .param p1, "fd"    # I

    monitor-enter p0

    .line 620
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1, p1}, Lio/netty/internal/tcnative/SSL;->bioSetFd(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_0
    monitor-exit p0

    return-void

    .line 619
    .end local p1    # "fd":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final calculateMaxLengthForWrap(II)I
    .locals 8
    .param p1, "plaintextLength"    # I
    .param p2, "numComponents"    # I

    .line 713
    iget v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapBufferSize:I

    int-to-long v0, v0

    int-to-long v2, p1

    iget v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapOverhead:I

    int-to-long v4, v4

    int-to-long v6, p2

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method final calculateOutNetBufSize(II)I
    .locals 6
    .param p1, "plaintextLength"    # I
    .param p2, "numComponents"    # I

    .line 724
    int-to-long v0, p1

    iget v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapOverhead:I

    int-to-long v2, v2

    int-to-long v4, p2

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method final checkSniHostnameMatch([B)Z
    .locals 1
    .param p1, "hostname"    # [B

    .line 2277
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->matchers:Ljava/util/Collection;

    invoke-static {v0, p1}, Lio/netty/handler/ssl/Java8SslUtils;->checkSniHostnameMatch(Ljava/util/Collection;[B)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized closeInbound()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 1558
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1559
    monitor-exit p0

    return-void

    .line 1562
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone:Z

    .line 1564
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1567
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    .line 1570
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_1
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->NOT_STARTED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->receivedShutdown:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1571
    :cond_2
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Inbound closed before receiving peer\'s close_notify: possible truncation attack?"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1574
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 1557
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized closeOutbound()V
    .locals 3

    monitor-enter p0

    .line 1583
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->outboundClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1584
    monitor-exit p0

    return-void

    .line 1587
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->outboundClosed:Z

    .line 1589
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->NOT_STARTED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1590
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getShutdown(J)I

    move-result v0

    .line 1591
    .local v0, "mode":I
    sget v1, Lio/netty/internal/tcnative/SSL;->SSL_SENT_SHUTDOWN:I

    and-int/2addr v1, v0

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_SENT_SHUTDOWN:I

    if-eq v1, v2, :cond_1

    .line 1592
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->doSSLShutdown()Z

    .line 1594
    .end local v0    # "mode":I
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_1
    goto :goto_0

    .line 1596
    :cond_2
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1598
    :goto_0
    monitor-exit p0

    return-void

    .line 1582
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApplicationProtocol()Ljava/lang/String;
    .locals 1

    .line 528
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->applicationProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized getDelegatedTask()Ljava/lang/Runnable;
    .locals 4

    monitor-enter p0

    .line 1543
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1544
    monitor-exit p0

    return-object v1

    .line 1546
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->getTask(J)Ljava/lang/Runnable;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1547
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_1

    .line 1548
    monitor-exit p0

    return-object v1

    .line 1550
    :cond_1
    :try_start_2
    instance-of v1, v0, Lio/netty/internal/tcnative/AsyncTask;

    if-eqz v1, :cond_2

    .line 1551
    new-instance v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$AsyncTaskDecorator;

    move-object v2, v0

    check-cast v2, Lio/netty/internal/tcnative/AsyncTask;

    invoke-direct {v1, p0, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$AsyncTaskDecorator;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Lio/netty/internal/tcnative/AsyncTask;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1553
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_2
    :try_start_3
    new-instance v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator;

    invoke-direct {v1, p0, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$TaskDecorator;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1542
    .end local v0    # "task":Ljava/lang/Runnable;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getEnableSessionCreation()Z
    .locals 1

    .line 2199
    const/4 v0, 0x0

    return v0
.end method

.method public final getEnabledCipherSuites()[Ljava/lang/String;
    .locals 8

    .line 1646
    monitor-enter p0

    .line 1647
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1648
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getCiphers(J)[Ljava/lang/String;

    move-result-object v0

    .line 1649
    .local v0, "enabled":[Ljava/lang/String;
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSL;->getOptions(J)I

    move-result v1

    .line 1650
    .local v1, "opts":I
    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_3:I

    const-string v3, "TLSv1.3"

    invoke-static {v1, v2, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isProtocolEnabled(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1651
    sget-object v2, Lio/netty/handler/ssl/OpenSsl;->EXTRA_SUPPORTED_TLS_1_3_CIPHERS:[Ljava/lang/String;

    .line 1652
    .local v2, "extraCiphers":[Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, "tls13Enabled":Z
    goto :goto_0

    .line 1654
    .end local v2    # "extraCiphers":[Ljava/lang/String;
    .end local v3    # "tls13Enabled":Z
    :cond_0
    sget-object v2, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 1655
    .restart local v2    # "extraCiphers":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1657
    .end local v1    # "opts":I
    .restart local v3    # "tls13Enabled":Z
    :goto_0
    nop

    .line 1660
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1661
    if-nez v0, :cond_1

    .line 1662
    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object v1

    .line 1664
    :cond_1
    new-instance v1, Ljava/util/LinkedHashSet;

    array-length v4, v0

    array-length v5, v2

    add-int/2addr v4, v5

    invoke-direct {v1, v4}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 1665
    .local v1, "enabledSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 1666
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    :try_start_1
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 1667
    aget-object v5, v0, v4

    invoke-direct {p0, v5}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->toJavaCipherSuite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1668
    .local v5, "mapped":Ljava/lang/String;
    if-nez v5, :cond_2

    aget-object v6, v0, v4

    goto :goto_2

    :cond_2
    move-object v6, v5

    .line 1669
    .local v6, "cipher":Ljava/lang/String;
    :goto_2
    if-eqz v3, :cond_3

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isTlsv13Supported()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    invoke-static {v6}, Lio/netty/handler/ssl/SslUtils;->isTLSv13Cipher(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1670
    goto :goto_3

    .line 1672
    :cond_4
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1666
    .end local v5    # "mapped":Ljava/lang/String;
    .end local v6    # "cipher":Ljava/lang/String;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1674
    .end local v4    # "i":I
    :cond_5
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1675
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1676
    sget-object v4, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4

    .line 1675
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1658
    .end local v0    # "enabled":[Ljava/lang/String;
    .end local v1    # "enabledSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "extraCiphers":[Ljava/lang/String;
    .end local v3    # "tls13Enabled":Z
    :cond_6
    :try_start_3
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 1660
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final getEnabledProtocols()[Ljava/lang/String;
    .locals 4

    .line 1742
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1744
    .local v0, "enabled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "SSLv2Hello"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1747
    monitor-enter p0

    .line 1748
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1749
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSL;->getOptions(J)I

    move-result v1

    .line 1753
    .local v1, "opts":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1754
    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1:I

    const-string v3, "TLSv1"

    invoke-static {v1, v2, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isProtocolEnabled(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1755
    const-string v2, "TLSv1"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1757
    :cond_0
    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_1:I

    const-string v3, "TLSv1.1"

    invoke-static {v1, v2, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isProtocolEnabled(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1758
    const-string v2, "TLSv1.1"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1760
    :cond_1
    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_2:I

    const-string v3, "TLSv1.2"

    invoke-static {v1, v2, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isProtocolEnabled(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1761
    const-string v2, "TLSv1.2"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1763
    :cond_2
    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_3:I

    const-string v3, "TLSv1.3"

    invoke-static {v1, v2, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isProtocolEnabled(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1764
    const-string v2, "TLSv1.3"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1766
    :cond_3
    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv2:I

    const-string v3, "SSLv2"

    invoke-static {v1, v2, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isProtocolEnabled(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1767
    const-string v2, "SSLv2"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1769
    :cond_4
    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv3:I

    const-string v3, "SSLv3"

    invoke-static {v1, v2, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isProtocolEnabled(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1770
    const-string v2, "SSLv3"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1772
    :cond_5
    sget-object v2, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 1751
    .end local v1    # "opts":I
    :cond_6
    :try_start_1
    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit p0

    return-object v1

    .line 1753
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getHandshakeApplicationProtocol()Ljava/lang/String;
    .locals 1

    .line 534
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->applicationProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .locals 2

    monitor-enter p0

    .line 543
    :try_start_0
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$3;->$SwitchMap$io$netty$handler$ssl$ReferenceCountedOpenSslEngine$HandshakeState:[I

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    invoke-virtual {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 548
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 546
    :pswitch_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 548
    :goto_0
    monitor-exit p0

    return-object v0

    .line 542
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 2

    monitor-enter p0

    .line 2058
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needPendingStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2059
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needTask:Z

    if-eqz v0, :cond_0

    .line 2061
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2063
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2065
    :cond_1
    :try_start_2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2057
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getNeedClientAuth()Z
    .locals 2

    .line 2138
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    sget-object v1, Lio/netty/handler/ssl/ClientAuth;->REQUIRE:Lio/netty/handler/ssl/ClientAuth;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNegotiatedApplicationProtocol()Ljava/lang/String;
    .locals 1

    .line 2282
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->applicationProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getOcspResponse()[B
    .locals 2

    .line 470
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->enableOcsp:Z

    if-eqz v0, :cond_2

    .line 474
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-eqz v0, :cond_1

    .line 478
    monitor-enter p0

    .line 479
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    monitor-exit p0

    return-object v0

    .line 482
    :cond_0
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getOcspResponse(J)[B

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 475
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a client SSLEngine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OCSP stapling is not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 4

    monitor-enter p0

    .line 2205
    :try_start_0
    invoke-super {p0}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 2207
    .local v0, "sslParameters":Ljavax/net/ssl/SSLParameters;
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v1

    .line 2208
    .local v1, "version":I
    const/4 v2, 0x7

    if-lt v1, v2, :cond_3

    .line 2209
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->endPointIdentificationAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 2210
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->algorithmConstraints:Ljava/lang/Object;

    invoke-static {v0, v2}, Lio/netty/handler/ssl/Java7SslParametersUtils;->setAlgorithmConstraints(Ljavax/net/ssl/SSLParameters;Ljava/lang/Object;)V

    .line 2211
    const/16 v2, 0x8

    if-lt v1, v2, :cond_3

    .line 2212
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sniHostNames:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 2213
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sniHostNames:Ljava/util/List;

    invoke-static {v0, v2}, Lio/netty/handler/ssl/Java8SslUtils;->setSniHostNames(Ljavax/net/ssl/SSLParameters;Ljava/util/List;)V

    .line 2215
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2216
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    .line 2217
    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->getOptions(J)I

    move-result v2

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_CIPHER_SERVER_PREFERENCE:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2216
    :goto_0
    invoke-static {v0, v2}, Lio/netty/handler/ssl/Java8SslUtils;->setUseCipherSuitesOrder(Ljavax/net/ssl/SSLParameters;Z)V

    .line 2220
    :cond_2
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->matchers:Ljava/util/Collection;

    invoke-static {v0, v2}, Lio/netty/handler/ssl/Java8SslUtils;->setSNIMatchers(Ljavax/net/ssl/SSLParameters;Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2223
    :cond_3
    monitor-exit p0

    return-object v0

    .line 2204
    .end local v0    # "sslParameters":Ljavax/net/ssl/SSLParameters;
    .end local v1    # "version":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .line 1876
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    return-object v0
.end method

.method public final getSupportedCipherSuites()[Ljava/lang/String;
    .locals 2

    .line 1638
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_CIPHER_SUITES:Ljava/util/Set;

    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getSupportedProtocols()[Ljava/lang/String;
    .locals 2

    .line 1737
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->SUPPORTED_PROTOCOLS_SET:Ljava/util/Set;

    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getUseClientMode()Z
    .locals 1

    .line 2128
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    return v0
.end method

.method public final getWantClientAuth()Z
    .locals 2

    .line 2148
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    sget-object v1, Lio/netty/handler/ssl/ClientAuth;->OPTIONAL:Lio/netty/handler/ssl/ClientAuth;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final initHandshakeException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1955
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingException:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1956
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingException:Ljava/lang/Throwable;

    goto :goto_0

    .line 1958
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingException:Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 1960
    :goto_0
    return-void
.end method

.method public final declared-synchronized isInboundDone()Z
    .locals 1

    monitor-enter p0

    .line 1578
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1578
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isOutboundDone()Z
    .locals 4

    monitor-enter p0

    .line 1633
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->outboundClosed:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 1633
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isSessionReused()Z
    .locals 2

    monitor-enter p0

    .line 439
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 440
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 442
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->isSessionReused(J)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 438
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized masterKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 3

    monitor-enter p0

    .line 432
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 433
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 435
    :cond_0
    :try_start_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSL;->getMasterKey(J)[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 431
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized maxEncryptedPacketLength()I
    .locals 1

    monitor-enter p0

    .line 693
    :try_start_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxEncryptedPacketLength0()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 693
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final maxEncryptedPacketLength0()I
    .locals 2

    .line 701
    iget v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapOverhead:I

    sget v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_PLAINTEXT_LENGTH:I

    add-int/2addr v0, v1

    return v0
.end method

.method final declared-synchronized maxWrapOverhead()I
    .locals 1

    monitor-enter p0

    .line 686
    :try_start_0
    iget v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapOverhead:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 686
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final refCnt()I
    .locals 1

    .line 488
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->refCnt()I

    move-result v0

    return v0
.end method

.method public final release()Z
    .locals 1

    .line 517
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->release()Z

    move-result v0

    return v0
.end method

.method public final release(I)Z
    .locals 1
    .param p1, "decrement"    # I

    .line 522
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0, p1}, Lio/netty/util/AbstractReferenceCounted;->release(I)Z

    move-result v0

    return v0
.end method

.method public final retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 493
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->retain()Lio/netty/util/ReferenceCounted;

    .line 494
    return-object p0
.end method

.method public final retain(I)Lio/netty/util/ReferenceCounted;
    .locals 1
    .param p1, "increment"    # I

    .line 499
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0, p1}, Lio/netty/util/AbstractReferenceCounted;->retain(I)Lio/netty/util/ReferenceCounted;

    .line 500
    return-object p0
.end method

.method public final setEnableSessionCreation(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 2192
    if-nez p1, :cond_0

    .line 2195
    return-void

    .line 2193
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 9
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .line 1682
    const-string v0, "cipherSuites"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1685
    .local v0, "buf":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1687
    .local v1, "bufTLSv13":Ljava/lang/StringBuilder;
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isBoringSSL()Z

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lio/netty/handler/ssl/CipherSuiteConverter;->convertToCipherStrings(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Z)V

    .line 1688
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1689
    .local v2, "cipherSuiteSpec":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1691
    .local v3, "cipherSuiteSpecTLSv13":Ljava/lang/String;
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isTlsv13Supported()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1692
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "TLSv1.3 is not supported by this java version."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1694
    :cond_1
    :goto_0
    monitor-enter p0

    .line 1695
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    .line 1698
    :try_start_1
    iget-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v6}, Lio/netty/internal/tcnative/SSL;->setCipherSuites(JLjava/lang/String;Z)Z

    .line 1699
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isTlsv13Supported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1701
    iget-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    sget-object v7, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v7, v3}, Lio/netty/handler/ssl/OpenSsl;->checkTls13Ciphers(Lio/netty/util/internal/logging/InternalLogger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v4, v5, v7, v8}, Lio/netty/internal/tcnative/SSL;->setCipherSuites(JLjava/lang/String;Z)Z

    .line 1706
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->explicitlyEnabledProtocols:[Ljava/lang/String;

    array-length v5, v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 1707
    .local v4, "protocols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->explicitlyEnabledProtocols:[Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1711
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1712
    const-string v5, "TLSv1"

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1713
    const-string v5, "TLSv1.1"

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1714
    const-string v5, "TLSv1.2"

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1715
    const-string v5, "SSLv3"

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1716
    const-string v5, "SSLv2"

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1717
    const-string v5, "SSLv2Hello"

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1720
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1721
    const-string v5, "TLSv1.3"

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1725
    :cond_4
    sget-object v5, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->setEnabledProtocols0([Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1728
    .end local v4    # "protocols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 1732
    :try_start_2
    monitor-exit p0

    .line 1733
    return-void

    .line 1726
    :catch_0
    move-exception v4

    .line 1727
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to enable cipher suites: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "bufTLSv13":Ljava/lang/StringBuilder;
    .end local v2    # "cipherSuiteSpec":Ljava/lang/String;
    .end local v3    # "cipherSuiteSpecTLSv13":Ljava/lang/String;
    .end local p1    # "cipherSuites":[Ljava/lang/String;
    throw v5

    .line 1730
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "bufTLSv13":Ljava/lang/StringBuilder;
    .restart local v2    # "cipherSuiteSpec":Ljava/lang/String;
    .restart local v3    # "cipherSuiteSpecTLSv13":Ljava/lang/String;
    .restart local p1    # "cipherSuites":[Ljava/lang/String;
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to enable cipher suites: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "bufTLSv13":Ljava/lang/StringBuilder;
    .end local v2    # "cipherSuiteSpec":Ljava/lang/String;
    .end local v3    # "cipherSuiteSpecTLSv13":Ljava/lang/String;
    .end local p1    # "cipherSuites":[Ljava/lang/String;
    throw v4

    .line 1732
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "bufTLSv13":Ljava/lang/StringBuilder;
    .restart local v2    # "cipherSuiteSpec":Ljava/lang/String;
    .restart local v3    # "cipherSuiteSpecTLSv13":Ljava/lang/String;
    .restart local p1    # "cipherSuites":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public final setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 1792
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->setEnabledProtocols0([Ljava/lang/String;Z)V

    .line 1793
    return-void
.end method

.method final setKeyMaterial(Lio/netty/handler/ssl/OpenSslKeyMaterial;)Z
    .locals 7
    .param p1, "keyMaterial"    # Lio/netty/handler/ssl/OpenSslKeyMaterial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 421
    monitor-enter p0

    .line 422
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 425
    :cond_0
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-interface {p1}, Lio/netty/handler/ssl/OpenSslKeyMaterial;->certificateChainAddress()J

    move-result-wide v3

    invoke-interface {p1}, Lio/netty/handler/ssl/OpenSslKeyMaterial;->privateKeyAddress()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lio/netty/internal/tcnative/SSL;->setKeyMaterial(JJJ)V

    .line 426
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {p1}, Lio/netty/handler/ssl/OpenSslKeyMaterial;->certificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/handler/ssl/OpenSslSession;->setLocalCertificate([Ljava/security/cert/Certificate;)V

    .line 428
    const/4 v0, 0x1

    return v0

    .line 426
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final setNeedClientAuth(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 2133
    if-eqz p1, :cond_0

    sget-object v0, Lio/netty/handler/ssl/ClientAuth;->REQUIRE:Lio/netty/handler/ssl/ClientAuth;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/ssl/ClientAuth;->NONE:Lio/netty/handler/ssl/ClientAuth;

    :goto_0
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->setClientAuth(Lio/netty/handler/ssl/ClientAuth;)V

    .line 2134
    return-void
.end method

.method public setOcspResponse([B)V
    .locals 2
    .param p1, "response"    # [B

    .line 450
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->enableOcsp:Z

    if-eqz v0, :cond_2

    .line 454
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-nez v0, :cond_1

    .line 458
    monitor-enter p0

    .line 459
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1, p1}, Lio/netty/internal/tcnative/SSL;->setOcspResponse(J[B)V

    .line 462
    :cond_0
    monitor-exit p0

    .line 463
    return-void

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 455
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a server SSLEngine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OCSP stapling is not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 7
    .param p1, "sslParameters"    # Ljavax/net/ssl/SSLParameters;

    monitor-enter p0

    .line 2229
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    .line 2230
    .local v0, "version":I
    const/4 v1, 0x7

    if-lt v0, v1, :cond_7

    .line 2231
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v1

    if-nez v1, :cond_6

    .line 2235
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v1

    .line 2236
    .local v1, "isDestroyed":Z
    const/16 v2, 0x8

    if-lt v0, v2, :cond_4

    .line 2237
    if-nez v1, :cond_3

    .line 2238
    iget-boolean v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-eqz v2, :cond_1

    .line 2239
    invoke-static {p1}, Lio/netty/handler/ssl/Java8SslUtils;->getSniHostNames(Ljavax/net/ssl/SSLParameters;)Ljava/util/List;

    move-result-object v2

    .line 2240
    .local v2, "sniHostNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2241
    .local v4, "name":Ljava/lang/String;
    iget-wide v5, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v5, v6, v4}, Lio/netty/internal/tcnative/SSL;->setTlsExtHostName(JLjava/lang/String;)V

    .line 2242
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_0

    .line 2243
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_0
    iput-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sniHostNames:Ljava/util/List;

    .line 2245
    .end local v2    # "sniHostNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-static {p1}, Lio/netty/handler/ssl/Java8SslUtils;->getUseCipherSuitesOrder(Ljavax/net/ssl/SSLParameters;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2246
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    sget v4, Lio/netty/internal/tcnative/SSL;->SSL_OP_CIPHER_SERVER_PREFERENCE:I

    invoke-static {v2, v3, v4}, Lio/netty/internal/tcnative/SSL;->setOptions(JI)V

    goto :goto_1

    .line 2248
    :cond_2
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    sget v4, Lio/netty/internal/tcnative/SSL;->SSL_OP_CIPHER_SERVER_PREFERENCE:I

    invoke-static {v2, v3, v4}, Lio/netty/internal/tcnative/SSL;->clearOptions(JI)V

    .line 2251
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getSNIMatchers()Ljava/util/Collection;

    move-result-object v2

    iput-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->matchers:Ljava/util/Collection;

    .line 2254
    :cond_4
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 2255
    .local v2, "endPointIdentificationAlgorithm":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 2258
    iget-boolean v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-eqz v3, :cond_5

    invoke-static {v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isEndPointVerificationEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2259
    iget-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Lio/netty/internal/tcnative/SSL;->setVerify(JII)V

    .line 2262
    :cond_5
    iput-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->endPointIdentificationAlgorithm:Ljava/lang/String;

    .line 2263
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v3

    iput-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->algorithmConstraints:Ljava/lang/Object;

    goto :goto_2

    .line 2232
    .end local v1    # "isDestroyed":Z
    .end local v2    # "endPointIdentificationAlgorithm":Ljava/lang/String;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "AlgorithmConstraints are not supported."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2265
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2266
    monitor-exit p0

    return-void

    .line 2228
    .end local v0    # "version":I
    .end local p1    # "sslParameters":Ljavax/net/ssl/SSLParameters;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final setSessionId(Lio/netty/handler/ssl/OpenSslSessionId;)V
    .locals 1
    .param p1, "id"    # Lio/netty/handler/ssl/OpenSslSessionId;

    .line 2355
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v0, p1}, Lio/netty/handler/ssl/OpenSslSession;->setSessionId(Lio/netty/handler/ssl/OpenSslSessionId;)V

    .line 2356
    return-void
.end method

.method public final setUseClientMode(Z)V
    .locals 1
    .param p1, "clientMode"    # Z

    .line 2121
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-ne p1, v0, :cond_0

    .line 2124
    return-void

    .line 2122
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final declared-synchronized setVerify(II)V
    .locals 2
    .param p1, "verifyMode"    # I
    .param p2, "depth"    # I

    monitor-enter p0

    .line 2157
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2158
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1, p1, p2}, Lio/netty/internal/tcnative/SSL;->setVerify(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2160
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_0
    monitor-exit p0

    return-void

    .line 2156
    .end local p1    # "verifyMode":I
    .end local p2    # "depth":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setWantClientAuth(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 2143
    if-eqz p1, :cond_0

    sget-object v0, Lio/netty/handler/ssl/ClientAuth;->OPTIONAL:Lio/netty/handler/ssl/ClientAuth;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/ssl/ClientAuth;->NONE:Lio/netty/handler/ssl/ClientAuth;

    :goto_0
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->setClientAuth(Lio/netty/handler/ssl/ClientAuth;)V

    .line 2144
    return-void
.end method

.method public final declared-synchronized shutdown()V
    .locals 4

    monitor-enter p0

    .line 565
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->destroyed:Z

    if-nez v0, :cond_1

    .line 566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->destroyed:Z

    .line 570
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-interface {v1, v2, v3}, Lio/netty/handler/ssl/OpenSslEngineMap;->remove(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 573
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_0
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSL;->freeSSL(J)V

    .line 574
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    iput-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    .line 576
    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->outboundClosed:Z

    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone:Z

    .line 580
    :cond_1
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->clearError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    monitor-exit p0

    return-void

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized sslPending()I
    .locals 1

    monitor-enter p0

    .line 728
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sslPending0()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 728
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized sslPointer()J
    .locals 2

    monitor-enter p0

    .line 558
    :try_start_0
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 558
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 505
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->touch()Lio/netty/util/ReferenceCounted;

    .line 506
    return-object p0
.end method

.method public final touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 1
    .param p1, "hint"    # Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0, p1}, Lio/netty/util/AbstractReferenceCounted;->touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;

    .line 512
    return-object p0
.end method

.method public final declared-synchronized unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 1485
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleDstBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1487
    :try_start_1
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V

    .line 1488
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleDstBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1485
    monitor-exit p0

    return-object v0

    .line 1487
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V

    .line 1488
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleDstBuffer()V

    .line 1489
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1484
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "dst":Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 1495
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1497
    :try_start_1
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1495
    monitor-exit p0

    return-object v0

    .line 1497
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V

    .line 1498
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1494
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "dsts":[Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 7
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 1467
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1469
    :try_start_1
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1467
    monitor-exit p0

    return-object v0

    .line 1469
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V

    .line 1470
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1466
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p3    # "offset":I
    .end local p4    # "length":I
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 25
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .param p4, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p5, "dstsOffset"    # I
    .param p6, "dstsLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1129
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    const-string v0, "srcs"

    invoke-static {v2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNullWithIAE(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1130
    array-length v0, v2

    if-ge v3, v0, :cond_38

    add-int v0, v3, v4

    array-length v8, v2

    if-gt v0, v8, :cond_38

    .line 1136
    const-string v0, "dsts"

    invoke-static {v5, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNullWithIAE(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1137
    array-length v0, v5

    if-ge v6, v0, :cond_37

    add-int v0, v6, v7

    array-length v8, v5

    if-gt v0, v8, :cond_37

    .line 1142
    const-wide/16 v8, 0x0

    .line 1143
    .local v8, "capacity":J
    add-int v10, v6, v7

    .line 1144
    .local v10, "dstsEndOffset":I
    move/from16 v0, p5

    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_1

    .line 1145
    aget-object v11, v5, v0

    const-string v12, "dsts"

    invoke-static {v11, v0, v12}, Lio/netty/util/internal/ObjectUtil;->checkNotNullArrayParam(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    .line 1146
    .local v11, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1149
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v8, v12

    .line 1144
    .end local v11    # "dst":Ljava/nio/ByteBuffer;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1147
    .restart local v11    # "dst":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v12, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v12}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v12

    .line 1152
    .end local v0    # "i":I
    .end local v11    # "dst":Ljava/nio/ByteBuffer;
    :cond_1
    add-int v11, v3, v4

    .line 1153
    .local v11, "srcsEndOffset":I
    const-wide/16 v12, 0x0

    .line 1154
    .local v12, "len":J
    move/from16 v0, p2

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v11, :cond_2

    .line 1155
    aget-object v14, v2, v0

    const-string v15, "srcs"

    invoke-static {v14, v0, v15}, Lio/netty/util/internal/ObjectUtil;->checkNotNullArrayParam(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    .line 1156
    .local v14, "src":Ljava/nio/ByteBuffer;
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    move-object/from16 v16, v14

    .end local v14    # "src":Ljava/nio/ByteBuffer;
    .local v16, "src":Ljava/nio/ByteBuffer;
    int-to-long v14, v15

    add-long/2addr v12, v14

    .line 1154
    .end local v16    # "src":Ljava/nio/ByteBuffer;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1159
    .end local v0    # "i":I
    :cond_2
    monitor-enter p0

    .line 1160
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_15

    if-eqz v0, :cond_5

    .line 1161
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isOutboundDone()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    goto :goto_3

    :cond_4
    :goto_2
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 1367
    :catchall_0
    move-exception v0

    move/from16 v16, v6

    move-wide/from16 v17, v8

    move-wide/from16 v21, v12

    move v13, v10

    goto/16 :goto_19

    .line 1164
    :cond_5
    :try_start_2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 1165
    .local v0, "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget-object v14, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 1167
    .local v14, "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    iget-object v15, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    move-object/from16 v16, v0

    .end local v0    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .local v16, "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_15

    const/4 v4, 0x0

    if-eq v15, v0, :cond_a

    .line 1168
    :try_start_3
    iget-object v0, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v15, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_EXPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v0, v15, :cond_6

    .line 1170
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_IMPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    iput-object v0, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 1173
    :cond_6
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    .line 1175
    .end local v16    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v0    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v15, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v15, :cond_7

    .line 1176
    invoke-direct {v1, v0, v4, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    monitor-exit p0

    return-object v4

    .line 1179
    :cond_7
    sget-object v15, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v15, :cond_8

    .line 1180
    sget-object v4, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit p0

    return-object v4

    .line 1183
    :cond_8
    iget-boolean v15, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone:Z

    if-eqz v15, :cond_9

    .line 1184
    sget-object v4, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v4

    .line 1183
    :cond_9
    move-object v15, v0

    goto :goto_4

    .line 1167
    .end local v0    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v16    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_a
    move-object/from16 v15, v16

    .line 1188
    .end local v16    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .local v15, "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_4
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sslPending0()I

    move-result v0

    .line 1194
    .local v0, "sslPending":I
    iget-boolean v4, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_15

    const-wide/16 v17, 0x0

    if-nez v4, :cond_e

    :try_start_5
    sget-object v4, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eq v14, v4, :cond_b

    move/from16 v19, v0

    goto :goto_5

    .line 1231
    :cond_b
    cmp-long v4, v12, v17

    if-nez v4, :cond_c

    if-gtz v0, :cond_c

    .line 1232
    :try_start_6
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    move/from16 v19, v0

    const/4 v0, 0x0

    .end local v0    # "sslPending":I
    .local v19, "sslPending":I
    invoke-direct {v1, v4, v15, v0, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1231
    .end local v19    # "sslPending":I
    .restart local v0    # "sslPending":I
    :cond_c
    move/from16 v19, v0

    .line 1233
    .end local v0    # "sslPending":I
    .restart local v19    # "sslPending":I
    cmp-long v0, v8, v17

    if-nez v0, :cond_d

    .line 1234
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v15, v4, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-object v0

    .line 1236
    :cond_d
    const-wide/32 v6, 0x7fffffff

    :try_start_7
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v0, v6

    move-object/from16 v20, v14

    .local v0, "packetLength":I
    goto/16 :goto_6

    .line 1367
    .end local v0    # "packetLength":I
    .end local v14    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .end local v15    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v19    # "sslPending":I
    :catchall_1
    move-exception v0

    move/from16 v16, p5

    move-wide/from16 v17, v8

    move-wide/from16 v21, v12

    move v13, v10

    goto/16 :goto_19

    .line 1194
    .local v0, "sslPending":I
    .restart local v14    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .restart local v15    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_e
    move/from16 v19, v0

    .line 1199
    .end local v0    # "sslPending":I
    .restart local v19    # "sslPending":I
    :goto_5
    const-wide/16 v6, 0x5

    cmp-long v0, v12, v6

    if-gez v0, :cond_f

    .line 1200
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v15, v4, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-object v0

    .line 1203
    :cond_f
    :try_start_8
    invoke-static/range {p1 .. p2}, Lio/netty/handler/ssl/SslUtils;->getEncryptedPacketLength([Ljava/nio/ByteBuffer;I)I

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_15

    .line 1204
    .local v0, "packetLength":I
    const/4 v4, -0x2

    if-eq v0, v4, :cond_36

    .line 1208
    add-int/lit8 v4, v0, -0x5

    .line 1209
    .local v4, "packetLengthDataOnly":I
    int-to-long v6, v4

    cmp-long v6, v6, v8

    if-lez v6, :cond_11

    .line 1212
    :try_start_9
    sget v6, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_RECORD_SIZE:I

    if-gt v4, v6, :cond_10

    .line 1221
    iget-object v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v6, v4}, Lio/netty/handler/ssl/OpenSslSession;->tryExpandApplicationBufferSize(I)V

    .line 1223
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v7, 0x0

    invoke-direct {v1, v6, v15, v7, v7}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v6

    monitor-exit p0

    return-object v6

    .line 1218
    :cond_10
    new-instance v6, Ljavax/net/ssl/SSLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v14

    .end local v14    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .local v20, "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    const-string v14, "Illegal packet length: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, " > "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v14, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    .line 1219
    invoke-interface {v14}, Lio/netty/handler/ssl/OpenSslSession;->getApplicationBufferSize()I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .end local v8    # "capacity":J
    .end local v10    # "dstsEndOffset":I
    .end local v11    # "srcsEndOffset":I
    .end local v12    # "len":J
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    throw v6

    .line 1226
    .end local v20    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .restart local v8    # "capacity":J
    .restart local v10    # "dstsEndOffset":I
    .restart local v11    # "srcsEndOffset":I
    .restart local v12    # "len":J
    .restart local v14    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "dstsOffset":I
    .restart local p6    # "dstsLength":I
    :cond_11
    move-object/from16 v20, v14

    .end local v14    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .restart local v20    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    int-to-long v6, v0

    cmp-long v6, v12, v6

    if-gez v6, :cond_12

    .line 1229
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v7, 0x0

    invoke-direct {v1, v6, v15, v7, v7}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v6

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return-object v6

    .line 1231
    .end local v4    # "packetLengthDataOnly":I
    :cond_12
    nop

    .line 1240
    :goto_6
    if-ge v3, v11, :cond_35

    .line 1243
    cmp-long v4, v8, v17

    if-lez v4, :cond_34

    .line 1246
    const/4 v4, 0x0

    .line 1247
    .local v4, "bytesProduced":I
    const/4 v6, 0x0

    move v7, v4

    move v14, v6

    move/from16 v4, p5

    move v6, v0

    .line 1251
    .end local v0    # "packetLength":I
    .end local p2    # "srcsOffset":I
    .end local p5    # "dstsOffset":I
    .local v3, "srcsOffset":I
    .local v4, "dstsOffset":I
    .local v6, "packetLength":I
    .local v7, "bytesProduced":I
    .local v14, "bytesConsumed":I
    :goto_7
    :try_start_a
    aget-object v0, v2, v3

    move-object/from16 p2, v0

    .line 1252
    .local p2, "src":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_13

    move/from16 p5, v0

    .line 1255
    .local p5, "remaining":I
    move/from16 v16, v4

    move/from16 v4, p5

    .end local p5    # "remaining":I
    .local v4, "remaining":I
    .local v16, "dstsOffset":I
    if-nez v4, :cond_15

    .line 1256
    if-gtz v19, :cond_14

    .line 1259
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v11, :cond_13

    .line 1260
    move-wide/from16 v17, v8

    move-wide/from16 v21, v12

    move v13, v10

    goto/16 :goto_14

    .line 1259
    :cond_13
    move/from16 v4, v16

    goto :goto_7

    .line 1264
    :cond_14
    const/4 v0, 0x0

    .line 1265
    .local v0, "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    move-wide/from16 v17, v8

    .end local v8    # "capacity":J
    .local v17, "capacity":J
    :try_start_b
    iget-wide v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v8, v9}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object/from16 v9, p2

    move/from16 p2, v4

    move v4, v14

    move v14, v8

    move v8, v7

    move v7, v6

    move-object v6, v0

    .local v8, "pendingEncryptedBytes":I
    goto :goto_8

    .line 1357
    .end local v0    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local v4    # "remaining":I
    .end local v8    # "pendingEncryptedBytes":I
    .end local p2    # "src":Ljava/nio/ByteBuffer;
    :catchall_2
    move-exception v0

    move-wide/from16 v21, v12

    move v13, v10

    goto/16 :goto_18

    .line 1270
    .end local v17    # "capacity":J
    .restart local v4    # "remaining":I
    .local v8, "capacity":J
    .restart local p2    # "src":Ljava/nio/ByteBuffer;
    :cond_15
    move-wide/from16 v17, v8

    .end local v8    # "capacity":J
    .restart local v17    # "capacity":J
    :try_start_c
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_12

    move v8, v0

    .line 1272
    .local v8, "pendingEncryptedBytes":I
    move-object/from16 v9, p2

    .end local p2    # "src":Ljava/nio/ByteBuffer;
    .local v9, "src":Ljava/nio/ByteBuffer;
    :try_start_d
    invoke-direct {v1, v9, v8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->writeEncryptedData(Ljava/nio/ByteBuffer;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_12

    .line 1276
    .restart local v0    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    move/from16 p2, v4

    move v4, v14

    move v14, v8

    move v8, v7

    move v7, v6

    move-object v6, v0

    .line 1280
    .end local v0    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .local v4, "bytesConsumed":I
    .local v6, "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .local v7, "packetLength":I
    .local v8, "bytesProduced":I
    .local v14, "pendingEncryptedBytes":I
    .local p2, "remaining":I
    :goto_8
    :try_start_e
    aget-object v0, v5, v16

    move-object/from16 p5, v0

    .line 1281
    .local p5, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p5 .. p5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    if-nez v0, :cond_18

    .line 1283
    move-wide/from16 v21, v12

    .end local v12    # "len":J
    .local v21, "len":J
    add-int/lit8 v12, v16, 0x1

    .end local v16    # "dstsOffset":I
    .local v12, "dstsOffset":I
    if-lt v12, v10, :cond_17

    .line 1351
    if-eqz v6, :cond_16

    .line 1352
    :try_start_f
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_9

    .line 1357
    .end local v6    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local v9    # "src":Ljava/nio/ByteBuffer;
    .end local v14    # "pendingEncryptedBytes":I
    .end local p2    # "remaining":I
    .end local p5    # "dst":Ljava/nio/ByteBuffer;
    :catchall_3
    move-exception v0

    move v14, v4

    move v6, v7

    move v7, v8

    move v13, v10

    move/from16 v16, v12

    goto/16 :goto_18

    :cond_16
    :goto_9
    move v14, v4

    move v6, v7

    move v7, v8

    move v13, v10

    move/from16 v16, v12

    goto/16 :goto_14

    .line 1283
    .restart local v6    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .restart local v9    # "src":Ljava/nio/ByteBuffer;
    .restart local v14    # "pendingEncryptedBytes":I
    .restart local p2    # "remaining":I
    .restart local p5    # "dst":Ljava/nio/ByteBuffer;
    :cond_17
    move/from16 v16, v12

    move-wide/from16 v12, v21

    goto :goto_8

    .line 1291
    .end local v21    # "len":J
    .local v12, "len":J
    .restart local v16    # "dstsOffset":I
    :cond_18
    move-wide/from16 v21, v12

    .end local v12    # "len":J
    .restart local v21    # "len":J
    move-object/from16 v12, p5

    .end local p5    # "dst":Ljava/nio/ByteBuffer;
    .local v12, "dst":Ljava/nio/ByteBuffer;
    :try_start_10
    invoke-direct {v1, v12}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->readPlaintextData(Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    .line 1295
    .local v0, "bytesRead":I
    nop

    .line 1299
    move/from16 p5, v3

    .end local v3    # "srcsOffset":I
    .local p5, "srcsOffset":I
    :try_start_11
    iget-wide v2, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v2

    sub-int v2, v14, v2

    .line 1300
    .local v2, "localBytesConsumed":I
    add-int/2addr v4, v2

    .line 1301
    sub-int/2addr v7, v2

    .line 1302
    sub-int/2addr v14, v2

    .line 1303
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 1305
    if-lez v0, :cond_21

    .line 1306
    add-int/2addr v8, v0

    .line 1308
    :try_start_12
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1309
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sslPending0()I

    move-result v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    move/from16 v19, v3

    .line 1311
    add-int/lit8 v3, v16, 0x1

    .end local v16    # "dstsOffset":I
    .local v3, "dstsOffset":I
    if-lt v3, v10, :cond_1c

    .line 1312
    if-lez v19, :cond_19

    :try_start_13
    sget-object v13, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 1313
    invoke-direct {v1, v13, v15, v4, v8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v13
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    goto :goto_b

    .line 1351
    .end local v0    # "bytesRead":I
    .end local v2    # "localBytesConsumed":I
    .end local v12    # "dst":Ljava/nio/ByteBuffer;
    :catchall_4
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v24, v9

    move v13, v10

    goto/16 :goto_17

    .line 1314
    .restart local v0    # "bytesRead":I
    .restart local v2    # "localBytesConsumed":I
    .restart local v12    # "dst":Ljava/nio/ByteBuffer;
    :cond_19
    :try_start_14
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v13
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    if-eqz v13, :cond_1a

    :try_start_15
    sget-object v13, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    goto :goto_a

    :cond_1a
    :try_start_16
    sget-object v13, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_a
    invoke-direct {v1, v13, v15, v4, v8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v13
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :goto_b
    nop

    .line 1351
    if-eqz v6, :cond_1b

    .line 1352
    :try_start_17
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    goto :goto_c

    .line 1357
    .end local v0    # "bytesRead":I
    .end local v2    # "localBytesConsumed":I
    .end local v6    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local v9    # "src":Ljava/nio/ByteBuffer;
    .end local v12    # "dst":Ljava/nio/ByteBuffer;
    .end local v14    # "pendingEncryptedBytes":I
    .end local p2    # "remaining":I
    :catchall_5
    move-exception v0

    move/from16 v16, v3

    move v14, v4

    move v6, v7

    move v7, v8

    move v13, v10

    move/from16 v3, p5

    goto/16 :goto_18

    .restart local v0    # "bytesRead":I
    .restart local v2    # "localBytesConsumed":I
    .restart local v6    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .restart local v9    # "src":Ljava/nio/ByteBuffer;
    .restart local v12    # "dst":Ljava/nio/ByteBuffer;
    .restart local v14    # "pendingEncryptedBytes":I
    .restart local p2    # "remaining":I
    :cond_1b
    :goto_c
    move/from16 v23, v2

    move/from16 v16, v3

    .end local v2    # "localBytesConsumed":I
    .end local v3    # "dstsOffset":I
    .restart local v16    # "dstsOffset":I
    .local v23, "localBytesConsumed":I
    :try_start_18
    iget-wide v2, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1358
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->rejectRemoteInitiatedRenegotiation()V

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 1312
    return-object v13

    .line 1367
    .end local v0    # "bytesRead":I
    .end local v4    # "bytesConsumed":I
    .end local v6    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local v7    # "packetLength":I
    .end local v8    # "bytesProduced":I
    .end local v9    # "src":Ljava/nio/ByteBuffer;
    .end local v12    # "dst":Ljava/nio/ByteBuffer;
    .end local v14    # "pendingEncryptedBytes":I
    .end local v15    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v19    # "sslPending":I
    .end local v20    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .end local v23    # "localBytesConsumed":I
    .end local p2    # "remaining":I
    :catchall_6
    move-exception v0

    move/from16 v3, p5

    move v13, v10

    goto/16 :goto_19

    .line 1351
    .end local v16    # "dstsOffset":I
    .restart local v3    # "dstsOffset":I
    .restart local v4    # "bytesConsumed":I
    .restart local v6    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .restart local v7    # "packetLength":I
    .restart local v8    # "bytesProduced":I
    .restart local v9    # "src":Ljava/nio/ByteBuffer;
    .restart local v14    # "pendingEncryptedBytes":I
    .restart local v15    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v19    # "sslPending":I
    .restart local v20    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .restart local p2    # "remaining":I
    :catchall_7
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v24, v9

    move v13, v10

    .end local v3    # "dstsOffset":I
    .restart local v16    # "dstsOffset":I
    goto/16 :goto_17

    .line 1311
    .end local v16    # "dstsOffset":I
    .restart local v0    # "bytesRead":I
    .restart local v2    # "localBytesConsumed":I
    .restart local v3    # "dstsOffset":I
    .restart local v12    # "dst":Ljava/nio/ByteBuffer;
    :cond_1c
    move/from16 v23, v2

    move/from16 v16, v3

    .end local v2    # "localBytesConsumed":I
    .end local v3    # "dstsOffset":I
    .restart local v16    # "dstsOffset":I
    .restart local v23    # "localBytesConsumed":I
    goto :goto_d

    .line 1317
    .end local v23    # "localBytesConsumed":I
    .restart local v2    # "localBytesConsumed":I
    :cond_1d
    move/from16 v23, v2

    .end local v2    # "localBytesConsumed":I
    .restart local v23    # "localBytesConsumed":I
    if-eqz v7, :cond_1f

    :try_start_19
    iget-boolean v2, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    if-eqz v2, :cond_1e

    goto :goto_e

    .line 1345
    .end local v0    # "bytesRead":I
    .end local v12    # "dst":Ljava/nio/ByteBuffer;
    .end local v23    # "localBytesConsumed":I
    :cond_1e
    :goto_d
    move-object/from16 v2, p1

    move/from16 v3, p5

    move-wide/from16 v12, v21

    goto/16 :goto_8

    .line 1351
    .restart local v0    # "bytesRead":I
    .restart local v12    # "dst":Ljava/nio/ByteBuffer;
    .restart local v23    # "localBytesConsumed":I
    :cond_1f
    :goto_e
    if-eqz v6, :cond_20

    .line 1352
    :try_start_1a
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    goto :goto_f

    .line 1357
    .end local v0    # "bytesRead":I
    .end local v6    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local v9    # "src":Ljava/nio/ByteBuffer;
    .end local v12    # "dst":Ljava/nio/ByteBuffer;
    .end local v14    # "pendingEncryptedBytes":I
    .end local v23    # "localBytesConsumed":I
    .end local p2    # "remaining":I
    :catchall_8
    move-exception v0

    move/from16 v3, p5

    move v14, v4

    move v6, v7

    move v7, v8

    move v13, v10

    goto/16 :goto_18

    :cond_20
    :goto_f
    move/from16 v3, p5

    move v14, v4

    move v6, v7

    move v7, v8

    move v13, v10

    goto/16 :goto_14

    .line 1351
    .restart local v6    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .restart local v9    # "src":Ljava/nio/ByteBuffer;
    .restart local v14    # "pendingEncryptedBytes":I
    .restart local p2    # "remaining":I
    :catchall_9
    move-exception v0

    move-object/from16 v24, v9

    move v13, v10

    goto/16 :goto_17

    .line 1323
    .restart local v0    # "bytesRead":I
    .restart local v2    # "localBytesConsumed":I
    .restart local v12    # "dst":Ljava/nio/ByteBuffer;
    :cond_21
    move/from16 v23, v2

    .end local v2    # "localBytesConsumed":I
    .restart local v23    # "localBytesConsumed":I
    :try_start_1b
    iget-wide v2, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v2, v3, v0}, Lio/netty/internal/tcnative/SSL;->getError(JI)I

    move-result v2

    .line 1324
    .local v2, "sslError":I
    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_READ:I

    if-eq v2, v3, :cond_2c

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_WRITE:I

    if-ne v2, v3, :cond_22

    .line 1327
    move-object/from16 v24, v9

    move v13, v10

    goto/16 :goto_13

    .line 1328
    :cond_22
    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_ZERO_RETURN:I

    if-ne v2, v3, :cond_26

    .line 1330
    iget-boolean v3, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->receivedShutdown:Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    if-nez v3, :cond_23

    .line 1331
    :try_start_1c
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->closeAll()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 1333
    :cond_23
    :try_start_1d
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    if-eqz v3, :cond_24

    :try_start_1e
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    goto :goto_10

    :cond_24
    :try_start_1f
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_10
    invoke-direct {v1, v3, v15, v4, v8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    .line 1351
    if-eqz v6, :cond_25

    .line 1352
    :try_start_20
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    .line 1357
    :cond_25
    move-object/from16 v24, v9

    move v13, v10

    .end local v9    # "src":Ljava/nio/ByteBuffer;
    .end local v10    # "dstsEndOffset":I
    .local v13, "dstsEndOffset":I
    .local v24, "src":Ljava/nio/ByteBuffer;
    :try_start_21
    iget-wide v9, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v9, v10}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1358
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->rejectRemoteInitiatedRenegotiation()V

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    .line 1333
    return-object v3

    .line 1335
    .end local v13    # "dstsEndOffset":I
    .end local v24    # "src":Ljava/nio/ByteBuffer;
    .restart local v9    # "src":Ljava/nio/ByteBuffer;
    .restart local v10    # "dstsEndOffset":I
    :cond_26
    move-object/from16 v24, v9

    move v13, v10

    .end local v9    # "src":Ljava/nio/ByteBuffer;
    .end local v10    # "dstsEndOffset":I
    .restart local v13    # "dstsEndOffset":I
    .restart local v24    # "src":Ljava/nio/ByteBuffer;
    :try_start_22
    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_X509_LOOKUP:I

    if-eq v2, v3, :cond_29

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_CERTIFICATE_VERIFY:I

    if-eq v2, v3, :cond_29

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_PRIVATE_KEY_OPERATION:I

    if-ne v2, v3, :cond_27

    goto :goto_11

    .line 1341
    :cond_27
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->getLastErrorNumber()I

    move-result v3

    invoke-direct {v1, v2, v3, v4, v8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sslReadErrorResult(IIII)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    .line 1351
    if-eqz v6, :cond_28

    .line 1352
    :try_start_23
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    .line 1357
    :cond_28
    :try_start_24
    iget-wide v9, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v9, v10}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1358
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->rejectRemoteInitiatedRenegotiation()V

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_10

    .line 1341
    return-object v3

    .line 1338
    :cond_29
    :goto_11
    :try_start_25
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v3

    if-eqz v3, :cond_2a

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_12

    :cond_2a
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_12
    sget-object v9, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v1, v3, v9, v4, v8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    .line 1351
    if-eqz v6, :cond_2b

    .line 1352
    :try_start_26
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_f

    .line 1357
    :cond_2b
    :try_start_27
    iget-wide v9, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v9, v10}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1358
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->rejectRemoteInitiatedRenegotiation()V

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_10

    .line 1338
    return-object v3

    .line 1324
    .end local v13    # "dstsEndOffset":I
    .end local v24    # "src":Ljava/nio/ByteBuffer;
    .restart local v9    # "src":Ljava/nio/ByteBuffer;
    .restart local v10    # "dstsEndOffset":I
    :cond_2c
    move-object/from16 v24, v9

    move v13, v10

    .line 1347
    .end local v0    # "bytesRead":I
    .end local v2    # "sslError":I
    .end local v9    # "src":Ljava/nio/ByteBuffer;
    .end local v10    # "dstsEndOffset":I
    .end local v12    # "dst":Ljava/nio/ByteBuffer;
    .end local v23    # "localBytesConsumed":I
    .restart local v13    # "dstsEndOffset":I
    .restart local v24    # "src":Ljava/nio/ByteBuffer;
    :goto_13
    add-int/lit8 v3, p5, 0x1

    .end local p5    # "srcsOffset":I
    .local v3, "srcsOffset":I
    if-lt v3, v11, :cond_30

    .line 1351
    if-eqz v6, :cond_2d

    .line 1352
    :try_start_28
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    .line 1357
    .end local v6    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local v14    # "pendingEncryptedBytes":I
    .end local v24    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "remaining":I
    :cond_2d
    move v14, v4

    move v6, v7

    move v7, v8

    .end local v4    # "bytesConsumed":I
    .end local v8    # "bytesProduced":I
    .local v6, "packetLength":I
    .local v7, "bytesProduced":I
    .local v14, "bytesConsumed":I
    :goto_14
    :try_start_29
    iget-wide v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v8, v9}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1358
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->rejectRemoteInitiatedRenegotiation()V

    .line 1359
    nop

    .line 1362
    iget-boolean v0, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->receivedShutdown:Z

    if-nez v0, :cond_2e

    iget-wide v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v8, v9}, Lio/netty/internal/tcnative/SSL;->getShutdown(J)I

    move-result v0

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_RECEIVED_SHUTDOWN:I

    and-int/2addr v0, v2

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_RECEIVED_SHUTDOWN:I

    if-ne v0, v2, :cond_2e

    .line 1363
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->closeAll()V

    .line 1366
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_15

    :cond_2f
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_15
    invoke-direct {v1, v0, v15, v14, v7}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_16

    return-object v0

    .line 1351
    .restart local v4    # "bytesConsumed":I
    .local v6, "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .local v7, "packetLength":I
    .restart local v8    # "bytesProduced":I
    .local v14, "pendingEncryptedBytes":I
    .restart local v24    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "remaining":I
    :cond_30
    if-eqz v6, :cond_31

    .line 1352
    :try_start_2a
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    goto :goto_16

    .line 1357
    .end local v6    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local v14    # "pendingEncryptedBytes":I
    .end local v24    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "remaining":I
    :catchall_a
    move-exception v0

    move v14, v4

    move v6, v7

    move v7, v8

    goto/16 :goto_18

    .line 1355
    :cond_31
    :goto_16
    move-object/from16 v2, p1

    move v14, v4

    move v6, v7

    move v7, v8

    move v10, v13

    move/from16 v4, v16

    move-wide/from16 v8, v17

    move-wide/from16 v12, v21

    goto/16 :goto_7

    .line 1351
    .end local v3    # "srcsOffset":I
    .end local v13    # "dstsEndOffset":I
    .restart local v6    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .restart local v9    # "src":Ljava/nio/ByteBuffer;
    .restart local v10    # "dstsEndOffset":I
    .restart local v14    # "pendingEncryptedBytes":I
    .restart local p2    # "remaining":I
    .restart local p5    # "srcsOffset":I
    :catchall_b
    move-exception v0

    move-object/from16 v24, v9

    move v13, v10

    .end local v9    # "src":Ljava/nio/ByteBuffer;
    .end local v10    # "dstsEndOffset":I
    .restart local v13    # "dstsEndOffset":I
    .restart local v24    # "src":Ljava/nio/ByteBuffer;
    goto :goto_17

    .end local v13    # "dstsEndOffset":I
    .end local v24    # "src":Ljava/nio/ByteBuffer;
    .end local p5    # "srcsOffset":I
    .restart local v3    # "srcsOffset":I
    .restart local v9    # "src":Ljava/nio/ByteBuffer;
    .restart local v10    # "dstsEndOffset":I
    :catchall_c
    move-exception v0

    move/from16 p5, v3

    move-object/from16 v24, v9

    move v13, v10

    .end local v3    # "srcsOffset":I
    .end local v9    # "src":Ljava/nio/ByteBuffer;
    .end local v10    # "dstsEndOffset":I
    .restart local v13    # "dstsEndOffset":I
    .restart local v24    # "src":Ljava/nio/ByteBuffer;
    .restart local p5    # "srcsOffset":I
    goto :goto_17

    .line 1292
    .end local v13    # "dstsEndOffset":I
    .end local v24    # "src":Ljava/nio/ByteBuffer;
    .end local p5    # "srcsOffset":I
    .restart local v3    # "srcsOffset":I
    .restart local v9    # "src":Ljava/nio/ByteBuffer;
    .restart local v10    # "dstsEndOffset":I
    .restart local v12    # "dst":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    move/from16 p5, v3

    move-object/from16 v24, v9

    move v13, v10

    move-object v2, v0

    .end local v3    # "srcsOffset":I
    .end local v9    # "src":Ljava/nio/ByteBuffer;
    .end local v10    # "dstsEndOffset":I
    .restart local v13    # "dstsEndOffset":I
    .restart local v24    # "src":Ljava/nio/ByteBuffer;
    .restart local p5    # "srcsOffset":I
    move-object v0, v2

    .line 1294
    .local v0, "e":Ljavax/net/ssl/SSLException;
    :try_start_2b
    invoke-direct {v1, v4, v8, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handleUnwrapException(IILjavax/net/ssl/SSLException;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_d

    .line 1351
    if-eqz v6, :cond_32

    .line 1352
    :try_start_2c
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_f

    .line 1357
    :cond_32
    :try_start_2d
    iget-wide v9, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v9, v10}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1358
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->rejectRemoteInitiatedRenegotiation()V

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_10

    .line 1294
    return-object v2

    .line 1351
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    .end local v12    # "dst":Ljava/nio/ByteBuffer;
    :catchall_d
    move-exception v0

    goto :goto_17

    .end local v13    # "dstsEndOffset":I
    .end local v21    # "len":J
    .end local v24    # "src":Ljava/nio/ByteBuffer;
    .end local p5    # "srcsOffset":I
    .restart local v3    # "srcsOffset":I
    .restart local v9    # "src":Ljava/nio/ByteBuffer;
    .restart local v10    # "dstsEndOffset":I
    .local v12, "len":J
    :catchall_e
    move-exception v0

    move/from16 p5, v3

    move-object/from16 v24, v9

    move-wide/from16 v21, v12

    move v13, v10

    .end local v3    # "srcsOffset":I
    .end local v9    # "src":Ljava/nio/ByteBuffer;
    .end local v10    # "dstsEndOffset":I
    .end local v12    # "len":J
    .restart local v13    # "dstsEndOffset":I
    .restart local v21    # "len":J
    .restart local v24    # "src":Ljava/nio/ByteBuffer;
    .restart local p5    # "srcsOffset":I
    :goto_17
    if-eqz v6, :cond_33

    .line 1352
    :try_start_2e
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1354
    :cond_33
    nop

    .end local v4    # "bytesConsumed":I
    .end local v7    # "packetLength":I
    .end local v8    # "bytesProduced":I
    .end local v11    # "srcsEndOffset":I
    .end local v13    # "dstsEndOffset":I
    .end local v15    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v16    # "dstsOffset":I
    .end local v17    # "capacity":J
    .end local v19    # "sslPending":I
    .end local v20    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .end local v21    # "len":J
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "srcsOffset":I
    .end local p6    # "dstsLength":I
    throw v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_f

    .line 1357
    .end local v6    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local v14    # "pendingEncryptedBytes":I
    .end local v24    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "remaining":I
    .restart local v4    # "bytesConsumed":I
    .restart local v7    # "packetLength":I
    .restart local v8    # "bytesProduced":I
    .restart local v11    # "srcsEndOffset":I
    .restart local v13    # "dstsEndOffset":I
    .restart local v15    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v16    # "dstsOffset":I
    .restart local v17    # "capacity":J
    .restart local v19    # "sslPending":I
    .restart local v20    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .restart local v21    # "len":J
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "srcsOffset":I
    .restart local p6    # "dstsLength":I
    :catchall_f
    move-exception v0

    move/from16 v3, p5

    move v14, v4

    move v6, v7

    move v7, v8

    goto :goto_18

    .line 1273
    .end local v13    # "dstsEndOffset":I
    .end local v21    # "len":J
    .end local p5    # "srcsOffset":I
    .restart local v3    # "srcsOffset":I
    .local v4, "remaining":I
    .local v6, "packetLength":I
    .local v7, "bytesProduced":I
    .local v8, "pendingEncryptedBytes":I
    .restart local v9    # "src":Ljava/nio/ByteBuffer;
    .restart local v10    # "dstsEndOffset":I
    .restart local v12    # "len":J
    .local v14, "bytesConsumed":I
    :catch_1
    move-exception v0

    move/from16 p5, v3

    move/from16 p2, v4

    move-object/from16 v24, v9

    move-wide/from16 v21, v12

    move v13, v10

    move-object v2, v0

    .end local v3    # "srcsOffset":I
    .end local v4    # "remaining":I
    .end local v9    # "src":Ljava/nio/ByteBuffer;
    .end local v10    # "dstsEndOffset":I
    .end local v12    # "len":J
    .restart local v13    # "dstsEndOffset":I
    .restart local v21    # "len":J
    .restart local v24    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "remaining":I
    .restart local p5    # "srcsOffset":I
    move-object v0, v2

    .line 1275
    .restart local v0    # "e":Ljavax/net/ssl/SSLException;
    :try_start_2f
    invoke-direct {v1, v14, v7, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handleUnwrapException(IILjavax/net/ssl/SSLException;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_11

    .line 1357
    :try_start_30
    iget-wide v3, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v3, v4}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1358
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->rejectRemoteInitiatedRenegotiation()V

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_10

    .line 1275
    return-object v2

    .line 1367
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    .end local v6    # "packetLength":I
    .end local v7    # "bytesProduced":I
    .end local v8    # "pendingEncryptedBytes":I
    .end local v14    # "bytesConsumed":I
    .end local v15    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v19    # "sslPending":I
    .end local v20    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .end local v24    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "remaining":I
    :catchall_10
    move-exception v0

    move/from16 v3, p5

    goto :goto_19

    .line 1357
    .restart local v6    # "packetLength":I
    .restart local v7    # "bytesProduced":I
    .restart local v14    # "bytesConsumed":I
    .restart local v15    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v19    # "sslPending":I
    .restart local v20    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    :catchall_11
    move-exception v0

    move/from16 v3, p5

    goto :goto_18

    .end local v13    # "dstsEndOffset":I
    .end local v21    # "len":J
    .end local p5    # "srcsOffset":I
    .restart local v3    # "srcsOffset":I
    .restart local v10    # "dstsEndOffset":I
    .restart local v12    # "len":J
    :catchall_12
    move-exception v0

    move/from16 p5, v3

    move-wide/from16 v21, v12

    move v13, v10

    .end local v3    # "srcsOffset":I
    .end local v10    # "dstsEndOffset":I
    .end local v12    # "len":J
    .restart local v13    # "dstsEndOffset":I
    .restart local v21    # "len":J
    .restart local p5    # "srcsOffset":I
    goto :goto_18

    .end local v13    # "dstsEndOffset":I
    .end local v16    # "dstsOffset":I
    .end local v17    # "capacity":J
    .end local v21    # "len":J
    .end local p5    # "srcsOffset":I
    .restart local v3    # "srcsOffset":I
    .local v4, "dstsOffset":I
    .local v8, "capacity":J
    .restart local v10    # "dstsEndOffset":I
    .restart local v12    # "len":J
    :catchall_13
    move-exception v0

    move/from16 p5, v3

    move/from16 v16, v4

    move-wide/from16 v17, v8

    move-wide/from16 v21, v12

    move v13, v10

    .end local v4    # "dstsOffset":I
    .end local v8    # "capacity":J
    .end local v10    # "dstsEndOffset":I
    .end local v12    # "len":J
    .restart local v13    # "dstsEndOffset":I
    .restart local v16    # "dstsOffset":I
    .restart local v17    # "capacity":J
    .restart local v21    # "len":J
    :goto_18
    :try_start_31
    iget-wide v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v8, v9}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1358
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->rejectRemoteInitiatedRenegotiation()V

    .line 1359
    nop

    .end local v3    # "srcsOffset":I
    .end local v11    # "srcsEndOffset":I
    .end local v13    # "dstsEndOffset":I
    .end local v16    # "dstsOffset":I
    .end local v17    # "capacity":J
    .end local v21    # "len":J
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p6    # "dstsLength":I
    throw v0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_16

    .line 1243
    .end local v6    # "packetLength":I
    .end local v7    # "bytesProduced":I
    .end local v14    # "bytesConsumed":I
    .local v0, "packetLength":I
    .restart local v8    # "capacity":J
    .restart local v10    # "dstsEndOffset":I
    .restart local v11    # "srcsEndOffset":I
    .restart local v12    # "len":J
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .local p2, "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .local p5, "dstsOffset":I
    .restart local p6    # "dstsLength":I
    :cond_34
    move-wide/from16 v17, v8

    move-wide/from16 v21, v12

    move v13, v10

    .end local v8    # "capacity":J
    .end local v10    # "dstsEndOffset":I
    .end local v12    # "len":J
    .restart local v13    # "dstsEndOffset":I
    .restart local v17    # "capacity":J
    .restart local v21    # "len":J
    :try_start_32
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v11    # "srcsEndOffset":I
    .end local v13    # "dstsEndOffset":I
    .end local v17    # "capacity":J
    .end local v21    # "len":J
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    throw v2

    .line 1240
    .restart local v8    # "capacity":J
    .restart local v10    # "dstsEndOffset":I
    .restart local v11    # "srcsEndOffset":I
    .restart local v12    # "len":J
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "dstsOffset":I
    .restart local p6    # "dstsLength":I
    :cond_35
    move-wide/from16 v17, v8

    move-wide/from16 v21, v12

    move v13, v10

    .end local v8    # "capacity":J
    .end local v10    # "dstsEndOffset":I
    .end local v12    # "len":J
    .restart local v13    # "dstsEndOffset":I
    .restart local v17    # "capacity":J
    .restart local v21    # "len":J
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v11    # "srcsEndOffset":I
    .end local v13    # "dstsEndOffset":I
    .end local v17    # "capacity":J
    .end local v21    # "len":J
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    throw v2

    .line 1205
    .end local v20    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .restart local v8    # "capacity":J
    .restart local v10    # "dstsEndOffset":I
    .restart local v11    # "srcsEndOffset":I
    .restart local v12    # "len":J
    .local v14, "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "dstsOffset":I
    .restart local p6    # "dstsLength":I
    :cond_36
    move-wide/from16 v17, v8

    move-wide/from16 v21, v12

    move-object/from16 v20, v14

    move v13, v10

    .end local v8    # "capacity":J
    .end local v10    # "dstsEndOffset":I
    .end local v12    # "len":J
    .end local v14    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .restart local v13    # "dstsEndOffset":I
    .restart local v17    # "capacity":J
    .restart local v20    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .restart local v21    # "len":J
    new-instance v2, Lio/netty/handler/ssl/NotSslRecordException;

    const-string v4, "not an SSL/TLS record"

    invoke-direct {v2, v4}, Lio/netty/handler/ssl/NotSslRecordException;-><init>(Ljava/lang/String;)V

    .end local v11    # "srcsEndOffset":I
    .end local v13    # "dstsEndOffset":I
    .end local v17    # "capacity":J
    .end local v21    # "len":J
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    throw v2
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_14

    .line 1367
    .end local v0    # "packetLength":I
    .end local v15    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v19    # "sslPending":I
    .end local v20    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .restart local v11    # "srcsEndOffset":I
    .restart local v13    # "dstsEndOffset":I
    .restart local v17    # "capacity":J
    .restart local v21    # "len":J
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "dstsOffset":I
    .restart local p6    # "dstsLength":I
    :catchall_14
    move-exception v0

    move/from16 v16, p5

    goto :goto_19

    .end local v13    # "dstsEndOffset":I
    .end local v17    # "capacity":J
    .end local v21    # "len":J
    .restart local v8    # "capacity":J
    .restart local v10    # "dstsEndOffset":I
    .restart local v12    # "len":J
    :catchall_15
    move-exception v0

    move-wide/from16 v17, v8

    move-wide/from16 v21, v12

    move v13, v10

    move/from16 v16, p5

    .end local v8    # "capacity":J
    .end local v10    # "dstsEndOffset":I
    .end local v12    # "len":J
    .end local p2    # "srcsOffset":I
    .end local p5    # "dstsOffset":I
    .restart local v3    # "srcsOffset":I
    .restart local v13    # "dstsEndOffset":I
    .restart local v16    # "dstsOffset":I
    .restart local v17    # "capacity":J
    .restart local v21    # "len":J
    :goto_19
    :try_start_33
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_16

    throw v0

    :catchall_16
    move-exception v0

    goto :goto_19

    .line 1138
    .end local v3    # "srcsOffset":I
    .end local v11    # "srcsEndOffset":I
    .end local v13    # "dstsEndOffset":I
    .end local v16    # "dstsOffset":I
    .end local v17    # "capacity":J
    .end local v21    # "len":J
    .restart local p2    # "srcsOffset":I
    .restart local p5    # "dstsOffset":I
    :cond_37
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offset: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v4, p5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", length: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v6, p6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " (expected: offset <= offset + length <= dsts.length ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v7, v5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "))"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1130
    :cond_38
    move v4, v6

    move v6, v7

    .line 1132
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offset: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", length: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v7, p3

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " (expected: offset <= offset + length <= srcs.length ("

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v8, p1

    array-length v9, v8

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "))"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 7
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1442
    array-length v3, p1

    const/4 v5, 0x0

    array-length v6, p2

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 1476
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1478
    :try_start_1
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1476
    monitor-exit p0

    return-object v0

    .line 1478
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V

    .line 1479
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1475
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "dst":Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 21
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 759
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    const-string v6, "srcs"

    invoke-static {v2, v6}, Lio/netty/util/internal/ObjectUtil;->checkNotNullWithIAE(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 760
    const-string v6, "dst"

    invoke-static {v5, v6}, Lio/netty/util/internal/ObjectUtil;->checkNotNullWithIAE(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 762
    array-length v6, v2

    if-ge v3, v6, :cond_5a

    add-int v6, v3, v4

    array-length v7, v2

    if-gt v6, v7, :cond_5a

    .line 768
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v6

    if-nez v6, :cond_59

    .line 772
    monitor-enter p0

    .line 773
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isOutboundDone()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 775
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    sget-object v6, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v6, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-object v6

    .line 778
    :cond_2
    const/4 v6, 0x0

    .line 779
    .local v6, "bytesProduced":I
    const/4 v7, 0x0

    .line 782
    .local v7, "bioReadCopyBuf":Lio/netty/buffer/ByteBuf;
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 783
    iget-wide v9, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static/range {p4 .. p4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->bufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v11

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    int-to-long v13, v8

    add-long/2addr v11, v13

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    const/4 v14, 0x1

    invoke-static/range {v9 .. v14}, Lio/netty/internal/tcnative/SSL;->bioSetByteBuffer(JJIZ)V

    goto :goto_2

    .line 786
    :cond_3
    iget-object v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    invoke-interface {v8, v9}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v8

    move-object v7, v8

    .line 787
    iget-wide v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v7}, Lio/netty/handler/ssl/OpenSsl;->memoryAddress(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v10

    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v12

    const/4 v13, 0x1

    invoke-static/range {v8 .. v13}, Lio/netty/internal/tcnative/SSL;->bioSetByteBuffer(JJIZ)V

    .line 791
    :goto_2
    iget-wide v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v8, v9}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v8

    .line 794
    .local v8, "bioLengthBefore":I
    iget-boolean v9, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->outboundClosed:Z

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_f

    .line 800
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    const/4 v12, 0x2

    invoke-direct {v1, v9, v12, v10}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isBytesAvailableEnoughForWrap(III)Z

    move-result v9

    if-nez v9, :cond_6

    .line 801
    new-instance v9, Ljavax/net/ssl/SSLEngineResult;

    sget-object v10, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v12

    invoke-direct {v9, v10, v12, v11, v11}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1038
    :try_start_2
    iget-wide v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v10, v11}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_4

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3

    .line 1042
    :cond_4
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-gt v10, v11, :cond_5

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v10

    invoke-virtual {v7, v10, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_3
    monitor-exit p0

    .line 801
    return-object v9

    .line 1042
    :cond_5
    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The destination buffer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    :goto_4
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 806
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_6
    :try_start_3
    iget-wide v9, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v9, v10}, Lio/netty/internal/tcnative/SSL;->bioFlushByteBuffer(J)I

    move-result v9

    move v6, v9

    .line 807
    if-gtz v6, :cond_9

    .line 808
    sget-object v9, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v1, v9, v11, v11}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1038
    :try_start_4
    iget-wide v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v10, v11}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_7

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_5

    .line 1042
    :cond_7
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-gt v10, v11, :cond_8

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v10

    invoke-virtual {v7, v10, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_5
    monitor-exit p0

    .line 808
    return-object v9

    .line 1042
    :cond_8
    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The destination buffer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    .line 813
    :cond_9
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->doSSLShutdown()Z

    move-result v9

    if-nez v9, :cond_c

    .line 814
    sget-object v9, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v1, v9, v11, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1038
    :try_start_6
    iget-wide v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v10, v11}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_a

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_6

    .line 1042
    :cond_a
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-gt v10, v11, :cond_b

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v10

    invoke-virtual {v7, v10, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_6
    monitor-exit p0

    .line 814
    return-object v9

    .line 1042
    :cond_b
    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The destination buffer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_4

    .line 816
    :cond_c
    :try_start_7
    iget-wide v9, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v9, v10}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v9

    sub-int v6, v8, v9

    .line 817
    sget-object v9, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v1, v9, v11, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1038
    :try_start_8
    iget-wide v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v10, v11}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_d

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_7

    .line 1042
    :cond_d
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-gt v10, v11, :cond_e

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v10

    invoke-virtual {v7, v10, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_7
    monitor-exit p0

    .line 817
    return-object v9

    .line 1042
    :cond_e
    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The destination buffer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_4

    .line 821
    :cond_f
    :try_start_9
    sget-object v9, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 822
    .local v9, "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget-object v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 825
    .local v12, "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    iget-object v13, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v14, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v13, v14, :cond_25

    .line 826
    iget-object v13, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v14, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_EXPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v13, v14, :cond_10

    .line 828
    sget-object v13, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_IMPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    iput-object v13, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 832
    :cond_10
    iget-wide v13, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v13, v14}, Lio/netty/internal/tcnative/SSL;->bioFlushByteBuffer(J)I

    move-result v13

    move v6, v13

    .line 834
    iget-object v13, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingException:Ljava/lang/Throwable;

    if-eqz v13, :cond_16

    .line 846
    if-lez v6, :cond_13

    .line 847
    sget-object v10, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v1, v10, v11, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1038
    :try_start_a
    iget-wide v13, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v13, v14}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_11

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_8

    .line 1042
    :cond_11
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    if-gt v11, v13, :cond_12

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v11

    invoke-virtual {v7, v11, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_8
    monitor-exit p0

    .line 847
    return-object v10

    .line 1042
    :cond_12
    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The destination buffer "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    :goto_9
    throw v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 852
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_13
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v10

    invoke-direct {v1, v10, v11, v11}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1038
    :try_start_c
    iget-wide v13, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v13, v14}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_14

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_a

    .line 1042
    :cond_14
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    if-gt v11, v13, :cond_15

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v11

    invoke-virtual {v7, v11, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_a
    monitor-exit p0

    .line 852
    return-object v10

    .line 1042
    :cond_15
    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The destination buffer "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_9

    .line 855
    :cond_16
    :try_start_d
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v13

    move-object v9, v13

    .line 859
    iget-wide v13, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v13, v14}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v13

    sub-int v6, v8, v13

    .line 861
    sget-object v13, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v9, v13, :cond_19

    .line 862
    invoke-direct {v1, v9, v11, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1038
    :try_start_e
    iget-wide v13, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v13, v14}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_17

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_b

    .line 1042
    :cond_17
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    if-gt v11, v13, :cond_18

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v11

    invoke-virtual {v7, v11, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_b
    monitor-exit p0

    .line 862
    return-object v10

    .line 1042
    :cond_18
    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The destination buffer "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_9

    .line 865
    :cond_19
    if-lez v6, :cond_1e

    .line 869
    :try_start_f
    sget-object v10, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v9, v10, :cond_1b

    if-ne v6, v8, :cond_1a

    sget-object v10, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_c

    :cond_1a
    iget-wide v13, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    .line 871
    invoke-static {v13, v14}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v10

    invoke-direct {v1, v10}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v10

    goto :goto_c

    :cond_1b
    sget-object v10, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 869
    :goto_c
    invoke-direct {v1, v10}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v10

    invoke-direct {v1, v10, v11, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1038
    :try_start_10
    iget-wide v13, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v13, v14}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_1c

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_d

    .line 1042
    :cond_1c
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    if-gt v11, v13, :cond_1d

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v11

    invoke-virtual {v7, v11, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_d
    monitor-exit p0

    .line 869
    return-object v10

    .line 1042
    :cond_1d
    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The destination buffer "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_9

    .line 875
    :cond_1e
    :try_start_11
    sget-object v13, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v9, v13, :cond_22

    .line 877
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isOutboundDone()Z

    move-result v10

    if-eqz v10, :cond_1f

    sget-object v10, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    goto :goto_e

    :cond_1f
    sget-object v10, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1038
    :goto_e
    :try_start_12
    iget-wide v13, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v13, v14}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_20

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_f

    .line 1042
    :cond_20
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    if-gt v11, v13, :cond_21

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v11

    invoke-virtual {v7, v11, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_f
    monitor-exit p0

    .line 877
    return-object v10

    .line 1042
    :cond_21
    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The destination buffer "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_9

    .line 882
    :cond_22
    :try_start_13
    iget-boolean v13, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->outboundClosed:Z

    if-eqz v13, :cond_25

    .line 883
    iget-wide v13, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v13, v14}, Lio/netty/internal/tcnative/SSL;->bioFlushByteBuffer(J)I

    move-result v10

    move v6, v10

    .line 884
    invoke-direct {v1, v9, v11, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1038
    :try_start_14
    iget-wide v13, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v13, v14}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_23

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_10

    .line 1042
    :cond_23
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    if-gt v11, v13, :cond_24

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v11

    invoke-virtual {v7, v11, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_10
    monitor-exit p0

    .line 884
    return-object v10

    .line 1042
    :cond_24
    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The destination buffer "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto/16 :goto_9

    .line 888
    :cond_25
    add-int v13, v3, v4

    .line 889
    .local v13, "endOffset":I
    :try_start_15
    iget-boolean v14, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z

    if-nez v14, :cond_27

    sget-object v14, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v12, v14, :cond_26

    goto :goto_11

    :cond_26
    move/from16 v18, v8

    goto/16 :goto_15

    .line 894
    :cond_27
    :goto_11
    const/4 v14, 0x0

    .line 895
    .local v14, "srcsLen":I
    move/from16 v15, p2

    .local v15, "i":I
    :goto_12
    if-ge v15, v13, :cond_2c

    .line 896
    aget-object v16, v2, v15

    .line 897
    .local v16, "src":Ljava/nio/ByteBuffer;
    if-eqz v16, :cond_2b

    .line 900
    sget v11, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_PLAINTEXT_LENGTH:I

    if-ne v14, v11, :cond_28

    .line 901
    goto :goto_13

    .line 904
    :cond_28
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    add-int/2addr v14, v11

    .line 905
    sget v11, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_PLAINTEXT_LENGTH:I

    if-gt v14, v11, :cond_29

    if-gez v14, :cond_2a

    .line 909
    :cond_29
    sget v11, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_PLAINTEXT_LENGTH:I

    move v14, v11

    .line 895
    .end local v16    # "src":Ljava/nio/ByteBuffer;
    :cond_2a
    :goto_13
    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x0

    goto :goto_12

    .line 898
    .restart local v16    # "src":Ljava/nio/ByteBuffer;
    :cond_2b
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v8

    .end local v8    # "bioLengthBefore":I
    .local v18, "bioLengthBefore":I
    const-string v8, "srcs["

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "] is null"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6    # "bytesProduced":I
    .end local v7    # "bioReadCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v10

    .line 895
    .end local v16    # "src":Ljava/nio/ByteBuffer;
    .end local v18    # "bioLengthBefore":I
    .restart local v6    # "bytesProduced":I
    .restart local v7    # "bioReadCopyBuf":Lio/netty/buffer/ByteBuf;
    .restart local v8    # "bioLengthBefore":I
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_2c
    move/from16 v18, v8

    .line 915
    .end local v8    # "bioLengthBefore":I
    .end local v15    # "i":I
    .restart local v18    # "bioLengthBefore":I
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-direct {v1, v8, v14, v10}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isBytesAvailableEnoughForWrap(III)Z

    move-result v8

    if-nez v8, :cond_2f

    .line 916
    new-instance v8, Ljavax/net/ssl/SSLEngineResult;

    sget-object v10, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v11

    const/4 v15, 0x0

    invoke-direct {v8, v10, v11, v15, v15}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 1038
    :try_start_16
    iget-wide v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v10, v11}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_2d

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_14

    .line 1042
    :cond_2d
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-gt v10, v11, :cond_2e

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v10

    invoke-virtual {v7, v10, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_14
    monitor-exit p0

    .line 916
    return-object v8

    .line 1042
    :cond_2e
    new-instance v8, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The destination buffer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 921
    .end local v14    # "srcsLen":I
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_2f
    :goto_15
    const/4 v8, 0x0

    .line 922
    .local v8, "bytesConsumed":I
    if-nez v6, :cond_56

    .line 925
    :try_start_17
    iget-wide v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v10, v11}, Lio/netty/internal/tcnative/SSL;->bioFlushByteBuffer(J)I

    move-result v10

    move v6, v10

    .line 927
    if-lez v6, :cond_32

    .line 928
    invoke-direct {v1, v9, v8, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v10
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 1038
    :try_start_18
    iget-wide v14, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v14, v15}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_30

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_16

    .line 1042
    :cond_30
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    if-gt v11, v14, :cond_31

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v11

    invoke-virtual {v7, v11, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_16
    monitor-exit p0

    .line 928
    return-object v10

    .line 1042
    :cond_31
    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The destination buffer "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v10
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 932
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_32
    :try_start_19
    iget-object v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingException:Ljava/lang/Throwable;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    if-nez v10, :cond_55

    .line 941
    .end local p2    # "offset":I
    .local v3, "offset":I
    :goto_17
    if-ge v3, v13, :cond_52

    .line 942
    :try_start_1a
    aget-object v10, v2, v3

    .line 943
    .local v10, "src":Ljava/nio/ByteBuffer;
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    .line 944
    .local v11, "remaining":I
    if-nez v11, :cond_33

    .line 945
    move-object/from16 v16, v12

    move/from16 v17, v13

    goto/16 :goto_1a

    .line 949
    :cond_33
    iget-boolean v14, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z

    if-eqz v14, :cond_34

    .line 953
    sget v14, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_PLAINTEXT_LENGTH:I

    sub-int/2addr v14, v8

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-direct {v1, v10, v14}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->writePlaintextData(Ljava/nio/ByteBuffer;I)I

    move-result v14

    move-object/from16 v16, v12

    move/from16 v17, v13

    .local v14, "bytesWritten":I
    goto/16 :goto_19

    .line 958
    .end local v14    # "bytesWritten":I
    :cond_34
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    sub-int/2addr v14, v6

    iget v15, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapOverhead:I

    sub-int/2addr v14, v15

    .line 959
    .local v14, "availableCapacityForWrap":I
    if-gtz v14, :cond_37

    .line 960
    new-instance v15, Ljavax/net/ssl/SSLEngineResult;

    move-object/from16 v16, v12

    .end local v12    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .local v16, "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    sget-object v12, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    move/from16 v17, v13

    .end local v13    # "endOffset":I
    .local v17, "endOffset":I
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v13

    invoke-direct {v15, v12, v13, v8, v6}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 1038
    :try_start_1b
    iget-wide v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v12, v13}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_35

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_18

    .line 1042
    :cond_35
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    if-gt v12, v13, :cond_36

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v12

    invoke-virtual {v7, v12, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_18
    monitor-exit p0

    .line 960
    return-object v15

    .line 1042
    :cond_36
    new-instance v12, Ljava/lang/AssertionError;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The destination buffer "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v3    # "offset":I
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v12
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    .line 963
    .end local v16    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .end local v17    # "endOffset":I
    .restart local v3    # "offset":I
    .restart local v12    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .restart local v13    # "endOffset":I
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_37
    move-object/from16 v16, v12

    move/from16 v17, v13

    .end local v12    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .end local v13    # "endOffset":I
    .restart local v16    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .restart local v17    # "endOffset":I
    :try_start_1c
    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-direct {v1, v10, v12}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->writePlaintextData(Ljava/nio/ByteBuffer;I)I

    move-result v12

    move v14, v12

    .line 971
    .local v14, "bytesWritten":I
    :goto_19
    iget-wide v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v12, v13}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v12

    .line 972
    .local v12, "pendingNow":I
    sub-int v13, v18, v12

    add-int/2addr v6, v13

    .line 973
    move v13, v12

    .line 975
    .end local v18    # "bioLengthBefore":I
    .local v13, "bioLengthBefore":I
    if-lez v14, :cond_3c

    .line 976
    add-int/2addr v8, v14

    .line 978
    iget-boolean v15, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z

    if-nez v15, :cond_39

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    if-ne v6, v15, :cond_38

    goto :goto_1b

    :cond_38
    move/from16 v18, v13

    .line 941
    .end local v10    # "src":Ljava/nio/ByteBuffer;
    .end local v11    # "remaining":I
    .end local v12    # "pendingNow":I
    .end local v13    # "bioLengthBefore":I
    .end local v14    # "bytesWritten":I
    .restart local v18    # "bioLengthBefore":I
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v12, v16

    move/from16 v13, v17

    goto/16 :goto_17

    .line 979
    .end local v18    # "bioLengthBefore":I
    .restart local v10    # "src":Ljava/nio/ByteBuffer;
    .restart local v11    # "remaining":I
    .restart local v12    # "pendingNow":I
    .restart local v13    # "bioLengthBefore":I
    .restart local v14    # "bytesWritten":I
    :cond_39
    :goto_1b
    invoke-direct {v1, v9, v8, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v15
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 1038
    move-object/from16 p2, v10

    move/from16 v19, v11

    .end local v10    # "src":Ljava/nio/ByteBuffer;
    .end local v11    # "remaining":I
    .local v19, "remaining":I
    .local p2, "src":Ljava/nio/ByteBuffer;
    :try_start_1d
    iget-wide v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v10, v11}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_3a

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1c

    .line 1042
    :cond_3a
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-gt v10, v11, :cond_3b

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v10

    invoke-virtual {v7, v10, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_1c
    monitor-exit p0

    .line 979
    return-object v15

    .line 1042
    :cond_3b
    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The destination buffer "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v3    # "offset":I
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v10
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    .line 982
    .end local v19    # "remaining":I
    .end local p2    # "src":Ljava/nio/ByteBuffer;
    .restart local v3    # "offset":I
    .restart local v10    # "src":Ljava/nio/ByteBuffer;
    .restart local v11    # "remaining":I
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_3c
    move-object/from16 p2, v10

    move/from16 v19, v11

    .end local v10    # "src":Ljava/nio/ByteBuffer;
    .end local v11    # "remaining":I
    .restart local v19    # "remaining":I
    .restart local p2    # "src":Ljava/nio/ByteBuffer;
    :try_start_1e
    iget-wide v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v10, v11, v14}, Lio/netty/internal/tcnative/SSL;->getError(JI)I

    move-result v10

    .line 983
    .local v10, "sslError":I
    sget v11, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_ZERO_RETURN:I

    if-ne v10, v11, :cond_44

    .line 985
    iget-boolean v11, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->receivedShutdown:Z

    if-nez v11, :cond_41

    .line 986
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->closeAll()V

    .line 988
    move v15, v12

    .end local v12    # "pendingNow":I
    .local v15, "pendingNow":I
    iget-wide v11, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v11, v12}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v11

    sub-int v11, v13, v11

    add-int/2addr v6, v11

    .line 993
    sget-object v11, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v9, v11, :cond_3e

    .line 994
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-ne v6, v11, :cond_3d

    sget-object v11, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_1d

    :cond_3d
    iget-wide v11, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    .line 995
    invoke-static {v11, v12}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v11

    invoke-direct {v1, v11}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v11

    goto :goto_1d

    :cond_3e
    sget-object v11, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 993
    :goto_1d
    invoke-direct {v1, v11}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v11

    .line 997
    .local v11, "hs":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    invoke-direct {v1, v11, v8, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v12
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 1038
    move/from16 v18, v13

    move/from16 v20, v14

    .end local v13    # "bioLengthBefore":I
    .end local v14    # "bytesWritten":I
    .restart local v18    # "bioLengthBefore":I
    .local v20, "bytesWritten":I
    :try_start_1f
    iget-wide v13, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v13, v14}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_3f

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    add-int/2addr v13, v6

    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1e

    .line 1042
    :cond_3f
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v13

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    if-gt v13, v14, :cond_40

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v13

    invoke-virtual {v7, v13, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_1e
    monitor-exit p0

    .line 997
    return-object v12

    .line 1042
    :cond_40
    new-instance v12, Ljava/lang/AssertionError;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The destination buffer "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v3    # "offset":I
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v12
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    .line 1000
    .end local v11    # "hs":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v15    # "pendingNow":I
    .end local v18    # "bioLengthBefore":I
    .end local v20    # "bytesWritten":I
    .restart local v3    # "offset":I
    .restart local v12    # "pendingNow":I
    .restart local v13    # "bioLengthBefore":I
    .restart local v14    # "bytesWritten":I
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_41
    move v15, v12

    move/from16 v18, v13

    move/from16 v20, v14

    .end local v12    # "pendingNow":I
    .end local v13    # "bioLengthBefore":I
    .end local v14    # "bytesWritten":I
    .restart local v15    # "pendingNow":I
    .restart local v18    # "bioLengthBefore":I
    .restart local v20    # "bytesWritten":I
    :try_start_20
    sget-object v11, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v1, v11, v8, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v11
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 1038
    :try_start_21
    iget-wide v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v12, v13}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_42

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1f

    .line 1042
    :cond_42
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    if-gt v12, v13, :cond_43

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v12

    invoke-virtual {v7, v12, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_1f
    monitor-exit p0

    .line 1000
    return-object v11

    .line 1042
    :cond_43
    new-instance v11, Ljava/lang/AssertionError;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The destination buffer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v3    # "offset":I
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    :goto_20
    throw v11
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    .line 1001
    .end local v15    # "pendingNow":I
    .end local v18    # "bioLengthBefore":I
    .end local v20    # "bytesWritten":I
    .restart local v3    # "offset":I
    .restart local v12    # "pendingNow":I
    .restart local v13    # "bioLengthBefore":I
    .restart local v14    # "bytesWritten":I
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_44
    move v15, v12

    move/from16 v18, v13

    move/from16 v20, v14

    .end local v12    # "pendingNow":I
    .end local v13    # "bioLengthBefore":I
    .end local v14    # "bytesWritten":I
    .restart local v15    # "pendingNow":I
    .restart local v18    # "bioLengthBefore":I
    .restart local v20    # "bytesWritten":I
    :try_start_22
    sget v11, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_READ:I

    if-ne v10, v11, :cond_47

    .line 1005
    sget-object v11, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v1, v11, v8, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v11
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 1038
    :try_start_23
    iget-wide v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v12, v13}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_45

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_21

    .line 1042
    :cond_45
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    if-gt v12, v13, :cond_46

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v12

    invoke-virtual {v7, v12, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_21
    monitor-exit p0

    .line 1005
    return-object v11

    .line 1042
    :cond_46
    new-instance v11, Ljava/lang/AssertionError;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The destination buffer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    goto :goto_20

    .line 1006
    :cond_47
    :try_start_24
    sget v11, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_WRITE:I

    if-ne v10, v11, :cond_4d

    .line 1019
    if-lez v6, :cond_4a

    .line 1022
    sget-object v11, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v1, v11, v8, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v11
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 1038
    :try_start_25
    iget-wide v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v12, v13}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_48

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_22

    .line 1042
    :cond_48
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    if-gt v12, v13, :cond_49

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v12

    invoke-virtual {v7, v12, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_22
    monitor-exit p0

    .line 1022
    return-object v11

    .line 1042
    :cond_49
    new-instance v11, Ljava/lang/AssertionError;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The destination buffer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    goto/16 :goto_20

    .line 1024
    :cond_4a
    :try_start_26
    sget-object v11, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v1, v11, v9, v8, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v11
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 1038
    :try_start_27
    iget-wide v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v12, v13}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_4b

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_23

    .line 1042
    :cond_4b
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    if-gt v12, v13, :cond_4c

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v12

    invoke-virtual {v7, v12, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_23
    monitor-exit p0

    .line 1024
    return-object v11

    .line 1042
    :cond_4c
    new-instance v11, Ljava/lang/AssertionError;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The destination buffer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    goto/16 :goto_20

    .line 1025
    :cond_4d
    :try_start_28
    sget v11, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_X509_LOOKUP:I

    if-eq v10, v11, :cond_4f

    sget v11, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_CERTIFICATE_VERIFY:I

    if-eq v10, v11, :cond_4f

    sget v11, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_PRIVATE_KEY_OPERATION:I

    if-ne v10, v11, :cond_4e

    goto :goto_24

    .line 1032
    :cond_4e
    const-string v11, "SSL_write"

    invoke-direct {v1, v11, v10}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdownWithError(Ljava/lang/String;I)Ljavax/net/ssl/SSLException;

    move-result-object v11

    .end local v3    # "offset":I
    .end local v6    # "bytesProduced":I
    .end local v7    # "bioReadCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v11

    .line 1029
    .restart local v3    # "offset":I
    .restart local v6    # "bytesProduced":I
    .restart local v7    # "bioReadCopyBuf":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_4f
    :goto_24
    sget-object v11, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v1, v11, v8, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v11
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 1038
    :try_start_29
    iget-wide v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v12, v13}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_50

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_25

    .line 1042
    :cond_50
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    if-gt v12, v13, :cond_51

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v12

    invoke-virtual {v7, v12, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_25
    monitor-exit p0

    .line 1029
    return-object v11

    .line 1042
    :cond_51
    new-instance v11, Ljava/lang/AssertionError;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The destination buffer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_3

    goto/16 :goto_20

    .line 1036
    .end local v10    # "sslError":I
    .end local v15    # "pendingNow":I
    .end local v16    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .end local v17    # "endOffset":I
    .end local v19    # "remaining":I
    .end local v20    # "bytesWritten":I
    .end local p2    # "src":Ljava/nio/ByteBuffer;
    .local v12, "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .local v13, "endOffset":I
    :cond_52
    move-object/from16 v16, v12

    move/from16 v17, v13

    .end local v12    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .end local v13    # "endOffset":I
    .restart local v16    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .restart local v17    # "endOffset":I
    :try_start_2a
    invoke-direct {v1, v9, v8, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v10
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    .line 1038
    :try_start_2b
    iget-wide v11, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v11, v12}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-nez v7, :cond_53

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_26

    .line 1042
    :cond_53
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    if-gt v11, v12, :cond_54

    .line 1044
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v11

    invoke-virtual {v7, v11, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_26
    monitor-exit p0

    .line 1036
    return-object v10

    .line 1042
    :cond_54
    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The destination buffer "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v3    # "offset":I
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v10
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_3

    .line 1038
    .end local v8    # "bytesConsumed":I
    .end local v9    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v16    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .end local v17    # "endOffset":I
    .end local v18    # "bioLengthBefore":I
    .restart local v3    # "offset":I
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v0

    move-object v8, v0

    goto :goto_27

    .line 933
    .end local v3    # "offset":I
    .restart local v8    # "bytesConsumed":I
    .restart local v9    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v12    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .restart local v13    # "endOffset":I
    .restart local v18    # "bioLengthBefore":I
    .local p2, "offset":I
    :cond_55
    move-object/from16 v16, v12

    move/from16 v17, v13

    .end local v12    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .end local v13    # "endOffset":I
    .restart local v16    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .restart local v17    # "endOffset":I
    :try_start_2c
    iget-object v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingException:Ljava/lang/Throwable;

    .line 934
    .local v10, "error":Ljava/lang/Throwable;
    const/4 v11, 0x0

    iput-object v11, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingException:Ljava/lang/Throwable;

    .line 935
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    .line 938
    new-instance v11, Ljavax/net/ssl/SSLException;

    invoke-direct {v11, v10}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    .end local v6    # "bytesProduced":I
    .end local v7    # "bioReadCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v11

    .line 922
    .end local v10    # "error":Ljava/lang/Throwable;
    .end local v16    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .end local v17    # "endOffset":I
    .restart local v6    # "bytesProduced":I
    .restart local v7    # "bioReadCopyBuf":Lio/netty/buffer/ByteBuf;
    .restart local v12    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .restart local v13    # "endOffset":I
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_56
    move-object/from16 v16, v12

    move/from16 v17, v13

    .end local v12    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .end local v13    # "endOffset":I
    .restart local v16    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .restart local v17    # "endOffset":I
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    .end local v6    # "bytesProduced":I
    .end local v7    # "bioReadCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v10
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1

    .line 1038
    .end local v8    # "bytesConsumed":I
    .end local v9    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v16    # "oldHandshakeState":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .end local v17    # "endOffset":I
    .end local v18    # "bioLengthBefore":I
    .restart local v6    # "bytesProduced":I
    .restart local v7    # "bioReadCopyBuf":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception v0

    move-object v8, v0

    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    :goto_27
    :try_start_2d
    iget-wide v9, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v9, v10}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1039
    if-eqz v7, :cond_58

    .line 1042
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v9

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    if-le v9, v10, :cond_57

    new-instance v8, Ljava/lang/AssertionError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The destination buffer "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v3    # "offset":I
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v8

    .line 1044
    .restart local v3    # "offset":I
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_57
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v9

    invoke-virtual {v7, v9, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    goto :goto_28

    .line 1040
    :cond_58
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1047
    :goto_28
    nop

    .end local v3    # "offset":I
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v8

    .line 1048
    .end local v6    # "bytesProduced":I
    .end local v7    # "bioReadCopyBuf":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :catchall_2
    move-exception v0

    move-object v6, v0

    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    :goto_29
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_3

    throw v6

    :catchall_3
    move-exception v0

    move-object v6, v0

    goto :goto_29

    .line 769
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    :cond_59
    new-instance v6, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v6}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v6

    .line 763
    :cond_5a
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "offset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (expected: offset <= offset + length <= srcs.length ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "))"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
