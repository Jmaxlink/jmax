.class public final Lio/netty/channel/epoll/EpollServerSocketChannel;
.super Lio/netty/channel/epoll/AbstractEpollServerChannel;
.source "EpollServerSocketChannel.java"

# interfaces
.implements Lio/netty/channel/socket/ServerSocketChannel;


# instance fields
.field private final config:Lio/netty/channel/epoll/EpollServerSocketChannelConfig;

.field private volatile tcpMd5SigAddresses:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lio/netty/channel/socket/InternetProtocolFamily;

    invoke-direct {p0, v0}, Lio/netty/channel/epoll/EpollServerSocketChannel;-><init>(Lio/netty/channel/socket/InternetProtocolFamily;)V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "fd"    # I

    .line 56
    new-instance v0, Lio/netty/channel/epoll/LinuxSocket;

    invoke-direct {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;-><init>(I)V

    invoke-direct {p0, v0}, Lio/netty/channel/epoll/EpollServerSocketChannel;-><init>(Lio/netty/channel/epoll/LinuxSocket;)V

    .line 57
    return-void
.end method

.method constructor <init>(Lio/netty/channel/epoll/LinuxSocket;)V
    .locals 1
    .param p1, "fd"    # Lio/netty/channel/epoll/LinuxSocket;

    .line 60
    invoke-direct {p0, p1}, Lio/netty/channel/epoll/AbstractEpollServerChannel;-><init>(Lio/netty/channel/epoll/LinuxSocket;)V

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/epoll/EpollServerSocketChannel;->tcpMd5SigAddresses:Ljava/util/Collection;

    .line 61
    new-instance v0, Lio/netty/channel/epoll/EpollServerSocketChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/EpollServerSocketChannelConfig;-><init>(Lio/netty/channel/epoll/EpollServerSocketChannel;)V

    iput-object v0, p0, Lio/netty/channel/epoll/EpollServerSocketChannel;->config:Lio/netty/channel/epoll/EpollServerSocketChannelConfig;

    .line 62
    return-void
.end method

.method constructor <init>(Lio/netty/channel/epoll/LinuxSocket;Z)V
    .locals 1
    .param p1, "fd"    # Lio/netty/channel/epoll/LinuxSocket;
    .param p2, "active"    # Z

    .line 65
    invoke-direct {p0, p1, p2}, Lio/netty/channel/epoll/AbstractEpollServerChannel;-><init>(Lio/netty/channel/epoll/LinuxSocket;Z)V

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/epoll/EpollServerSocketChannel;->tcpMd5SigAddresses:Ljava/util/Collection;

    .line 66
    new-instance v0, Lio/netty/channel/epoll/EpollServerSocketChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/EpollServerSocketChannelConfig;-><init>(Lio/netty/channel/epoll/EpollServerSocketChannel;)V

    iput-object v0, p0, Lio/netty/channel/epoll/EpollServerSocketChannel;->config:Lio/netty/channel/epoll/EpollServerSocketChannelConfig;

    .line 67
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/socket/InternetProtocolFamily;)V
    .locals 2
    .param p1, "protocol"    # Lio/netty/channel/socket/InternetProtocolFamily;

    .line 49
    invoke-static {p1}, Lio/netty/channel/epoll/LinuxSocket;->newSocketStream(Lio/netty/channel/socket/InternetProtocolFamily;)Lio/netty/channel/epoll/LinuxSocket;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/netty/channel/epoll/AbstractEpollServerChannel;-><init>(Lio/netty/channel/epoll/LinuxSocket;Z)V

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/epoll/EpollServerSocketChannel;->tcpMd5SigAddresses:Ljava/util/Collection;

    .line 50
    new-instance v0, Lio/netty/channel/epoll/EpollServerSocketChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/EpollServerSocketChannelConfig;-><init>(Lio/netty/channel/epoll/EpollServerSocketChannel;)V

    iput-object v0, p0, Lio/netty/channel/epoll/EpollServerSocketChannel;->config:Lio/netty/channel/epoll/EpollServerSocketChannelConfig;

    .line 51
    return-void
.end method


# virtual methods
.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollServerSocketChannel;->config()Lio/netty/channel/epoll/EpollServerSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollServerSocketChannel;->config()Lio/netty/channel/epoll/EpollServerSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public config()Lio/netty/channel/epoll/EpollServerSocketChannelConfig;
    .locals 1

    .line 97
    iget-object v0, p0, Lio/netty/channel/epoll/EpollServerSocketChannel;->config:Lio/netty/channel/epoll/EpollServerSocketChannelConfig;

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollServerSocketChannel;->config()Lio/netty/channel/epoll/EpollServerSocketChannelConfig;

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

    .line 76
    invoke-super {p0, p1}, Lio/netty/channel/epoll/AbstractEpollServerChannel;->doBind(Ljava/net/SocketAddress;)V

    .line 78
    sget-boolean v0, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_TCP_FASTOPEN_SERVER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/epoll/EpollServerSocketChannel;->config:Lio/netty/channel/epoll/EpollServerSocketChannelConfig;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollServerSocketChannelConfig;->getTcpFastopen()I

    move-result v0

    move v1, v0

    .local v1, "tcpFastopen":I
    if-lez v0, :cond_0

    .line 79
    iget-object v0, p0, Lio/netty/channel/epoll/EpollServerSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpFastOpen(I)V

    .line 81
    .end local v1    # "tcpFastopen":I
    :cond_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollServerSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    iget-object v1, p0, Lio/netty/channel/epoll/EpollServerSocketChannel;->config:Lio/netty/channel/epoll/EpollServerSocketChannelConfig;

    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollServerSocketChannelConfig;->getBacklog()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;->listen(I)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/epoll/EpollServerSocketChannel;->active:Z

    .line 83
    return-void
.end method

.method protected isCompatible(Lio/netty/channel/EventLoop;)Z
    .locals 1
    .param p1, "loop"    # Lio/netty/channel/EventLoop;

    .line 71
    instance-of v0, p1, Lio/netty/channel/epoll/EpollEventLoop;

    return v0
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 92
    invoke-super {p0}, Lio/netty/channel/epoll/AbstractEpollServerChannel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollServerSocketChannel;->localAddress()Ljava/net/InetSocketAddress;

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

    .line 102
    new-instance v0, Lio/netty/channel/epoll/EpollSocketChannel;

    new-instance v1, Lio/netty/channel/epoll/LinuxSocket;

    invoke-direct {v1, p1}, Lio/netty/channel/epoll/LinuxSocket;-><init>(I)V

    invoke-static {p2, p3, p4}, Lio/netty/channel/unix/NativeInetAddress;->address([BII)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lio/netty/channel/epoll/EpollSocketChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/epoll/LinuxSocket;Ljava/net/InetSocketAddress;)V

    return-object v0
.end method

.method public remoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 87
    invoke-super {p0}, Lio/netty/channel/epoll/AbstractEpollServerChannel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollServerSocketChannel;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method setTcpMd5Sig(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    .local p1, "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/InetAddress;[B>;"
    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollServerSocketChannel;->tcpMd5SigAddresses:Ljava/util/Collection;

    invoke-static {p0, v0, p1}, Lio/netty/channel/epoll/TcpMd5Util;->newTcpMd5Sigs(Lio/netty/channel/epoll/AbstractEpollChannel;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/epoll/EpollServerSocketChannel;->tcpMd5SigAddresses:Ljava/util/Collection;

    .line 113
    monitor-exit p0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tcpMd5SigAddresses()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lio/netty/channel/epoll/EpollServerSocketChannel;->tcpMd5SigAddresses:Ljava/util/Collection;

    return-object v0
.end method
