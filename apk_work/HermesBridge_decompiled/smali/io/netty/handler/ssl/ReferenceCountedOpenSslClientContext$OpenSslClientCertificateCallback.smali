.class final Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;
.super Ljava/lang/Object;
.source "ReferenceCountedOpenSslClientContext.java"

# interfaces
.implements Lio/netty/internal/tcnative/CertificateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OpenSslClientCertificateCallback"
.end annotation


# instance fields
.field private final engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

.field private final keyManagerHolder:Lio/netty/handler/ssl/OpenSslKeyMaterialManager;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslKeyMaterialManager;)V
    .locals 0
    .param p1, "engineMap"    # Lio/netty/handler/ssl/OpenSslEngineMap;
    .param p2, "keyManagerHolder"    # Lio/netty/handler/ssl/OpenSslKeyMaterialManager;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    .line 245
    iput-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;->keyManagerHolder:Lio/netty/handler/ssl/OpenSslKeyMaterialManager;

    .line 246
    return-void
.end method

.method private static clientKeyType(B)Ljava/lang/String;
    .locals 1
    .param p0, "clientCertificateType"    # B

    .line 304
    sparse-switch p0, :sswitch_data_0

    .line 316
    const/4 v0, 0x0

    return-object v0

    .line 314
    :sswitch_0
    const-string v0, "EC_EC"

    return-object v0

    .line 312
    :sswitch_1
    const-string v0, "EC_RSA"

    return-object v0

    .line 310
    :sswitch_2
    const-string v0, "EC"

    return-object v0

    .line 308
    :sswitch_3
    const-string v0, "DH_RSA"

    return-object v0

    .line 306
    :sswitch_4
    const-string v0, "RSA"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_3
        0x40 -> :sswitch_2
        0x41 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method private static supportedClientKeyTypes([B)Ljava/util/Set;
    .locals 5
    .param p0, "clientCertificateTypes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 286
    if-nez p0, :cond_0

    .line 288
    invoke-static {}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->access$000()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 290
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 291
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v3, p0, v2

    .line 292
    .local v3, "keyTypeCode":B
    invoke-static {v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;->clientKeyType(B)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, "keyType":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 295
    goto :goto_1

    .line 297
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    .end local v3    # "keyTypeCode":B
    .end local v4    # "keyType":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    :cond_2
    return-object v0
.end method


# virtual methods
.method public handle(J[B[[B)V
    .locals 7
    .param p1, "ssl"    # J
    .param p3, "keyTypeBytes"    # [B
    .param p4, "asn1DerEncodedPrincipals"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/ssl/OpenSslEngineMap;->get(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object v0

    .line 252
    .local v0, "engine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    if-nez v0, :cond_0

    .line 253
    return-void

    .line 256
    :cond_0
    :try_start_0
    invoke-static {p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;->supportedClientKeyTypes([B)Ljava/util/Set;

    move-result-object v1

    .line 257
    .local v1, "keyTypesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v2, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 259
    .local v2, "keyTypes":[Ljava/lang/String;
    if-nez p4, :cond_1

    .line 260
    const/4 v3, 0x0

    .local v3, "issuers":[Ljavax/security/auth/x500/X500Principal;
    goto :goto_1

    .line 262
    .end local v3    # "issuers":[Ljavax/security/auth/x500/X500Principal;
    :cond_1
    array-length v3, p4

    new-array v3, v3, [Ljavax/security/auth/x500/X500Principal;

    .line 263
    .restart local v3    # "issuers":[Ljavax/security/auth/x500/X500Principal;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p4

    if-ge v4, v5, :cond_2

    .line 264
    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    aget-object v6, p4, v4

    invoke-direct {v5, v6}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v5, v3, v4

    .line 263
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 267
    .end local v4    # "i":I
    :cond_2
    :goto_1
    iget-object v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;->keyManagerHolder:Lio/netty/handler/ssl/OpenSslKeyMaterialManager;

    invoke-virtual {v4, v0, v2, v3}, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->setKeyMaterialClientSide(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;[Ljava/lang/String;[Ljavax/security/auth/x500/X500Principal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .end local v1    # "keyTypesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "keyTypes":[Ljava/lang/String;
    .end local v3    # "issuers":[Ljavax/security/auth/x500/X500Principal;
    nop

    .line 275
    return-void

    .line 268
    :catchall_0
    move-exception v1

    .line 269
    .local v1, "cause":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->initHandshakeException(Ljava/lang/Throwable;)V

    .line 270
    instance-of v2, v1, Ljava/lang/Exception;

    if-eqz v2, :cond_3

    .line 271
    move-object v2, v1

    check-cast v2, Ljava/lang/Exception;

    throw v2

    .line 273
    :cond_3
    new-instance v2, Ljavax/net/ssl/SSLException;

    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
