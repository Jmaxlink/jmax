.class final Lio/netty/channel/epoll/AbstractEpollServerChannel$EpollServerSocketUnsafe;
.super Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
.source "AbstractEpollServerChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/epoll/AbstractEpollServerChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EpollServerSocketUnsafe"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final acceptedAddress:[B

.field final synthetic this$0:Lio/netty/channel/epoll/AbstractEpollServerChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const-class v0, Lio/netty/channel/epoll/AbstractEpollServerChannel;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/epoll/AbstractEpollServerChannel;)V
    .locals 1
    .param p1, "this$0"    # Lio/netty/channel/epoll/AbstractEpollServerChannel;

    .line 77
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollServerChannel$EpollServerSocketUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollServerChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;-><init>(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    .line 81
    const/16 v0, 0x1a

    new-array v0, v0, [B

    iput-object v0, p0, Lio/netty/channel/epoll/AbstractEpollServerChannel$EpollServerSocketUnsafe;->acceptedAddress:[B

    return-void
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "socketAddress"    # Ljava/net/SocketAddress;
    .param p2, "socketAddress2"    # Ljava/net/SocketAddress;
    .param p3, "channelPromise"    # Lio/netty/channel/ChannelPromise;

    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-interface {p3, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 87
    return-void
.end method

.method epollInReady()V
    .locals 10

    .line 91
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollServerChannel$EpollServerSocketUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollServerChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollServerChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollServerChannel$EpollServerSocketUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollServerChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollServerChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object v0

    .line 93
    .local v0, "config":Lio/netty/channel/ChannelConfig;
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollServerChannel$EpollServerSocketUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollServerChannel;

    invoke-virtual {v1, v0}, Lio/netty/channel/epoll/AbstractEpollServerChannel;->shouldBreakEpollInReady(Lio/netty/channel/ChannelConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollServerChannel$EpollServerSocketUnsafe;->clearEpollIn0()V

    .line 95
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollServerChannel$EpollServerSocketUnsafe;->recvBufAllocHandle()Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;

    move-result-object v1

    .line 98
    .local v1, "allocHandle":Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollServerChannel$EpollServerSocketUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollServerChannel;

    sget v3, Lio/netty/channel/epoll/Native;->EPOLLET:I

    invoke-virtual {v2, v3}, Lio/netty/channel/epoll/AbstractEpollServerChannel;->isFlagSet(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->edgeTriggered(Z)V

    .line 100
    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollServerChannel$EpollServerSocketUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollServerChannel;

    invoke-virtual {v2}, Lio/netty/channel/epoll/AbstractEpollServerChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    .line 101
    .local v2, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-virtual {v1, v0}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 102
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->attemptedBytesRead(I)V

    .line 103
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollServerChannel$EpollServerSocketUnsafe;->epollInBefore()V

    .line 105
    const/4 v4, 0x0

    .line 112
    .local v4, "exception":Ljava/lang/Throwable;
    :cond_1
    :try_start_0
    iget-object v5, p0, Lio/netty/channel/epoll/AbstractEpollServerChannel$EpollServerSocketUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollServerChannel;

    iget-object v5, v5, Lio/netty/channel/epoll/AbstractEpollServerChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    iget-object v6, p0, Lio/netty/channel/epoll/AbstractEpollServerChannel$EpollServerSocketUnsafe;->acceptedAddress:[B

    invoke-virtual {v5, v6}, Lio/netty/channel/epoll/LinuxSocket;->accept([B)I

    move-result v5

    invoke-virtual {v1, v5}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 113
    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 115
    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v1, v3}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->incMessagesRead(I)V

    .line 119
    const/4 v5, 0x0

    iput-boolean v5, p0, Lio/netty/channel/epoll/AbstractEpollServerChannel$EpollServerSocketUnsafe;->readPending:Z

    .line 120
    iget-object v6, p0, Lio/netty/channel/epoll/AbstractEpollServerChannel$EpollServerSocketUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollServerChannel;

    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead()I

    move-result v7

    iget-object v8, p0, Lio/netty/channel/epoll/AbstractEpollServerChannel$EpollServerSocketUnsafe;->acceptedAddress:[B

    iget-object v9, p0, Lio/netty/channel/epoll/AbstractEpollServerChannel$EpollServerSocketUnsafe;->acceptedAddress:[B

    aget-byte v5, v9, v5

    invoke-virtual {v6, v7, v8, v3, v5}, Lio/netty/channel/epoll/AbstractEpollServerChannel;->newChildChannel(I[BII)Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v2, v5}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 122
    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->continueReading()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 125
    :goto_0
    goto :goto_1

    .line 123
    :catchall_0
    move-exception v3

    .line 124
    .local v3, "t":Ljava/lang/Throwable;
    move-object v4, v3

    .line 126
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->readComplete()V

    .line 127
    invoke-interface {v2}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 129
    if-eqz v4, :cond_3

    .line 130
    invoke-interface {v2, v4}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    :cond_3
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollServerChannel$EpollServerSocketUnsafe;->epollInFinally(Lio/netty/channel/ChannelConfig;)V

    .line 134
    nop

    .line 135
    return-void

    .line 133
    :catchall_1
    move-exception v3

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollServerChannel$EpollServerSocketUnsafe;->epollInFinally(Lio/netty/channel/ChannelConfig;)V

    .line 134
    throw v3

    .line 91
    .end local v0    # "config":Lio/netty/channel/ChannelConfig;
    .end local v1    # "allocHandle":Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .end local v2    # "pipeline":Lio/netty/channel/ChannelPipeline;
    .end local v4    # "exception":Ljava/lang/Throwable;
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
