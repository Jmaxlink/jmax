.class final Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;
.super Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
.source "AbstractKQueueServerChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/kqueue/AbstractKQueueServerChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KQueueServerSocketUnsafe"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final acceptedAddress:[B

.field final synthetic this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    const-class v0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/kqueue/AbstractKQueueServerChannel;)V
    .locals 1
    .param p1, "this$0"    # Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    .line 79
    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;-><init>(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V

    .line 83
    const/16 v0, 0x1a

    new-array v0, v0, [B

    iput-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->acceptedAddress:[B

    return-void
.end method


# virtual methods
.method readReady(Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;)V
    .locals 9
    .param p1, "allocHandle"    # Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;

    .line 87
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/AbstractKQueueServerChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/AbstractKQueueServerChannel;->config()Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object v0

    .line 89
    .local v0, "config":Lio/netty/channel/ChannelConfig;
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    invoke-virtual {v1, v0}, Lio/netty/channel/kqueue/AbstractKQueueServerChannel;->shouldBreakReadReady(Lio/netty/channel/ChannelConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->clearReadFilter0()V

    .line 91
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    invoke-virtual {v1}, Lio/netty/channel/kqueue/AbstractKQueueServerChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    .line 94
    .local v1, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-virtual {p1, v0}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 95
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->attemptedBytesRead(I)V

    .line 96
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->readReadyBefore()V

    .line 98
    const/4 v3, 0x0

    .line 102
    .local v3, "exception":Ljava/lang/Throwable;
    :cond_1
    :try_start_0
    iget-object v4, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    iget-object v4, v4, Lio/netty/channel/kqueue/AbstractKQueueServerChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    iget-object v5, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->acceptedAddress:[B

    invoke-virtual {v4, v5}, Lio/netty/channel/kqueue/BsdSocket;->accept([B)I

    move-result v4

    .line 103
    .local v4, "acceptFd":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 105
    invoke-virtual {p1, v5}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 106
    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p1, v2}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 109
    invoke-virtual {p1, v2}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->incMessagesRead(I)V

    .line 111
    const/4 v5, 0x0

    iput-boolean v5, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->readPending:Z

    .line 112
    iget-object v6, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueServerChannel;

    iget-object v7, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->acceptedAddress:[B

    iget-object v8, p0, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->acceptedAddress:[B

    aget-byte v5, v8, v5

    invoke-virtual {v6, v4, v7, v2, v5}, Lio/netty/channel/kqueue/AbstractKQueueServerChannel;->newChildChannel(I[BII)Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v1, v5}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 114
    nop

    .end local v4    # "acceptFd":I
    invoke-virtual {p1}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->continueReading()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 117
    :goto_0
    goto :goto_1

    .line 115
    :catchall_0
    move-exception v2

    .line 116
    .local v2, "t":Ljava/lang/Throwable;
    move-object v3, v2

    .line 118
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->readComplete()V

    .line 119
    invoke-interface {v1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 121
    if-eqz v3, :cond_3

    .line 122
    invoke-interface {v1, v3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    :cond_3
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    .line 126
    nop

    .line 127
    return-void

    .line 125
    :catchall_1
    move-exception v2

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueServerChannel$KQueueServerSocketUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    .line 126
    throw v2

    .line 87
    .end local v0    # "config":Lio/netty/channel/ChannelConfig;
    .end local v1    # "pipeline":Lio/netty/channel/ChannelPipeline;
    .end local v3    # "exception":Ljava/lang/Throwable;
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
