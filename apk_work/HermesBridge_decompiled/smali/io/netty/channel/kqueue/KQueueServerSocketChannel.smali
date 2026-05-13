.class public final Lio/netty/channel/kqueue/KQueueServerSocketChannel;
.super Lio/netty/channel/kqueue/AbstractKQueueServerChannel;
.source "KQueueServerSocketChannel.java"

# interfaces
.implements Lio/netty/channel/socket/ServerSocketChannel;


# instance fields
.field private final config:Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-static {}, Lio/netty/channel/kqueue/BsdSocket;->newSocketStream()Lio/netty/channel/kqueue/BsdSocket;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/netty/channel/kqueue/AbstractKQueueServerChannel;-><init>(Lio/netty/channel/kqueue/BsdSocket;Z)V

    .line 35
    new-instance v0, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;-><init>(Lio/netty/channel/kqueue/KQueueServerSocketChannel;)V

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueServerSocketChannel;->config:Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "fd"    # I

    .line 41
    new-instance v0, Lio/netty/channel/kqueue/BsdSocket;

    invoke-direct {v0, p1}, Lio/netty/channel/kqueue/BsdSocket;-><init>(I)V

    invoke-direct {p0, v0}, Lio/netty/channel/kqueue/KQueueServerSocketChannel;-><init>(Lio/netty/channel/kqueue/BsdSocket;)V

    .line 42
    return-void
.end method

.method constructor <init>(Lio/netty/channel/kqueue/BsdSocket;)V
    .locals 1
    .param p1, "fd"    # Lio/netty/channel/kqueue/BsdSocket;

    .line 45
    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueServerChannel;-><init>(Lio/netty/channel/kqueue/BsdSocket;)V

    .line 46
    new-instance v0, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;-><init>(Lio/netty/channel/kqueue/KQueueServerSocketChannel;)V

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueServerSocketChannel;->config:Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    .line 47
    return-void
.end method

.method constructor <init>(Lio/netty/channel/kqueue/BsdSocket;Z)V
    .locals 1
    .param p1, "fd"    # Lio/netty/channel/kqueue/BsdSocket;
    .param p2, "active"    # Z

    .line 50
    invoke-direct {p0, p1, p2}, Lio/netty/channel/kqueue/AbstractKQueueServerChannel;-><init>(Lio/netty/channel/kqueue/BsdSocket;Z)V

    .line 51
    new-instance v0, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;-><init>(Lio/netty/channel/kqueue/KQueueServerSocketChannel;)V

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueServerSocketChannel;->config:Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    .line 52
    return-void
.end method


# virtual methods
.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueServerSocketChannel;->config()Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueServerSocketChannel;->config()Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public config()Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;
    .locals 1

    .line 81
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueServerSocketChannel;->config:Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueServerSocketChannel;->config()Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method protected doBind(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueServerChannel;->doBind(Ljava/net/SocketAddress;)V

    .line 62
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueServerSocketChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    iget-object v1, p0, Lio/netty/channel/kqueue/KQueueServerSocketChannel;->config:Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    invoke-virtual {v1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->getBacklog()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/channel/kqueue/BsdSocket;->listen(I)V

    .line 63
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueServerSocketChannel;->config:Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->isTcpFastOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueServerSocketChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0, v1}, Lio/netty/channel/kqueue/BsdSocket;->setTcpFastOpen(Z)V

    .line 66
    :cond_0
    iput-boolean v1, p0, Lio/netty/channel/kqueue/KQueueServerSocketChannel;->active:Z

    .line 67
    return-void
.end method

.method protected isCompatible(Lio/netty/channel/EventLoop;)Z
    .locals 1
    .param p1, "loop"    # Lio/netty/channel/EventLoop;

    .line 56
    instance-of v0, p1, Lio/netty/channel/kqueue/KQueueEventLoop;

    return v0
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 76
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueServerChannel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueServerSocketChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected newChildChannel(I[BII)Lio/netty/channel/Channel;
    .locals 3
    .param p1, "fd"    # I
    .param p2, "address"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    new-instance v0, Lio/netty/channel/kqueue/KQueueSocketChannel;

    new-instance v1, Lio/netty/channel/kqueue/BsdSocket;

    invoke-direct {v1, p1}, Lio/netty/channel/kqueue/BsdSocket;-><init>(I)V

    invoke-static {p2, p3, p4}, Lio/netty/channel/unix/NativeInetAddress;->address([BII)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lio/netty/channel/kqueue/KQueueSocketChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Ljava/net/InetSocketAddress;)V

    return-object v0
.end method

.method public remoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 71
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueServerChannel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueServerSocketChannel;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method
