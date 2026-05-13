.class final Lio/netty/channel/socket/nio/SelectorProviderUtil;
.super Ljava/lang/Object;
.source "SelectorProviderUtil.java"


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lio/netty/channel/socket/nio/SelectorProviderUtil;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/socket/nio/SelectorProviderUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findOpenMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "methodName"    # Ljava/lang/String;

    .line 36
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 38
    :try_start_0
    const-class v0, Ljava/nio/channels/spi/SelectorProvider;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/net/ProtocolFamily;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/channel/socket/nio/SelectorProviderUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "SelectorProvider.{}(ProtocolFamily) not available, will use default"

    invoke-interface {v1, v2, p0, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static newChannel(Ljava/lang/reflect/Method;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/socket/InternetProtocolFamily;)Ljava/nio/channels/Channel;
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "provider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "family"    # Lio/netty/channel/socket/InternetProtocolFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/nio/channels/Channel;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/nio/channels/spi/SelectorProvider;",
            "Lio/netty/channel/socket/InternetProtocolFamily;",
            ")TC;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    .line 58
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    invoke-static {p2}, Lio/netty/channel/socket/nio/ProtocolFamilyConverter;->convert(Lio/netty/channel/socket/InternetProtocolFamily;)Ljava/net/ProtocolFamily;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 58
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/Channel;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .local v0, "channel":Ljava/nio/channels/Channel;, "TC;"
    return-object v0

    .line 63
    .end local v0    # "channel":Ljava/nio/channels/Channel;, "TC;"
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 61
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 67
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
