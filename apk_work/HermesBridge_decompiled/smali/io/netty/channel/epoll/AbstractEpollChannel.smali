.class abstract Lio/netty/channel/epoll/AbstractEpollChannel;
.super Lio/netty/channel/AbstractChannel;
.source "AbstractEpollChannel.java"

# interfaces
.implements Lio/netty/channel/unix/UnixChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final METADATA:Lio/netty/channel/ChannelMetadata;


# instance fields
.field protected volatile active:Z

.field private connectPromise:Lio/netty/channel/ChannelPromise;

.field private connectTimeoutFuture:Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field epollInReadyRunnablePending:Z

.field protected flags:I

.field inputClosedSeenErrorOnRead:Z

.field private volatile local:Ljava/net/SocketAddress;

.field private volatile remote:Ljava/net/SocketAddress;

.field private requestedRemoteAddress:Ljava/net/SocketAddress;

.field protected final socket:Lio/netty/channel/epoll/LinuxSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    nop

    .line 60
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/channel/ChannelMetadata;-><init>(Z)V

    sput-object v0, Lio/netty/channel/epoll/AbstractEpollChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/epoll/LinuxSocket;Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "parent"    # Lio/netty/channel/Channel;
    .param p2, "fd"    # Lio/netty/channel/epoll/LinuxSocket;
    .param p3, "remote"    # Ljava/net/SocketAddress;

    .line 96
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel;-><init>(Lio/netty/channel/Channel;)V

    .line 73
    sget v0, Lio/netty/channel/epoll/Native;->EPOLLET:I

    iput v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    .line 97
    const-string v0, "fd"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/epoll/LinuxSocket;

    iput-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->active:Z

    .line 101
    iput-object p3, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->remote:Ljava/net/SocketAddress;

    .line 102
    invoke-virtual {p2}, Lio/netty/channel/epoll/LinuxSocket;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->local:Ljava/net/SocketAddress;

    .line 103
    return-void
.end method

.method constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/epoll/LinuxSocket;Z)V
    .locals 1
    .param p1, "parent"    # Lio/netty/channel/Channel;
    .param p2, "fd"    # Lio/netty/channel/epoll/LinuxSocket;
    .param p3, "active"    # Z

    .line 84
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel;-><init>(Lio/netty/channel/Channel;)V

    .line 73
    sget v0, Lio/netty/channel/epoll/Native;->EPOLLET:I

    iput v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    .line 85
    const-string v0, "fd"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/epoll/LinuxSocket;

    iput-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    .line 86
    iput-boolean p3, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->active:Z

    .line 87
    if-eqz p3, :cond_0

    .line 90
    invoke-virtual {p2}, Lio/netty/channel/epoll/LinuxSocket;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->local:Ljava/net/SocketAddress;

    .line 91
    invoke-virtual {p2}, Lio/netty/channel/epoll/LinuxSocket;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->remote:Ljava/net/SocketAddress;

    .line 93
    :cond_0
    return-void
.end method

.method constructor <init>(Lio/netty/channel/epoll/LinuxSocket;)V
    .locals 2
    .param p1, "fd"    # Lio/netty/channel/epoll/LinuxSocket;

    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lio/netty/channel/epoll/AbstractEpollChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/epoll/LinuxSocket;Z)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/ChannelConfig;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/ChannelConfig;

    .line 59
    invoke-static {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->isAllowHalfClosure(Lio/netty/channel/ChannelConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lio/netty/channel/epoll/AbstractEpollChannel;)Lio/netty/channel/ChannelPromise;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/epoll/AbstractEpollChannel;

    .line 59
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    return-object v0
.end method

.method static synthetic access$102(Lio/netty/channel/epoll/AbstractEpollChannel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/epoll/AbstractEpollChannel;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 59
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    return-object p1
.end method

.method static synthetic access$200(Lio/netty/channel/epoll/AbstractEpollChannel;)Ljava/net/SocketAddress;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/epoll/AbstractEpollChannel;

    .line 59
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->requestedRemoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method static synthetic access$202(Lio/netty/channel/epoll/AbstractEpollChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/epoll/AbstractEpollChannel;
    .param p1, "x1"    # Ljava/net/SocketAddress;

    .line 59
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->requestedRemoteAddress:Ljava/net/SocketAddress;

    return-object p1
.end method

.method static synthetic access$300(Lio/netty/channel/epoll/AbstractEpollChannel;)Lio/netty/util/concurrent/Future;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/epoll/AbstractEpollChannel;

    .line 59
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->connectTimeoutFuture:Lio/netty/util/concurrent/Future;

    return-object v0
.end method

.method static synthetic access$302(Lio/netty/channel/epoll/AbstractEpollChannel;Lio/netty/util/concurrent/Future;)Lio/netty/util/concurrent/Future;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/epoll/AbstractEpollChannel;
    .param p1, "x1"    # Lio/netty/util/concurrent/Future;

    .line 59
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->connectTimeoutFuture:Lio/netty/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$402(Lio/netty/channel/epoll/AbstractEpollChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/epoll/AbstractEpollChannel;
    .param p1, "x1"    # Ljava/net/SocketAddress;

    .line 59
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->remote:Ljava/net/SocketAddress;

    return-object p1
.end method

.method protected static checkResolvable(Ljava/net/InetSocketAddress;)V
    .locals 1
    .param p0, "addr"    # Ljava/net/InetSocketAddress;

    .line 336
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    return-void

    .line 337
    :cond_0
    new-instance v0, Ljava/nio/channels/UnresolvedAddressException;

    invoke-direct {v0}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    throw v0
.end method

.method private static isAllowHalfClosure(Lio/netty/channel/ChannelConfig;)Z
    .locals 1
    .param p0, "config"    # Lio/netty/channel/ChannelConfig;

    .line 243
    instance-of v0, p0, Lio/netty/channel/epoll/EpollDomainSocketChannelConfig;

    if-eqz v0, :cond_0

    .line 244
    move-object v0, p0

    check-cast v0, Lio/netty/channel/epoll/EpollDomainSocketChannelConfig;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollDomainSocketChannelConfig;->isAllowHalfClosure()Z

    move-result v0

    return v0

    .line 246
    :cond_0
    instance-of v0, p0, Lio/netty/channel/socket/SocketChannelConfig;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lio/netty/channel/socket/SocketChannelConfig;

    .line 247
    invoke-interface {v0}, Lio/netty/channel/socket/SocketChannelConfig;->isAllowHalfClosure()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 246
    :goto_0
    return v0
.end method

.method static isSoErrorZero(Lio/netty/channel/unix/Socket;)Z
    .locals 2
    .param p0, "fd"    # Lio/netty/channel/unix/Socket;

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/unix/Socket;->getSoError()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private modifyEvents()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    check-cast v0, Lio/netty/channel/epoll/EpollEventLoop;

    invoke-virtual {v0, p0}, Lio/netty/channel/epoll/EpollEventLoop;->modify(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    .line 280
    :cond_0
    return-void
.end method

.method private static newDirectBuffer0(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "holder"    # Ljava/lang/Object;
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p3, "capacity"    # I

    .line 329
    invoke-interface {p2, p3}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 330
    .local v0, "directBuf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {v0, p1, v1, p3}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 331
    invoke-static {p0}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 332
    return-object v0
.end method


# virtual methods
.method final clearEpollIn()V
    .locals 3

    .line 252
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 254
    .local v0, "loop":Lio/netty/channel/EventLoop;
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    check-cast v1, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;

    .line 255
    .local v1, "unsafe":Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {v1}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->clearEpollIn0()V

    goto :goto_0

    .line 259
    :cond_0
    new-instance v2, Lio/netty/channel/epoll/AbstractEpollChannel$2;

    invoke-direct {v2, p0, v1}, Lio/netty/channel/epoll/AbstractEpollChannel$2;-><init>(Lio/netty/channel/epoll/AbstractEpollChannel;Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;)V

    invoke-interface {v0, v2}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 269
    .end local v0    # "loop":Lio/netty/channel/EventLoop;
    .end local v1    # "unsafe":Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
    :goto_0
    goto :goto_1

    .line 272
    :cond_1
    iget v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    sget v1, Lio/netty/channel/epoll/Native;->EPOLLIN:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    .line 274
    :goto_1
    return-void
.end method

.method clearFlag(I)V
    .locals 2
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/AbstractEpollChannel;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    .line 123
    invoke-direct {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->modifyEvents()V

    .line 125
    :cond_0
    return-void
.end method

.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public abstract config()Lio/netty/channel/epoll/EpollChannelConfig;
.end method

.method protected final doBeginRead()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    check-cast v0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;

    .line 224
    .local v0, "unsafe":Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->readPending:Z

    .line 229
    sget v1, Lio/netty/channel/epoll/Native;->EPOLLIN:I

    invoke-virtual {p0, v1}, Lio/netty/channel/epoll/AbstractEpollChannel;->setFlag(I)V

    .line 233
    iget-boolean v1, v0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->maybeMoreDataToRead:Z

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->executeEpollInReadyRunnable(Lio/netty/channel/ChannelConfig;)V

    .line 236
    :cond_0
    return-void
.end method

.method protected doBind(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 726
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 727
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->checkResolvable(Ljava/net/InetSocketAddress;)V

    .line 729
    :cond_0
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->bind(Ljava/net/SocketAddress;)V

    .line 730
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->local:Ljava/net/SocketAddress;

    .line 731
    return-void
.end method

.method protected doClose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->active:Z

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->inputClosedSeenErrorOnRead:Z

    .line 156
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    .line 157
    .local v1, "promise":Lio/netty/channel/ChannelPromise;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 159
    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v1, v3}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 160
    iput-object v2, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    .line 163
    :cond_0
    iget-object v3, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->connectTimeoutFuture:Lio/netty/util/concurrent/Future;

    .line 164
    .local v3, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    if-eqz v3, :cond_1

    .line 165
    invoke-interface {v3, v0}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    .line 166
    iput-object v2, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->connectTimeoutFuture:Lio/netty/util/concurrent/Future;

    .line 169
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 175
    .local v0, "loop":Lio/netty/channel/EventLoop;
    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->doDeregister()V

    goto :goto_0

    .line 178
    :cond_2
    new-instance v2, Lio/netty/channel/epoll/AbstractEpollChannel$1;

    invoke-direct {v2, p0}, Lio/netty/channel/epoll/AbstractEpollChannel$1;-><init>(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    invoke-interface {v0, v2}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v0    # "loop":Lio/netty/channel/EventLoop;
    .end local v1    # "promise":Lio/netty/channel/ChannelPromise;
    .end local v3    # "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    :cond_3
    :goto_0
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->close()V

    .line 192
    nop

    .line 193
    return-void

    .line 191
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v1}, Lio/netty/channel/epoll/LinuxSocket;->close()V

    .line 192
    throw v0
.end method

.method protected doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
    .locals 3
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 737
    instance-of v0, p2, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 738
    move-object v0, p2

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->checkResolvable(Ljava/net/InetSocketAddress;)V

    .line 741
    :cond_0
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 743
    .local v0, "remoteSocketAddr":Ljava/net/InetSocketAddress;
    :goto_0
    if-eqz v0, :cond_2

    .line 744
    invoke-static {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->checkResolvable(Ljava/net/InetSocketAddress;)V

    .line 747
    :cond_2
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->remote:Ljava/net/SocketAddress;

    if-nez v1, :cond_6

    .line 754
    if-eqz p2, :cond_3

    .line 755
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v1, p2}, Lio/netty/channel/epoll/LinuxSocket;->bind(Ljava/net/SocketAddress;)V

    .line 758
    :cond_3
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/AbstractEpollChannel;->doConnect0(Ljava/net/SocketAddress;)Z

    move-result v1

    .line 759
    .local v1, "connected":Z
    if-eqz v1, :cond_5

    .line 760
    if-nez v0, :cond_4

    move-object v2, p1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    .line 761
    invoke-virtual {v2}, Lio/netty/channel/epoll/LinuxSocket;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v0, v2}, Lio/netty/channel/unix/UnixChannelUtil;->computeRemoteAddr(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->remote:Ljava/net/SocketAddress;

    .line 766
    :cond_5
    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v2}, Lio/netty/channel/epoll/LinuxSocket;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    iput-object v2, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->local:Ljava/net/SocketAddress;

    .line 767
    return v1

    .line 751
    .end local v1    # "connected":Z
    :cond_6
    new-instance v1, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v1
.end method

.method doConnect0(Ljava/net/SocketAddress;)Z
    .locals 3
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 771
    const/4 v0, 0x0

    .line 773
    .local v0, "success":Z
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v1, p1}, Lio/netty/channel/epoll/LinuxSocket;->connect(Ljava/net/SocketAddress;)Z

    move-result v1

    .line 774
    .local v1, "connected":Z
    if-nez v1, :cond_0

    .line 775
    sget v2, Lio/netty/channel/epoll/Native;->EPOLLOUT:I

    invoke-virtual {p0, v2}, Lio/netty/channel/epoll/AbstractEpollChannel;->setFlag(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    :cond_0
    const/4 v0, 0x1

    .line 778
    nop

    .line 780
    if-nez v0, :cond_1

    .line 781
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->doClose()V

    .line 778
    :cond_1
    return v1

    .line 780
    .end local v1    # "connected":Z
    :catchall_0
    move-exception v1

    if-nez v0, :cond_2

    .line 781
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->doClose()V

    .line 783
    :cond_2
    throw v1
.end method

.method protected doDeregister()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    check-cast v0, Lio/netty/channel/epoll/EpollEventLoop;

    invoke-virtual {v0, p0}, Lio/netty/channel/epoll/EpollEventLoop;->remove(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    .line 218
    return-void
.end method

.method protected doDisconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->doClose()V

    .line 203
    return-void
.end method

.method protected final doReadBytes(Lio/netty/buffer/ByteBuf;)I
    .locals 5
    .param p1, "byteBuf"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 345
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    .line 347
    .local v0, "writerIndex":I
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel$Unsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v2

    invoke-interface {v1, v2}, Lio/netty/channel/RecvByteBufAllocator$Handle;->attemptedBytesRead(I)V

    .line 348
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v2

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lio/netty/channel/epoll/LinuxSocket;->recvAddress(JII)I

    move-result v1

    .local v1, "localReadAmount":I
    goto :goto_0

    .line 351
    .end local v1    # "localReadAmount":I
    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 352
    .local v1, "buf":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lio/netty/channel/epoll/LinuxSocket;->recv(Ljava/nio/ByteBuffer;II)I

    move-result v2

    move v1, v2

    .line 354
    .local v1, "localReadAmount":I
    :goto_0
    if-lez v1, :cond_1

    .line 355
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 357
    :cond_1
    return v1
.end method

.method protected doRegister()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->epollInReadyRunnablePending:Z

    .line 288
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    check-cast v0, Lio/netty/channel/epoll/EpollEventLoop;

    invoke-virtual {v0, p0}, Lio/netty/channel/epoll/EpollEventLoop;->add(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    .line 289
    return-void
.end method

.method protected final doWriteBytes(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/buffer/ByteBuf;)I
    .locals 6
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .param p2, "buf"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 361
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lio/netty/channel/epoll/LinuxSocket;->sendAddress(JII)I

    move-result v0

    .line 363
    .local v0, "localFlushedAmount":I
    if-lez v0, :cond_0

    .line 364
    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lio/netty/channel/ChannelOutboundBuffer;->removeBytes(J)V

    .line 365
    return v1

    .line 367
    .end local v0    # "localFlushedAmount":I
    :cond_0
    goto :goto_1

    .line 368
    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 369
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 370
    .local v0, "nioBuf":Ljava/nio/ByteBuffer;
    :goto_0
    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lio/netty/channel/epoll/LinuxSocket;->send(Ljava/nio/ByteBuffer;II)I

    move-result v2

    .line 371
    .local v2, "localFlushedAmount":I
    if-lez v2, :cond_3

    .line 372
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 373
    int-to-long v3, v2

    invoke-virtual {p1, v3, v4}, Lio/netty/channel/ChannelOutboundBuffer;->removeBytes(J)V

    .line 374
    return v1

    .line 377
    .end local v0    # "nioBuf":Ljava/nio/ByteBuffer;
    .end local v2    # "localFlushedAmount":I
    :cond_3
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method final doWriteOrSendBytes(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;Z)J
    .locals 11
    .param p1, "data"    # Lio/netty/buffer/ByteBuf;
    .param p2, "remoteAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "fastOpen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "fastOpen requires a remote address"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 387
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 388
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v9

    .line 389
    .local v9, "memoryAddress":J
    if-nez p2, :cond_2

    .line 390
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v2

    invoke-virtual {v0, v9, v10, v1, v2}, Lio/netty/channel/epoll/LinuxSocket;->sendAddress(JII)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 392
    :cond_2
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v5

    .line 393
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    .line 392
    move-wide v2, v9

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Lio/netty/channel/epoll/LinuxSocket;->sendToAddress(JIILjava/net/InetAddress;IZ)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 396
    .end local v9    # "memoryAddress":J
    :cond_3
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    .line 397
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    check-cast v0, Lio/netty/channel/epoll/EpollEventLoop;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollEventLoop;->cleanIovArray()Lio/netty/channel/unix/IovArray;

    move-result-object v0

    .line 398
    .local v0, "array":Lio/netty/channel/unix/IovArray;
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lio/netty/channel/unix/IovArray;->add(Lio/netty/buffer/ByteBuf;II)Z

    .line 399
    invoke-virtual {v0}, Lio/netty/channel/unix/IovArray;->count()I

    move-result v1

    .line 400
    .local v1, "cnt":I
    if-eqz v1, :cond_5

    .line 402
    const/4 v2, 0x0

    if-nez p2, :cond_4

    .line 403
    iget-object v3, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, v2}, Lio/netty/channel/unix/IovArray;->memoryAddress(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1}, Lio/netty/channel/epoll/LinuxSocket;->writevAddresses(JI)J

    move-result-wide v2

    return-wide v2

    .line 405
    :cond_4
    iget-object v3, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, v2}, Lio/netty/channel/unix/IovArray;->memoryAddress(I)J

    move-result-wide v4

    .line 406
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    .line 405
    move v6, v1

    move v9, p3

    invoke-virtual/range {v3 .. v9}, Lio/netty/channel/epoll/LinuxSocket;->sendToAddresses(JILjava/net/InetAddress;IZ)I

    move-result v2

    int-to-long v2, v2

    return-wide v2

    .line 400
    :cond_5
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 409
    .end local v0    # "array":Lio/netty/channel/unix/IovArray;
    .end local v1    # "cnt":I
    :cond_6
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 410
    .local v0, "nioData":Ljava/nio/ByteBuffer;
    if-nez p2, :cond_7

    .line 411
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lio/netty/channel/epoll/LinuxSocket;->send(Ljava/nio/ByteBuffer;II)I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 413
    :cond_7
    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    .line 414
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    .line 413
    move-object v3, v0

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lio/netty/channel/epoll/LinuxSocket;->sendTo(Ljava/nio/ByteBuffer;IILjava/net/InetAddress;IZ)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method public final fd()Lio/netty/channel/unix/FileDescriptor;
    .locals 1

    .line 133
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->active:Z

    return v0
.end method

.method protected isCompatible(Lio/netty/channel/EventLoop;)Z
    .locals 1
    .param p1, "loop"    # Lio/netty/channel/EventLoop;

    .line 207
    instance-of v0, p1, Lio/netty/channel/epoll/EpollEventLoop;

    return v0
.end method

.method isFlagSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 128
    iget v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->isOpen()Z

    move-result v0

    return v0
.end method

.method protected localAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 788
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->local:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 146
    sget-object v0, Lio/netty/channel/epoll/AbstractEpollChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method protected final newDirectBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 298
    invoke-virtual {p0, p1, p1}, Lio/netty/channel/epoll/AbstractEpollChannel;->newDirectBuffer(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method protected final newDirectBuffer(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "holder"    # Ljava/lang/Object;
    .param p2, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 307
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 308
    .local v0, "readableBytes":I
    if-nez v0, :cond_0

    .line 309
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 310
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v1

    .line 313
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    .line 314
    .local v1, "alloc":Lio/netty/buffer/ByteBufAllocator;
    invoke-interface {v1}, Lio/netty/buffer/ByteBufAllocator;->isDirectBufferPooled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    invoke-static {p1, p2, v1, v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->newDirectBuffer0(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    return-object v2

    .line 318
    :cond_1
    invoke-static {}, Lio/netty/buffer/ByteBufUtil;->threadLocalDirectBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 319
    .local v2, "directBuf":Lio/netty/buffer/ByteBuf;
    if-nez v2, :cond_2

    .line 320
    invoke-static {p1, p2, v1, v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->newDirectBuffer0(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    return-object v3

    .line 323
    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual {v2, p2, v3, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 324
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 325
    return-object v2
.end method

.method protected bridge synthetic newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->newUnsafe()Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;

    move-result-object v0

    return-object v0
.end method

.method protected abstract newUnsafe()Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
.end method

.method protected remoteAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 793
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->remote:Ljava/net/SocketAddress;

    return-object v0
.end method

.method resetCachedAddresses()V
    .locals 1

    .line 196
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->local:Ljava/net/SocketAddress;

    .line 197
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->remote:Ljava/net/SocketAddress;

    .line 198
    return-void
.end method

.method protected setFlag(I)V
    .locals 1
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/AbstractEpollChannel;->isFlagSet(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    .line 116
    invoke-direct {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->modifyEvents()V

    .line 118
    :cond_0
    return-void
.end method

.method final shouldBreakEpollInReady(Lio/netty/channel/ChannelConfig;)Z
    .locals 1
    .param p1, "config"    # Lio/netty/channel/ChannelConfig;

    .line 239
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;->inputClosedSeenErrorOnRead:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/netty/channel/epoll/AbstractEpollChannel;->isAllowHalfClosure(Lio/netty/channel/ChannelConfig;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
