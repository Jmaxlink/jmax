.class public final Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;
.super Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.source "ReferenceCountedOpenSslServerContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslSniHostnameMatcher;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$ExtendedTrustManagerVerifyCallback;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$TrustManagerVerifyCallback;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslServerCertificateCallback;
    }
.end annotation


# static fields
.field private static final ID:[B

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final sessionContext:Lio/netty/handler/ssl/OpenSslServerSessionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    nop

    .line 51
    const-class v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->ID:[B

    return-void

    :array_0
    .array-data 1
        0x6et
        0x65t
        0x74t
        0x74t
        0x79t
    .end array-data
.end method

.method varargs constructor <init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;JJLio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZLjava/lang/String;[Ljava/util/Map$Entry;)V
    .locals 20
    .param p1, "trustCertCollection"    # [Ljava/security/cert/X509Certificate;
    .param p2, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .param p3, "keyCertChain"    # [Ljava/security/cert/X509Certificate;
    .param p4, "key"    # Ljava/security/PrivateKey;
    .param p5, "keyPassword"    # Ljava/lang/String;
    .param p6, "keyManagerFactory"    # Ljavax/net/ssl/KeyManagerFactory;
    .param p8, "cipherFilter"    # Lio/netty/handler/ssl/CipherSuiteFilter;
    .param p9, "apn"    # Lio/netty/handler/ssl/ApplicationProtocolConfig;
    .param p10, "sessionCacheSize"    # J
    .param p12, "sessionTimeout"    # J
    .param p14, "clientAuth"    # Lio/netty/handler/ssl/ClientAuth;
    .param p15, "protocols"    # [Ljava/lang/String;
    .param p16, "startTls"    # Z
    .param p17, "enableOcsp"    # Z
    .param p18, "keyStore"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljavax/net/ssl/TrustManagerFactory;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PrivateKey;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/KeyManagerFactory;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            "Lio/netty/handler/ssl/ApplicationProtocolConfig;",
            "JJ",
            "Lio/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "[",
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

    .local p7, "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .local p19, "options":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/handler/ssl/SslContextOption<*>;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    .line 62
    nop

    .line 63
    invoke-static/range {p9 .. p9}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->toNegotiator(Lio/netty/handler/ssl/ApplicationProtocolConfig;)Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    move-result-object v9

    .line 62
    invoke-direct/range {v0 .. v19}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;-><init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;JJLio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZLjava/lang/String;[Ljava/util/Map$Entry;)V

    .line 65
    return-void
.end method

.method varargs constructor <init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;JJLio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZLjava/lang/String;[Ljava/util/Map$Entry;)V
    .locals 17
    .param p1, "trustCertCollection"    # [Ljava/security/cert/X509Certificate;
    .param p2, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .param p3, "keyCertChain"    # [Ljava/security/cert/X509Certificate;
    .param p4, "key"    # Ljava/security/PrivateKey;
    .param p5, "keyPassword"    # Ljava/lang/String;
    .param p6, "keyManagerFactory"    # Ljavax/net/ssl/KeyManagerFactory;
    .param p8, "cipherFilter"    # Lio/netty/handler/ssl/CipherSuiteFilter;
    .param p9, "apn"    # Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .param p10, "sessionCacheSize"    # J
    .param p12, "sessionTimeout"    # J
    .param p14, "clientAuth"    # Lio/netty/handler/ssl/ClientAuth;
    .param p15, "protocols"    # [Ljava/lang/String;
    .param p16, "startTls"    # Z
    .param p17, "enableOcsp"    # Z
    .param p18, "keyStore"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljavax/net/ssl/TrustManagerFactory;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PrivateKey;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/KeyManagerFactory;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            "Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;",
            "JJ",
            "Lio/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "[",
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

    .line 74
    .local p7, "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .local p19, "options":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/handler/ssl/SslContextOption<*>;Ljava/lang/Object;>;"
    move-object/from16 v14, p0

    const/4 v5, 0x1

    const/4 v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v6, p3

    move-object/from16 v7, p14

    move-object/from16 v8, p15

    move/from16 v9, p16

    move/from16 v10, p17

    move-object/from16 v12, p19

    invoke-direct/range {v1 .. v12}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;-><init>(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;I[Ljava/security/cert/Certificate;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZZ[Ljava/util/Map$Entry;)V

    .line 77
    const/16 v16, 0x0

    .line 79
    .local v16, "success":Z
    :try_start_0
    iget-wide v2, v14, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->ctx:J

    iget-object v4, v14, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p18

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    :try_start_1
    invoke-static/range {v1 .. v15}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->newSessionContext(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;JLio/netty/handler/ssl/OpenSslEngineMap;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;JJ)Lio/netty/handler/ssl/OpenSslServerSessionContext;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    :try_start_2
    iput-object v0, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->sessionContext:Lio/netty/handler/ssl/OpenSslServerSessionContext;

    .line 82
    sget-boolean v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->SERVER_ENABLE_SESSION_TICKET:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->sessionContext:Lio/netty/handler/ssl/OpenSslServerSessionContext;

    const/4 v2, 0x0

    new-array v2, v2, [Lio/netty/handler/ssl/OpenSslSessionTicketKey;

    invoke-virtual {v0, v2}, Lio/netty/handler/ssl/OpenSslServerSessionContext;->setTicketKeys([Lio/netty/handler/ssl/OpenSslSessionTicketKey;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :cond_0
    const/4 v0, 0x1

    .line 87
    .end local v16    # "success":Z
    .local v0, "success":Z
    if-nez v0, :cond_1

    .line 88
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->release()Z

    .line 91
    :cond_1
    return-void

    .line 87
    .end local v0    # "success":Z
    .restart local v16    # "success":Z
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v14

    :goto_0
    if-nez v16, :cond_2

    .line 88
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->release()Z

    .line 90
    :cond_2
    throw v0
.end method

.method static synthetic access$000()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 49
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method static newSessionContext(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;JLio/netty/handler/ssl/OpenSslEngineMap;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;JJ)Lio/netty/handler/ssl/OpenSslServerSessionContext;
    .locals 20
    .param p0, "thiz"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .param p1, "ctx"    # J
    .param p3, "engineMap"    # Lio/netty/handler/ssl/OpenSslEngineMap;
    .param p4, "trustCertCollection"    # [Ljava/security/cert/X509Certificate;
    .param p5, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .param p6, "keyCertChain"    # [Ljava/security/cert/X509Certificate;
    .param p7, "key"    # Ljava/security/PrivateKey;
    .param p8, "keyPassword"    # Ljava/lang/String;
    .param p9, "keyManagerFactory"    # Ljavax/net/ssl/KeyManagerFactory;
    .param p10, "keyStore"    # Ljava/lang/String;
    .param p11, "sessionCacheSize"    # J
    .param p13, "sessionTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 106
    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    const/4 v14, 0x0

    .line 109
    .local v14, "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    const/4 v0, 0x0

    const/16 v15, 0xa

    :try_start_0
    invoke-static {v1, v2, v0, v15}, Lio/netty/internal/tcnative/SSLContext;->setVerify(JII)V

    .line 110
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->useKeyManagerFactory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    if-nez p9, :cond_0

    .line 115
    const-string v0, "keyCertChain"

    invoke-static {v6, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    invoke-static {v1, v2, v6, v7, v8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->setKeyMaterial(J[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;)V

    move-object/from16 v6, p9

    goto :goto_2

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v15, "KeyManagerFactory not supported"

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v14    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .end local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .end local p1    # "ctx":J
    .end local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .end local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .end local p7    # "key":Ljava/security/PrivateKey;
    .end local p8    # "keyPassword":Ljava/lang/String;
    .end local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .end local p10    # "keyStore":Ljava/lang/String;
    .end local p11    # "sessionCacheSize":J
    .end local p13    # "sessionTimeout":J
    throw v0

    .line 121
    .restart local v14    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .restart local p1    # "ctx":J
    .restart local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .restart local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .restart local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .restart local p7    # "key":Ljava/security/PrivateKey;
    .restart local p8    # "keyPassword":Ljava/lang/String;
    .restart local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local p10    # "keyStore":Ljava/lang/String;
    .restart local p11    # "sessionCacheSize":J
    .restart local p13    # "sessionTimeout":J
    :cond_1
    if-nez p9, :cond_3

    .line 122
    invoke-static/range {p8 .. p8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->keyStorePassword(Ljava/lang/String;)[C

    move-result-object v0

    .line 123
    .local v0, "keyPasswordChars":[C
    invoke-static {v6, v7, v0, v9}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->buildKeyStore([Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;[CLjava/lang/String;)Ljava/security/KeyStore;

    move-result-object v15

    .line 124
    .local v15, "ks":Ljava/security/KeyStore;
    invoke-virtual {v15}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 125
    new-instance v16, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;

    invoke-direct/range {v16 .. v16}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;-><init>()V

    move-object/from16 v6, v16

    .end local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .local v16, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    goto :goto_0

    .line 127
    .end local v16    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :cond_2
    new-instance v6, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;

    .line 128
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v7

    invoke-direct {v6, v7}, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 130
    .end local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .local v6, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :goto_0
    :try_start_1
    invoke-virtual {v6, v15, v0}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    goto :goto_1

    .line 121
    .end local v0    # "keyPasswordChars":[C
    .end local v6    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .end local v15    # "ks":Ljava/security/KeyStore;
    .restart local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :cond_3
    move-object/from16 v6, p9

    .line 132
    .end local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v6    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :goto_1
    invoke-static {v6, v8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->providerFor(Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    move-result-object v0

    move-object v14, v0

    .line 134
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslServerCertificateCallback;

    new-instance v7, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;

    invoke-direct {v7, v14}, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;-><init>(Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;)V

    invoke-direct {v0, v3, v7}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslServerCertificateCallback;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslKeyMaterialManager;)V

    invoke-static {v1, v2, v0}, Lio/netty/internal/tcnative/SSLContext;->setCertificateCallback(JLio/netty/internal/tcnative/CertificateCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 139
    :goto_2
    nop

    .line 141
    if-eqz v4, :cond_4

    .line 142
    :try_start_2
    invoke-static {v4, v5, v9}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->buildTrustManagerFactory([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    move-object v5, v0

    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .local v0, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    goto :goto_3

    .line 182
    .end local v0    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v0

    goto/16 :goto_6

    .line 180
    :catch_1
    move-exception v0

    goto/16 :goto_7

    .line 143
    :cond_4
    if-nez v5, :cond_5

    .line 146
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-object v5, v0

    .line 147
    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .local v5, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v0, 0x0

    :try_start_3
    move-object v7, v0

    check-cast v7, Ljava/security/KeyStore;

    invoke-virtual {v5, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    goto :goto_3

    .line 182
    :catch_2
    move-exception v0

    goto/16 :goto_6

    .line 180
    :catch_3
    move-exception v0

    goto/16 :goto_7

    .line 150
    :cond_5
    :goto_3
    :try_start_4
    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    move-object v7, v0

    .line 158
    .local v7, "manager":Ljavax/net/ssl/X509TrustManager;
    invoke-static {v1, v2, v3, v7}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->setVerifyCallback(JLio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509TrustManager;)V

    .line 160
    invoke-interface {v7}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    move-object v15, v0

    .line 161
    .local v15, "issuers":[Ljava/security/cert/X509Certificate;
    if-eqz v15, :cond_7

    array-length v0, v15
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-lez v0, :cond_7

    .line 162
    const-wide/16 v16, 0x0

    .line 164
    .local v16, "bio":J
    :try_start_5
    sget-object v0, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;

    invoke-static {v0, v15}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;[Ljava/security/cert/X509Certificate;)J

    move-result-wide v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-wide/from16 v16, v18

    .line 165
    move-object/from16 p5, v5

    move-wide/from16 v4, v16

    .end local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v16    # "bio":J
    .local v4, "bio":J
    .restart local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :try_start_6
    invoke-static {v1, v2, v4, v5}, Lio/netty/internal/tcnative/SSLContext;->setCACertificateBio(JJ)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_6

    .line 169
    :try_start_7
    invoke-static {v4, v5}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->freeBio(J)V
    :try_end_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 170
    goto :goto_5

    .line 166
    :cond_6
    :try_start_8
    new-instance v0, Ljavax/net/ssl/SSLException;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-wide/from16 v16, v4

    .end local v4    # "bio":J
    .restart local v16    # "bio":J
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to setup accepted issuers for trustmanager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .end local v6    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .end local v7    # "manager":Ljavax/net/ssl/X509TrustManager;
    .end local v14    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .end local v15    # "issuers":[Ljava/security/cert/X509Certificate;
    .end local v16    # "bio":J
    .end local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .end local p1    # "ctx":J
    .end local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .end local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .end local p7    # "key":Ljava/security/PrivateKey;
    .end local p8    # "keyPassword":Ljava/lang/String;
    .end local p10    # "keyStore":Ljava/lang/String;
    .end local p11    # "sessionCacheSize":J
    .end local p13    # "sessionTimeout":J
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 169
    .restart local v6    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v7    # "manager":Ljavax/net/ssl/X509TrustManager;
    .restart local v14    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local v15    # "issuers":[Ljava/security/cert/X509Certificate;
    .restart local v16    # "bio":J
    .restart local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .restart local p1    # "ctx":J
    .restart local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .restart local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .restart local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .restart local p7    # "key":Ljava/security/PrivateKey;
    .restart local p8    # "keyPassword":Ljava/lang/String;
    .restart local p10    # "keyStore":Ljava/lang/String;
    .restart local p11    # "sessionCacheSize":J
    .restart local p13    # "sessionTimeout":J
    :catchall_0
    move-exception v0

    goto :goto_4

    .end local v16    # "bio":J
    .restart local v4    # "bio":J
    :catchall_1
    move-exception v0

    move-wide/from16 v16, v4

    .end local v4    # "bio":J
    .restart local v16    # "bio":J
    goto :goto_4

    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :catchall_2
    move-exception v0

    move-object/from16 p5, v5

    .end local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :goto_4
    :try_start_a
    invoke-static/range {v16 .. v17}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->freeBio(J)V

    .line 170
    nop

    .end local v6    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .end local v14    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .end local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .end local p1    # "ctx":J
    .end local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .end local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .end local p7    # "key":Ljava/security/PrivateKey;
    .end local p8    # "keyPassword":Ljava/lang/String;
    .end local p10    # "keyStore":Ljava/lang/String;
    .end local p11    # "sessionCacheSize":J
    .end local p13    # "sessionTimeout":J
    throw v0

    .line 161
    .end local v16    # "bio":J
    .restart local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v6    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v14    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .restart local p1    # "ctx":J
    .restart local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .restart local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .restart local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .restart local p7    # "key":Ljava/security/PrivateKey;
    .restart local p8    # "keyPassword":Ljava/lang/String;
    .restart local p10    # "keyStore":Ljava/lang/String;
    .restart local p11    # "sessionCacheSize":J
    .restart local p13    # "sessionTimeout":J
    :cond_7
    move-object/from16 p5, v5

    .line 173
    .end local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :goto_5
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/16 v4, 0x8

    if-lt v0, v4, :cond_8

    .line 178
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslSniHostnameMatcher;

    invoke-direct {v0, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslSniHostnameMatcher;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;)V

    invoke-static {v1, v2, v0}, Lio/netty/internal/tcnative/SSLContext;->setSniHostnameMatcher(JLio/netty/internal/tcnative/SniHostNameMatcher;)V
    :try_end_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 184
    .end local v7    # "manager":Ljavax/net/ssl/X509TrustManager;
    .end local v15    # "issuers":[Ljava/security/cert/X509Certificate;
    :cond_8
    nop

    .line 186
    :try_start_b
    new-instance v0, Lio/netty/handler/ssl/OpenSslServerSessionContext;

    move-object/from16 v4, p0

    invoke-direct {v0, v4, v14}, Lio/netty/handler/ssl/OpenSslServerSessionContext;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;)V

    .line 187
    .local v0, "sessionContext":Lio/netty/handler/ssl/OpenSslServerSessionContext;
    sget-object v5, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->ID:[B

    invoke-virtual {v0, v5}, Lio/netty/handler/ssl/OpenSslServerSessionContext;->setSessionIdContext([B)Z

    .line 189
    sget-boolean v5, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->SERVER_ENABLE_SESSION_CACHE:Z

    invoke-virtual {v0, v5}, Lio/netty/handler/ssl/OpenSslServerSessionContext;->setSessionCacheEnabled(Z)V

    .line 190
    const-wide/16 v15, 0x0

    cmp-long v5, v10, v15

    const-wide/32 v1, 0x7fffffff

    if-lez v5, :cond_9

    .line 191
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Lio/netty/handler/ssl/OpenSslServerSessionContext;->setSessionCacheSize(I)V

    .line 193
    :cond_9
    cmp-long v3, v12, v15

    if-lez v3, :cond_a

    .line 194
    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/OpenSslServerSessionContext;->setSessionTimeout(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 197
    :cond_a
    const/4 v1, 0x0

    .line 199
    .end local v14    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .local v1, "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    nop

    .line 201
    if-eqz v1, :cond_b

    .line 202
    invoke-virtual {v1}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->destroy()V

    .line 199
    :cond_b
    return-object v0

    .line 201
    .end local v0    # "sessionContext":Lio/netty/handler/ssl/OpenSslServerSessionContext;
    .end local v1    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local v14    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    :catchall_3
    move-exception v0

    move-object/from16 v5, p5

    goto :goto_9

    .line 182
    :catch_4
    move-exception v0

    move-object/from16 v5, p5

    goto :goto_6

    .line 180
    :catch_5
    move-exception v0

    move-object/from16 v5, p5

    goto :goto_7

    .line 201
    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :catchall_4
    move-exception v0

    move-object/from16 p5, v5

    .end local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    goto :goto_9

    .line 182
    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :catch_6
    move-exception v0

    move-object/from16 p5, v5

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_c
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "unable to setup trustmanager"

    invoke-direct {v1, v2, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v6    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .end local v14    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .end local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .end local p1    # "ctx":J
    .end local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .end local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .end local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .end local p7    # "key":Ljava/security/PrivateKey;
    .end local p8    # "keyPassword":Ljava/lang/String;
    .end local p10    # "keyStore":Ljava/lang/String;
    .end local p11    # "sessionCacheSize":J
    .end local p13    # "sessionTimeout":J
    throw v1

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v6    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v14    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .restart local p1    # "ctx":J
    .restart local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .restart local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .restart local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .restart local p7    # "key":Ljava/security/PrivateKey;
    .restart local p8    # "keyPassword":Ljava/lang/String;
    .restart local p10    # "keyStore":Ljava/lang/String;
    .restart local p11    # "sessionCacheSize":J
    .restart local p13    # "sessionTimeout":J
    :catch_7
    move-exception v0

    move-object/from16 p5, v5

    .line 181
    .local v0, "e":Ljavax/net/ssl/SSLException;
    :goto_7
    nop

    .end local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v6    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .end local v14    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .end local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .end local p1    # "ctx":J
    .end local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .end local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .end local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .end local p7    # "key":Ljava/security/PrivateKey;
    .end local p8    # "keyPassword":Ljava/lang/String;
    .end local p10    # "keyStore":Ljava/lang/String;
    .end local p11    # "sessionCacheSize":J
    .end local p13    # "sessionTimeout":J
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 201
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    .restart local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v6    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v14    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .restart local p1    # "ctx":J
    .restart local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .restart local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .restart local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .restart local p7    # "key":Ljava/security/PrivateKey;
    .restart local p8    # "keyPassword":Ljava/lang/String;
    .restart local p10    # "keyStore":Ljava/lang/String;
    .restart local p11    # "sessionCacheSize":J
    .restart local p13    # "sessionTimeout":J
    :catchall_5
    move-exception v0

    goto :goto_9

    .line 137
    .end local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :catch_8
    move-exception v0

    goto :goto_8

    .line 201
    .end local v6    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :catchall_6
    move-exception v0

    move-object/from16 v6, p9

    goto :goto_9

    .line 137
    :catch_9
    move-exception v0

    move-object/from16 v6, p9

    .line 138
    .end local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :goto_8
    :try_start_d
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "failed to set certificate and key"

    invoke-direct {v1, v2, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .end local v14    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .end local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .end local p1    # "ctx":J
    .end local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .end local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .end local p7    # "key":Ljava/security/PrivateKey;
    .end local p8    # "keyPassword":Ljava/lang/String;
    .end local p10    # "keyStore":Ljava/lang/String;
    .end local p11    # "sessionCacheSize":J
    .end local p13    # "sessionTimeout":J
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v6    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v14    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .restart local p1    # "ctx":J
    .restart local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .restart local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .restart local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .restart local p7    # "key":Ljava/security/PrivateKey;
    .restart local p8    # "keyPassword":Ljava/lang/String;
    .restart local p10    # "keyStore":Ljava/lang/String;
    .restart local p11    # "sessionCacheSize":J
    .restart local p13    # "sessionTimeout":J
    :catchall_7
    move-exception v0

    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :goto_9
    if-eqz v14, :cond_c

    .line 202
    invoke-virtual {v14}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->destroy()V

    .line 204
    :cond_c
    throw v0
.end method

.method private static setVerifyCallback(JLio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509TrustManager;)V
    .locals 2
    .param p0, "ctx"    # J
    .param p2, "engineMap"    # Lio/netty/handler/ssl/OpenSslEngineMap;
    .param p3, "manager"    # Ljavax/net/ssl/X509TrustManager;

    .line 210
    invoke-static {p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->useExtendedTrustManager(Ljavax/net/ssl/X509TrustManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$ExtendedTrustManagerVerifyCallback;

    move-object v1, p3

    check-cast v1, Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-direct {v0, p2, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$ExtendedTrustManagerVerifyCallback;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509ExtendedTrustManager;)V

    invoke-static {p0, p1, v0}, Lio/netty/internal/tcnative/SSLContext;->setCertVerifyCallback(JLio/netty/internal/tcnative/CertificateVerifier;)V

    goto :goto_0

    .line 214
    :cond_0
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$TrustManagerVerifyCallback;

    invoke-direct {v0, p2, p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$TrustManagerVerifyCallback;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509TrustManager;)V

    invoke-static {p0, p1, v0}, Lio/netty/internal/tcnative/SSLContext;->setCertVerifyCallback(JLio/netty/internal/tcnative/CertificateVerifier;)V

    .line 216
    :goto_0
    return-void
.end method


# virtual methods
.method public sessionContext()Lio/netty/handler/ssl/OpenSslServerSessionContext;
    .locals 1

    .line 95
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->sessionContext:Lio/netty/handler/ssl/OpenSslServerSessionContext;

    return-object v0
.end method

.method public bridge synthetic sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->sessionContext()Lio/netty/handler/ssl/OpenSslServerSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->sessionContext()Lio/netty/handler/ssl/OpenSslServerSessionContext;

    move-result-object v0

    return-object v0
.end method
