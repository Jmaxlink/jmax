.class final Lio/netty/channel/epoll/EpollDomainSocketChannel$EpollDomainUnsafe;
.super Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;
.source "EpollDomainSocketChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/epoll/EpollDomainSocketChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EpollDomainUnsafe"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/epoll/EpollDomainSocketChannel;


# direct methods
.method private constructor <init>(Lio/netty/channel/epoll/EpollDomainSocketChannel;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lio/netty/channel/epoll/EpollDomainSocketChannel$EpollDomainUnsafe;->this$0:Lio/netty/channel/epoll/EpollDomainSocketChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;-><init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/epoll/EpollDomainSocketChannel;Lio/netty/channel/epoll/EpollDomainSocketChannel$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/channel/epoll/EpollDomainSocketChannel;
    .param p2, "x1"    # Lio/netty/channel/epoll/EpollDomainSocketChannel$1;

    .line 135
    invoke-direct {p0, p1}, Lio/netty/channel/epoll/EpollDomainSocketChannel$EpollDomainUnsafe;-><init>(Lio/netty/channel/epoll/EpollDomainSocketChannel;)V

    return-void
.end method

.method private epollInReadFd()V
    .locals 5

    .line 151
    iget-object v0, p0, Lio/netty/channel/epoll/EpollDomainSocketChannel$EpollDomainUnsafe;->this$0:Lio/netty/channel/epoll/EpollDomainSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollDomainSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainSocketChannel$EpollDomainUnsafe;->clearEpollIn0()V

    .line 153
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollDomainSocketChannel$EpollDomainUnsafe;->this$0:Lio/netty/channel/epoll/EpollDomainSocketChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollDomainSocketChannel;->config()Lio/netty/channel/epoll/EpollDomainSocketChannelConfig;

    move-result-object v0

    .line 156
    .local v0, "config":Lio/netty/channel/ChannelConfig;
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainSocketChannel$EpollDomainUnsafe;->recvBufAllocHandle()Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;

    move-result-object v1

    .line 157
    .local v1, "allocHandle":Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    iget-object v2, p0, Lio/netty/channel/epoll/EpollDomainSocketChannel$EpollDomainUnsafe;->this$0:Lio/netty/channel/epoll/EpollDomainSocketChannel;

    sget v3, Lio/netty/channel/epoll/Native;->EPOLLET:I

    invoke-virtual {v2, v3}, Lio/netty/channel/epoll/EpollDomainSocketChannel;->isFlagSet(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->edgeTriggered(Z)V

    .line 159
    iget-object v2, p0, Lio/netty/channel/epoll/EpollDomainSocketChannel$EpollDomainUnsafe;->this$0:Lio/netty/channel/epoll/EpollDomainSocketChannel;

    invoke-virtual {v2}, Lio/netty/channel/epoll/EpollDomainSocketChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    .line 160
    .local v2, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-virtual {v1, v0}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 161
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainSocketChannel$EpollDomainUnsafe;->epollInBefore()V

    .line 168
    :cond_1
    :try_start_0
    iget-object v3, p0, Lio/netty/channel/epoll/EpollDomainSocketChannel$EpollDomainUnsafe;->this$0:Lio/netty/channel/epoll/EpollDomainSocketChannel;

    iget-object v3, v3, Lio/netty/channel/epoll/EpollDomainSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v3}, Lio/netty/channel/epoll/LinuxSocket;->recvFd()I

    move-result v3

    invoke-virtual {v1, v3}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 169
    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 176
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->incMessagesRead(I)V

    goto :goto_0

    .line 171
    :pswitch_0
    goto :goto_1

    .line 173
    :pswitch_1
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainSocketChannel$EpollDomainUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/netty/channel/epoll/EpollDomainSocketChannel$EpollDomainUnsafe;->close(Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollDomainSocketChannel$EpollDomainUnsafe;->epollInFinally(Lio/netty/channel/ChannelConfig;)V

    .line 174
    return-void

    .line 177
    :goto_0
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lio/netty/channel/epoll/EpollDomainSocketChannel$EpollDomainUnsafe;->readPending:Z

    .line 178
    new-instance v3, Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead()I

    move-result v4

    invoke-direct {v3, v4}, Lio/netty/channel/unix/FileDescriptor;-><init>(I)V

    invoke-interface {v2, v3}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 181
    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->continueReading()Z

    move-result v3

    if-nez v3, :cond_1

    .line 183
    :goto_1
    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->readComplete()V

    .line 184
    invoke-interface {v2}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    goto :goto_2

    .line 185
    :catchall_0
    move-exception v3

    .line 186
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->readComplete()V

    .line 187
    invoke-interface {v2}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 188
    invoke-interface {v2, v3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 190
    nop

    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_2
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollDomainSocketChannel$EpollDomainUnsafe;->epollInFinally(Lio/netty/channel/ChannelConfig;)V

    .line 191
    nop

    .line 192
    return-void

    .line 190
    :catchall_1
    move-exception v3

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollDomainSocketChannel$EpollDomainUnsafe;->epollInFinally(Lio/netty/channel/ChannelConfig;)V

    .line 191
    throw v3

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method epollInReady()V
    .locals 2

    .line 138
    sget-object v0, Lio/netty/channel/epoll/EpollDomainSocketChannel$1;->$SwitchMap$io$netty$channel$unix$DomainSocketReadMode:[I

    iget-object v1, p0, Lio/netty/channel/epoll/EpollDomainSocketChannel$EpollDomainUnsafe;->this$0:Lio/netty/channel/epoll/EpollDomainSocketChannel;

    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollDomainSocketChannel;->config()Lio/netty/channel/epoll/EpollDomainSocketChannelConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollDomainSocketChannelConfig;->getReadMode()Lio/netty/channel/unix/DomainSocketReadMode;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/unix/DomainSocketReadMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 146
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 143
    :pswitch_0
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollDomainSocketChannel$EpollDomainUnsafe;->epollInReadFd()V

    .line 144
    goto :goto_0

    .line 140
    :pswitch_1
    invoke-super {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->epollInReady()V

    .line 141
    nop

    .line 148
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
