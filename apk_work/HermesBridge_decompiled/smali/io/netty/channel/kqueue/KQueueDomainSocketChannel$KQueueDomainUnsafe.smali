.class final Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;
.super Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;
.source "KQueueDomainSocketChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/kqueue/KQueueDomainSocketChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KQueueDomainUnsafe"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/kqueue/KQueueDomainSocketChannel;


# direct methods
.method private constructor <init>(Lio/netty/channel/kqueue/KQueueDomainSocketChannel;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainSocketChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;-><init>(Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/kqueue/KQueueDomainSocketChannel;Lio/netty/channel/kqueue/KQueueDomainSocketChannel$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/channel/kqueue/KQueueDomainSocketChannel;
    .param p2, "x1"    # Lio/netty/channel/kqueue/KQueueDomainSocketChannel$1;

    .line 128
    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;-><init>(Lio/netty/channel/kqueue/KQueueDomainSocketChannel;)V

    return-void
.end method

.method private readReadyFd()V
    .locals 6

    .line 144
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainSocketChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->clearReadFilter0()V

    .line 146
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainSocketChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->config()Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object v0

    .line 149
    .local v0, "config":Lio/netty/channel/ChannelConfig;
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->recvBufAllocHandle()Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;

    move-result-object v1

    .line 151
    .local v1, "allocHandle":Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;
    iget-object v2, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainSocketChannel;

    invoke-virtual {v2}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    .line 152
    .local v2, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-virtual {v1, v0}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 153
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->readReadyBefore()V

    .line 160
    :cond_1
    :try_start_0
    iget-object v3, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainSocketChannel;

    iget-object v3, v3, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v3}, Lio/netty/channel/kqueue/BsdSocket;->recvFd()I

    move-result v3

    .line 161
    .local v3, "recvFd":I
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 170
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V

    goto :goto_0

    .line 163
    :pswitch_0
    invoke-virtual {v1, v4}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 164
    goto :goto_1

    .line 166
    :pswitch_1
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 167
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->close(Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    .line 168
    return-void

    .line 171
    :goto_0
    :try_start_1
    invoke-virtual {v1, v5}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->incMessagesRead(I)V

    .line 172
    iput-boolean v4, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->readPending:Z

    .line 173
    new-instance v4, Lio/netty/channel/unix/FileDescriptor;

    invoke-direct {v4, v3}, Lio/netty/channel/unix/FileDescriptor;-><init>(I)V

    invoke-interface {v2, v4}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 176
    nop

    .end local v3    # "recvFd":I
    invoke-virtual {v1}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->continueReading()Z

    move-result v3

    if-nez v3, :cond_1

    .line 178
    :goto_1
    invoke-virtual {v1}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->readComplete()V

    .line 179
    invoke-interface {v2}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    goto :goto_2

    .line 180
    :catchall_0
    move-exception v3

    .line 181
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->readComplete()V

    .line 182
    invoke-interface {v2}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 183
    invoke-interface {v2, v3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 185
    nop

    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_2
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    .line 186
    nop

    .line 187
    return-void

    .line 185
    :catchall_1
    move-exception v3

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    .line 186
    throw v3

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method readReady(Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;)V
    .locals 2
    .param p1, "allocHandle"    # Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;

    .line 131
    sget-object v0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$1;->$SwitchMap$io$netty$channel$unix$DomainSocketReadMode:[I

    iget-object v1, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDomainSocketChannel;

    invoke-virtual {v1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel;->config()Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->getReadMode()Lio/netty/channel/unix/DomainSocketReadMode;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/unix/DomainSocketReadMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 139
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 136
    :pswitch_0
    invoke-direct {p0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannel$KQueueDomainUnsafe;->readReadyFd()V

    .line 137
    goto :goto_0

    .line 133
    :pswitch_1
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->readReady(Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;)V

    .line 134
    nop

    .line 141
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
