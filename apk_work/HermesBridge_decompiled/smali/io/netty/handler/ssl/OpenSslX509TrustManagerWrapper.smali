.class final Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;
.super Ljava/lang/Object;
.source "OpenSslX509TrustManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$UnsafeTrustManagerWrapper;,
        Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;
    }
.end annotation


# static fields
.field private static final LOGGER:Lio/netty/util/internal/logging/InternalLogger;

.field private static final WRAPPER:Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 46
    nop

    .line 47
    const-class v0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->LOGGER:Lio/netty/util/internal/logging/InternalLogger;

    .line 52
    new-instance v0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$1;

    invoke-direct {v0}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$1;-><init>()V

    .line 59
    .local v0, "wrapper":Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;
    const/4 v1, 0x0

    .line 60
    .local v1, "cause":Ljava/lang/Throwable;
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->getUnsafeUnavailabilityCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 61
    .local v2, "unsafeCause":Ljava/lang/Throwable;
    const-string v3, "Unable to access wrapped TrustManager"

    if-nez v2, :cond_2

    .line 64
    :try_start_0
    invoke-static {}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->newSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v4

    .line 72
    .local v4, "context":Ljavax/net/ssl/SSLContext;
    const/4 v5, 0x1

    new-array v5, v5, [Ljavax/net/ssl/TrustManager;

    new-instance v6, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$2;

    invoke-direct {v6}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$2;-><init>()V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    goto :goto_0

    .line 92
    .end local v4    # "context":Ljavax/net/ssl/SSLContext;
    :catchall_0
    move-exception v4

    .line 93
    .local v4, "error":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 94
    .local v5, "context":Ljavax/net/ssl/SSLContext;
    move-object v1, v4

    move-object v4, v5

    .line 96
    .end local v5    # "context":Ljavax/net/ssl/SSLContext;
    .local v4, "context":Ljavax/net/ssl/SSLContext;
    :goto_0
    if-eqz v1, :cond_0

    .line 97
    sget-object v5, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->LOGGER:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v5, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 99
    :cond_0
    move-object v5, v4

    .line 100
    .local v5, "finalContext":Ljavax/net/ssl/SSLContext;
    new-instance v6, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$3;

    invoke-direct {v6, v5}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$3;-><init>(Ljavax/net/ssl/SSLContext;)V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    .line 134
    .local v6, "maybeWrapper":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/Throwable;

    if-eqz v7, :cond_1

    .line 135
    sget-object v7, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->LOGGER:Lio/netty/util/internal/logging/InternalLogger;

    move-object v8, v6

    check-cast v8, Ljava/lang/Throwable;

    invoke-interface {v7, v3, v8}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 137
    :cond_1
    move-object v0, v6

    check-cast v0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;

    .line 140
    .end local v4    # "context":Ljavax/net/ssl/SSLContext;
    .end local v5    # "finalContext":Ljavax/net/ssl/SSLContext;
    .end local v6    # "maybeWrapper":Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 141
    :cond_2
    sget-object v4, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->LOGGER:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    :goto_2
    sput-object v0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->WRAPPER:Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;

    .line 144
    .end local v0    # "wrapper":Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;
    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local v2    # "unsafeCause":Ljava/lang/Throwable;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljavax/net/ssl/SSLContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 45
    invoke-static {}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->newSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method private static newSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 159
    const-string v0, "TLS"

    const-string v1, "SunJSSE"

    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method static wrapIfNeeded(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .param p0, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 149
    sget-object v0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->WRAPPER:Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;

    invoke-interface {v0, p0}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;->wrapIfNeeded(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    return-object v0
.end method
