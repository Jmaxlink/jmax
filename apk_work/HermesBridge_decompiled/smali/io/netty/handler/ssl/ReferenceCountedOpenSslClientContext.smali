.class public final Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;
.super Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.source "ReferenceCountedOpenSslClientContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$ExtendedTrustManagerVerifyCallback;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$TrustManagerVerifyCallback;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientSessionContext;
    }
.end annotation


# static fields
.field private static final SUPPORTED_KEY_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final sessionContext:Lio/netty/handler/ssl/OpenSslSessionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 52
    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v1, "EC_RSA"

    const-string v2, "EC_EC"

    const-string v3, "RSA"

    const-string v4, "DH_RSA"

    const-string v5, "EC"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 52
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->SUPPORTED_KEY_TYPES:Ljava/util/Set;

    return-void
.end method

.method varargs constructor <init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;[Ljava/lang/String;JJZLjava/lang/String;[Ljava/util/Map$Entry;)V
    .locals 17
    .param p1, "trustCertCollection"    # [Ljava/security/cert/X509Certificate;
    .param p2, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .param p3, "keyCertChain"    # [Ljava/security/cert/X509Certificate;
    .param p4, "key"    # Ljava/security/PrivateKey;
    .param p5, "keyPassword"    # Ljava/lang/String;
    .param p6, "keyManagerFactory"    # Ljavax/net/ssl/KeyManagerFactory;
    .param p8, "cipherFilter"    # Lio/netty/handler/ssl/CipherSuiteFilter;
    .param p9, "apn"    # Lio/netty/handler/ssl/ApplicationProtocolConfig;
    .param p10, "protocols"    # [Ljava/lang/String;
    .param p11, "sessionCacheSize"    # J
    .param p13, "sessionTimeout"    # J
    .param p15, "enableOcsp"    # Z
    .param p16, "keyStore"    # Ljava/lang/String;
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
            "[",
            "Ljava/lang/String;",
            "JJZ",
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

    .line 68
    .local p7, "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .local p17, "options":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/handler/ssl/SslContextOption<*>;Ljava/lang/Object;>;"
    move-object/from16 v14, p0

    invoke-static/range {p9 .. p9}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->toNegotiator(Lio/netty/handler/ssl/ApplicationProtocolConfig;)Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    move-result-object v4

    sget-object v7, Lio/netty/handler/ssl/ClientAuth;->NONE:Lio/netty/handler/ssl/ClientAuth;

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v6, p3

    move-object/from16 v8, p10

    move/from16 v10, p15

    move-object/from16 v12, p17

    invoke-direct/range {v1 .. v12}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;-><init>(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;I[Ljava/security/cert/Certificate;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZZ[Ljava/util/Map$Entry;)V

    .line 70
    const/16 v16, 0x0

    .line 72
    .local v16, "success":Z
    :try_start_0
    iget-wide v2, v14, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->ctx:J

    iget-object v4, v14, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p16

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    :try_start_1
    invoke-static/range {v1 .. v15}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->newSessionContext(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;JLio/netty/handler/ssl/OpenSslEngineMap;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;JJ)Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    :try_start_2
    iput-object v0, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->sessionContext:Lio/netty/handler/ssl/OpenSslSessionContext;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    const/4 v0, 0x1

    .line 77
    .end local v16    # "success":Z
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 78
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->release()Z

    .line 81
    :cond_0
    return-void

    .line 77
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
    if-nez v16, :cond_1

    .line 78
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->release()Z

    .line 80
    :cond_1
    throw v0
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .line 50
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->SUPPORTED_KEY_TYPES:Ljava/util/Set;

    return-object v0
.end method

.method static newSessionContext(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;JLio/netty/handler/ssl/OpenSslEngineMap;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;JJ)Lio/netty/handler/ssl/OpenSslSessionContext;
    .locals 18
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

    .line 96
    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    if-nez v7, :cond_0

    if-nez v6, :cond_1

    :cond_0
    if-eqz v7, :cond_2

    if-eqz v6, :cond_1

    goto :goto_0

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v15, "Either both keyCertChain and key needs to be null or none of them"

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_2
    :goto_0
    const/4 v15, 0x0

    .line 103
    .local v15, "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    :try_start_0
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->useKeyManagerFactory()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-nez v0, :cond_4

    .line 104
    if-nez v9, :cond_3

    .line 108
    if-eqz v6, :cond_8

    .line 109
    :try_start_1
    invoke-static {v1, v2, v6, v7, v8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->setKeyMaterial(J[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 185
    :catchall_0
    move-exception v0

    move-object/from16 v6, p0

    goto/16 :goto_8

    .line 134
    :catch_0
    move-exception v0

    move-object/from16 v6, p0

    goto/16 :goto_7

    .line 105
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v16, v15

    .end local v15    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .local v16, "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    :try_start_3
    const-string v15, "KeyManagerFactory not supported"

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v16    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
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

    .line 185
    .restart local v15    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
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
    :catchall_1
    move-exception v0

    move-object/from16 v16, v15

    move-object/from16 v6, p0

    goto/16 :goto_6

    .line 134
    :catch_1
    move-exception v0

    move-object/from16 v16, v15

    move-object/from16 v6, p0

    goto/16 :goto_7

    .line 113
    :cond_4
    move-object/from16 v16, v15

    .end local v15    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local v16    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    if-nez v9, :cond_6

    if-eqz v6, :cond_6

    .line 114
    invoke-static/range {p8 .. p8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->keyStorePassword(Ljava/lang/String;)[C

    move-result-object v0

    .line 115
    .local v0, "keyPasswordChars":[C
    invoke-static {v6, v7, v0, v10}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->buildKeyStore([Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;[CLjava/lang/String;)Ljava/security/KeyStore;

    move-result-object v15

    .line 116
    .local v15, "ks":Ljava/security/KeyStore;
    invoke-virtual {v15}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 117
    new-instance v17, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;

    invoke-direct/range {v17 .. v17}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;-><init>()V

    move-object/from16 v9, v17

    move-object v6, v9

    .end local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .local v9, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    goto :goto_1

    .line 119
    .end local v9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :cond_5
    new-instance v6, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;

    .line 120
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v7

    invoke-direct {v6, v7}, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactory;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 122
    .end local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .local v6, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :goto_1
    :try_start_4
    invoke-virtual {v6, v15, v0}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 123
    invoke-static {v6, v8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->providerFor(Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v0, v7

    .line 124
    .end local v15    # "ks":Ljava/security/KeyStore;
    .end local v16    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .local v0, "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    move-object v15, v0

    move-object v9, v6

    goto :goto_2

    .line 185
    .end local v0    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local v16    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    :catchall_2
    move-exception v0

    move-object v9, v6

    move-object/from16 v15, v16

    move-object/from16 v6, p0

    goto/16 :goto_8

    .line 134
    :catch_2
    move-exception v0

    move-object v9, v6

    move-object/from16 v15, v16

    move-object/from16 v6, p0

    goto/16 :goto_7

    .line 124
    .end local v6    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :cond_6
    if-eqz v9, :cond_7

    .line 125
    :try_start_5
    invoke-static {v9, v8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->providerFor(Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v15, v0

    .end local v16    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local v0    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    goto :goto_2

    .line 185
    .end local v0    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local v16    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    :catchall_3
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v15, v16

    goto/16 :goto_8

    .line 134
    :catch_3
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v15, v16

    goto/16 :goto_7

    .line 124
    :cond_7
    move-object/from16 v15, v16

    .line 128
    .end local v16    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .end local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .local v15, "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    :goto_2
    if-eqz v15, :cond_8

    .line 129
    :try_start_6
    new-instance v0, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;

    invoke-direct {v0, v15}, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;-><init>(Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;)V

    .line 130
    .local v0, "materialManager":Lio/netty/handler/ssl/OpenSslKeyMaterialManager;
    new-instance v6, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;

    invoke-direct {v6, v3, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslKeyMaterialManager;)V

    invoke-static {v1, v2, v6}, Lio/netty/internal/tcnative/SSLContext;->setCertificateCallback(JLio/netty/internal/tcnative/CertificateCallback;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_3

    .line 185
    .end local v0    # "materialManager":Lio/netty/handler/ssl/OpenSslKeyMaterialManager;
    :catchall_4
    move-exception v0

    move-object/from16 v6, p0

    goto/16 :goto_8

    .line 134
    :catch_4
    move-exception v0

    move-object/from16 v6, p0

    goto/16 :goto_7

    .line 136
    :cond_8
    :goto_3
    nop

    .line 144
    const/4 v0, 0x1

    const/16 v6, 0xa

    :try_start_7
    invoke-static {v1, v2, v0, v6}, Lio/netty/internal/tcnative/SSLContext;->setVerify(JII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 147
    if-eqz v4, :cond_9

    .line 148
    :try_start_8
    invoke-static {v4, v5, v10}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->buildTrustManagerFactory([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    move-object v5, v0

    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .local v0, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    goto :goto_4

    .line 163
    .end local v0    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :catch_5
    move-exception v0

    move-object/from16 v6, p0

    goto :goto_5

    .line 149
    :cond_9
    if-nez v5, :cond_a

    .line 151
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v5, v0

    .line 152
    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .local v5, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v0, 0x0

    :try_start_9
    move-object v6, v0

    check-cast v6, Ljava/security/KeyStore;

    invoke-virtual {v5, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 154
    :cond_a
    :goto_4
    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 162
    .local v0, "manager":Ljavax/net/ssl/X509TrustManager;
    invoke-static {v1, v2, v3, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->setVerifyCallback(JLio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509TrustManager;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 168
    .end local v0    # "manager":Ljavax/net/ssl/X509TrustManager;
    nop

    .line 169
    :try_start_a
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientSessionContext;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object/from16 v6, p0

    :try_start_b
    invoke-direct {v0, v6, v15}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientSessionContext;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;)V

    .line 170
    .local v0, "context":Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientSessionContext;
    sget-boolean v7, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->CLIENT_ENABLE_SESSION_CACHE:Z

    invoke-virtual {v0, v7}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientSessionContext;->setSessionCacheEnabled(Z)V

    .line 171
    const-wide/16 v16, 0x0

    cmp-long v7, v11, v16

    const-wide/32 v1, 0x7fffffff

    if-lez v7, :cond_b

    .line 172
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientSessionContext;->setSessionCacheSize(I)V

    .line 174
    :cond_b
    cmp-long v3, v13, v16

    if-lez v3, :cond_c

    .line 175
    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientSessionContext;->setSessionTimeout(I)V

    .line 178
    :cond_c
    sget-boolean v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->CLIENT_ENABLE_SESSION_TICKET:Z

    if-eqz v1, :cond_d

    .line 179
    const/4 v1, 0x0

    new-array v1, v1, [Lio/netty/handler/ssl/OpenSslSessionTicketKey;

    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientSessionContext;->setTicketKeys([Lio/netty/handler/ssl/OpenSslSessionTicketKey;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 182
    :cond_d
    const/4 v1, 0x0

    .line 183
    .end local v15    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .local v1, "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    nop

    .line 185
    if-eqz v1, :cond_e

    .line 186
    invoke-virtual {v1}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->destroy()V

    .line 183
    :cond_e
    return-object v0

    .line 185
    .end local v0    # "context":Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientSessionContext;
    .end local v1    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local v15    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    :catchall_5
    move-exception v0

    move-object/from16 v6, p0

    goto :goto_8

    .line 163
    :catch_6
    move-exception v0

    move-object/from16 v6, p0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    if-eqz v15, :cond_f

    .line 165
    :try_start_c
    invoke-virtual {v15}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->destroy()V

    .line 167
    :cond_f
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "unable to setup trustmanager"

    invoke-direct {v1, v2, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .end local v15    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
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
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v15    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
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
    :catchall_6
    move-exception v0

    goto :goto_8

    .end local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :catchall_7
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v16, v15

    .end local v15    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local v16    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    :goto_6
    goto :goto_8

    .line 134
    .end local v16    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local v15    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    :catch_7
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v16, v15

    .line 135
    .end local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :goto_7
    :try_start_d
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "failed to set certificate and key"

    invoke-direct {v1, v2, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .end local v15    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
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
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v15    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
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
    :catchall_8
    move-exception v0

    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :goto_8
    if-eqz v15, :cond_10

    .line 186
    invoke-virtual {v15}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->destroy()V

    .line 188
    :cond_10
    throw v0
.end method

.method private static setVerifyCallback(JLio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509TrustManager;)V
    .locals 2
    .param p0, "ctx"    # J
    .param p2, "engineMap"    # Lio/netty/handler/ssl/OpenSslEngineMap;
    .param p3, "manager"    # Ljavax/net/ssl/X509TrustManager;

    .line 194
    invoke-static {p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->useExtendedTrustManager(Ljavax/net/ssl/X509TrustManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$ExtendedTrustManagerVerifyCallback;

    move-object v1, p3

    check-cast v1, Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-direct {v0, p2, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$ExtendedTrustManagerVerifyCallback;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509ExtendedTrustManager;)V

    invoke-static {p0, p1, v0}, Lio/netty/internal/tcnative/SSLContext;->setCertVerifyCallback(JLio/netty/internal/tcnative/CertificateVerifier;)V

    goto :goto_0

    .line 198
    :cond_0
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$TrustManagerVerifyCallback;

    invoke-direct {v0, p2, p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$TrustManagerVerifyCallback;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509TrustManager;)V

    invoke-static {p0, p1, v0}, Lio/netty/internal/tcnative/SSLContext;->setCertVerifyCallback(JLio/netty/internal/tcnative/CertificateVerifier;)V

    .line 200
    :goto_0
    return-void
.end method


# virtual methods
.method public sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;
    .locals 1

    .line 85
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->sessionContext:Lio/netty/handler/ssl/OpenSslSessionContext;

    return-object v0
.end method

.method public bridge synthetic sessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0

    return-object v0
.end method
