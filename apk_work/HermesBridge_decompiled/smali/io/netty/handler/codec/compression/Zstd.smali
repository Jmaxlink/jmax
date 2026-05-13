.class public final Lio/netty/handler/codec/compression/Zstd;
.super Ljava/lang/Object;
.source "Zstd.java"


# static fields
.field private static final cause:Ljava/lang/Throwable;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    const-class v0, Lio/netty/handler/codec/compression/Zstd;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/handler/codec/compression/Zstd;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 29
    const/4 v1, 0x0

    .line 32
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_0
    const-string v2, "com.github.luben.zstd.Zstd"

    .line 33
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 32
    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    .line 40
    sget-object v2, Lio/netty/handler/codec/compression/Zstd;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Failed to load zstd-jni; Zstd support will be unavailable."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 34
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    move-object v1, v0

    .line 36
    sget-object v2, Lio/netty/handler/codec/compression/Zstd;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "zstd-jni not in the classpath; Zstd support will be unavailable."

    invoke-interface {v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 41
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 43
    :goto_1
    sput-object v1, Lio/netty/handler/codec/compression/Zstd;->cause:Ljava/lang/Throwable;

    .line 44
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static cause()Ljava/lang/Throwable;
    .locals 1

    .line 70
    sget-object v0, Lio/netty/handler/codec/compression/Zstd;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static ensureAvailability()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 61
    sget-object v0, Lio/netty/handler/codec/compression/Zstd;->cause:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 64
    return-void

    .line 62
    :cond_0
    sget-object v0, Lio/netty/handler/codec/compression/Zstd;->cause:Ljava/lang/Throwable;

    throw v0
.end method

.method public static isAvailable()Z
    .locals 1

    .line 52
    sget-object v0, Lio/netty/handler/codec/compression/Zstd;->cause:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
