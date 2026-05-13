.class abstract Lio/netty/bootstrap/ChannelInitializerExtensions;
.super Ljava/lang/Object;
.source "ChannelInitializerExtensions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions;,
        Lio/netty/bootstrap/ChannelInitializerExtensions$EmptyExtensions;
    }
.end annotation


# static fields
.field private static volatile implementation:Lio/netty/bootstrap/ChannelInitializerExtensions;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lio/netty/bootstrap/ChannelInitializerExtensions;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/bootstrap/ChannelInitializerExtensions;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/bootstrap/ChannelInitializerExtensions$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/bootstrap/ChannelInitializerExtensions$1;

    .line 33
    invoke-direct {p0}, Lio/netty/bootstrap/ChannelInitializerExtensions;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 33
    sget-object v0, Lio/netty/bootstrap/ChannelInitializerExtensions;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method static getExtensions()Lio/netty/bootstrap/ChannelInitializerExtensions;
    .locals 6

    .line 46
    sget-object v0, Lio/netty/bootstrap/ChannelInitializerExtensions;->implementation:Lio/netty/bootstrap/ChannelInitializerExtensions;

    .line 47
    .local v0, "impl":Lio/netty/bootstrap/ChannelInitializerExtensions;
    if-nez v0, :cond_3

    .line 48
    const-class v1, Lio/netty/bootstrap/ChannelInitializerExtensions;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v2, Lio/netty/bootstrap/ChannelInitializerExtensions;->implementation:Lio/netty/bootstrap/ChannelInitializerExtensions;

    move-object v0, v2

    .line 50
    if-eqz v0, :cond_0

    .line 51
    monitor-exit v1

    return-object v0

    .line 53
    :cond_0
    const-string v2, "io.netty.bootstrap.extensions"

    invoke-static {v2}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "extensionProp":Ljava/lang/String;
    sget-object v3, Lio/netty/bootstrap/ChannelInitializerExtensions;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "-Dio.netty.bootstrap.extensions: {}"

    invoke-interface {v3, v4, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    const-string v3, "serviceload"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    new-instance v3, Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions;

    sget-object v4, Lio/netty/util/internal/logging/InternalLogLevel;->DEBUG:Lio/netty/util/internal/logging/InternalLogLevel;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions;-><init>(Lio/netty/util/internal/logging/InternalLogLevel;Z)V

    move-object v0, v3

    goto :goto_0

    .line 57
    :cond_1
    const-string v3, "log"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    new-instance v3, Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions;

    sget-object v4, Lio/netty/util/internal/logging/InternalLogLevel;->INFO:Lio/netty/util/internal/logging/InternalLogLevel;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lio/netty/bootstrap/ChannelInitializerExtensions$ServiceLoadingExtensions;-><init>(Lio/netty/util/internal/logging/InternalLogLevel;Z)V

    move-object v0, v3

    goto :goto_0

    .line 60
    :cond_2
    new-instance v3, Lio/netty/bootstrap/ChannelInitializerExtensions$EmptyExtensions;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lio/netty/bootstrap/ChannelInitializerExtensions$EmptyExtensions;-><init>(Lio/netty/bootstrap/ChannelInitializerExtensions$1;)V

    move-object v0, v3

    .line 62
    :goto_0
    sput-object v0, Lio/netty/bootstrap/ChannelInitializerExtensions;->implementation:Lio/netty/bootstrap/ChannelInitializerExtensions;

    .line 63
    .end local v2    # "extensionProp":Ljava/lang/String;
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 65
    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method abstract extensions(Ljava/lang/ClassLoader;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Collection<",
            "Lio/netty/bootstrap/ChannelInitializerExtension;",
            ">;"
        }
    .end annotation
.end method
