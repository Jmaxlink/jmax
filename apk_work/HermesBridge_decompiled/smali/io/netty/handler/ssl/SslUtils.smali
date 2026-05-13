.class final Lio/netty/handler/ssl/SslUtils;
.super Ljava/lang/Object;
.source "SslUtils.java"


# static fields
.field static final DEFAULT_CIPHER_SUITES:[Ljava/lang/String;

.field static final DEFAULT_TLSV13_CIPHER_SUITES:[Ljava/lang/String;

.field static final DTLS_1_0:S = -0x101s

.field static final DTLS_1_2:S = -0x103s

.field static final DTLS_1_3:S = -0x104s

.field static final DTLS_RECORD_HEADER_LENGTH:S = 0xds

.field static final GMSSL_PROTOCOL_VERSION:I = 0x101

.field static final INVALID_CIPHER:Ljava/lang/String; = "SSL_NULL_WITH_NULL_NULL"

.field static final NOT_ENCRYPTED:I = -0x2

.field static final NOT_ENOUGH_DATA:I = -0x1

.field static final SSL_CONTENT_TYPE_ALERT:I = 0x15

.field static final SSL_CONTENT_TYPE_APPLICATION_DATA:I = 0x17

.field static final SSL_CONTENT_TYPE_CHANGE_CIPHER_SPEC:I = 0x14

.field static final SSL_CONTENT_TYPE_EXTENSION_HEARTBEAT:I = 0x18

.field static final SSL_CONTENT_TYPE_HANDSHAKE:I = 0x16

.field static final SSL_RECORD_HEADER_LENGTH:I = 0x5

.field static final TLSV13_CIPHERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final TLSV13_CIPHER_SUITES:[Ljava/lang/String;

.field private static final TLSV1_3_JDK_DEFAULT_ENABLED:Z

.field private static final TLSV1_3_JDK_SUPPORTED:Z

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 51
    const-class v0, Lio/netty/handler/ssl/SslUtils;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslUtils;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 54
    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v1, "TLS_AES_128_CCM_8_SHA256"

    const-string v2, "TLS_AES_128_CCM_SHA256"

    const-string v3, "TLS_AES_256_GCM_SHA384"

    const-string v4, "TLS_CHACHA20_POLY1305_SHA256"

    const-string v5, "TLS_AES_128_GCM_SHA256"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 54
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslUtils;->TLSV13_CIPHERS:Ljava/util/Set;

    .line 113
    filled-new-array {v5, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslUtils;->TLSV13_CIPHER_SUITES:[Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    invoke-static {v0}, Lio/netty/handler/ssl/SslUtils;->isTLSv13SupportedByJDK0(Ljava/security/Provider;)Z

    move-result v1

    sput-boolean v1, Lio/netty/handler/ssl/SslUtils;->TLSV1_3_JDK_SUPPORTED:Z

    .line 120
    invoke-static {v0}, Lio/netty/handler/ssl/SslUtils;->isTLSv13EnabledByJDK0(Ljava/security/Provider;)Z

    move-result v0

    sput-boolean v0, Lio/netty/handler/ssl/SslUtils;->TLSV1_3_JDK_DEFAULT_ENABLED:Z

    .line 121
    sget-boolean v0, Lio/netty/handler/ssl/SslUtils;->TLSV1_3_JDK_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lio/netty/handler/ssl/SslUtils;->TLSV13_CIPHER_SUITES:[Ljava/lang/String;

    sput-object v0, Lio/netty/handler/ssl/SslUtils;->DEFAULT_TLSV13_CIPHER_SUITES:[Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_0
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    sput-object v0, Lio/netty/handler/ssl/SslUtils;->DEFAULT_TLSV13_CIPHER_SUITES:[Ljava/lang/String;

    .line 127
    :goto_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 129
    .local v0, "defaultCiphers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    const-string v1, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v1, Lio/netty/handler/ssl/SslUtils;->DEFAULT_TLSV13_CIPHER_SUITES:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 144
    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lio/netty/handler/ssl/SslUtils;->DEFAULT_CIPHER_SUITES:[Ljava/lang/String;

    .line 145
    .end local v0    # "defaultCiphers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    return-void
.end method

.method static varargs addIfSupported(Ljava/util/Set;Ljava/util/List;[Ljava/lang/String;)V
    .locals 4
    .param p2, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 230
    .local p0, "supported":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p1, "enabled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 231
    .local v2, "n":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v2    # "n":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_1
    return-void
.end method

.method static arrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 218
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 219
    .local v3, "v":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    const/4 v0, 0x1

    return v0

    .line 218
    .end local v3    # "v":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    :cond_1
    return v1
.end method

.method static getEncryptedPacketLength(Lio/netty/buffer/ByteBuf;I)I
    .locals 9
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I

    .line 276
    const/4 v0, 0x0

    .line 280
    .local v0, "packetLength":I
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 290
    const/4 v1, 0x0

    .local v1, "tls":Z
    goto :goto_0

    .line 286
    .end local v1    # "tls":Z
    :pswitch_0
    const/4 v1, 0x1

    .line 287
    .restart local v1    # "tls":Z
    nop

    .line 293
    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eqz v1, :cond_5

    .line 295
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, v5}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v5

    .line 296
    .local v5, "majorVersion":I
    add-int/lit8 v6, p1, 0x1

    invoke-virtual {p0, v6}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result v6

    .line 297
    .local v6, "version":I
    if-eq v5, v4, :cond_4

    const/16 v7, 0x101

    if-ne v6, v7, :cond_0

    goto :goto_2

    .line 304
    :cond_0
    const/16 v7, -0x101

    if-eq v6, v7, :cond_2

    const/16 v7, -0x103

    if-eq v6, v7, :cond_2

    const/16 v7, -0x104

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 313
    :cond_1
    const/4 v1, 0x0

    goto :goto_3

    .line 305
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v7

    add-int/lit8 v8, p1, 0xd

    if-ge v7, v8, :cond_3

    .line 306
    return v2

    .line 309
    :cond_3
    add-int/lit8 v7, p1, 0xd

    sub-int/2addr v7, v3

    invoke-static {p0, v7}, Lio/netty/handler/ssl/SslUtils;->unsignedShortBE(Lio/netty/buffer/ByteBuf;I)I

    move-result v7

    add-int/lit8 v0, v7, 0xd

    goto :goto_3

    .line 299
    :cond_4
    :goto_2
    add-int/lit8 v7, p1, 0x3

    invoke-static {p0, v7}, Lio/netty/handler/ssl/SslUtils;->unsignedShortBE(Lio/netty/buffer/ByteBuf;I)I

    move-result v7

    const/4 v8, 0x5

    add-int/lit8 v0, v7, 0x5

    .line 300
    if-gt v0, v8, :cond_5

    .line 302
    const/4 v1, 0x0

    .line 317
    .end local v5    # "majorVersion":I
    .end local v6    # "version":I
    :cond_5
    :goto_3
    if-nez v1, :cond_a

    .line 319
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_6

    move v5, v3

    goto :goto_4

    :cond_6
    move v5, v4

    .line 320
    .local v5, "headerLength":I
    :goto_4
    add-int v6, p1, v5

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v6

    .line 321
    .local v6, "majorVersion":I
    if-eq v6, v3, :cond_8

    if-ne v6, v4, :cond_7

    goto :goto_5

    .line 329
    :cond_7
    const/4 v2, -0x2

    return v2

    .line 323
    :cond_8
    :goto_5
    if-ne v5, v3, :cond_9

    .line 324
    invoke-static {p0, p1}, Lio/netty/handler/ssl/SslUtils;->shortBE(Lio/netty/buffer/ByteBuf;I)S

    move-result v4

    and-int/lit16 v4, v4, 0x7fff

    add-int/2addr v4, v3

    goto :goto_6

    :cond_9
    invoke-static {p0, p1}, Lio/netty/handler/ssl/SslUtils;->shortBE(Lio/netty/buffer/ByteBuf;I)S

    move-result v3

    and-int/lit16 v3, v3, 0x3fff

    add-int/2addr v4, v3

    :goto_6
    move v0, v4

    .line 325
    if-gt v0, v5, :cond_a

    .line 326
    return v2

    .line 332
    .end local v5    # "headerLength":I
    .end local v6    # "majorVersion":I
    :cond_a
    return v0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "packetLength":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 399
    .local v1, "pos":I
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lio/netty/handler/ssl/SslUtils;->unsignedByte(B)S

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 409
    const/4 v2, 0x0

    .local v2, "tls":Z
    goto :goto_0

    .line 405
    .end local v2    # "tls":Z
    :pswitch_0
    const/4 v2, 0x1

    .line 406
    .restart local v2    # "tls":Z
    nop

    .line 412
    :goto_0
    const/4 v3, 0x3

    if-eqz v2, :cond_2

    .line 414
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lio/netty/handler/ssl/SslUtils;->unsignedByte(B)S

    move-result v4

    .line 415
    .local v4, "majorVersion":I
    if-eq v4, v3, :cond_1

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    const/16 v6, 0x101

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 424
    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    .line 417
    :cond_1
    :goto_1
    add-int/lit8 v5, v1, 0x3

    invoke-static {p0, v5}, Lio/netty/handler/ssl/SslUtils;->unsignedShortBE(Ljava/nio/ByteBuffer;I)I

    move-result v5

    const/4 v6, 0x5

    add-int/lit8 v0, v5, 0x5

    .line 418
    if-gt v0, v6, :cond_2

    .line 420
    const/4 v2, 0x0

    .line 428
    .end local v4    # "majorVersion":I
    :cond_2
    :goto_2
    if-nez v2, :cond_7

    .line 430
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lio/netty/handler/ssl/SslUtils;->unsignedByte(B)S

    move-result v4

    and-int/lit16 v4, v4, 0x80

    const/4 v5, 0x2

    if-eqz v4, :cond_3

    move v4, v5

    goto :goto_3

    :cond_3
    move v4, v3

    .line 431
    .local v4, "headerLength":I
    :goto_3
    add-int v6, v1, v4

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-static {v6}, Lio/netty/handler/ssl/SslUtils;->unsignedByte(B)S

    move-result v6

    .line 432
    .local v6, "majorVersion":I
    if-eq v6, v5, :cond_5

    if-ne v6, v3, :cond_4

    goto :goto_4

    .line 440
    :cond_4
    const/4 v3, -0x2

    return v3

    .line 434
    :cond_5
    :goto_4
    if-ne v4, v5, :cond_6

    .line 435
    invoke-static {p0, v1}, Lio/netty/handler/ssl/SslUtils;->shortBE(Ljava/nio/ByteBuffer;I)S

    move-result v3

    and-int/lit16 v3, v3, 0x7fff

    add-int/2addr v3, v5

    goto :goto_5

    :cond_6
    invoke-static {p0, v1}, Lio/netty/handler/ssl/SslUtils;->shortBE(Ljava/nio/ByteBuffer;I)S

    move-result v5

    and-int/lit16 v5, v5, 0x3fff

    add-int/2addr v3, v5

    :goto_5
    move v0, v3

    .line 436
    if-gt v0, v4, :cond_7

    .line 437
    const/4 v3, -0x1

    return v3

    .line 443
    .end local v4    # "headerLength":I
    .end local v6    # "majorVersion":I
    :cond_7
    return v0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static getEncryptedPacketLength([Ljava/nio/ByteBuffer;I)I
    .locals 4
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 371
    aget-object v0, p0, p1

    .line 374
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 375
    invoke-static {v0}, Lio/netty/handler/ssl/SslUtils;->getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I

    move-result v1

    return v1

    .line 379
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 382
    .local v1, "tmp":Ljava/nio/ByteBuffer;
    :goto_0
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .local v2, "offset":I
    aget-object p1, p0, p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le p1, v3, :cond_1

    .line 384
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 386
    :cond_1
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 387
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_2

    .line 390
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 391
    invoke-static {v1}, Lio/netty/handler/ssl/SslUtils;->getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1

    .line 387
    :cond_2
    move p1, v2

    goto :goto_0
.end method

.method static getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 3
    .param p0, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 204
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {}, Lio/netty/handler/ssl/SslUtils;->getTlsVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .local v0, "context":Ljavax/net/ssl/SSLContext;
    goto :goto_0

    .line 207
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    :cond_0
    invoke-static {}, Lio/netty/handler/ssl/SslUtils;->getTlsVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 209
    .restart local v0    # "context":Ljavax/net/ssl/SSLContext;
    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 210
    return-object v0
.end method

.method private static getTlsVersion()Ljava/lang/String;
    .locals 1

    .line 214
    sget-boolean v0, Lio/netty/handler/ssl/SslUtils;->TLSV1_3_JDK_SUPPORTED:Z

    if-eqz v0, :cond_0

    const-string v0, "TLSv1.3"

    goto :goto_0

    :cond_0
    const-string v0, "TLSv1.2"

    :goto_0
    return-object v0
.end method

.method static handleHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;Z)V
    .locals 1
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "notify"    # Z

    .line 449
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 450
    if-eqz p2, :cond_0

    .line 451
    new-instance v0, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    invoke-direct {v0, p1}, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 453
    :cond_0
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 454
    return-void
.end method

.method static isTLSv13Cipher(Ljava/lang/String;)Z
    .locals 1
    .param p0, "cipher"    # Ljava/lang/String;

    .line 504
    sget-object v0, Lio/netty/handler/ssl/SslUtils;->TLSV13_CIPHERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isTLSv13EnabledByJDK(Ljava/security/Provider;)Z
    .locals 1
    .param p0, "provider"    # Ljava/security/Provider;

    .line 172
    if-nez p0, :cond_0

    .line 173
    sget-boolean v0, Lio/netty/handler/ssl/SslUtils;->TLSV1_3_JDK_DEFAULT_ENABLED:Z

    return v0

    .line 175
    :cond_0
    invoke-static {p0}, Lio/netty/handler/ssl/SslUtils;->isTLSv13EnabledByJDK0(Ljava/security/Provider;)Z

    move-result v0

    return v0
.end method

.method private static isTLSv13EnabledByJDK0(Ljava/security/Provider;)Z
    .locals 3
    .param p0, "provider"    # Ljava/security/Provider;

    .line 180
    :try_start_0
    invoke-static {p0}, Lio/netty/handler/ssl/SslUtils;->newInitContext(Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "TLSv1.3"

    .line 180
    invoke-static {v0, v1}, Lio/netty/handler/ssl/SslUtils;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 182
    :catchall_0
    move-exception v0

    .line 183
    .local v0, "cause":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/handler/ssl/SslUtils;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Unable to detect if JDK SSLEngine with provider {} enables TLSv1.3 by default, assuming no"

    invoke-interface {v1, v2, p0, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    const/4 v1, 0x0

    return v1
.end method

.method static isTLSv13SupportedByJDK(Ljava/security/Provider;)Z
    .locals 1
    .param p0, "provider"    # Ljava/security/Provider;

    .line 151
    if-nez p0, :cond_0

    .line 152
    sget-boolean v0, Lio/netty/handler/ssl/SslUtils;->TLSV1_3_JDK_SUPPORTED:Z

    return v0

    .line 154
    :cond_0
    invoke-static {p0}, Lio/netty/handler/ssl/SslUtils;->isTLSv13SupportedByJDK0(Ljava/security/Provider;)Z

    move-result v0

    return v0
.end method

.method private static isTLSv13SupportedByJDK0(Ljava/security/Provider;)Z
    .locals 3
    .param p0, "provider"    # Ljava/security/Provider;

    .line 159
    :try_start_0
    invoke-static {p0}, Lio/netty/handler/ssl/SslUtils;->newInitContext(Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "TLSv1.3"

    .line 159
    invoke-static {v0, v1}, Lio/netty/handler/ssl/SslUtils;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 161
    :catchall_0
    move-exception v0

    .line 162
    .local v0, "cause":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/handler/ssl/SslUtils;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Unable to detect if JDK SSLEngine with provider {} supports TLSv1.3, assuming no"

    invoke-interface {v1, v2, p0, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    const/4 v1, 0x0

    return v1
.end method

.method static isValidHostNameForSNI(Ljava/lang/String;)Z
    .locals 1
    .param p0, "hostname"    # Ljava/lang/String;

    .line 490
    if-eqz p0, :cond_0

    .line 493
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 494
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 490
    :goto_0
    return v0
.end method

.method private static newInitContext(Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;
    .locals 3
    .param p0, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 192
    const-string v0, "TLS"

    if-nez p0, :cond_0

    .line 193
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .local v0, "context":Ljavax/net/ssl/SSLContext;
    goto :goto_0

    .line 195
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    :cond_0
    invoke-static {v0, p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 197
    .restart local v0    # "context":Ljavax/net/ssl/SSLContext;
    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 198
    return-object v0
.end method

.method private static shortBE(Lio/netty/buffer/ByteBuf;I)S
    .locals 3
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I

    .line 348
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result v0

    .line 349
    .local v0, "value":S
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    .line 350
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    .line 352
    :cond_0
    return v0
.end method

.method private static shortBE(Ljava/nio/ByteBuffer;I)S
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 366
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 367
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->swapShort(S)S

    move-result v0

    .line 366
    :goto_0
    return v0
.end method

.method static toBase64(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p0, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;

    .line 479
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    .line 480
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    sget-object v4, Lio/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lio/netty/handler/codec/base64/Base64Dialect;

    .line 479
    const/4 v3, 0x1

    move-object v0, p1

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lio/netty/handler/codec/base64/Base64;->encode(Lio/netty/buffer/ByteBuf;IIZLio/netty/handler/codec/base64/Base64Dialect;Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 481
    .local v0, "dst":Lio/netty/buffer/ByteBuf;
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 482
    return-object v0
.end method

.method static toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 256
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_0

    .line 257
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/SSLHandshakeException;

    return-object v0

    .line 260
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLHandshakeException;

    return-object v0
.end method

.method private static unsignedByte(B)S
    .locals 1
    .param p0, "b"    # B

    .line 356
    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static unsignedShortBE(Lio/netty/buffer/ByteBuf;I)I
    .locals 3
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I

    .line 338
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v0

    .line 339
    .local v0, "value":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    .line 340
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    ushr-int/lit8 v0, v1, 0x10

    .line 342
    :cond_0
    return v0
.end method

.method private static unsignedShortBE(Ljava/nio/ByteBuffer;I)I
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 361
    invoke-static {p0, p1}, Lio/netty/handler/ssl/SslUtils;->shortBE(Ljava/nio/ByteBuffer;I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method static useFallbackCiphersIfDefaultIsEmpty(Ljava/util/List;Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 238
    .local p0, "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "fallbackCiphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 240
    .local v1, "cipher":Ljava/lang/String;
    const-string v2, "SSL_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "_RC4_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    goto :goto_0

    .line 243
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    .end local v1    # "cipher":Ljava/lang/String;
    goto :goto_0

    .line 246
    :cond_2
    return-void
.end method

.method static varargs useFallbackCiphersIfDefaultIsEmpty(Ljava/util/List;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fallbackCiphers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 249
    .local p0, "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lio/netty/handler/ssl/SslUtils;->useFallbackCiphersIfDefaultIsEmpty(Ljava/util/List;Ljava/lang/Iterable;)V

    .line 250
    return-void
.end method

.method static zeroout(Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 460
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/ByteBuf;->setZero(II)Lio/netty/buffer/ByteBuf;

    .line 463
    :cond_0
    return-void
.end method

.method static zerooutAndRelease(Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 469
    invoke-static {p0}, Lio/netty/handler/ssl/SslUtils;->zeroout(Lio/netty/buffer/ByteBuf;)V

    .line 470
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 471
    return-void
.end method
