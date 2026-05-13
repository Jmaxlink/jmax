.class public Lio/netty/bootstrap/Bootstrap;
.super Lio/netty/bootstrap/AbstractBootstrap;
.source "Bootstrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/bootstrap/Bootstrap$ExternalAddressResolver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/bootstrap/AbstractBootstrap<",
        "Lio/netty/bootstrap/Bootstrap;",
        "Lio/netty/channel/Channel;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final config:Lio/netty/bootstrap/BootstrapConfig;

.field private volatile disableResolver:Z

.field private externalResolver:Lio/netty/bootstrap/Bootstrap$ExternalAddressResolver;

.field private volatile remoteAddress:Ljava/net/SocketAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lio/netty/bootstrap/Bootstrap;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/bootstrap/Bootstrap;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lio/netty/bootstrap/AbstractBootstrap;-><init>()V

    .line 51
    new-instance v0, Lio/netty/bootstrap/BootstrapConfig;

    invoke-direct {v0, p0}, Lio/netty/bootstrap/BootstrapConfig;-><init>(Lio/netty/bootstrap/Bootstrap;)V

    iput-object v0, p0, Lio/netty/bootstrap/Bootstrap;->config:Lio/netty/bootstrap/BootstrapConfig;

    .line 57
    return-void
.end method

.method private constructor <init>(Lio/netty/bootstrap/Bootstrap;)V
    .locals 1
    .param p1, "bootstrap"    # Lio/netty/bootstrap/Bootstrap;

    .line 60
    invoke-direct {p0, p1}, Lio/netty/bootstrap/AbstractBootstrap;-><init>(Lio/netty/bootstrap/AbstractBootstrap;)V

    .line 51
    new-instance v0, Lio/netty/bootstrap/BootstrapConfig;

    invoke-direct {v0, p0}, Lio/netty/bootstrap/BootstrapConfig;-><init>(Lio/netty/bootstrap/Bootstrap;)V

    iput-object v0, p0, Lio/netty/bootstrap/Bootstrap;->config:Lio/netty/bootstrap/BootstrapConfig;

    .line 61
    iget-object v0, p1, Lio/netty/bootstrap/Bootstrap;->externalResolver:Lio/netty/bootstrap/Bootstrap$ExternalAddressResolver;

    iput-object v0, p0, Lio/netty/bootstrap/Bootstrap;->externalResolver:Lio/netty/bootstrap/Bootstrap$ExternalAddressResolver;

    .line 62
    iget-boolean v0, p1, Lio/netty/bootstrap/Bootstrap;->disableResolver:Z

    iput-boolean v0, p0, Lio/netty/bootstrap/Bootstrap;->disableResolver:Z

    .line 63
    iget-object v0, p1, Lio/netty/bootstrap/Bootstrap;->remoteAddress:Ljava/net/SocketAddress;

    iput-object v0, p0, Lio/netty/bootstrap/Bootstrap;->remoteAddress:Ljava/net/SocketAddress;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/Channel;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p0, "x0"    # Lio/netty/bootstrap/Bootstrap;
    .param p1, "x1"    # Lio/netty/channel/Channel;
    .param p2, "x2"    # Ljava/net/SocketAddress;
    .param p3, "x3"    # Ljava/net/SocketAddress;
    .param p4, "x4"    # Lio/netty/channel/ChannelPromise;

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/bootstrap/Bootstrap;->doResolveAndConnect0(Lio/netty/channel/Channel;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Ljava/net/SocketAddress;
    .param p1, "x1"    # Ljava/net/SocketAddress;
    .param p2, "x2"    # Lio/netty/channel/ChannelPromise;

    .line 47
    invoke-static {p0, p1, p2}, Lio/netty/bootstrap/Bootstrap;->doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method private static doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p0, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .param p2, "connectPromise"    # Lio/netty/channel/ChannelPromise;

    .line 259
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 260
    .local v0, "channel":Lio/netty/channel/Channel;
    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    new-instance v2, Lio/netty/bootstrap/Bootstrap$3;

    invoke-direct {v2, p1, v0, p0, p2}, Lio/netty/bootstrap/Bootstrap$3;-><init>(Ljava/net/SocketAddress;Lio/netty/channel/Channel;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v1, v2}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method

.method private doResolveAndConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 10
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .line 164
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->initAndRegister()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 165
    .local v0, "regFuture":Lio/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v7

    .line 167
    .local v7, "channel":Lio/netty/channel/Channel;
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    return-object v0

    .line 171
    :cond_0
    invoke-interface {v7}, Lio/netty/channel/Channel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-direct {p0, v7, p1, p2, v1}, Lio/netty/bootstrap/Bootstrap;->doResolveAndConnect0(Lio/netty/channel/Channel;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1

    .line 174
    :cond_1
    new-instance v1, Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;

    invoke-direct {v1, v7}, Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;-><init>(Lio/netty/channel/Channel;)V

    move-object v8, v1

    .line 175
    .local v8, "promise":Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;
    new-instance v9, Lio/netty/bootstrap/Bootstrap$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v8

    move-object v4, v7

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lio/netty/bootstrap/Bootstrap$1;-><init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;Lio/netty/channel/Channel;Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V

    invoke-interface {v0, v9}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 193
    return-object v8
.end method

.method private doResolveAndConnect0(Lio/netty/channel/Channel;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 5
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 200
    :try_start_0
    iget-boolean v0, p0, Lio/netty/bootstrap/Bootstrap;->disableResolver:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-static {p2, p3, p4}, Lio/netty/bootstrap/Bootstrap;->doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    .line 202
    return-object p4

    .line 205
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 208
    .local v0, "eventLoop":Lio/netty/channel/EventLoop;
    :try_start_1
    iget-object v1, p0, Lio/netty/bootstrap/Bootstrap;->externalResolver:Lio/netty/bootstrap/Bootstrap$ExternalAddressResolver;

    invoke-static {v1}, Lio/netty/bootstrap/Bootstrap$ExternalAddressResolver;->getOrDefault(Lio/netty/bootstrap/Bootstrap$ExternalAddressResolver;)Lio/netty/resolver/AddressResolverGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/netty/resolver/AddressResolverGroup;->getResolver(Lio/netty/util/concurrent/EventExecutor;)Lio/netty/resolver/AddressResolver;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    .local v1, "resolver":Lio/netty/resolver/AddressResolver;, "Lio/netty/resolver/AddressResolver<Ljava/net/SocketAddress;>;"
    nop

    .line 214
    :try_start_2
    invoke-interface {v1, p2}, Lio/netty/resolver/AddressResolver;->isSupported(Ljava/net/SocketAddress;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1, p2}, Lio/netty/resolver/AddressResolver;->isResolved(Ljava/net/SocketAddress;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 220
    :cond_1
    invoke-interface {v1, p2}, Lio/netty/resolver/AddressResolver;->resolve(Ljava/net/SocketAddress;)Lio/netty/util/concurrent/Future;

    move-result-object v2

    .line 222
    .local v2, "resolveFuture":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Ljava/net/SocketAddress;>;"
    invoke-interface {v2}, Lio/netty/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 223
    invoke-interface {v2}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v3

    .line 225
    .local v3, "resolveFailureCause":Ljava/lang/Throwable;
    if-eqz v3, :cond_2

    .line 227
    invoke-interface {p1}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    .line 228
    invoke-interface {p4, v3}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 231
    :cond_2
    invoke-interface {v2}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/SocketAddress;

    invoke-static {v4, p3, p4}, Lio/netty/bootstrap/Bootstrap;->doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    .line 233
    :goto_0
    return-object p4

    .line 237
    .end local v3    # "resolveFailureCause":Ljava/lang/Throwable;
    :cond_3
    new-instance v3, Lio/netty/bootstrap/Bootstrap$2;

    invoke-direct {v3, p0, p1, p4, p3}, Lio/netty/bootstrap/Bootstrap$2;-><init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;Ljava/net/SocketAddress;)V

    invoke-interface {v2, v3}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 250
    nop

    .end local v0    # "eventLoop":Lio/netty/channel/EventLoop;
    .end local v1    # "resolver":Lio/netty/resolver/AddressResolver;, "Lio/netty/resolver/AddressResolver<Ljava/net/SocketAddress;>;"
    .end local v2    # "resolveFuture":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Ljava/net/SocketAddress;>;"
    goto :goto_2

    .line 216
    .restart local v0    # "eventLoop":Lio/netty/channel/EventLoop;
    .restart local v1    # "resolver":Lio/netty/resolver/AddressResolver;, "Lio/netty/resolver/AddressResolver<Ljava/net/SocketAddress;>;"
    :cond_4
    :goto_1
    invoke-static {p2, p3, p4}, Lio/netty/bootstrap/Bootstrap;->doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    .line 217
    return-object p4

    .line 209
    .end local v1    # "resolver":Lio/netty/resolver/AddressResolver;, "Lio/netty/resolver/AddressResolver<Ljava/net/SocketAddress;>;"
    :catchall_0
    move-exception v1

    .line 210
    .local v1, "cause":Ljava/lang/Throwable;
    invoke-interface {p1}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    .line 211
    invoke-interface {p4, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v2

    .line 248
    .end local v0    # "eventLoop":Lio/netty/channel/EventLoop;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    .line 249
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-interface {p4, v0}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 251
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_2
    return-object p4
.end method


# virtual methods
.method public bridge synthetic clone()Lio/netty/bootstrap/AbstractBootstrap;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->clone()Lio/netty/bootstrap/Bootstrap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/netty/bootstrap/Bootstrap;
    .locals 1

    .line 304
    new-instance v0, Lio/netty/bootstrap/Bootstrap;

    invoke-direct {v0, p0}, Lio/netty/bootstrap/Bootstrap;-><init>(Lio/netty/bootstrap/Bootstrap;)V

    return-object v0
.end method

.method public clone(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/Bootstrap;
    .locals 1
    .param p1, "group"    # Lio/netty/channel/EventLoopGroup;

    .line 313
    new-instance v0, Lio/netty/bootstrap/Bootstrap;

    invoke-direct {v0, p0}, Lio/netty/bootstrap/Bootstrap;-><init>(Lio/netty/bootstrap/Bootstrap;)V

    .line 314
    .local v0, "bs":Lio/netty/bootstrap/Bootstrap;
    iput-object p1, v0, Lio/netty/bootstrap/Bootstrap;->group:Lio/netty/channel/EventLoopGroup;

    .line 315
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->clone()Lio/netty/bootstrap/Bootstrap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/bootstrap/AbstractBootstrapConfig;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->config()Lio/netty/bootstrap/BootstrapConfig;

    move-result-object v0

    return-object v0
.end method

.method public final config()Lio/netty/bootstrap/BootstrapConfig;
    .locals 1

    .line 320
    iget-object v0, p0, Lio/netty/bootstrap/Bootstrap;->config:Lio/netty/bootstrap/BootstrapConfig;

    return-object v0
.end method

.method public connect()Lio/netty/channel/ChannelFuture;
    .locals 3

    .line 119
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->validate()Lio/netty/bootstrap/Bootstrap;

    .line 120
    iget-object v0, p0, Lio/netty/bootstrap/Bootstrap;->remoteAddress:Ljava/net/SocketAddress;

    .line 121
    .local v0, "remoteAddress":Ljava/net/SocketAddress;
    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lio/netty/bootstrap/Bootstrap;->config:Lio/netty/bootstrap/BootstrapConfig;

    invoke-virtual {v1}, Lio/netty/bootstrap/BootstrapConfig;->localAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/bootstrap/Bootstrap;->doResolveAndConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1

    .line 122
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "remoteAddress not set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public connect(Ljava/lang/String;I)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "inetHost"    # Ljava/lang/String;
    .param p2, "inetPort"    # I

    .line 132
    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/bootstrap/Bootstrap;->connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/InetAddress;I)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "inetHost"    # Ljava/net/InetAddress;
    .param p2, "inetPort"    # I

    .line 139
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0}, Lio/netty/bootstrap/Bootstrap;->connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 146
    const-string v0, "remoteAddress"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->validate()Lio/netty/bootstrap/Bootstrap;

    .line 148
    iget-object v0, p0, Lio/netty/bootstrap/Bootstrap;->config:Lio/netty/bootstrap/BootstrapConfig;

    invoke-virtual {v0}, Lio/netty/bootstrap/BootstrapConfig;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/bootstrap/Bootstrap;->doResolveAndConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .line 155
    const-string v0, "remoteAddress"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->validate()Lio/netty/bootstrap/Bootstrap;

    .line 157
    invoke-direct {p0, p1, p2}, Lio/netty/bootstrap/Bootstrap;->doResolveAndConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public disableResolver()Lio/netty/bootstrap/Bootstrap;
    .locals 1

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/bootstrap/Bootstrap;->externalResolver:Lio/netty/bootstrap/Bootstrap$ExternalAddressResolver;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/bootstrap/Bootstrap;->disableResolver:Z

    .line 87
    return-object p0
.end method

.method init(Lio/netty/channel/Channel;)V
    .locals 7
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 275
    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 276
    .local v0, "p":Lio/netty/channel/ChannelPipeline;
    iget-object v1, p0, Lio/netty/bootstrap/Bootstrap;->config:Lio/netty/bootstrap/BootstrapConfig;

    invoke-virtual {v1}, Lio/netty/bootstrap/BootstrapConfig;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    filled-new-array {v1}, [Lio/netty/channel/ChannelHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 278
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->newOptionsArray()[Ljava/util/Map$Entry;

    move-result-object v1

    sget-object v2, Lio/netty/bootstrap/Bootstrap;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {p1, v1, v2}, Lio/netty/bootstrap/Bootstrap;->setChannelOptions(Lio/netty/channel/Channel;[Ljava/util/Map$Entry;Lio/netty/util/internal/logging/InternalLogger;)V

    .line 279
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->newAttributesArray()[Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static {p1, v1}, Lio/netty/bootstrap/Bootstrap;->setAttributes(Lio/netty/channel/Channel;[Ljava/util/Map$Entry;)V

    .line 280
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->getInitializerExtensions()Ljava/util/Collection;

    move-result-object v1

    .line 281
    .local v1, "extensions":Ljava/util/Collection;, "Ljava/util/Collection<Lio/netty/bootstrap/ChannelInitializerExtension;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/bootstrap/ChannelInitializerExtension;

    .line 284
    .local v3, "extension":Lio/netty/bootstrap/ChannelInitializerExtension;
    :try_start_0
    invoke-virtual {v3, p1}, Lio/netty/bootstrap/ChannelInitializerExtension;->postInitializeClientChannel(Lio/netty/channel/Channel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    goto :goto_1

    .line 285
    :catch_0
    move-exception v4

    .line 286
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lio/netty/bootstrap/Bootstrap;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "Exception thrown from postInitializeClientChannel"

    invoke-interface {v5, v6, v4}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    .end local v3    # "extension":Lio/netty/bootstrap/ChannelInitializerExtension;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 290
    :cond_0
    return-void
.end method

.method public remoteAddress(Ljava/lang/String;I)Lio/netty/bootstrap/Bootstrap;
    .locals 1
    .param p1, "inetHost"    # Ljava/lang/String;
    .param p2, "inetPort"    # I

    .line 103
    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/bootstrap/Bootstrap;->remoteAddress:Ljava/net/SocketAddress;

    .line 104
    return-object p0
.end method

.method public remoteAddress(Ljava/net/InetAddress;I)Lio/netty/bootstrap/Bootstrap;
    .locals 1
    .param p1, "inetHost"    # Ljava/net/InetAddress;
    .param p2, "inetPort"    # I

    .line 111
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lio/netty/bootstrap/Bootstrap;->remoteAddress:Ljava/net/SocketAddress;

    .line 112
    return-object p0
.end method

.method public remoteAddress(Ljava/net/SocketAddress;)Lio/netty/bootstrap/Bootstrap;
    .locals 0
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 95
    iput-object p1, p0, Lio/netty/bootstrap/Bootstrap;->remoteAddress:Ljava/net/SocketAddress;

    .line 96
    return-object p0
.end method

.method final remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 324
    iget-object v0, p0, Lio/netty/bootstrap/Bootstrap;->remoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public resolver(Lio/netty/resolver/AddressResolverGroup;)Lio/netty/bootstrap/Bootstrap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/resolver/AddressResolverGroup<",
            "*>;)",
            "Lio/netty/bootstrap/Bootstrap;"
        }
    .end annotation

    .line 75
    .local p1, "resolver":Lio/netty/resolver/AddressResolverGroup;, "Lio/netty/resolver/AddressResolverGroup<*>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/bootstrap/Bootstrap$ExternalAddressResolver;

    invoke-direct {v0, p1}, Lio/netty/bootstrap/Bootstrap$ExternalAddressResolver;-><init>(Lio/netty/resolver/AddressResolverGroup;)V

    :goto_0
    iput-object v0, p0, Lio/netty/bootstrap/Bootstrap;->externalResolver:Lio/netty/bootstrap/Bootstrap$ExternalAddressResolver;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/bootstrap/Bootstrap;->disableResolver:Z

    .line 77
    return-object p0
.end method

.method final resolver()Lio/netty/resolver/AddressResolverGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/resolver/AddressResolverGroup<",
            "*>;"
        }
    .end annotation

    .line 328
    iget-boolean v0, p0, Lio/netty/bootstrap/Bootstrap;->disableResolver:Z

    if-eqz v0, :cond_0

    .line 329
    const/4 v0, 0x0

    return-object v0

    .line 331
    :cond_0
    iget-object v0, p0, Lio/netty/bootstrap/Bootstrap;->externalResolver:Lio/netty/bootstrap/Bootstrap$ExternalAddressResolver;

    invoke-static {v0}, Lio/netty/bootstrap/Bootstrap$ExternalAddressResolver;->getOrDefault(Lio/netty/bootstrap/Bootstrap$ExternalAddressResolver;)Lio/netty/resolver/AddressResolverGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic validate()Lio/netty/bootstrap/AbstractBootstrap;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lio/netty/bootstrap/Bootstrap;->validate()Lio/netty/bootstrap/Bootstrap;

    move-result-object v0

    return-object v0
.end method

.method public validate()Lio/netty/bootstrap/Bootstrap;
    .locals 2

    .line 294
    invoke-super {p0}, Lio/netty/bootstrap/AbstractBootstrap;->validate()Lio/netty/bootstrap/AbstractBootstrap;

    .line 295
    iget-object v0, p0, Lio/netty/bootstrap/Bootstrap;->config:Lio/netty/bootstrap/BootstrapConfig;

    invoke-virtual {v0}, Lio/netty/bootstrap/BootstrapConfig;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    return-object p0

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "handler not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
