.class abstract Lio/netty/channel/kqueue/AbstractKQueueChannel;
.super Lio/netty/channel/AbstractChannel;
.source "AbstractKQueueChannel.java"

# interfaces
.implements Lio/netty/channel/unix/UnixChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
    }
.end annotation


# static fields
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

.field inputClosedSeenErrorOnRead:Z

.field private volatile local:Ljava/net/SocketAddress;

.field private readFilterEnabled:Z

.field readReadyRunnablePending:Z

.field private volatile remote:Ljava/net/SocketAddress;

.field private requestedRemoteAddress:Ljava/net/SocketAddress;

.field final socket:Lio/netty/channel/kqueue/BsdSocket;

.field private writeFilterEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/channel/ChannelMetadata;-><init>(Z)V

    sput-object v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "parent"    # Lio/netty/channel/Channel;
    .param p2, "fd"    # Lio/netty/channel/kqueue/BsdSocket;
    .param p3, "remote"    # Ljava/net/SocketAddress;

    .line 90
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel;-><init>(Lio/netty/channel/Channel;)V

    .line 91
    const-string v0, "fd"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/kqueue/BsdSocket;

    iput-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->active:Z

    .line 95
    iput-object p3, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->remote:Ljava/net/SocketAddress;

    .line 96
    invoke-virtual {p2}, Lio/netty/channel/kqueue/BsdSocket;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->local:Ljava/net/SocketAddress;

    .line 97
    return-void
.end method

.method constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Z)V
    .locals 1
    .param p1, "parent"    # Lio/netty/channel/Channel;
    .param p2, "fd"    # Lio/netty/channel/kqueue/BsdSocket;
    .param p3, "active"    # Z

    .line 78
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel;-><init>(Lio/netty/channel/Channel;)V

    .line 79
    const-string v0, "fd"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/kqueue/BsdSocket;

    iput-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    .line 80
    iput-boolean p3, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->active:Z

    .line 81
    if-eqz p3, :cond_0

    .line 84
    invoke-virtual {p2}, Lio/netty/channel/kqueue/BsdSocket;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->local:Ljava/net/SocketAddress;

    .line 85
    invoke-virtual {p2}, Lio/netty/channel/kqueue/BsdSocket;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->remote:Ljava/net/SocketAddress;

    .line 87
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Lio/netty/channel/ChannelPromise;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/kqueue/AbstractKQueueChannel;

    .line 58
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    return-object v0
.end method

.method static synthetic access$002(Lio/netty/channel/kqueue/AbstractKQueueChannel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/kqueue/AbstractKQueueChannel;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 58
    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    return-object p1
.end method

.method static synthetic access$100(Lio/netty/channel/ChannelConfig;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/ChannelConfig;

    .line 58
    invoke-static {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isAllowHalfClosure(Lio/netty/channel/ChannelConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/kqueue/AbstractKQueueChannel;

    .line 58
    invoke-direct {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->clearRdHup0()V

    return-void
.end method

.method static synthetic access$300(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/kqueue/AbstractKQueueChannel;

    .line 58
    iget-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->writeFilterEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Ljava/net/SocketAddress;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/kqueue/AbstractKQueueChannel;

    .line 58
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->requestedRemoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method static synthetic access$402(Lio/netty/channel/kqueue/AbstractKQueueChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/kqueue/AbstractKQueueChannel;
    .param p1, "x1"    # Ljava/net/SocketAddress;

    .line 58
    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->requestedRemoteAddress:Ljava/net/SocketAddress;

    return-object p1
.end method

.method static synthetic access$500(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Lio/netty/util/concurrent/Future;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/kqueue/AbstractKQueueChannel;

    .line 58
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->connectTimeoutFuture:Lio/netty/util/concurrent/Future;

    return-object v0
.end method

.method static synthetic access$502(Lio/netty/channel/kqueue/AbstractKQueueChannel;Lio/netty/util/concurrent/Future;)Lio/netty/util/concurrent/Future;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/kqueue/AbstractKQueueChannel;
    .param p1, "x1"    # Lio/netty/util/concurrent/Future;

    .line 58
    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->connectTimeoutFuture:Lio/netty/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$602(Lio/netty/channel/kqueue/AbstractKQueueChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/kqueue/AbstractKQueueChannel;
    .param p1, "x1"    # Ljava/net/SocketAddress;

    .line 58
    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->remote:Ljava/net/SocketAddress;

    return-object p1
.end method

.method protected static checkResolvable(Ljava/net/InetSocketAddress;)V
    .locals 1
    .param p0, "addr"    # Ljava/net/InetSocketAddress;

    .line 257
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    return-void

    .line 258
    :cond_0
    new-instance v0, Ljava/nio/channels/UnresolvedAddressException;

    invoke-direct {v0}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    throw v0
.end method

.method private clearRdHup0()V
    .locals 3

    .line 169
    sget-short v0, Lio/netty/channel/kqueue/Native;->EVFILT_SOCK:S

    sget-short v1, Lio/netty/channel/kqueue/Native;->EV_DELETE_DISABLE:S

    sget v2, Lio/netty/channel/kqueue/Native;->NOTE_RDHUP:I

    invoke-direct {p0, v0, v1, v2}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->evSet0(SSI)V

    .line 170
    return-void
.end method

.method private evSet(SS)V
    .locals 1
    .param p1, "filter"    # S
    .param p2, "flags"    # S

    .line 355
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-direct {p0, p1, p2}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->evSet0(SS)V

    .line 358
    :cond_0
    return-void
.end method

.method private evSet0(SS)V
    .locals 1
    .param p1, "filter"    # S
    .param p2, "flags"    # S

    .line 361
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->evSet0(SSI)V

    .line 362
    return-void
.end method

.method private evSet0(SSI)V
    .locals 1
    .param p1, "filter"    # S
    .param p2, "flags"    # S
    .param p3, "fflags"    # I

    .line 366
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    check-cast v0, Lio/netty/channel/kqueue/KQueueEventLoop;

    invoke-virtual {v0, p0, p1, p2, p3}, Lio/netty/channel/kqueue/KQueueEventLoop;->evSet(Lio/netty/channel/kqueue/AbstractKQueueChannel;SSI)V

    .line 369
    :cond_0
    return-void
.end method

.method private static isAllowHalfClosure(Lio/netty/channel/ChannelConfig;)Z
    .locals 1
    .param p0, "config"    # Lio/netty/channel/ChannelConfig;

    .line 306
    instance-of v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    if-eqz v0, :cond_0

    .line 307
    move-object v0, p0

    check-cast v0, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->isAllowHalfClosure()Z

    move-result v0

    return v0

    .line 310
    :cond_0
    instance-of v0, p0, Lio/netty/channel/socket/SocketChannelConfig;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lio/netty/channel/socket/SocketChannelConfig;

    .line 311
    invoke-interface {v0}, Lio/netty/channel/socket/SocketChannelConfig;->isAllowHalfClosure()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 310
    :goto_0
    return v0
.end method

.method static isSoErrorZero(Lio/netty/channel/kqueue/BsdSocket;)Z
    .locals 2
    .param p0, "fd"    # Lio/netty/channel/kqueue/BsdSocket;

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/kqueue/BsdSocket;->getSoError()I

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

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static newDirectBuffer0(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "holder"    # Ljava/lang/Object;
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p3, "capacity"    # I

    .line 250
    invoke-interface {p2, p3}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 251
    .local v0, "directBuf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {v0, p1, v1, p3}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 252
    invoke-static {p0}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 253
    return-object v0
.end method


# virtual methods
.method final clearReadFilter()V
    .locals 3

    .line 316
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 318
    .local v0, "loop":Lio/netty/channel/EventLoop;
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    check-cast v1, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;

    .line 319
    .local v1, "unsafe":Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    invoke-virtual {v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->clearReadFilter0()V

    goto :goto_0

    .line 323
    :cond_0
    new-instance v2, Lio/netty/channel/kqueue/AbstractKQueueChannel$1;

    invoke-direct {v2, p0, v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel$1;-><init>(Lio/netty/channel/kqueue/AbstractKQueueChannel;Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;)V

    invoke-interface {v0, v2}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 333
    .end local v0    # "loop":Lio/netty/channel/EventLoop;
    .end local v1    # "unsafe":Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
    :goto_0
    goto :goto_1

    .line 336
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->readFilterEnabled:Z

    .line 338
    :goto_1
    return-void
.end method

.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->config()Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public abstract config()Lio/netty/channel/kqueue/KQueueChannelConfig;
.end method

.method protected final doBeginRead()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    check-cast v0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;

    .line 176
    .local v0, "unsafe":Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readPending:Z

    .line 181
    invoke-virtual {p0, v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->readFilter(Z)V

    .line 185
    iget-boolean v1, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->maybeMoreDataToRead:Z

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->config()Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->executeReadReadyRunnable(Lio/netty/channel/ChannelConfig;)V

    .line 188
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

    .line 680
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 681
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->checkResolvable(Ljava/net/InetSocketAddress;)V

    .line 683
    :cond_0
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/kqueue/BsdSocket;->bind(Ljava/net/SocketAddress;)V

    .line 684
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->local:Ljava/net/SocketAddress;

    .line 685
    return-void
.end method

.method protected doClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->active:Z

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->inputClosedSeenErrorOnRead:Z

    .line 128
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->close()V

    .line 129
    return-void
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

    .line 691
    instance-of v0, p2, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 692
    move-object v0, p2

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->checkResolvable(Ljava/net/InetSocketAddress;)V

    .line 695
    :cond_0
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 697
    .local v0, "remoteSocketAddr":Ljava/net/InetSocketAddress;
    :goto_0
    if-eqz v0, :cond_2

    .line 698
    invoke-static {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->checkResolvable(Ljava/net/InetSocketAddress;)V

    .line 701
    :cond_2
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->remote:Ljava/net/SocketAddress;

    if-nez v1, :cond_6

    .line 708
    if-eqz p2, :cond_3

    .line 709
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v1, p2}, Lio/netty/channel/kqueue/BsdSocket;->bind(Ljava/net/SocketAddress;)V

    .line 712
    :cond_3
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->doConnect0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z

    move-result v1

    .line 713
    .local v1, "connected":Z
    if-eqz v1, :cond_5

    .line 714
    if-nez v0, :cond_4

    move-object v2, p1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    .line 715
    invoke-virtual {v2}, Lio/netty/channel/kqueue/BsdSocket;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v0, v2}, Lio/netty/channel/unix/UnixChannelUtil;->computeRemoteAddr(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->remote:Ljava/net/SocketAddress;

    .line 720
    :cond_5
    iget-object v2, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v2}, Lio/netty/channel/kqueue/BsdSocket;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    iput-object v2, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->local:Ljava/net/SocketAddress;

    .line 721
    return v1

    .line 705
    .end local v1    # "connected":Z
    :cond_6
    new-instance v1, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v1
.end method

.method protected doConnect0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
    .locals 3
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 725
    const/4 v0, 0x0

    .line 727
    .local v0, "success":Z
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v1, p1}, Lio/netty/channel/kqueue/BsdSocket;->connect(Ljava/net/SocketAddress;)Z

    move-result v1

    .line 728
    .local v1, "connected":Z
    if-nez v1, :cond_0

    .line 729
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->writeFilter(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    :cond_0
    const/4 v0, 0x1

    .line 732
    nop

    .line 734
    if-nez v0, :cond_1

    .line 735
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->doClose()V

    .line 732
    :cond_1
    return v1

    .line 734
    .end local v1    # "connected":Z
    :catchall_0
    move-exception v1

    if-nez v0, :cond_2

    .line 735
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->doClose()V

    .line 737
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

    .line 153
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    check-cast v0, Lio/netty/channel/kqueue/KQueueEventLoop;

    invoke-virtual {v0, p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->remove(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->readFilterEnabled:Z

    .line 158
    iput-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->writeFilterEnabled:Z

    .line 159
    return-void
.end method

.method protected doDisconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->doClose()V

    .line 134
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

    .line 266
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    .line 268
    .local v0, "writerIndex":I
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel$Unsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v2

    invoke-interface {v1, v2}, Lio/netty/channel/RecvByteBufAllocator$Handle;->attemptedBytesRead(I)V

    .line 269
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v2

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lio/netty/channel/kqueue/BsdSocket;->readAddress(JII)I

    move-result v1

    .local v1, "localReadAmount":I
    goto :goto_0

    .line 272
    .end local v1    # "localReadAmount":I
    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 273
    .local v1, "buf":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lio/netty/channel/kqueue/BsdSocket;->read(Ljava/nio/ByteBuffer;II)I

    move-result v2

    move v1, v2

    .line 275
    .local v1, "localReadAmount":I
    :goto_0
    if-lez v1, :cond_1

    .line 276
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 278
    :cond_1
    return v1
.end method

.method protected doRegister()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->readReadyRunnablePending:Z

    .line 197
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    check-cast v0, Lio/netty/channel/kqueue/KQueueEventLoop;

    invoke-virtual {v0, p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->add(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V

    .line 200
    iget-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->writeFilterEnabled:Z

    if-eqz v0, :cond_0

    .line 201
    sget-short v0, Lio/netty/channel/kqueue/Native;->EVFILT_WRITE:S

    sget-short v1, Lio/netty/channel/kqueue/Native;->EV_ADD_CLEAR_ENABLE:S

    invoke-direct {p0, v0, v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->evSet0(SS)V

    .line 203
    :cond_0
    iget-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->readFilterEnabled:Z

    if-eqz v0, :cond_1

    .line 204
    sget-short v0, Lio/netty/channel/kqueue/Native;->EVFILT_READ:S

    sget-short v1, Lio/netty/channel/kqueue/Native;->EV_ADD_CLEAR_ENABLE:S

    invoke-direct {p0, v0, v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->evSet0(SS)V

    .line 206
    :cond_1
    sget-short v0, Lio/netty/channel/kqueue/Native;->EVFILT_SOCK:S

    sget-short v1, Lio/netty/channel/kqueue/Native;->EV_ADD:S

    sget v2, Lio/netty/channel/kqueue/Native;->NOTE_RDHUP:I

    invoke-direct {p0, v0, v1, v2}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->evSet0(SSI)V

    .line 207
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

    .line 282
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lio/netty/channel/kqueue/BsdSocket;->writeAddress(JII)I

    move-result v0

    .line 284
    .local v0, "localFlushedAmount":I
    if-lez v0, :cond_0

    .line 285
    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lio/netty/channel/ChannelOutboundBuffer;->removeBytes(J)V

    .line 286
    return v1

    .line 288
    .end local v0    # "localFlushedAmount":I
    :cond_0
    goto :goto_1

    .line 289
    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 290
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

    .line 291
    .local v0, "nioBuf":Ljava/nio/ByteBuffer;
    :goto_0
    iget-object v2, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lio/netty/channel/kqueue/BsdSocket;->write(Ljava/nio/ByteBuffer;II)I

    move-result v2

    .line 292
    .local v2, "localFlushedAmount":I
    if-lez v2, :cond_3

    .line 293
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 294
    int-to-long v3, v2

    invoke-virtual {p1, v3, v4}, Lio/netty/channel/ChannelOutboundBuffer;->removeBytes(J)V

    .line 295
    return v1

    .line 298
    .end local v0    # "nioBuf":Ljava/nio/ByteBuffer;
    .end local v2    # "localFlushedAmount":I
    :cond_3
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final fd()Lio/netty/channel/unix/FileDescriptor;
    .locals 1

    .line 109
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->active:Z

    return v0
.end method

.method protected isCompatible(Lio/netty/channel/EventLoop;)Z
    .locals 1
    .param p1, "loop"    # Lio/netty/channel/EventLoop;

    .line 143
    instance-of v0, p1, Lio/netty/channel/kqueue/KQueueEventLoop;

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->isOpen()Z

    move-result v0

    return v0
.end method

.method protected localAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 742
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->local:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 119
    sget-object v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method protected final newDirectBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 219
    invoke-virtual {p0, p1, p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->newDirectBuffer(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method protected final newDirectBuffer(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "holder"    # Ljava/lang/Object;
    .param p2, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 228
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 229
    .local v0, "readableBytes":I
    if-nez v0, :cond_0

    .line 230
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 231
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v1

    .line 234
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    .line 235
    .local v1, "alloc":Lio/netty/buffer/ByteBufAllocator;
    invoke-interface {v1}, Lio/netty/buffer/ByteBufAllocator;->isDirectBufferPooled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    invoke-static {p1, p2, v1, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->newDirectBuffer0(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    return-object v2

    .line 239
    :cond_1
    invoke-static {}, Lio/netty/buffer/ByteBufUtil;->threadLocalDirectBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 240
    .local v2, "directBuf":Lio/netty/buffer/ByteBuf;
    if-nez v2, :cond_2

    .line 241
    invoke-static {p1, p2, v1, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->newDirectBuffer0(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    return-object v3

    .line 244
    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual {v2, p2, v3, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 245
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 246
    return-object v2
.end method

.method protected bridge synthetic newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->newUnsafe()Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;

    move-result-object v0

    return-object v0
.end method

.method protected abstract newUnsafe()Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
.end method

.method readFilter(Z)V
    .locals 2
    .param p1, "readFilterEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    iget-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->readFilterEnabled:Z

    if-eq v0, p1, :cond_1

    .line 342
    iput-boolean p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->readFilterEnabled:Z

    .line 343
    sget-short v0, Lio/netty/channel/kqueue/Native;->EVFILT_READ:S

    if-eqz p1, :cond_0

    sget-short v1, Lio/netty/channel/kqueue/Native;->EV_ADD_CLEAR_ENABLE:S

    goto :goto_0

    :cond_0
    sget-short v1, Lio/netty/channel/kqueue/Native;->EV_DELETE_DISABLE:S

    :goto_0
    invoke-direct {p0, v0, v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->evSet(SS)V

    .line 345
    :cond_1
    return-void
.end method

.method protected remoteAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 747
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->remote:Ljava/net/SocketAddress;

    return-object v0
.end method

.method resetCachedAddresses()V
    .locals 1

    .line 137
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->local:Ljava/net/SocketAddress;

    .line 138
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->remote:Ljava/net/SocketAddress;

    .line 139
    return-void
.end method

.method final shouldBreakReadReady(Lio/netty/channel/ChannelConfig;)Z
    .locals 1
    .param p1, "config"    # Lio/netty/channel/ChannelConfig;

    .line 302
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->inputClosedSeenErrorOnRead:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isAllowHalfClosure(Lio/netty/channel/ChannelConfig;)Z

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

.method unregisterFilters()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->readFilter(Z)V

    .line 164
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->writeFilter(Z)V

    .line 165
    invoke-direct {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->clearRdHup0()V

    .line 166
    return-void
.end method

.method writeFilter(Z)V
    .locals 2
    .param p1, "writeFilterEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    iget-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->writeFilterEnabled:Z

    if-eq v0, p1, :cond_1

    .line 349
    iput-boolean p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->writeFilterEnabled:Z

    .line 350
    sget-short v0, Lio/netty/channel/kqueue/Native;->EVFILT_WRITE:S

    if-eqz p1, :cond_0

    sget-short v1, Lio/netty/channel/kqueue/Native;->EV_ADD_CLEAR_ENABLE:S

    goto :goto_0

    :cond_0
    sget-short v1, Lio/netty/channel/kqueue/Native;->EV_DELETE_DISABLE:S

    :goto_0
    invoke-direct {p0, v0, v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->evSet(SS)V

    .line 352
    :cond_1
    return-void
.end method
