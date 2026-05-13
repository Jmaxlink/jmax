.class final Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;
.super Ljava/lang/Object;
.source "BouncyCastleAlpnSslUtils.java"


# static fields
.field private static final BC_APPLICATION_PROTOCOL_SELECTOR:Ljava/lang/Class;

.field private static final BC_APPLICATION_PROTOCOL_SELECTOR_SELECT:Ljava/lang/reflect/Method;

.field private static final GET_APPLICATION_PROTOCOL:Ljava/lang/reflect/Method;

.field private static final GET_HANDSHAKE_APPLICATION_PROTOCOL:Ljava/lang/reflect/Method;

.field private static final GET_HANDSHAKE_APPLICATION_PROTOCOL_SELECTOR:Ljava/lang/reflect/Method;

.field private static final GET_PARAMETERS:Ljava/lang/reflect/Method;

.field private static final SET_APPLICATION_PROTOCOLS:Ljava/lang/reflect/Method;

.field private static final SET_HANDSHAKE_APPLICATION_PROTOCOL_SELECTOR:Ljava/lang/reflect/Method;

.field private static final SET_PARAMETERS:Ljava/lang/reflect/Method;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 39
    const-class v0, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 63
    :try_start_0
    const-string v0, "org.bouncycastle.jsse.BCSSLEngine"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 64
    .local v0, "bcSslEngine":Ljava/lang/Class;
    move-object v1, v0

    .line 66
    .local v1, "testBCSslEngine":Ljava/lang/Class;
    const-string v2, "org.bouncycastle.jsse.BCApplicationProtocolSelector"

    .line 67
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 69
    .local v2, "bcApplicationProtocolSelector":Ljava/lang/Class;
    move-object v3, v2

    .line 71
    .local v3, "testBCApplicationProtocolSelector":Ljava/lang/Class;
    new-instance v4, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$1;

    invoke-direct {v4, v3}, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 79
    .local v4, "bcApplicationProtocolSelectorSelect":Ljava/lang/reflect/Method;
    const-string v5, "BCJSSE"

    invoke-static {v5}, Lio/netty/handler/ssl/SslUtils;->getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    .line 80
    .local v5, "context":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v6

    .line 82
    .local v6, "engine":Ljavax/net/ssl/SSLEngine;
    new-instance v7, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$2;

    invoke-direct {v7, v1}, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$2;-><init>(Ljava/lang/Class;)V

    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;

    .line 89
    .local v7, "getParameters":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 90
    .local v9, "bcSslParameters":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 92
    .local v10, "bCSslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v11, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$3;

    invoke-direct {v11, v1, v10}, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$3;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Method;

    .line 98
    .local v11, "setParameters":Ljava/lang/reflect/Method;
    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v12, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$4;

    invoke-direct {v12, v10}, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$4;-><init>(Ljava/lang/Class;)V

    invoke-static {v12}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/reflect/Method;

    .line 106
    .local v12, "setApplicationProtocols":Ljava/lang/reflect/Method;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    sget-object v14, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    aput-object v14, v13, v8

    invoke-virtual {v12, v9, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v13, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$5;

    invoke-direct {v13, v1}, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$5;-><init>(Ljava/lang/Class;)V

    invoke-static {v13}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/Method;

    .line 114
    .local v13, "getApplicationProtocol":Ljava/lang/reflect/Method;
    new-array v14, v8, [Ljava/lang/Object;

    invoke-virtual {v13, v6, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v14, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$6;

    invoke-direct {v14, v1}, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$6;-><init>(Ljava/lang/Class;)V

    invoke-static {v14}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/reflect/Method;

    .line 122
    .local v14, "getHandshakeApplicationProtocol":Ljava/lang/reflect/Method;
    new-array v15, v8, [Ljava/lang/Object;

    invoke-virtual {v14, v6, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v15, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$7;

    invoke-direct {v15, v1, v3}, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$7;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 125
    invoke-static {v15}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/reflect/Method;

    .line 133
    .local v15, "setHandshakeApplicationProtocolSelector":Ljava/lang/reflect/Method;
    new-instance v8, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$8;

    invoke-direct {v8, v1}, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$8;-><init>(Ljava/lang/Class;)V

    .line 134
    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;

    .line 140
    .local v8, "getHandshakeApplicationProtocolSelector":Ljava/lang/reflect/Method;
    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "bcSslEngine":Ljava/lang/Class;
    .local v16, "bcSslEngine":Ljava/lang/Class;
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v8, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    nop

    .end local v1    # "testBCSslEngine":Ljava/lang/Class;
    .end local v3    # "testBCApplicationProtocolSelector":Ljava/lang/Class;
    .end local v5    # "context":Ljavax/net/ssl/SSLContext;
    .end local v6    # "engine":Ljavax/net/ssl/SSLEngine;
    .end local v9    # "bcSslParameters":Ljava/lang/Object;
    .end local v10    # "bCSslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 142
    .end local v2    # "bcApplicationProtocolSelector":Ljava/lang/Class;
    .end local v4    # "bcApplicationProtocolSelectorSelect":Ljava/lang/reflect/Method;
    .end local v7    # "getParameters":Ljava/lang/reflect/Method;
    .end local v8    # "getHandshakeApplicationProtocolSelector":Ljava/lang/reflect/Method;
    .end local v11    # "setParameters":Ljava/lang/reflect/Method;
    .end local v12    # "setApplicationProtocols":Ljava/lang/reflect/Method;
    .end local v13    # "getApplicationProtocol":Ljava/lang/reflect/Method;
    .end local v14    # "getHandshakeApplicationProtocol":Ljava/lang/reflect/Method;
    .end local v15    # "setHandshakeApplicationProtocolSelector":Ljava/lang/reflect/Method;
    .end local v16    # "bcSslEngine":Ljava/lang/Class;
    :catchall_0
    move-exception v0

    .line 143
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Unable to initialize BouncyCastleAlpnSslUtils."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    const/4 v11, 0x0

    .line 145
    .restart local v11    # "setParameters":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    .line 146
    .restart local v7    # "getParameters":Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    .line 147
    .restart local v12    # "setApplicationProtocols":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    .line 148
    .restart local v13    # "getApplicationProtocol":Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    .line 149
    .restart local v14    # "getHandshakeApplicationProtocol":Ljava/lang/reflect/Method;
    const/4 v15, 0x0

    .line 150
    .restart local v15    # "setHandshakeApplicationProtocolSelector":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    .line 151
    .restart local v8    # "getHandshakeApplicationProtocolSelector":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 152
    .restart local v4    # "bcApplicationProtocolSelectorSelect":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 154
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local v2    # "bcApplicationProtocolSelector":Ljava/lang/Class;
    :goto_0
    sput-object v11, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;->SET_PARAMETERS:Ljava/lang/reflect/Method;

    .line 155
    sput-object v7, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;->GET_PARAMETERS:Ljava/lang/reflect/Method;

    .line 156
    sput-object v12, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;->SET_APPLICATION_PROTOCOLS:Ljava/lang/reflect/Method;

    .line 157
    sput-object v13, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;->GET_APPLICATION_PROTOCOL:Ljava/lang/reflect/Method;

    .line 158
    sput-object v14, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;->GET_HANDSHAKE_APPLICATION_PROTOCOL:Ljava/lang/reflect/Method;

    .line 159
    sput-object v15, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;->SET_HANDSHAKE_APPLICATION_PROTOCOL_SELECTOR:Ljava/lang/reflect/Method;

    .line 160
    sput-object v8, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;->GET_HANDSHAKE_APPLICATION_PROTOCOL_SELECTOR:Ljava/lang/reflect/Method;

    .line 161
    sput-object v4, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;->BC_APPLICATION_PROTOCOL_SELECTOR_SELECT:Ljava/lang/reflect/Method;

    .line 162
    sput-object v2, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;->BC_APPLICATION_PROTOCOL_SELECTOR:Ljava/lang/Class;

    .line 163
    .end local v2    # "bcApplicationProtocolSelector":Ljava/lang/Class;
    .end local v4    # "bcApplicationProtocolSelectorSelect":Ljava/lang/reflect/Method;
    .end local v7    # "getParameters":Ljava/lang/reflect/Method;
    .end local v8    # "getHandshakeApplicationProtocolSelector":Ljava/lang/reflect/Method;
    .end local v11    # "setParameters":Ljava/lang/reflect/Method;
    .end local v12    # "setApplicationProtocols":Ljava/lang/reflect/Method;
    .end local v13    # "getApplicationProtocol":Ljava/lang/reflect/Method;
    .end local v14    # "getHandshakeApplicationProtocol":Ljava/lang/reflect/Method;
    .end local v15    # "setHandshakeApplicationProtocolSelector":Ljava/lang/reflect/Method;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Method;
    .locals 1

    .line 38
    sget-object v0, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;->BC_APPLICATION_PROTOCOL_SELECTOR_SELECT:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static getApplicationProtocol(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 2
    .param p0, "sslEngine"    # Ljavax/net/ssl/SSLEngine;

    .line 170
    :try_start_0
    sget-object v0, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;->GET_APPLICATION_PROTOCOL:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 171
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 172
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    throw v0
.end method

.method static getHandshakeApplicationProtocol(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 2
    .param p0, "sslEngine"    # Ljavax/net/ssl/SSLEngine;

    .line 196
    :try_start_0
    sget-object v0, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;->GET_HANDSHAKE_APPLICATION_PROTOCOL:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 197
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 198
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    throw v0
.end method

.method static getHandshakeApplicationProtocolSelector(Ljavax/net/ssl/SSLEngine;)Ljava/util/function/BiFunction;
    .locals 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            ")",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 238
    :try_start_0
    sget-object v0, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;->GET_HANDSHAKE_APPLICATION_PROTOCOL_SELECTOR:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 239
    .local v0, "selector":Ljava/lang/Object;
    new-instance v1, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$10;

    invoke-direct {v1, v0}, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$10;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 254
    .end local v0    # "selector":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 255
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 252
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 253
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    throw v0
.end method

.method static setApplicationProtocols(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)V
    .locals 4
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p1, "supportedProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 181
    .local v0, "protocolArray":[Ljava/lang/String;
    :try_start_0
    sget-object v1, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;->GET_PARAMETERS:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    .local v1, "bcSslParameters":Ljava/lang/Object;
    sget-object v2, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;->SET_APPLICATION_PROTOCOLS:Ljava/lang/reflect/Method;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v2, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;->SET_PARAMETERS:Ljava/lang/reflect/Method;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    nop

    .line 189
    .end local v1    # "bcSslParameters":Ljava/lang/Object;
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v1

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 190
    invoke-static {p0, p1}, Lio/netty/handler/ssl/JdkAlpnSslUtils;->setApplicationProtocols(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)V

    .line 192
    :cond_0
    return-void

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 184
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 185
    .local v1, "ex":Ljava/lang/UnsupportedOperationException;
    throw v1
.end method

.method static setHandshakeApplicationProtocolSelector(Ljavax/net/ssl/SSLEngine;Ljava/util/function/BiFunction;)V
    .locals 4
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p1, "selector":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljavax/net/ssl/SSLEngine;Ljava/util/List<Ljava/lang/String;>;Ljava/lang/String;>;"
    :try_start_0
    const-class v0, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;

    .line 208
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;->BC_APPLICATION_PROTOCOL_SELECTOR:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$9;

    invoke-direct {v2, p1}, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$9;-><init>(Ljava/util/function/BiFunction;)V

    .line 207
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 227
    .local v0, "selectorProxyInstance":Ljava/lang/Object;
    sget-object v1, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;->SET_HANDSHAKE_APPLICATION_PROTOCOL_SELECTOR:Ljava/lang/reflect/Method;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    nop

    .line 233
    .end local v0    # "selectorProxyInstance":Ljava/lang/Object;
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 228
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 229
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    throw v0
.end method
