.class public final Lio/netty/handler/codec/compression/Brotli;
.super Ljava/lang/Object;
.source "Brotli.java"


# static fields
.field private static final CNFE:Ljava/lang/ClassNotFoundException;

.field private static cause:Ljava/lang/Throwable;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 26
    const-class v0, Lio/netty/handler/codec/compression/Brotli;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/handler/codec/compression/Brotli;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 31
    const/4 v1, 0x0

    .line 34
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    :try_start_0
    const-string v2, "com.aayushatharva.brotli4j.Brotli4jLoader"

    .line 35
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 34
    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "t":Ljava/lang/ClassNotFoundException;
    move-object v1, v0

    .line 38
    sget-object v2, Lio/netty/handler/codec/compression/Brotli;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "brotli4j not in the classpath; Brotli support will be unavailable."

    invoke-interface {v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 42
    .end local v0    # "t":Ljava/lang/ClassNotFoundException;
    :goto_0
    sput-object v1, Lio/netty/handler/codec/compression/Brotli;->CNFE:Ljava/lang/ClassNotFoundException;

    .line 45
    if-nez v1, :cond_0

    .line 46
    invoke-static {}, Lcom/aayushatharva/brotli4j/Brotli4jLoader;->getUnavailabilityCause()Ljava/lang/Throwable;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/compression/Brotli;->cause:Ljava/lang/Throwable;

    .line 47
    sget-object v0, Lio/netty/handler/codec/compression/Brotli;->cause:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lio/netty/handler/codec/compression/Brotli;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to load brotli4j; Brotli support will be unavailable."

    sget-object v3, Lio/netty/handler/codec/compression/Brotli;->cause:Ljava/lang/Throwable;

    invoke-interface {v0, v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static cause()Ljava/lang/Throwable;
    .locals 1

    .line 78
    sget-object v0, Lio/netty/handler/codec/compression/Brotli;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static ensureAvailability()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 68
    sget-object v0, Lio/netty/handler/codec/compression/Brotli;->CNFE:Ljava/lang/ClassNotFoundException;

    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lcom/aayushatharva/brotli4j/Brotli4jLoader;->ensureAvailability()V

    .line 72
    return-void

    .line 69
    :cond_0
    sget-object v0, Lio/netty/handler/codec/compression/Brotli;->CNFE:Ljava/lang/ClassNotFoundException;

    throw v0
.end method

.method public static isAvailable()Z
    .locals 1

    .line 59
    sget-object v0, Lio/netty/handler/codec/compression/Brotli;->CNFE:Ljava/lang/ClassNotFoundException;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/aayushatharva/brotli4j/Brotli4jLoader;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
