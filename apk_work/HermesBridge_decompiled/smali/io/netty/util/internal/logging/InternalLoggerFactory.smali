.class public abstract Lio/netty/util/internal/logging/InternalLoggerFactory;
.super Ljava/lang/Object;
.source "InternalLoggerFactory.java"


# static fields
.field private static volatile defaultFactory:Lio/netty/util/internal/logging/InternalLoggerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultFactory()Lio/netty/util/internal/logging/InternalLoggerFactory;
    .locals 1

    .line 110
    sget-object v0, Lio/netty/util/internal/logging/InternalLoggerFactory;->defaultFactory:Lio/netty/util/internal/logging/InternalLoggerFactory;

    if-nez v0, :cond_0

    .line 111
    const-class v0, Lio/netty/util/internal/logging/InternalLoggerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->newDefaultFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/logging/InternalLoggerFactory;->defaultFactory:Lio/netty/util/internal/logging/InternalLoggerFactory;

    .line 113
    :cond_0
    sget-object v0, Lio/netty/util/internal/logging/InternalLoggerFactory;->defaultFactory:Lio/netty/util/internal/logging/InternalLoggerFactory;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/netty/util/internal/logging/InternalLogger;"
        }
    .end annotation

    .line 127
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 134
    invoke-static {}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getDefaultFactory()Lio/netty/util/internal/logging/InternalLoggerFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->newInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    return-object v0
.end method

.method private static newDefaultFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 42
    invoke-static {p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->useSlf4JLoggerFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;

    move-result-object v0

    .line 43
    .local v0, "f":Lio/netty/util/internal/logging/InternalLoggerFactory;
    if-eqz v0, :cond_0

    .line 44
    return-object v0

    .line 47
    :cond_0
    invoke-static {p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->useLog4J2LoggerFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    return-object v0

    .line 52
    :cond_1
    invoke-static {p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->useLog4JLoggerFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    return-object v0

    .line 57
    :cond_2
    invoke-static {p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->useJdkLoggerFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;

    move-result-object v1

    return-object v1
.end method

.method public static setDefaultFactory(Lio/netty/util/internal/logging/InternalLoggerFactory;)V
    .locals 1
    .param p0, "defaultFactory"    # Lio/netty/util/internal/logging/InternalLoggerFactory;

    .line 120
    const-string v0, "defaultFactory"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/internal/logging/InternalLoggerFactory;

    sput-object v0, Lio/netty/util/internal/logging/InternalLoggerFactory;->defaultFactory:Lio/netty/util/internal/logging/InternalLoggerFactory;

    .line 121
    return-void
.end method

.method private static useJdkLoggerFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 100
    sget-object v0, Lio/netty/util/internal/logging/JdkLoggerFactory;->INSTANCE:Lio/netty/util/internal/logging/InternalLoggerFactory;

    .line 101
    .local v0, "f":Lio/netty/util/internal/logging/InternalLoggerFactory;
    invoke-virtual {v0, p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->newInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v2, "Using java.util.logging as the default logging framework"

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 102
    return-object v0
.end method

.method private static useLog4J2LoggerFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lio/netty/util/internal/logging/Log4J2LoggerFactory;->INSTANCE:Lio/netty/util/internal/logging/InternalLoggerFactory;

    .line 76
    .local v1, "f":Lio/netty/util/internal/logging/InternalLoggerFactory;
    invoke-virtual {v1, p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->newInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    const-string v3, "Using Log4J2 as the default logging framework"

    invoke-interface {v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-object v1

    .line 80
    .end local v1    # "f":Lio/netty/util/internal/logging/InternalLoggerFactory;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "ignore":Ljava/lang/Exception;
    return-object v0

    .line 78
    .end local v1    # "ignore":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 79
    .local v1, "ignore":Ljava/lang/LinkageError;
    return-object v0
.end method

.method private static useLog4JLoggerFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lio/netty/util/internal/logging/Log4JLoggerFactory;->INSTANCE:Lio/netty/util/internal/logging/InternalLoggerFactory;

    .line 89
    .local v1, "f":Lio/netty/util/internal/logging/InternalLoggerFactory;
    invoke-virtual {v1, p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->newInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    const-string v3, "Using Log4J as the default logging framework"

    invoke-interface {v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-object v1

    .line 93
    .end local v1    # "f":Lio/netty/util/internal/logging/InternalLoggerFactory;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "ignore":Ljava/lang/Exception;
    return-object v0

    .line 91
    .end local v1    # "ignore":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 92
    .local v1, "ignore":Ljava/lang/LinkageError;
    return-object v0
.end method

.method private static useSlf4JLoggerFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lio/netty/util/internal/logging/Slf4JLoggerFactory;->getInstanceWithNopCheck()Lio/netty/util/internal/logging/InternalLoggerFactory;

    move-result-object v1

    .line 63
    .local v1, "f":Lio/netty/util/internal/logging/InternalLoggerFactory;
    invoke-virtual {v1, p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->newInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    const-string v3, "Using SLF4J as the default logging framework"

    invoke-interface {v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-object v1

    .line 67
    .end local v1    # "f":Lio/netty/util/internal/logging/InternalLoggerFactory;
    :catch_0
    move-exception v1

    .line 69
    .local v1, "ignore":Ljava/lang/Exception;
    return-object v0

    .line 65
    .end local v1    # "ignore":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 66
    .local v1, "ignore":Ljava/lang/LinkageError;
    return-object v0
.end method


# virtual methods
.method protected abstract newInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;
.end method
