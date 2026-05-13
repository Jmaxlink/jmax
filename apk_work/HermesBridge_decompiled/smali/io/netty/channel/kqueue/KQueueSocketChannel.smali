.class public final Lio/netty/channel/kqueue/KQueueSocketChannel;
.super Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;
.source "KQueueSocketChannel.java"

# interfaces
.implements Lio/netty/channel/socket/SocketChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/kqueue/KQueueSocketChannel$KQueueSocketChannelUnsafe;
    }
.end annotation


# instance fields
.field private final config:Lio/netty/channel/kqueue/KQueueSocketChannelConfig;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-static {}, Lio/netty/channel/kqueue/BsdSocket;->newSocketStream()Lio/netty/channel/kqueue/BsdSocket;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Z)V

    .line 38
    new-instance v0, Lio/netty/channel/kqueue/KQueueSocketChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/KQueueSocketChannelConfig;-><init>(Lio/netty/channel/kqueue/KQueueSocketChannel;)V

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueSocketChannel;->config:Lio/netty/channel/kqueue/KQueueSocketChannelConfig;

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "fd"    # I

    .line 47
    new-instance v0, Lio/netty/channel/kqueue/BsdSocket;

    invoke-direct {v0, p1}, Lio/netty/channel/kqueue/BsdSocket;-><init>(I)V

    invoke-direct {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;-><init>(Lio/netty/channel/kqueue/BsdSocket;)V

    .line 48
    new-instance v0, Lio/netty/channel/kqueue/KQueueSocketChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/KQueueSocketChannelConfig;-><init>(Lio/netty/channel/kqueue/KQueueSocketChannel;)V

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueSocketChannel;->config:Lio/netty/channel/kqueue/KQueueSocketChannelConfig;

    .line 49
    return-void
.end method

.method constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Ljava/net/InetSocketAddress;)V
    .locals 1
    .param p1, "parent"    # Lio/netty/channel/Channel;
    .param p2, "fd"    # Lio/netty/channel/kqueue/BsdSocket;
    .param p3, "remoteAddress"    # Ljava/net/InetSocketAddress;

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Ljava/net/SocketAddress;)V

    .line 53
    new-instance v0, Lio/netty/channel/kqueue/KQueueSocketChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/KQueueSocketChannelConfig;-><init>(Lio/netty/channel/kqueue/KQueueSocketChannel;)V

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueSocketChannel;->config:Lio/netty/channel/kqueue/KQueueSocketChannelConfig;

    .line 54
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/socket/InternetProtocolFamily;)V
    .locals 3
    .param p1, "protocol"    # Lio/netty/channel/socket/InternetProtocolFamily;

    .line 42
    invoke-static {p1}, Lio/netty/channel/kqueue/BsdSocket;->newSocketStream(Lio/netty/channel/socket/InternetProtocolFamily;)Lio/netty/channel/kqueue/BsdSocket;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Z)V

    .line 43
    new-instance v0, Lio/netty/channel/kqueue/KQueueSocketChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/KQueueSocketChannelConfig;-><init>(Lio/netty/channel/kqueue/KQueueSocketChannel;)V

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueSocketChannel;->config:Lio/netty/channel/kqueue/KQueueSocketChannelConfig;

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueSocketChannel;->config()Lio/netty/channel/kqueue/KQueueSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueSocketChannel;->config()Lio/netty/channel/kqueue/KQueueSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public config()Lio/netty/channel/kqueue/KQueueSocketChannelConfig;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueSocketChannel;->config:Lio/netty/channel/kqueue/KQueueSocketChannelConfig;

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/socket/SocketChannelConfig;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueSocketChannel;->config()Lio/netty/channel/kqueue/KQueueSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method protected doConnect0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
    .locals 8
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueSocketChannel;->config:Lio/netty/channel/kqueue/KQueueSocketChannelConfig;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueSocketChannelConfig;->isTcpFastOpenConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueSocketChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;

    move-result-object v0

    .line 80
    .local v0, "outbound":Lio/netty/channel/ChannelOutboundBuffer;
    invoke-virtual {v0}, Lio/netty/channel/ChannelOutboundBuffer;->addFlush()V

    .line 82
    invoke-virtual {v0}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "curr":Ljava/lang/Object;
    instance-of v1, v1, Lio/netty/buffer/ByteBuf;

    if-eqz v1, :cond_1

    .line 83
    move-object v1, v2

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 85
    .local v1, "initialData":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    new-instance v3, Lio/netty/channel/unix/IovArray;

    iget-object v4, p0, Lio/netty/channel/kqueue/KQueueSocketChannel;->config:Lio/netty/channel/kqueue/KQueueSocketChannelConfig;

    invoke-virtual {v4}, Lio/netty/channel/kqueue/KQueueSocketChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/buffer/ByteBufAllocator;->directBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/netty/channel/unix/IovArray;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 88
    .local v3, "iov":Lio/netty/channel/unix/IovArray;
    :try_start_0
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Lio/netty/channel/unix/IovArray;->add(Lio/netty/buffer/ByteBuf;II)Z

    .line 89
    iget-object v4, p0, Lio/netty/channel/kqueue/KQueueSocketChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    move-object v5, p2

    check-cast v5, Ljava/net/InetSocketAddress;

    move-object v6, p1

    check-cast v6, Ljava/net/InetSocketAddress;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v3, v7}, Lio/netty/channel/kqueue/BsdSocket;->connectx(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/channel/unix/IovArray;Z)I

    move-result v4

    .line 91
    .local v4, "bytesSent":I
    invoke-virtual {p0, v7}, Lio/netty/channel/kqueue/KQueueSocketChannel;->writeFilter(Z)V

    .line 92
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Lio/netty/channel/ChannelOutboundBuffer;->removeBytes(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 97
    :goto_0
    invoke-virtual {v3}, Lio/netty/channel/unix/IovArray;->release()V

    .line 95
    return v7

    .line 97
    .end local v4    # "bytesSent":I
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lio/netty/channel/unix/IovArray;->release()V

    .line 98
    throw v4

    .line 102
    .end local v0    # "outbound":Lio/netty/channel/ChannelOutboundBuffer;
    .end local v1    # "initialData":Lio/netty/buffer/ByteBuf;
    .end local v2    # "curr":Ljava/lang/Object;
    .end local v3    # "iov":Lio/netty/channel/unix/IovArray;
    :cond_1
    invoke-super {p0, p1, p2}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->doConnect0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z

    move-result v0

    return v0
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 63
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueSocketChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueSocketChannel;->newUnsafe()Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;

    move-result-object v0

    return-object v0
.end method

.method protected newUnsafe()Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
    .locals 2

    .line 107
    new-instance v0, Lio/netty/channel/kqueue/KQueueSocketChannel$KQueueSocketChannelUnsafe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/channel/kqueue/KQueueSocketChannel$KQueueSocketChannelUnsafe;-><init>(Lio/netty/channel/kqueue/KQueueSocketChannel;Lio/netty/channel/kqueue/KQueueSocketChannel$1;)V

    return-object v0
.end method

.method public bridge synthetic parent()Lio/netty/channel/Channel;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueSocketChannel;->parent()Lio/netty/channel/socket/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public parent()Lio/netty/channel/socket/ServerSocketChannel;
    .locals 1

    .line 73
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lio/netty/channel/socket/ServerSocketChannel;

    return-object v0
.end method

.method public remoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 58
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueSocketChannel;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method
