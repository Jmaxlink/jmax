.class public abstract Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.super Lio/netty/handler/ssl/SslContext;
.source "ReferenceCountedOpenSslContext.java"

# interfaces
.implements Lio/netty/util/ReferenceCounted;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$CompressionAlgorithm;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$DefaultOpenSslEngineMap;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AbstractCertificateVerifier;
    }
.end annotation


# static fields
.field static final CLIENT_ENABLE_SESSION_CACHE:Z

.field static final CLIENT_ENABLE_SESSION_TICKET:Z

.field static final CLIENT_ENABLE_SESSION_TICKET_TLSV13:Z

.field private static final DEFAULT_BIO_NON_APPLICATION_BUFFER_SIZE:I

.field private static final DH_KEY_LENGTH:Ljava/lang/Integer;

.field static final NONE_PROTOCOL_NEGOTIATOR:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

.field static final SERVER_ENABLE_SESSION_CACHE:Z

.field static final SERVER_ENABLE_SESSION_TICKET:Z

.field static final SERVER_ENABLE_SESSION_TICKET_TLSV13:Z

.field static final USE_TASKS:Z

.field protected static final VERIFY_DEPTH:I = 0xa

.field private static final leakDetector:Lio/netty/util/ResourceLeakDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakDetector<",
            "Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final apn:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

.field private volatile bioNonApplicationBufferSize:I

.field final clientAuth:Lio/netty/handler/ssl/ClientAuth;

.field protected ctx:J

.field final ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field final enableOcsp:Z

.field final engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

.field final keyCertChain:[Ljava/security/cert/Certificate;

.field private final leak:Lio/netty/util/ResourceLeakTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mode:I

.field final protocols:[Ljava/lang/String;

.field private final refCnt:Lio/netty/util/AbstractReferenceCounted;

.field final tlsFalseStart:Z

.field private final unmodifiableCiphers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 88
    nop

    .line 89
    const-class v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 91
    nop

    .line 92
    const-string v1, "io.netty.handler.ssl.openssl.bioNonApplicationBufferSize"

    const/16 v2, 0x800

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 91
    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->DEFAULT_BIO_NON_APPLICATION_BUFFER_SIZE:I

    .line 95
    nop

    .line 96
    const-string v1, "io.netty.handler.ssl.openssl.useTasks"

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->USE_TASKS:Z

    .line 99
    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->instance()Lio/netty/util/ResourceLeakDetectorFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/netty/util/ResourceLeakDetectorFactory;->newResourceLeakDetector(Ljava/lang/Class;)Lio/netty/util/ResourceLeakDetector;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    .line 104
    nop

    .line 105
    const-string v0, "jdk.tls.client.enableSessionTicketExtension"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->CLIENT_ENABLE_SESSION_TICKET:Z

    .line 107
    nop

    .line 108
    invoke-static {v0, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->CLIENT_ENABLE_SESSION_TICKET_TLSV13:Z

    .line 110
    nop

    .line 111
    const-string v0, "jdk.tls.server.enableSessionTicketExtension"

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->SERVER_ENABLE_SESSION_TICKET:Z

    .line 113
    nop

    .line 114
    invoke-static {v0, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->SERVER_ENABLE_SESSION_TICKET_TLSV13:Z

    .line 116
    nop

    .line 117
    const-string v0, "io.netty.handler.ssl.openssl.sessionCacheServer"

    invoke-static {v0, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->SERVER_ENABLE_SESSION_CACHE:Z

    .line 118
    nop

    .line 119
    const-string v0, "io.netty.handler.ssl.openssl.sessionCacheClient"

    invoke-static {v0, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->CLIENT_ENABLE_SESSION_CACHE:Z

    .line 163
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$2;

    invoke-direct {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$2;-><init>()V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->NONE_PROTOCOL_NEGOTIATOR:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    .line 187
    const/4 v0, 0x0

    .line 190
    .local v0, "dhLen":Ljava/lang/Integer;
    :try_start_0
    const-string v1, "jdk.tls.ephemeralDHKeySize"

    invoke-static {v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .local v1, "dhKeySize":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 193
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 197
    goto :goto_0

    .line 194
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    sget-object v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReferenceCountedOpenSslContext supports -Djdk.tls.ephemeralDHKeySize={int}, but got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    .end local v1    # "dhKeySize":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    goto :goto_1

    .line 199
    :catchall_0
    move-exception v1

    .line 202
    :goto_1
    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->DH_KEY_LENGTH:Ljava/lang/Integer;

    .line 203
    .end local v0    # "dhLen":Ljava/lang/Integer;
    return-void
.end method

.method varargs constructor <init>(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;I[Ljava/security/cert/Certificate;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZZ[Ljava/util/Map$Entry;)V
    .locals 23
    .param p2, "cipherFilter"    # Lio/netty/handler/ssl/CipherSuiteFilter;
    .param p3, "apn"    # Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .param p4, "mode"    # I
    .param p5, "keyCertChain"    # [Ljava/security/cert/Certificate;
    .param p6, "clientAuth"    # Lio/netty/handler/ssl/ClientAuth;
    .param p7, "protocols"    # [Ljava/lang/String;
    .param p8, "startTls"    # Z
    .param p9, "enableOcsp"    # Z
    .param p10, "leakDetection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            "Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;",
            "I[",
            "Ljava/security/cert/Certificate;",
            "Lio/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "ZZZ[",
            "Ljava/util/Map$Entry<",
            "Lio/netty/handler/ssl/SslContextOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 212
    .local p1, "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .local p11, "ctxOptions":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/handler/ssl/SslContextOption<*>;Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p9

    move-object/from16 v4, p11

    const-string v0, ""

    move/from16 v5, p8

    invoke-direct {v1, v5}, Lio/netty/handler/ssl/SslContext;-><init>(Z)V

    .line 133
    new-instance v6, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$1;

    invoke-direct {v6, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$1;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;)V

    iput-object v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    .line 157
    new-instance v6, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$DefaultOpenSslEngineMap;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$DefaultOpenSslEngineMap;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$1;)V

    iput-object v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    .line 158
    new-instance v6, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 160
    sget v6, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->DEFAULT_BIO_NON_APPLICATION_BUFFER_SIZE:I

    iput v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->bioNonApplicationBufferSize:I

    .line 214
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->ensureAvailability()V

    .line 216
    if-eqz v3, :cond_1

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isOcspSupported()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v6, "OCSP is not supported."

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    :goto_0
    const/4 v6, 0x1

    if-eq v2, v6, :cond_3

    if-nez v2, :cond_2

    goto :goto_1

    .line 221
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "mode most be either SSL.SSL_MODE_SERVER or SSL.SSL_MODE_CLIENT"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_3
    :goto_1
    const/4 v8, 0x0

    .line 225
    .local v8, "tlsFalseStart":Z
    sget-boolean v9, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->USE_TASKS:Z

    .line 226
    .local v9, "useTasks":Z
    const/4 v10, 0x0

    .line 227
    .local v10, "privateKeyMethod":Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;
    const/4 v11, 0x0

    .line 228
    .local v11, "asyncPrivateKeyMethod":Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;
    const/4 v12, 0x0

    .line 229
    .local v12, "certCompressionConfig":Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;
    const/4 v13, 0x0

    .line 231
    .local v13, "maxCertificateList":Ljava/lang/Integer;
    if-eqz v4, :cond_a

    .line 232
    array-length v15, v4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v15, :cond_a

    aget-object v17, v4, v7

    .line 233
    .local v17, "ctxOpt":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/netty/handler/ssl/SslContextOption<*>;Ljava/lang/Object;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v6, v18

    check-cast v6, Lio/netty/handler/ssl/SslContextOption;

    .line 235
    .local v6, "option":Lio/netty/handler/ssl/SslContextOption;, "Lio/netty/handler/ssl/SslContextOption<*>;"
    sget-object v14, Lio/netty/handler/ssl/OpenSslContextOption;->TLS_FALSE_START:Lio/netty/handler/ssl/OpenSslContextOption;

    if-ne v6, v14, :cond_4

    .line 236
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_3

    .line 237
    :cond_4
    sget-object v14, Lio/netty/handler/ssl/OpenSslContextOption;->USE_TASKS:Lio/netty/handler/ssl/OpenSslContextOption;

    if-ne v6, v14, :cond_5

    .line 238
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_3

    .line 239
    :cond_5
    sget-object v14, Lio/netty/handler/ssl/OpenSslContextOption;->PRIVATE_KEY_METHOD:Lio/netty/handler/ssl/OpenSslContextOption;

    if-ne v6, v14, :cond_6

    .line 240
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    move-object v10, v14

    check-cast v10, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;

    goto :goto_3

    .line 241
    :cond_6
    sget-object v14, Lio/netty/handler/ssl/OpenSslContextOption;->ASYNC_PRIVATE_KEY_METHOD:Lio/netty/handler/ssl/OpenSslContextOption;

    if-ne v6, v14, :cond_7

    .line 242
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    move-object v11, v14

    check-cast v11, Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;

    goto :goto_3

    .line 243
    :cond_7
    sget-object v14, Lio/netty/handler/ssl/OpenSslContextOption;->CERTIFICATE_COMPRESSION_ALGORITHMS:Lio/netty/handler/ssl/OpenSslContextOption;

    if-ne v6, v14, :cond_8

    .line 244
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    move-object v12, v14

    check-cast v12, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;

    goto :goto_3

    .line 245
    :cond_8
    sget-object v14, Lio/netty/handler/ssl/OpenSslContextOption;->MAX_CERTIFICATE_LIST_BYTES:Lio/netty/handler/ssl/OpenSslContextOption;

    if-ne v6, v14, :cond_9

    .line 246
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    move-object v13, v14

    check-cast v13, Ljava/lang/Integer;

    goto :goto_3

    .line 248
    :cond_9
    sget-object v14, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping unsupported "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lio/netty/handler/ssl/SslContextOption;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 249
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 248
    invoke-interface {v14, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 232
    .end local v6    # "option":Lio/netty/handler/ssl/SslContextOption;, "Lio/netty/handler/ssl/SslContextOption<*>;"
    .end local v17    # "ctxOpt":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/netty/handler/ssl/SslContextOption<*>;Ljava/lang/Object;>;"
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, p8

    move-object/from16 v4, p11

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 253
    :cond_a
    if-eqz v10, :cond_c

    if-nez v11, :cond_b

    goto :goto_4

    .line 254
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "You can either only use "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;

    .line 255
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;

    .line 256
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_c
    :goto_4
    iput-boolean v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->tlsFalseStart:Z

    .line 261
    if-eqz p10, :cond_d

    sget-object v4, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {v4, v1}, Lio/netty/util/ResourceLeakDetector;->track(Ljava/lang/Object;)Lio/netty/util/ResourceLeakTracker;

    move-result-object v4

    goto :goto_5

    :cond_d
    const/4 v4, 0x0

    :goto_5
    iput-object v4, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->leak:Lio/netty/util/ResourceLeakTracker;

    .line 262
    iput v2, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->mode:I

    .line 263
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->isServer()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "clientAuth"

    move-object/from16 v5, p6

    invoke-static {v5, v4}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/handler/ssl/ClientAuth;

    goto :goto_6

    :cond_e
    move-object/from16 v5, p6

    sget-object v4, Lio/netty/handler/ssl/ClientAuth;->NONE:Lio/netty/handler/ssl/ClientAuth;

    :goto_6
    iput-object v4, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    .line 264
    if-nez p7, :cond_10

    if-nez v2, :cond_f

    const/4 v4, 0x1

    goto :goto_7

    :cond_f
    const/4 v4, 0x0

    :goto_7
    invoke-static {v4}, Lio/netty/handler/ssl/OpenSsl;->defaultProtocols(Z)[Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_10
    move-object/from16 v4, p7

    :goto_8
    iput-object v4, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->protocols:[Ljava/lang/String;

    .line 265
    iput-boolean v3, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->enableOcsp:Z

    .line 267
    if-nez p5, :cond_11

    const/4 v7, 0x0

    goto :goto_9

    :cond_11
    invoke-virtual/range {p5 .. p5}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, [Ljava/security/cert/Certificate;

    :goto_9
    iput-object v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->keyCertChain:[Ljava/security/cert/Certificate;

    .line 269
    const-string v4, "cipherFilter"

    move-object/from16 v6, p2

    invoke-static {v6, v4}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/handler/ssl/CipherSuiteFilter;

    sget-object v7, Lio/netty/handler/ssl/OpenSsl;->DEFAULT_CIPHERS:Ljava/util/List;

    .line 270
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->availableJavaCipherSuites()Ljava/util/Set;

    move-result-object v14

    .line 269
    move-object/from16 v15, p1

    invoke-interface {v4, v15, v7, v14}, Lio/netty/handler/ssl/CipherSuiteFilter;->filterCipherSuites(Ljava/lang/Iterable;Ljava/util/List;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, "suites":[Ljava/lang/String;
    new-instance v7, Ljava/util/LinkedHashSet;

    array-length v14, v4

    invoke-direct {v7, v14}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 273
    .local v7, "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-static {v7, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 274
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v14, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->unmodifiableCiphers:Ljava/util/List;

    .line 276
    const-string v14, "apn"

    move-object/from16 v16, v4

    move-object/from16 v4, p3

    .end local v4    # "suites":[Ljava/lang/String;
    .local v16, "suites":[Ljava/lang/String;
    invoke-static {v4, v14}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    iput-object v14, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->apn:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    .line 279
    const/4 v14, 0x0

    .line 281
    .local v14, "success":Z
    :try_start_0
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isTlsv13Supported()Z

    move-result v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 284
    .local v17, "tlsv13Supported":Z
    const/16 v20, 0x1e

    .line 286
    .local v20, "protocolOpts":I
    if-eqz v17, :cond_12

    .line 287
    or-int/lit8 v20, v20, 0x20

    move/from16 v4, v20

    goto :goto_a

    .line 286
    :cond_12
    move/from16 v4, v20

    .line 289
    .end local v20    # "protocolOpts":I
    .local v4, "protocolOpts":I
    :goto_a
    :try_start_1
    invoke-static {v4, v2}, Lio/netty/internal/tcnative/SSLContext;->make(II)J

    move-result-wide v5

    iput-wide v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 292
    .end local v4    # "protocolOpts":I
    nop

    .line 294
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .local v4, "cipherBuilder":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 299
    .local v5, "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    :try_start_3
    iget-object v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->unmodifiableCiphers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v6, :cond_13

    .line 301
    move-object/from16 v20, v7

    .end local v7    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .local v20, "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :try_start_4
    iget-wide v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    const/4 v2, 0x0

    invoke-static {v6, v7, v0, v2}, Lio/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z

    .line 302
    if-eqz v17, :cond_14

    .line 304
    iget-wide v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    const/4 v2, 0x1

    invoke-static {v6, v7, v0, v2}, Lio/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_b

    .line 428
    .end local v4    # "cipherBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .end local v17    # "tlsv13Supported":Z
    :catchall_0
    move-exception v0

    move/from16 v19, v8

    goto/16 :goto_14

    .line 320
    .restart local v4    # "cipherBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .restart local v17    # "tlsv13Supported":Z
    :catch_0
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v18, v5

    move/from16 v19, v8

    goto/16 :goto_12

    .line 318
    :catch_1
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v18, v5

    move/from16 v19, v8

    goto/16 :goto_13

    .line 307
    .end local v20    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .restart local v7    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :cond_13
    move-object/from16 v20, v7

    .end local v7    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .restart local v20    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :try_start_5
    iget-object v0, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->unmodifiableCiphers:Ljava/util/List;

    .line 308
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isBoringSSL()Z

    move-result v2

    .line 307
    invoke-static {v0, v4, v5, v2}, Lio/netty/handler/ssl/CipherSuiteConverter;->convertToCipherStrings(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Z)V

    .line 311
    iget-wide v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v6, v7, v0, v2}, Lio/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z
    :try_end_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 312
    if-eqz v17, :cond_14

    .line 314
    :try_start_6
    iget-wide v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 315
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/netty/handler/ssl/OpenSsl;->checkTls13Ciphers(Lio/netty/util/internal/logging/InternalLogger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    const/4 v2, 0x1

    invoke-static {v6, v7, v0, v2}, Lio/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 322
    :cond_14
    :goto_b
    nop

    .line 324
    :try_start_7
    iget-wide v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v6, v7}, Lio/netty/internal/tcnative/SSLContext;->getOptions(J)I

    move-result v0

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv2:I

    or-int/2addr v0, v2

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv3:I

    or-int/2addr v0, v2

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1:I

    or-int/2addr v0, v2

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_1:I

    or-int/2addr v0, v2

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_CIPHER_SERVER_PREFERENCE:I

    or-int/2addr v0, v2

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_COMPRESSION:I

    or-int/2addr v0, v2

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TICKET:I

    or-int/2addr v0, v2

    .line 344
    .local v0, "options":I
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v2, :cond_15

    .line 346
    :try_start_8
    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv2:I

    sget v6, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv3:I

    or-int/2addr v2, v6

    sget v6, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1:I

    or-int/2addr v2, v6

    sget v6, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_1:I

    or-int/2addr v2, v6

    sget v6, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_2:I

    or-int/2addr v2, v6

    or-int/2addr v0, v2

    .line 350
    :cond_15
    if-nez v17, :cond_16

    .line 353
    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_3:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    or-int/2addr v0, v2

    .line 356
    :cond_16
    :try_start_9
    iget-wide v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v6, v7, v0}, Lio/netty/internal/tcnative/SSLContext;->setOptions(JI)V

    .line 361
    iget-wide v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    move-object v2, v4

    move-object/from16 v18, v5

    .end local v4    # "cipherBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .local v2, "cipherBuilder":Ljava/lang/StringBuilder;
    .local v18, "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    iget-wide v4, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v4, v5}, Lio/netty/internal/tcnative/SSLContext;->getMode(J)I

    move-result v4

    sget v5, Lio/netty/internal/tcnative/SSL;->SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER:I

    or-int/2addr v4, v5

    invoke-static {v6, v7, v4}, Lio/netty/internal/tcnative/SSLContext;->setMode(JI)I

    .line 363
    sget-object v4, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->DH_KEY_LENGTH:Ljava/lang/Integer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v4, :cond_17

    .line 364
    :try_start_a
    iget-wide v4, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    sget-object v6, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->DH_KEY_LENGTH:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Lio/netty/internal/tcnative/SSLContext;->setTmpDHLength(JI)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 367
    :cond_17
    :try_start_b
    invoke-interface/range {p3 .. p3}, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v4

    .line 369
    .local v4, "nextProtoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_18

    .line 370
    sget-object v5, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 371
    .local v5, "appProtocols":[Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;->selectorFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v6

    invoke-static {v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->opensslSelectorFailureBehavior(Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;)I

    move-result v6

    .line 373
    .local v6, "selectorBehavior":I
    sget-object v7, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol:[I

    invoke-interface/range {p3 .. p3}, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;->protocol()Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->ordinal()I

    move-result v19

    aget v7, v7, v19
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    packed-switch v7, :pswitch_data_0

    .line 385
    move/from16 v19, v8

    .end local v8    # "tlsFalseStart":Z
    .local v19, "tlsFalseStart":Z
    :try_start_c
    new-instance v7, Ljava/lang/Error;

    goto :goto_c

    .line 381
    .end local v19    # "tlsFalseStart":Z
    .restart local v8    # "tlsFalseStart":Z
    :pswitch_0
    move/from16 v19, v8

    .end local v8    # "tlsFalseStart":Z
    .restart local v19    # "tlsFalseStart":Z
    iget-wide v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v7, v8, v5, v6}, Lio/netty/internal/tcnative/SSLContext;->setNpnProtos(J[Ljava/lang/String;I)V

    .line 382
    iget-wide v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v7, v8, v5, v6}, Lio/netty/internal/tcnative/SSLContext;->setAlpnProtos(J[Ljava/lang/String;I)V

    .line 383
    goto :goto_d

    .line 378
    .end local v19    # "tlsFalseStart":Z
    .restart local v8    # "tlsFalseStart":Z
    :pswitch_1
    move/from16 v19, v8

    .end local v8    # "tlsFalseStart":Z
    .restart local v19    # "tlsFalseStart":Z
    iget-wide v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v7, v8, v5, v6}, Lio/netty/internal/tcnative/SSLContext;->setAlpnProtos(J[Ljava/lang/String;I)V

    .line 379
    goto :goto_d

    .line 375
    .end local v19    # "tlsFalseStart":Z
    .restart local v8    # "tlsFalseStart":Z
    :pswitch_2
    move/from16 v19, v8

    .end local v8    # "tlsFalseStart":Z
    .restart local v19    # "tlsFalseStart":Z
    iget-wide v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v7, v8, v5, v6}, Lio/netty/internal/tcnative/SSLContext;->setNpnProtos(J[Ljava/lang/String;I)V

    .line 376
    goto :goto_d

    .line 385
    :goto_c
    invoke-direct {v7}, Ljava/lang/Error;-><init>()V

    .end local v9    # "useTasks":Z
    .end local v10    # "privateKeyMethod":Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;
    .end local v11    # "asyncPrivateKeyMethod":Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;
    .end local v12    # "certCompressionConfig":Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;
    .end local v13    # "maxCertificateList":Ljava/lang/Integer;
    .end local v14    # "success":Z
    .end local v16    # "suites":[Ljava/lang/String;
    .end local v19    # "tlsFalseStart":Z
    .end local v20    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .end local p1    # "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .end local p2    # "cipherFilter":Lio/netty/handler/ssl/CipherSuiteFilter;
    .end local p3    # "apn":Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .end local p4    # "mode":I
    .end local p5    # "keyCertChain":[Ljava/security/cert/Certificate;
    .end local p6    # "clientAuth":Lio/netty/handler/ssl/ClientAuth;
    .end local p7    # "protocols":[Ljava/lang/String;
    .end local p8    # "startTls":Z
    .end local p9    # "enableOcsp":Z
    .end local p10    # "leakDetection":Z
    .end local p11    # "ctxOptions":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/handler/ssl/SslContextOption<*>;Ljava/lang/Object;>;"
    throw v7

    .line 369
    .end local v5    # "appProtocols":[Ljava/lang/String;
    .end local v6    # "selectorBehavior":I
    .restart local v8    # "tlsFalseStart":Z
    .restart local v9    # "useTasks":Z
    .restart local v10    # "privateKeyMethod":Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;
    .restart local v11    # "asyncPrivateKeyMethod":Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;
    .restart local v12    # "certCompressionConfig":Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;
    .restart local v13    # "maxCertificateList":Ljava/lang/Integer;
    .restart local v14    # "success":Z
    .restart local v16    # "suites":[Ljava/lang/String;
    .restart local v20    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .restart local p1    # "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .restart local p2    # "cipherFilter":Lio/netty/handler/ssl/CipherSuiteFilter;
    .restart local p3    # "apn":Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .restart local p4    # "mode":I
    .restart local p5    # "keyCertChain":[Ljava/security/cert/Certificate;
    .restart local p6    # "clientAuth":Lio/netty/handler/ssl/ClientAuth;
    .restart local p7    # "protocols":[Ljava/lang/String;
    .restart local p8    # "startTls":Z
    .restart local p9    # "enableOcsp":Z
    .restart local p10    # "leakDetection":Z
    .restart local p11    # "ctxOptions":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/handler/ssl/SslContextOption<*>;Ljava/lang/Object;>;"
    :cond_18
    move/from16 v19, v8

    .line 389
    .end local v8    # "tlsFalseStart":Z
    .restart local v19    # "tlsFalseStart":Z
    :goto_d
    if-eqz v3, :cond_19

    .line 390
    iget-wide v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->isClient()Z

    move-result v7

    invoke-static {v5, v6, v7}, Lio/netty/internal/tcnative/SSLContext;->enableOcsp(JZ)V

    .line 393
    :cond_19
    iget-wide v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v5, v6, v9}, Lio/netty/internal/tcnative/SSLContext;->setUseTasks(JZ)V

    .line 394
    if-eqz v10, :cond_1a

    .line 395
    iget-wide v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    new-instance v7, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;

    iget-object v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-direct {v7, v8, v10}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;)V

    invoke-static {v5, v6, v7}, Lio/netty/internal/tcnative/SSLContext;->setPrivateKeyMethod(JLio/netty/internal/tcnative/SSLPrivateKeyMethod;)V

    .line 397
    :cond_1a
    if-eqz v11, :cond_1b

    .line 398
    iget-wide v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    new-instance v7, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod;

    iget-object v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-direct {v7, v8, v11}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;)V

    invoke-static {v5, v6, v7}, Lio/netty/internal/tcnative/SSLContext;->setPrivateKeyMethod(JLio/netty/internal/tcnative/AsyncSSLPrivateKeyMethod;)V

    .line 400
    :cond_1b
    if-eqz v12, :cond_1d

    .line 401
    invoke-virtual {v12}, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;

    .line 402
    .local v6, "configPair":Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;
    new-instance v7, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$CompressionAlgorithm;

    iget-object v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    move/from16 v21, v0

    .end local v0    # "options":I
    .local v21, "options":I
    invoke-virtual {v6}, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;->algorithm()Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$CompressionAlgorithm;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;)V

    move-object v0, v7

    .line 403
    .local v0, "algo":Lio/netty/internal/tcnative/CertificateCompressionAlgo;
    sget-object v7, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$OpenSslCertificateCompressionConfig$AlgorithmMode:[I

    invoke-virtual {v6}, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;->mode()Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    move-result-object v8

    invoke-virtual {v8}, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    .line 417
    move-object/from16 v22, v2

    .end local v2    # "cipherBuilder":Ljava/lang/StringBuilder;
    .local v22, "cipherBuilder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/IllegalStateException;

    goto :goto_10

    .line 413
    .end local v22    # "cipherBuilder":Ljava/lang/StringBuilder;
    .restart local v2    # "cipherBuilder":Ljava/lang/StringBuilder;
    :pswitch_3
    iget-wide v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    move-object/from16 v22, v2

    .end local v2    # "cipherBuilder":Ljava/lang/StringBuilder;
    .restart local v22    # "cipherBuilder":Ljava/lang/StringBuilder;
    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_CERT_COMPRESSION_DIRECTION_BOTH:I

    invoke-static {v7, v8, v2, v0}, Lio/netty/internal/tcnative/SSLContext;->addCertificateCompressionAlgorithm(JILio/netty/internal/tcnative/CertificateCompressionAlgo;)I

    .line 415
    goto :goto_f

    .line 409
    .end local v22    # "cipherBuilder":Ljava/lang/StringBuilder;
    .restart local v2    # "cipherBuilder":Ljava/lang/StringBuilder;
    :pswitch_4
    move-object/from16 v22, v2

    .end local v2    # "cipherBuilder":Ljava/lang/StringBuilder;
    .restart local v22    # "cipherBuilder":Ljava/lang/StringBuilder;
    iget-wide v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_CERT_COMPRESSION_DIRECTION_COMPRESS:I

    invoke-static {v7, v8, v2, v0}, Lio/netty/internal/tcnative/SSLContext;->addCertificateCompressionAlgorithm(JILio/netty/internal/tcnative/CertificateCompressionAlgo;)I

    .line 411
    goto :goto_f

    .line 405
    .end local v22    # "cipherBuilder":Ljava/lang/StringBuilder;
    .restart local v2    # "cipherBuilder":Ljava/lang/StringBuilder;
    :pswitch_5
    move-object/from16 v22, v2

    .end local v2    # "cipherBuilder":Ljava/lang/StringBuilder;
    .restart local v22    # "cipherBuilder":Ljava/lang/StringBuilder;
    iget-wide v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_CERT_COMPRESSION_DIRECTION_DECOMPRESS:I

    invoke-static {v7, v8, v2, v0}, Lio/netty/internal/tcnative/SSLContext;->addCertificateCompressionAlgorithm(JILio/netty/internal/tcnative/CertificateCompressionAlgo;)I

    .line 407
    nop

    .line 419
    .end local v0    # "algo":Lio/netty/internal/tcnative/CertificateCompressionAlgo;
    .end local v6    # "configPair":Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;
    :goto_f
    move/from16 v0, v21

    move-object/from16 v2, v22

    goto :goto_e

    .line 417
    .restart local v0    # "algo":Lio/netty/internal/tcnative/CertificateCompressionAlgo;
    .restart local v6    # "configPair":Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;
    :goto_10
    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    .end local v9    # "useTasks":Z
    .end local v10    # "privateKeyMethod":Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;
    .end local v11    # "asyncPrivateKeyMethod":Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;
    .end local v12    # "certCompressionConfig":Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;
    .end local v13    # "maxCertificateList":Ljava/lang/Integer;
    .end local v14    # "success":Z
    .end local v16    # "suites":[Ljava/lang/String;
    .end local v19    # "tlsFalseStart":Z
    .end local v20    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .end local p1    # "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .end local p2    # "cipherFilter":Lio/netty/handler/ssl/CipherSuiteFilter;
    .end local p3    # "apn":Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .end local p4    # "mode":I
    .end local p5    # "keyCertChain":[Ljava/security/cert/Certificate;
    .end local p6    # "clientAuth":Lio/netty/handler/ssl/ClientAuth;
    .end local p7    # "protocols":[Ljava/lang/String;
    .end local p8    # "startTls":Z
    .end local p9    # "enableOcsp":Z
    .end local p10    # "leakDetection":Z
    .end local p11    # "ctxOptions":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/handler/ssl/SslContextOption<*>;Ljava/lang/Object;>;"
    throw v2

    .line 401
    .end local v6    # "configPair":Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;
    .end local v21    # "options":I
    .end local v22    # "cipherBuilder":Ljava/lang/StringBuilder;
    .local v0, "options":I
    .restart local v2    # "cipherBuilder":Ljava/lang/StringBuilder;
    .restart local v9    # "useTasks":Z
    .restart local v10    # "privateKeyMethod":Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;
    .restart local v11    # "asyncPrivateKeyMethod":Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;
    .restart local v12    # "certCompressionConfig":Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;
    .restart local v13    # "maxCertificateList":Ljava/lang/Integer;
    .restart local v14    # "success":Z
    .restart local v16    # "suites":[Ljava/lang/String;
    .restart local v19    # "tlsFalseStart":Z
    .restart local v20    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .restart local p1    # "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .restart local p2    # "cipherFilter":Lio/netty/handler/ssl/CipherSuiteFilter;
    .restart local p3    # "apn":Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .restart local p4    # "mode":I
    .restart local p5    # "keyCertChain":[Ljava/security/cert/Certificate;
    .restart local p6    # "clientAuth":Lio/netty/handler/ssl/ClientAuth;
    .restart local p7    # "protocols":[Ljava/lang/String;
    .restart local p8    # "startTls":Z
    .restart local p9    # "enableOcsp":Z
    .restart local p10    # "leakDetection":Z
    .restart local p11    # "ctxOptions":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/handler/ssl/SslContextOption<*>;Ljava/lang/Object;>;"
    :cond_1c
    move/from16 v21, v0

    move-object/from16 v22, v2

    .end local v0    # "options":I
    .end local v2    # "cipherBuilder":Ljava/lang/StringBuilder;
    .restart local v21    # "options":I
    .restart local v22    # "cipherBuilder":Ljava/lang/StringBuilder;
    goto :goto_11

    .line 400
    .end local v21    # "options":I
    .end local v22    # "cipherBuilder":Ljava/lang/StringBuilder;
    .restart local v0    # "options":I
    .restart local v2    # "cipherBuilder":Ljava/lang/StringBuilder;
    :cond_1d
    move/from16 v21, v0

    move-object/from16 v22, v2

    .line 421
    .end local v0    # "options":I
    .end local v2    # "cipherBuilder":Ljava/lang/StringBuilder;
    .restart local v21    # "options":I
    .restart local v22    # "cipherBuilder":Ljava/lang/StringBuilder;
    :goto_11
    if-eqz v13, :cond_1e

    .line 422
    iget-wide v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v5, v6, v0}, Lio/netty/internal/tcnative/SSLContext;->setMaxCertList(JI)V

    .line 425
    :cond_1e
    iget-wide v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->NAMED_GROUPS:[Ljava/lang/String;

    invoke-static {v5, v6, v0}, Lio/netty/internal/tcnative/SSLContext;->setCurvesList(J[Ljava/lang/String;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 426
    const/4 v0, 0x1

    .line 428
    .end local v4    # "nextProtoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "success":Z
    .end local v17    # "tlsv13Supported":Z
    .end local v18    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .end local v21    # "options":I
    .end local v22    # "cipherBuilder":Ljava/lang/StringBuilder;
    .local v0, "success":Z
    if-nez v0, :cond_1f

    .line 429
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->release()Z

    .line 432
    :cond_1f
    return-void

    .line 428
    .end local v0    # "success":Z
    .end local v19    # "tlsFalseStart":Z
    .restart local v8    # "tlsFalseStart":Z
    .restart local v14    # "success":Z
    :catchall_1
    move-exception v0

    move/from16 v19, v8

    .end local v8    # "tlsFalseStart":Z
    .restart local v19    # "tlsFalseStart":Z
    goto :goto_14

    .line 320
    .end local v19    # "tlsFalseStart":Z
    .local v4, "cipherBuilder":Ljava/lang/StringBuilder;
    .local v5, "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .restart local v8    # "tlsFalseStart":Z
    .restart local v17    # "tlsv13Supported":Z
    :catch_2
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v18, v5

    move/from16 v19, v8

    .end local v4    # "cipherBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .end local v8    # "tlsFalseStart":Z
    .restart local v18    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .restart local v19    # "tlsFalseStart":Z
    .restart local v22    # "cipherBuilder":Ljava/lang/StringBuilder;
    goto :goto_12

    .line 318
    .end local v18    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .end local v19    # "tlsFalseStart":Z
    .end local v22    # "cipherBuilder":Ljava/lang/StringBuilder;
    .restart local v4    # "cipherBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .restart local v8    # "tlsFalseStart":Z
    :catch_3
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v18, v5

    move/from16 v19, v8

    .end local v4    # "cipherBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .end local v8    # "tlsFalseStart":Z
    .restart local v18    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .restart local v19    # "tlsFalseStart":Z
    .restart local v22    # "cipherBuilder":Ljava/lang/StringBuilder;
    goto :goto_13

    .line 320
    .end local v18    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .end local v19    # "tlsFalseStart":Z
    .end local v20    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .end local v22    # "cipherBuilder":Ljava/lang/StringBuilder;
    .restart local v4    # "cipherBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .restart local v7    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .restart local v8    # "tlsFalseStart":Z
    :catch_4
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v7

    move/from16 v19, v8

    .line 321
    .end local v4    # "cipherBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .end local v7    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .end local v8    # "tlsFalseStart":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .restart local v19    # "tlsFalseStart":Z
    .restart local v20    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .restart local v22    # "cipherBuilder":Ljava/lang/StringBuilder;
    :goto_12
    :try_start_d
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to set cipher suite: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->unmodifiableCiphers:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v9    # "useTasks":Z
    .end local v10    # "privateKeyMethod":Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;
    .end local v11    # "asyncPrivateKeyMethod":Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;
    .end local v12    # "certCompressionConfig":Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;
    .end local v13    # "maxCertificateList":Ljava/lang/Integer;
    .end local v14    # "success":Z
    .end local v16    # "suites":[Ljava/lang/String;
    .end local v19    # "tlsFalseStart":Z
    .end local v20    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .end local p1    # "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .end local p2    # "cipherFilter":Lio/netty/handler/ssl/CipherSuiteFilter;
    .end local p3    # "apn":Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .end local p4    # "mode":I
    .end local p5    # "keyCertChain":[Ljava/security/cert/Certificate;
    .end local p6    # "clientAuth":Lio/netty/handler/ssl/ClientAuth;
    .end local p7    # "protocols":[Ljava/lang/String;
    .end local p8    # "startTls":Z
    .end local p9    # "enableOcsp":Z
    .end local p10    # "leakDetection":Z
    .end local p11    # "ctxOptions":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/handler/ssl/SslContextOption<*>;Ljava/lang/Object;>;"
    throw v2

    .line 318
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v18    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .end local v22    # "cipherBuilder":Ljava/lang/StringBuilder;
    .restart local v4    # "cipherBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .restart local v7    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .restart local v8    # "tlsFalseStart":Z
    .restart local v9    # "useTasks":Z
    .restart local v10    # "privateKeyMethod":Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;
    .restart local v11    # "asyncPrivateKeyMethod":Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;
    .restart local v12    # "certCompressionConfig":Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;
    .restart local v13    # "maxCertificateList":Ljava/lang/Integer;
    .restart local v14    # "success":Z
    .restart local v16    # "suites":[Ljava/lang/String;
    .restart local p1    # "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .restart local p2    # "cipherFilter":Lio/netty/handler/ssl/CipherSuiteFilter;
    .restart local p3    # "apn":Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .restart local p4    # "mode":I
    .restart local p5    # "keyCertChain":[Ljava/security/cert/Certificate;
    .restart local p6    # "clientAuth":Lio/netty/handler/ssl/ClientAuth;
    .restart local p7    # "protocols":[Ljava/lang/String;
    .restart local p8    # "startTls":Z
    .restart local p9    # "enableOcsp":Z
    .restart local p10    # "leakDetection":Z
    .restart local p11    # "ctxOptions":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/handler/ssl/SslContextOption<*>;Ljava/lang/Object;>;"
    :catch_5
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v7

    move/from16 v19, v8

    .line 319
    .end local v4    # "cipherBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .end local v7    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .end local v8    # "tlsFalseStart":Z
    .local v0, "e":Ljavax/net/ssl/SSLException;
    .restart local v18    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .restart local v19    # "tlsFalseStart":Z
    .restart local v20    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .restart local v22    # "cipherBuilder":Ljava/lang/StringBuilder;
    :goto_13
    nop

    .end local v9    # "useTasks":Z
    .end local v10    # "privateKeyMethod":Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;
    .end local v11    # "asyncPrivateKeyMethod":Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;
    .end local v12    # "certCompressionConfig":Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;
    .end local v13    # "maxCertificateList":Ljava/lang/Integer;
    .end local v14    # "success":Z
    .end local v16    # "suites":[Ljava/lang/String;
    .end local v19    # "tlsFalseStart":Z
    .end local v20    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .end local p1    # "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .end local p2    # "cipherFilter":Lio/netty/handler/ssl/CipherSuiteFilter;
    .end local p3    # "apn":Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .end local p4    # "mode":I
    .end local p5    # "keyCertChain":[Ljava/security/cert/Certificate;
    .end local p6    # "clientAuth":Lio/netty/handler/ssl/ClientAuth;
    .end local p7    # "protocols":[Ljava/lang/String;
    .end local p8    # "startTls":Z
    .end local p9    # "enableOcsp":Z
    .end local p10    # "leakDetection":Z
    .end local p11    # "ctxOptions":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/handler/ssl/SslContextOption<*>;Ljava/lang/Object;>;"
    throw v0

    .line 290
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    .end local v18    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .end local v22    # "cipherBuilder":Ljava/lang/StringBuilder;
    .restart local v7    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .restart local v8    # "tlsFalseStart":Z
    .restart local v9    # "useTasks":Z
    .restart local v10    # "privateKeyMethod":Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;
    .restart local v11    # "asyncPrivateKeyMethod":Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;
    .restart local v12    # "certCompressionConfig":Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;
    .restart local v13    # "maxCertificateList":Ljava/lang/Integer;
    .restart local v14    # "success":Z
    .restart local v16    # "suites":[Ljava/lang/String;
    .restart local p1    # "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .restart local p2    # "cipherFilter":Lio/netty/handler/ssl/CipherSuiteFilter;
    .restart local p3    # "apn":Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .restart local p4    # "mode":I
    .restart local p5    # "keyCertChain":[Ljava/security/cert/Certificate;
    .restart local p6    # "clientAuth":Lio/netty/handler/ssl/ClientAuth;
    .restart local p7    # "protocols":[Ljava/lang/String;
    .restart local p8    # "startTls":Z
    .restart local p9    # "enableOcsp":Z
    .restart local p10    # "leakDetection":Z
    .restart local p11    # "ctxOptions":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/handler/ssl/SslContextOption<*>;Ljava/lang/Object;>;"
    :catch_6
    move-exception v0

    move-object/from16 v20, v7

    move/from16 v19, v8

    .line 291
    .end local v7    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .end local v8    # "tlsFalseStart":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "tlsFalseStart":Z
    .restart local v20    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v4, "failed to create an SSL_CTX"

    invoke-direct {v2, v4, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v9    # "useTasks":Z
    .end local v10    # "privateKeyMethod":Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;
    .end local v11    # "asyncPrivateKeyMethod":Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;
    .end local v12    # "certCompressionConfig":Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;
    .end local v13    # "maxCertificateList":Ljava/lang/Integer;
    .end local v14    # "success":Z
    .end local v16    # "suites":[Ljava/lang/String;
    .end local v19    # "tlsFalseStart":Z
    .end local v20    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .end local p1    # "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .end local p2    # "cipherFilter":Lio/netty/handler/ssl/CipherSuiteFilter;
    .end local p3    # "apn":Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .end local p4    # "mode":I
    .end local p5    # "keyCertChain":[Ljava/security/cert/Certificate;
    .end local p6    # "clientAuth":Lio/netty/handler/ssl/ClientAuth;
    .end local p7    # "protocols":[Ljava/lang/String;
    .end local p8    # "startTls":Z
    .end local p9    # "enableOcsp":Z
    .end local p10    # "leakDetection":Z
    .end local p11    # "ctxOptions":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/handler/ssl/SslContextOption<*>;Ljava/lang/Object;>;"
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 428
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v17    # "tlsv13Supported":Z
    .restart local v9    # "useTasks":Z
    .restart local v10    # "privateKeyMethod":Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;
    .restart local v11    # "asyncPrivateKeyMethod":Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;
    .restart local v12    # "certCompressionConfig":Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;
    .restart local v13    # "maxCertificateList":Ljava/lang/Integer;
    .restart local v14    # "success":Z
    .restart local v16    # "suites":[Ljava/lang/String;
    .restart local v19    # "tlsFalseStart":Z
    .restart local v20    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .restart local p1    # "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .restart local p2    # "cipherFilter":Lio/netty/handler/ssl/CipherSuiteFilter;
    .restart local p3    # "apn":Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .restart local p4    # "mode":I
    .restart local p5    # "keyCertChain":[Ljava/security/cert/Certificate;
    .restart local p6    # "clientAuth":Lio/netty/handler/ssl/ClientAuth;
    .restart local p7    # "protocols":[Ljava/lang/String;
    .restart local p8    # "startTls":Z
    .restart local p9    # "enableOcsp":Z
    .restart local p10    # "leakDetection":Z
    .restart local p11    # "ctxOptions":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/handler/ssl/SslContextOption<*>;Ljava/lang/Object;>;"
    :catchall_2
    move-exception v0

    goto :goto_14

    .end local v19    # "tlsFalseStart":Z
    .end local v20    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .restart local v7    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .restart local v8    # "tlsFalseStart":Z
    :catchall_3
    move-exception v0

    move-object/from16 v20, v7

    move/from16 v19, v8

    .end local v7    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .end local v8    # "tlsFalseStart":Z
    .restart local v19    # "tlsFalseStart":Z
    .restart local v20    # "suitesSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :goto_14
    if-nez v14, :cond_20

    .line 429
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->release()Z

    .line 431
    :cond_20
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$000(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;)Lio/netty/util/ResourceLeakTracker;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    .line 87
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->leak:Lio/netty/util/ResourceLeakTracker;

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    .line 87
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->destroy()V

    return-void
.end method

.method static synthetic access$300()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 87
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method static synthetic access$400(Lio/netty/handler/ssl/OpenSslEngineMap;J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/OpenSslEngineMap;
    .param p1, "x1"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 87
    invoke-static {p0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->retrieveEngine(Lio/netty/handler/ssl/OpenSslEngineMap;J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500([B)[B
    .locals 1
    .param p0, "x0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 87
    invoke-static {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->verifyResult([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected static certificates([[B)[Ljava/security/cert/X509Certificate;
    .locals 4
    .param p0, "chain"    # [[B

    .line 652
    array-length v0, p0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 653
    .local v0, "peerCerts":[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 654
    new-instance v2, Lio/netty/handler/ssl/util/LazyX509Certificate;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lio/netty/handler/ssl/util/LazyX509Certificate;-><init>([B)V

    aput-object v2, v0, v1

    .line 653
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 656
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method protected static chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 4
    .param p0, "managers"    # [Ljavax/net/ssl/TrustManager;

    .line 660
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 661
    .local v2, "m":Ljavax/net/ssl/TrustManager;
    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_1

    .line 662
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 663
    .local v0, "tm":Ljavax/net/ssl/X509TrustManager;
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v1

    const/4 v3, 0x7

    if-lt v1, v3, :cond_0

    .line 664
    move-object v1, v2

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    invoke-static {v1}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->wrapIfNeeded(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 665
    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->useExtendedTrustManager(Ljavax/net/ssl/X509TrustManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    new-instance v1, Lio/netty/handler/ssl/EnhancingX509ExtendedTrustManager;

    invoke-direct {v1, v0}, Lio/netty/handler/ssl/EnhancingX509ExtendedTrustManager;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    move-object v0, v1

    .line 671
    :cond_0
    return-object v0

    .line 660
    .end local v0    # "tm":Ljavax/net/ssl/X509TrustManager;
    .end local v2    # "m":Ljavax/net/ssl/TrustManager;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 674
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no X509TrustManager found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static chooseX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    .locals 4
    .param p0, "kms"    # [Ljavax/net/ssl/KeyManager;

    .line 678
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 679
    .local v2, "km":Ljavax/net/ssl/KeyManager;
    instance-of v3, v2, Ljavax/net/ssl/X509KeyManager;

    if-eqz v3, :cond_0

    .line 680
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/X509KeyManager;

    return-object v0

    .line 678
    .end local v2    # "km":Ljavax/net/ssl/KeyManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 683
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no X509KeyManager found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private destroy()V
    .locals 5

    .line 630
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 631
    .local v0, "writerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 633
    :try_start_0
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 634
    iget-boolean v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->enableOcsp:Z

    if-eqz v1, :cond_0

    .line 635
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->disableOcsp(J)V

    .line 638
    :cond_0
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->free(J)I

    .line 639
    iput-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    .line 641
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v1

    .line 642
    .local v1, "context":Lio/netty/handler/ssl/OpenSslSessionContext;
    if-eqz v1, :cond_1

    .line 643
    invoke-virtual {v1}, Lio/netty/handler/ssl/OpenSslSessionContext;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    .end local v1    # "context":Lio/netty/handler/ssl/OpenSslSessionContext;
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 648
    nop

    .line 649
    return-void

    .line 647
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 648
    throw v1
.end method

.method static freeBio(J)V
    .locals 2
    .param p0, "bio"    # J

    .line 906
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 907
    invoke-static {p0, p1}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 909
    :cond_0
    return-void
.end method

.method private static newBIO(Lio/netty/buffer/ByteBuf;)J
    .locals 7
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 979
    :try_start_0
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->newMemBIO()J

    move-result-wide v0

    .line 980
    .local v0, "bio":J
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    .line 981
    .local v2, "readable":I
    invoke-static {p0}, Lio/netty/handler/ssl/OpenSsl;->memoryAddress(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v3

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-static {v0, v1, v3, v4, v2}, Lio/netty/internal/tcnative/SSL;->bioWrite(JJI)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v2, :cond_0

    .line 985
    nop

    .line 987
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 985
    return-wide v0

    .line 982
    :cond_0
    :try_start_1
    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 983
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not write data to memory BIO"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "buffer":Lio/netty/buffer/ByteBuf;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 987
    .end local v0    # "bio":J
    .end local v2    # "readable":I
    .restart local p0    # "buffer":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 988
    throw v0
.end method

.method private static opensslSelectorFailureBehavior(Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;)I
    .locals 2
    .param p0, "behavior"    # Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    .line 435
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectorFailureBehavior:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 441
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 439
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 437
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static providerFor(Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .locals 2
    .param p0, "factory"    # Ljavax/net/ssl/KeyManagerFactory;
    .param p1, "password"    # Ljava/lang/String;

    .line 997
    instance-of v0, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;

    if-eqz v0, :cond_0

    .line 998
    move-object v0, p0

    check-cast v0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;->newProvider()Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    move-result-object v0

    return-object v0

    .line 1001
    :cond_0
    instance-of v0, p0, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;

    if-eqz v0, :cond_1

    .line 1003
    move-object v0, p0

    check-cast v0, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;->newProvider(Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    move-result-object v0

    return-object v0

    .line 1006
    :cond_1
    new-instance v0, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    invoke-virtual {p0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->chooseX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;-><init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)V

    return-object v0
.end method

.method private static retrieveEngine(Lio/netty/handler/ssl/OpenSslEngineMap;J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .locals 4
    .param p0, "engineMap"    # Lio/netty/handler/ssl/OpenSslEngineMap;
    .param p1, "ssl"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1011
    invoke-interface {p0, p1, p2}, Lio/netty/handler/ssl/OpenSslEngineMap;->get(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object v0

    .line 1012
    .local v0, "engine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    if-eqz v0, :cond_0

    .line 1016
    return-object v0

    .line 1013
    :cond_0
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 1014
    invoke-static {v3}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for sslPointer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static setKeyMaterial(J[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 19
    .param p0, "ctx"    # J
    .param p2, "keyCertChain"    # [Ljava/security/cert/X509Certificate;
    .param p3, "key"    # Ljava/security/PrivateKey;
    .param p4, "keyPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 872
    move-object/from16 v1, p3

    const-wide/16 v2, 0x0

    .line 873
    .local v2, "keyBio":J
    const-wide/16 v4, 0x0

    .line 874
    .local v4, "keyCertChainBio":J
    const-wide/16 v6, 0x0

    .line 875
    .local v6, "keyCertChainBio2":J
    const/4 v8, 0x0

    .line 878
    .local v8, "encoded":Lio/netty/handler/ssl/PemEncoded;
    :try_start_0
    sget-object v0, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v9, 0x1

    move-object/from16 v10, p2

    :try_start_1
    invoke-static {v0, v9, v10}, Lio/netty/handler/ssl/PemX509Certificate;->toPEM(Lio/netty/buffer/ByteBufAllocator;Z[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/PemEncoded;

    move-result-object v0

    move-object v8, v0

    .line 879
    sget-object v0, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v8}, Lio/netty/handler/ssl/PemEncoded;->retain()Lio/netty/handler/ssl/PemEncoded;

    move-result-object v11

    invoke-static {v0, v11}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/PemEncoded;)J

    move-result-wide v14
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 880
    .end local v4    # "keyCertChainBio":J
    .local v14, "keyCertChainBio":J
    :try_start_2
    sget-object v0, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v8}, Lio/netty/handler/ssl/PemEncoded;->retain()Lio/netty/handler/ssl/PemEncoded;

    move-result-object v4

    invoke-static {v0, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/PemEncoded;)J

    move-result-wide v4

    move-wide v6, v4

    .line 882
    if-eqz v1, :cond_0

    .line 883
    sget-object v0, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;

    invoke-static {v0, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Ljava/security/PrivateKey;)J

    move-result-wide v4

    move-wide v2, v4

    .line 886
    :cond_0
    if-nez p4, :cond_1

    const-string v0, ""

    move-object/from16 v18, v0

    goto :goto_0

    :cond_1
    move-object/from16 v18, p4

    :goto_0
    move-wide/from16 v12, p0

    move-wide/from16 v16, v2

    invoke-static/range {v12 .. v18}, Lio/netty/internal/tcnative/SSLContext;->setCertificateBio(JJJLjava/lang/String;)Z
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 890
    move-wide/from16 v11, p0

    :try_start_3
    invoke-static {v11, v12, v6, v7, v9}, Lio/netty/internal/tcnative/SSLContext;->setCertificateChainBio(JJZ)Z
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 896
    invoke-static {v2, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->freeBio(J)V

    .line 897
    invoke-static {v14, v15}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->freeBio(J)V

    .line 898
    invoke-static {v6, v7}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->freeBio(J)V

    .line 899
    if-eqz v8, :cond_2

    .line 900
    invoke-interface {v8}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 903
    :cond_2
    return-void

    .line 896
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 893
    :catch_0
    move-exception v0

    goto :goto_2

    .line 891
    :catch_1
    move-exception v0

    goto :goto_3

    .line 896
    :catchall_1
    move-exception v0

    move-wide/from16 v11, p0

    :goto_1
    move-wide v4, v14

    goto :goto_6

    .line 893
    :catch_2
    move-exception v0

    move-wide/from16 v11, p0

    :goto_2
    move-wide v4, v14

    goto :goto_4

    .line 891
    :catch_3
    move-exception v0

    move-wide/from16 v11, p0

    :goto_3
    move-wide v4, v14

    goto :goto_5

    .line 896
    .end local v14    # "keyCertChainBio":J
    .restart local v4    # "keyCertChainBio":J
    :catchall_2
    move-exception v0

    move-wide/from16 v11, p0

    goto :goto_6

    .line 893
    :catch_4
    move-exception v0

    move-wide/from16 v11, p0

    goto :goto_4

    .line 891
    :catch_5
    move-exception v0

    move-wide/from16 v11, p0

    goto :goto_5

    .line 896
    :catchall_3
    move-exception v0

    move-wide/from16 v11, p0

    move-object/from16 v10, p2

    goto :goto_6

    .line 893
    :catch_6
    move-exception v0

    move-wide/from16 v11, p0

    move-object/from16 v10, p2

    .line 894
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    new-instance v9, Ljavax/net/ssl/SSLException;

    const-string v13, "failed to set certificate and key"

    invoke-direct {v9, v13, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "keyBio":J
    .end local v4    # "keyCertChainBio":J
    .end local v6    # "keyCertChainBio2":J
    .end local v8    # "encoded":Lio/netty/handler/ssl/PemEncoded;
    .end local p0    # "ctx":J
    .end local p2    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .end local p3    # "key":Ljava/security/PrivateKey;
    .end local p4    # "keyPassword":Ljava/lang/String;
    throw v9

    .line 891
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "keyBio":J
    .restart local v4    # "keyCertChainBio":J
    .restart local v6    # "keyCertChainBio2":J
    .restart local v8    # "encoded":Lio/netty/handler/ssl/PemEncoded;
    .restart local p0    # "ctx":J
    .restart local p2    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .restart local p3    # "key":Ljava/security/PrivateKey;
    .restart local p4    # "keyPassword":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-wide/from16 v11, p0

    move-object/from16 v10, p2

    .line 892
    .local v0, "e":Ljavax/net/ssl/SSLException;
    :goto_5
    nop

    .end local v2    # "keyBio":J
    .end local v4    # "keyCertChainBio":J
    .end local v6    # "keyCertChainBio2":J
    .end local v8    # "encoded":Lio/netty/handler/ssl/PemEncoded;
    .end local p0    # "ctx":J
    .end local p2    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .end local p3    # "key":Ljava/security/PrivateKey;
    .end local p4    # "keyPassword":Ljava/lang/String;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 896
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    .restart local v2    # "keyBio":J
    .restart local v4    # "keyCertChainBio":J
    .restart local v6    # "keyCertChainBio2":J
    .restart local v8    # "encoded":Lio/netty/handler/ssl/PemEncoded;
    .restart local p0    # "ctx":J
    .restart local p2    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .restart local p3    # "key":Ljava/security/PrivateKey;
    .restart local p4    # "keyPassword":Ljava/lang/String;
    :catchall_4
    move-exception v0

    :goto_6
    invoke-static {v2, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->freeBio(J)V

    .line 897
    invoke-static {v4, v5}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->freeBio(J)V

    .line 898
    invoke-static {v6, v7}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->freeBio(J)V

    .line 899
    if-eqz v8, :cond_3

    .line 900
    invoke-interface {v8}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 902
    :cond_3
    throw v0
.end method

.method static toBIO(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/PemEncoded;)J
    .locals 5
    .param p0, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "pem"    # Lio/netty/handler/ssl/PemEncoded;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 951
    :try_start_0
    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 953
    .local v0, "content":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 954
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retainedSlice()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newBIO(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 973
    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 954
    return-wide v1

    .line 957
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-interface {p0, v1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 959
    .local v1, "buffer":Lio/netty/buffer/ByteBuf;
    :try_start_2
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 960
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->retainedSlice()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-static {v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newBIO(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 965
    :try_start_3
    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->isSensitive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 966
    invoke-static {v1}, Lio/netty/handler/ssl/SslUtils;->zeroout(Lio/netty/buffer/ByteBuf;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 969
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 970
    nop

    .line 973
    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 960
    return-wide v2

    .line 969
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 970
    :goto_0
    nop

    .end local p0    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .end local p1    # "pem":Lio/netty/handler/ssl/PemEncoded;
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 962
    .restart local p0    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .restart local p1    # "pem":Lio/netty/handler/ssl/PemEncoded;
    :catchall_1
    move-exception v2

    .line 965
    :try_start_6
    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->isSensitive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 966
    invoke-static {v1}, Lio/netty/handler/ssl/SslUtils;->zeroout(Lio/netty/buffer/ByteBuf;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 969
    :cond_2
    :try_start_7
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 970
    nop

    .line 971
    nop

    .end local p0    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .end local p1    # "pem":Lio/netty/handler/ssl/PemEncoded;
    throw v2

    .line 969
    .restart local p0    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .restart local p1    # "pem":Lio/netty/handler/ssl/PemEncoded;
    :catchall_2
    move-exception v2

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_0

    .line 973
    .end local v0    # "content":Lio/netty/buffer/ByteBuf;
    .end local v1    # "buffer":Lio/netty/buffer/ByteBuf;
    :catchall_3
    move-exception v0

    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 974
    throw v0
.end method

.method static toBIO(Lio/netty/buffer/ByteBufAllocator;Ljava/security/PrivateKey;)J
    .locals 3
    .param p0, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 916
    if-nez p1, :cond_0

    .line 917
    const-wide/16 v0, 0x0

    return-wide v0

    .line 920
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lio/netty/handler/ssl/PemPrivateKey;->toPEM(Lio/netty/buffer/ByteBufAllocator;ZLjava/security/PrivateKey;)Lio/netty/handler/ssl/PemEncoded;

    move-result-object v0

    .line 922
    .local v0, "pem":Lio/netty/handler/ssl/PemEncoded;
    :try_start_0
    invoke-interface {v0}, Lio/netty/handler/ssl/PemEncoded;->retain()Lio/netty/handler/ssl/PemEncoded;

    move-result-object v1

    invoke-static {p0, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/PemEncoded;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    invoke-interface {v0}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 922
    return-wide v1

    .line 924
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 925
    throw v1
.end method

.method static varargs toBIO(Lio/netty/buffer/ByteBufAllocator;[Ljava/security/cert/X509Certificate;)J
    .locals 3
    .param p0, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "certChain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 933
    if-nez p1, :cond_0

    .line 934
    const-wide/16 v0, 0x0

    return-wide v0

    .line 937
    :cond_0
    const-string v0, "certChain"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNonEmpty([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 939
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lio/netty/handler/ssl/PemX509Certificate;->toPEM(Lio/netty/buffer/ByteBufAllocator;Z[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/PemEncoded;

    move-result-object v0

    .line 941
    .local v0, "pem":Lio/netty/handler/ssl/PemEncoded;
    :try_start_0
    invoke-interface {v0}, Lio/netty/handler/ssl/PemEncoded;->retain()Lio/netty/handler/ssl/PemEncoded;

    move-result-object v1

    invoke-static {p0, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/PemEncoded;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    invoke-interface {v0}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 941
    return-wide v1

    .line 943
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 944
    throw v1
.end method

.method static toNegotiator(Lio/netty/handler/ssl/ApplicationProtocolConfig;)Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .locals 4
    .param p0, "config"    # Lio/netty/handler/ssl/ApplicationProtocolConfig;

    .line 695
    if-nez p0, :cond_0

    .line 696
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->NONE_PROTOCOL_NEGOTIATOR:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    return-object v0

    .line 699
    :cond_0
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->protocol()Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 726
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 701
    :pswitch_0
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->NONE_PROTOCOL_NEGOTIATOR:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    return-object v0

    .line 705
    :pswitch_1
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectedListenerFailureBehavior:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectedListenerFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, " behavior"

    const-string v2, "OpenSSL provider does not support "

    packed-switch v0, :pswitch_data_1

    .line 720
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectedListenerFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 723
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :pswitch_2
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectorFailureBehavior:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectorFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_2

    .line 714
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectorFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 717
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :pswitch_3
    new-instance v0, Lio/netty/handler/ssl/OpenSslDefaultApplicationProtocolNegotiator;

    invoke-direct {v0, p0}, Lio/netty/handler/ssl/OpenSslDefaultApplicationProtocolNegotiator;-><init>(Lio/netty/handler/ssl/ApplicationProtocolConfig;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static useExtendedTrustManager(Ljavax/net/ssl/X509TrustManager;)Z
    .locals 2
    .param p0, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 732
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static verifyResult([B)[B
    .locals 1
    .param p0, "result"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1114
    if-eqz p0, :cond_0

    .line 1117
    return-object p0

    .line 1115
    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0}, Ljava/security/SignatureException;-><init>()V

    throw v0
.end method


# virtual methods
.method public applicationProtocolNegotiator()Lio/netty/handler/ssl/ApplicationProtocolNegotiator;
    .locals 1

    .line 452
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->apn:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    return-object v0
.end method

.method public final cipherSuites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->unmodifiableCiphers:Ljava/util/List;

    return-object v0
.end method

.method public final context()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 507
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sslCtxPointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBioNonApplicationBufferSize()I
    .locals 1

    .line 554
    iget v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->bioNonApplicationBufferSize:I

    return v0
.end method

.method public getRejectRemoteInitiatedRenegotiation()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 538
    const/4 v0, 0x1

    return v0
.end method

.method public final isClient()Z
    .locals 1

    .line 457
    iget v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->mode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final newEngine(Lio/netty/buffer/ByteBufAllocator;)Ljavax/net/ssl/SSLEngine;
    .locals 2
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;

    .line 495
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newEngine(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method public final newEngine(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 1
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "peerHost"    # Ljava/lang/String;
    .param p3, "peerPort"    # I

    .line 462
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newEngine0(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method newEngine0(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;
    .locals 8
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "peerHost"    # Ljava/lang/String;
    .param p3, "peerPort"    # I
    .param p4, "jdkCompatibilityMode"    # Z

    .line 487
    new-instance v7, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZZ)V

    return-object v7
.end method

.method protected final newHandler(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Lio/netty/handler/ssl/SslHandler;
    .locals 2
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "peerHost"    # Ljava/lang/String;
    .param p3, "peerPort"    # I
    .param p4, "startTls"    # Z

    .line 472
    new-instance v0, Lio/netty/handler/ssl/SslHandler;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newEngine0(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    return-object v0
.end method

.method protected newHandler(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZLjava/util/concurrent/Executor;)Lio/netty/handler/ssl/SslHandler;
    .locals 2
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "peerHost"    # Ljava/lang/String;
    .param p3, "peerPort"    # I
    .param p4, "startTls"    # Z
    .param p5, "executor"    # Ljava/util/concurrent/Executor;

    .line 483
    new-instance v0, Lio/netty/handler/ssl/SslHandler;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newEngine0(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-direct {v0, v1, p5}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method protected final newHandler(Lio/netty/buffer/ByteBufAllocator;Z)Lio/netty/handler/ssl/SslHandler;
    .locals 4
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "startTls"    # Z

    .line 467
    new-instance v0, Lio/netty/handler/ssl/SslHandler;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v1, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newEngine0(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    return-object v0
.end method

.method protected newHandler(Lio/netty/buffer/ByteBufAllocator;ZLjava/util/concurrent/Executor;)Lio/netty/handler/ssl/SslHandler;
    .locals 4
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "startTls"    # Z
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 477
    new-instance v0, Lio/netty/handler/ssl/SslHandler;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v1, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newEngine0(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final refCnt()I
    .locals 1

    .line 737
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->refCnt()I

    move-result v0

    return v0
.end method

.method public final release()Z
    .locals 1

    .line 766
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->release()Z

    move-result v0

    return v0
.end method

.method public final release(I)Z
    .locals 1
    .param p1, "decrement"    # I

    .line 771
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0, p1}, Lio/netty/util/AbstractReferenceCounted;->release(I)Z

    move-result v0

    return v0
.end method

.method public final retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 742
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->retain()Lio/netty/util/ReferenceCounted;

    .line 743
    return-object p0
.end method

.method public final retain(I)Lio/netty/util/ReferenceCounted;
    .locals 1
    .param p1, "increment"    # I

    .line 748
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0, p1}, Lio/netty/util/AbstractReferenceCounted;->retain(I)Lio/netty/util/ReferenceCounted;

    .line 749
    return-object p0
.end method

.method public abstract sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;
.end method

.method public bridge synthetic sessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public setBioNonApplicationBufferSize(I)V
    .locals 1
    .param p1, "bioNonApplicationBufferSize"    # I

    .line 546
    nop

    .line 547
    const-string v0, "bioNonApplicationBufferSize"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->bioNonApplicationBufferSize:I

    .line 548
    return-void
.end method

.method public final setPrivateKeyMethod(Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;)V
    .locals 5
    .param p1, "method"    # Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 601
    const-string v0, "method"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 602
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 603
    .local v0, "writerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 605
    :try_start_0
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    new-instance v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;

    iget-object v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-direct {v3, v4, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;)V

    invoke-static {v1, v2, v3}, Lio/netty/internal/tcnative/SSLContext;->setPrivateKeyMethod(JLio/netty/internal/tcnative/SSLPrivateKeyMethod;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 608
    nop

    .line 609
    return-void

    .line 607
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 608
    throw v1
.end method

.method public setRejectRemoteInitiatedRenegotiation(Z)V
    .locals 2
    .param p1, "rejectRemoteInitiatedRenegotiation"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 527
    if-eqz p1, :cond_0

    .line 530
    return-void

    .line 528
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Renegotiation is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setTicketKeys([B)V
    .locals 1
    .param p1, "keys"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 564
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/OpenSslSessionContext;->setTicketKeys([B)V

    .line 565
    return-void
.end method

.method public final setUseTasks(Z)V
    .locals 3
    .param p1, "useTasks"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 617
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 618
    .local v0, "writerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 620
    :try_start_0
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v1, v2, p1}, Lio/netty/internal/tcnative/SSLContext;->setUseTasks(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 623
    nop

    .line 624
    return-void

    .line 622
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 623
    throw v1
.end method

.method public final sslCtxPointer()J
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 579
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 580
    .local v0, "readerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 582
    :try_start_0
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->getSslCtx(J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 582
    return-wide v1

    .line 584
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 585
    throw v1
.end method

.method public final stats()Lio/netty/handler/ssl/OpenSslSessionStats;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 517
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslSessionContext;->stats()Lio/netty/handler/ssl/OpenSslSessionStats;

    move-result-object v0

    return-object v0
.end method

.method public final touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 754
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->touch()Lio/netty/util/ReferenceCounted;

    .line 755
    return-object p0
.end method

.method public final touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 1
    .param p1, "hint"    # Ljava/lang/Object;

    .line 760
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0, p1}, Lio/netty/util/AbstractReferenceCounted;->touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;

    .line 761
    return-object p0
.end method
