.class public final Lio/netty/channel/kqueue/KQueueDomainSocketChannel;
.super Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;
.source "KQueueDomainSocketChannel.java"

# interfaces
.implements Lio/netty/channel/unix/DomainSocketChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;
    }
.end annotation


# instance fields
.field private final config:Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

.field private volatile local:Lio/netty/channel/unix/DomainSocketAddress;

.field private volatile remote:Lio/netty/channel/unix/DomainSocketAddress;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-static {}, Lio/netty/channel/kqueue/BsdSocket;->newSocketDomain()Lio/netty/channel/kqueue/BsdSocket;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Z)V

    .line 35
    new-instance v0, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;-><init>(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->config:Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "fd"    # I

    .line 45
    new-instance v0, Lio/netty/channel/kqueue/BsdSocket;

    invoke-direct {v0, p1}, Lio/netty/channel/kqueue/BsdSocket;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;)V

    .line 46
    return-void
.end method

.method constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;)V
    .locals 1
    .param p1, "parent"    # Lio/netty/channel/Channel;
    .param p2, "fd"    # Lio/netty/channel/kqueue/BsdSocket;

    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Z)V

    .line 35
    new-instance v0, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;-><init>(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->config:Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    .line 50
    invoke-virtual {p2}, Lio/netty/channel/kqueue/BsdSocket;->localDomainSocketAddress()Lio/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->local:Lio/netty/channel/unix/DomainSocketAddress;

    .line 51
    invoke-virtual {p2}, Lio/netty/channel/kqueue/BsdSocket;->remoteDomainSocketAddress()Lio/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->remote:Lio/netty/channel/unix/DomainSocketAddress;

    .line 52
    return-void
.end method


# virtual methods
.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->config()Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->config()Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public config()Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;
    .locals 1

    .line 77
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->config:Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/unix/DomainSocketChannelConfig;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->config()Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method protected doBind(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/kqueue/BsdSocket;->bind(Ljava/net/SocketAddress;)V

    .line 72
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->local:Lio/netty/channel/unix/DomainSocketAddress;

    .line 73
    return-void
.end method

.method protected doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    invoke-super {p0, p1, p2}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->localDomainSocketAddress()Lio/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->local:Lio/netty/channel/unix/DomainSocketAddress;

    .line 84
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->remote:Lio/netty/channel/unix/DomainSocketAddress;

    .line 85
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected doWriteSingle(Lio/netty/channel/ChannelOutboundBuffer;)I
    .locals 3
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, "msg":Ljava/lang/Object;
    instance-of v1, v0, Lio/netty/channel/unix/FileDescriptor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    move-object v2, v0

    check-cast v2, Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v2}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/channel/kqueue/BsdSocket;->sendFd(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 105
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 106
    const/4 v1, 0x1

    return v1

    .line 108
    :cond_0
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->doWriteSingle(Lio/netty/channel/ChannelOutboundBuffer;)I

    move-result v1

    return v1
.end method

.method protected filterOutboundMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 113
    instance-of v0, p1, Lio/netty/channel/unix/FileDescriptor;

    if-eqz v0, :cond_0

    .line 114
    return-object p1

    .line 116
    :cond_0
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->filterOutboundMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public localAddress()Lio/netty/channel/unix/DomainSocketAddress;
    .locals 1

    .line 97
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    return-object v0
.end method

.method public bridge synthetic localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->localAddress()Lio/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected localAddress0()Lio/netty/channel/unix/DomainSocketAddress;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->local:Lio/netty/channel/unix/DomainSocketAddress;

    return-object v0
.end method

.method protected bridge synthetic localAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->localAddress0()Lio/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->newUnsafe()Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;

    move-result-object v0

    return-object v0
.end method

.method protected newUnsafe()Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
    .locals 2

    .line 56
    new-instance v0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;-><init>(Lio/netty/channel/kqueue/KQueueDomainSocketChannel;Lio/netty/channel/kqueue/KQueueDomainSocketChannel$1;)V

    return-object v0
.end method

.method public peerCredentials()Lio/netty/channel/unix/PeerCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->getPeerCredentials()Lio/netty/channel/unix/PeerCredentials;

    move-result-object v0

    return-object v0
.end method

.method public remoteAddress()Lio/netty/channel/unix/DomainSocketAddress;
    .locals 1

    .line 92
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    return-object v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->remoteAddress()Lio/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected remoteAddress0()Lio/netty/channel/unix/DomainSocketAddress;
    .locals 1

    .line 66
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->remote:Lio/netty/channel/unix/DomainSocketAddress;

    return-object v0
.end method

.method protected bridge synthetic remoteAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->remoteAddress0()Lio/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    return-object v0
.end method
