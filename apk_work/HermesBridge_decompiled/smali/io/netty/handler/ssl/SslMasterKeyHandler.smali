.class public abstract Lio/netty/handler/ssl/SslMasterKeyHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "SslMasterKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/SslMasterKeyHandler$WiresharkSslMasterKeyHandler;
    }
.end annotation


# static fields
.field private static final SSL_SESSIONIMPL_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final SSL_SESSIONIMPL_MASTER_SECRET_FIELD:Ljava/lang/reflect/Field;

.field public static final SYSTEM_PROP_KEY:Ljava/lang/String; = "io.netty.ssl.masterKeyHandler"

.field private static final UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 40
    const-class v0, Lio/netty/handler/ssl/SslMasterKeyHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslMasterKeyHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 69
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-string v2, "sun.security.ssl.SSLSessionImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    .line 70
    const-string v2, "masterSecret"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v1, v2

    .line 71
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lio/netty/util/internal/ReflectionUtil;->trySetAccessible(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/Throwable;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .local v2, "cause":Ljava/lang/Throwable;
    goto :goto_1

    .line 72
    .end local v2    # "cause":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/Throwable;
    move-object v3, v2

    .line 74
    .local v3, "cause":Ljava/lang/Throwable;
    sget-object v4, Lio/netty/handler/ssl/SslMasterKeyHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4}, Lio/netty/util/internal/logging/InternalLogger;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    sget-object v4, Lio/netty/handler/ssl/SslMasterKeyHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "sun.security.ssl.SSLSessionImpl is unavailable."

    invoke-interface {v4, v5, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 77
    :cond_0
    sget-object v4, Lio/netty/handler/ssl/SslMasterKeyHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "sun.security.ssl.SSLSessionImpl is unavailable: {}"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    move-object v2, v3

    .end local v3    # "cause":Ljava/lang/Throwable;
    .local v2, "cause":Ljava/lang/Throwable;
    :goto_1
    sput-object v2, Lio/netty/handler/ssl/SslMasterKeyHandler;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    .line 81
    sput-object v0, Lio/netty/handler/ssl/SslMasterKeyHandler;->SSL_SESSIONIMPL_CLASS:Ljava/lang/Class;

    .line 82
    sput-object v1, Lio/netty/handler/ssl/SslMasterKeyHandler;->SSL_SESSIONIMPL_MASTER_SECRET_FIELD:Ljava/lang/reflect/Field;

    .line 83
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "cause":Ljava/lang/Throwable;
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 89
    return-void
.end method

.method public static ensureSunSslEngineAvailability()V
    .locals 3

    .line 96
    sget-object v0, Lio/netty/handler/ssl/SslMasterKeyHandler;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 100
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to find SSLSessionImpl on classpath"

    sget-object v2, Lio/netty/handler/ssl/SslMasterKeyHandler;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static isSunSslEngineAvailable()Z
    .locals 1

    .line 114
    sget-object v0, Lio/netty/handler/ssl/SslMasterKeyHandler;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static newWireSharkSslMasterKeyHandler()Lio/netty/handler/ssl/SslMasterKeyHandler;
    .locals 2

    .line 170
    new-instance v0, Lio/netty/handler/ssl/SslMasterKeyHandler$WiresharkSslMasterKeyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/SslMasterKeyHandler$WiresharkSslMasterKeyHandler;-><init>(Lio/netty/handler/ssl/SslMasterKeyHandler$1;)V

    return-object v0
.end method

.method public static sunSslEngineUnavailabilityCause()Ljava/lang/Throwable;
    .locals 1

    .line 108
    sget-object v0, Lio/netty/handler/ssl/SslMasterKeyHandler;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    return-object v0
.end method


# virtual methods
.method protected abstract accept(Ljavax/crypto/SecretKey;Ljavax/net/ssl/SSLSession;)V
.end method

.method protected masterKeyHandlerEnabled()Z
    .locals 2

    .line 159
    const-string v0, "io.netty.ssl.masterKeyHandler"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Ljava/lang/Object;

    .line 127
    sget-object v0, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;->SUCCESS:Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Lio/netty/handler/ssl/SslMasterKeyHandler;->masterKeyHandlerEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    const-class v1, Lio/netty/handler/ssl/SslHandler;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/SslHandler;

    .line 129
    .local v0, "handler":Lio/netty/handler/ssl/SslHandler;
    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler;->engine()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    .line 130
    .local v1, "engine":Ljavax/net/ssl/SSLEngine;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 133
    .local v2, "sslSession":Ljavax/net/ssl/SSLSession;
    invoke-static {}, Lio/netty/handler/ssl/SslMasterKeyHandler;->isSunSslEngineAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lio/netty/handler/ssl/SslMasterKeyHandler;->SSL_SESSIONIMPL_CLASS:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    :try_start_0
    sget-object v3, Lio/netty/handler/ssl/SslMasterKeyHandler;->SSL_SESSIONIMPL_MASTER_SECRET_FIELD:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .local v3, "secretKey":Ljavax/crypto/SecretKey;
    nop

    .line 141
    invoke-virtual {p0, v3, v2}, Lio/netty/handler/ssl/SslMasterKeyHandler;->accept(Ljavax/crypto/SecretKey;Ljavax/net/ssl/SSLSession;)V

    .end local v3    # "secretKey":Ljavax/crypto/SecretKey;
    goto :goto_0

    .line 137
    :catch_0
    move-exception v3

    .line 138
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Failed to access the field \'masterSecret\' via reflection."

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 142
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    if-eqz v3, :cond_1

    .line 143
    move-object v3, v1

    check-cast v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-virtual {v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->masterKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    .line 144
    .local v3, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {p0, v3, v2}, Lio/netty/handler/ssl/SslMasterKeyHandler;->accept(Ljavax/crypto/SecretKey;Ljavax/net/ssl/SSLSession;)V

    goto :goto_1

    .line 142
    .end local v3    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :cond_1
    :goto_0
    nop

    .line 148
    .end local v0    # "handler":Lio/netty/handler/ssl/SslHandler;
    .end local v1    # "engine":Ljavax/net/ssl/SSLEngine;
    .end local v2    # "sslSession":Ljavax/net/ssl/SSLSession;
    :cond_2
    :goto_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 149
    return-void
.end method
