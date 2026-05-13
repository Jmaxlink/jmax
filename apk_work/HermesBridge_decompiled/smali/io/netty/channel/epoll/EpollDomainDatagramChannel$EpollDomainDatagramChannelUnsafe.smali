.class final Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;
.super Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
.source "EpollDomainDatagramChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/epoll/EpollDomainDatagramChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EpollDomainDatagramChannelUnsafe"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lio/netty/channel/epoll/EpollDomainDatagramChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 289
    const-class v0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/epoll/EpollDomainDatagramChannel;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/epoll/EpollDomainDatagramChannel;

    .line 289
    iput-object p1, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDomainDatagramChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;-><init>(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    return-void
.end method


# virtual methods
.method epollInReady()V
    .locals 12

    .line 293
    iget-object v0, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDomainDatagramChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 294
    iget-object v0, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDomainDatagramChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->config()Lio/netty/channel/epoll/EpollDomainDatagramChannelConfig;

    move-result-object v0

    .line 295
    .local v0, "config":Lio/netty/channel/unix/DomainDatagramChannelConfig;
    iget-object v1, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDomainDatagramChannel;

    invoke-virtual {v1, v0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->shouldBreakEpollInReady(Lio/netty/channel/ChannelConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;->clearEpollIn0()V

    .line 297
    return-void

    .line 299
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;->recvBufAllocHandle()Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;

    move-result-object v1

    .line 300
    .local v1, "allocHandle":Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    iget-object v2, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDomainDatagramChannel;

    sget v3, Lio/netty/channel/epoll/Native;->EPOLLET:I

    invoke-virtual {v2, v3}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->isFlagSet(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->edgeTriggered(Z)V

    .line 302
    iget-object v2, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDomainDatagramChannel;

    invoke-virtual {v2}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    .line 303
    .local v2, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-interface {v0}, Lio/netty/channel/unix/DomainDatagramChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v3

    .line 304
    .local v3, "allocator":Lio/netty/buffer/ByteBufAllocator;
    invoke-virtual {v1, v0}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 305
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;->epollInBefore()V

    .line 307
    const/4 v4, 0x0

    .line 309
    .local v4, "exception":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 311
    .local v5, "byteBuf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    iget-object v6, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDomainDatagramChannel;

    invoke-virtual {v6}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->isConnected()Z

    move-result v6

    .line 313
    .local v6, "connected":Z
    :cond_1
    invoke-virtual {v1, v3}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    move-object v5, v7

    .line 314
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v7

    invoke-virtual {v1, v7}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->attemptedBytesRead(I)V

    .line 317
    if-eqz v6, :cond_3

    .line 318
    iget-object v7, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDomainDatagramChannel;

    invoke-virtual {v7, v5}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->doReadBytes(Lio/netty/buffer/ByteBuf;)I

    move-result v7

    invoke-virtual {v1, v7}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 319
    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead()I

    move-result v7

    if-gtz v7, :cond_2

    .line 321
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 322
    goto/16 :goto_2

    .line 324
    :cond_2
    new-instance v7, Lio/netty/channel/unix/DomainDatagramPacket;

    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;->localAddress()Ljava/net/SocketAddress;

    move-result-object v8

    check-cast v8, Lio/netty/channel/unix/DomainSocketAddress;

    .line 325
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v9

    check-cast v9, Lio/netty/channel/unix/DomainSocketAddress;

    invoke-direct {v7, v5, v8, v9}, Lio/netty/channel/unix/DomainDatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/channel/unix/DomainSocketAddress;Lio/netty/channel/unix/DomainSocketAddress;)V

    .local v7, "packet":Lio/netty/channel/unix/DomainDatagramPacket;
    goto :goto_1

    .line 328
    .end local v7    # "packet":Lio/netty/channel/unix/DomainDatagramPacket;
    :cond_3
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 330
    iget-object v7, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDomainDatagramChannel;

    iget-object v7, v7, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v8

    .line 331
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v10

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v11

    .line 330
    invoke-virtual {v7, v8, v9, v10, v11}, Lio/netty/channel/epoll/LinuxSocket;->recvFromAddressDomainSocket(JII)Lio/netty/channel/unix/DomainDatagramSocketAddress;

    move-result-object v7

    .local v7, "remoteAddress":Lio/netty/channel/unix/DomainDatagramSocketAddress;
    goto :goto_0

    .line 333
    .end local v7    # "remoteAddress":Lio/netty/channel/unix/DomainDatagramSocketAddress;
    :cond_4
    nop

    .line 334
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v7

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v8

    .line 333
    invoke-virtual {v5, v7, v8}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 335
    .local v7, "nioData":Ljava/nio/ByteBuffer;
    iget-object v8, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDomainDatagramChannel;

    iget-object v8, v8, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    .line 336
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    invoke-virtual {v8, v7, v9, v10}, Lio/netty/channel/epoll/LinuxSocket;->recvFromDomainSocket(Ljava/nio/ByteBuffer;II)Lio/netty/channel/unix/DomainDatagramSocketAddress;

    move-result-object v8

    move-object v7, v8

    .line 339
    .local v7, "remoteAddress":Lio/netty/channel/unix/DomainDatagramSocketAddress;
    :goto_0
    if-nez v7, :cond_5

    .line 340
    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 341
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 342
    goto :goto_2

    .line 344
    :cond_5
    invoke-virtual {v7}, Lio/netty/channel/unix/DomainDatagramSocketAddress;->localAddress()Lio/netty/channel/unix/DomainDatagramSocketAddress;

    move-result-object v8

    .line 345
    .local v8, "localAddress":Lio/netty/channel/unix/DomainSocketAddress;
    if-nez v8, :cond_6

    .line 346
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;->localAddress()Ljava/net/SocketAddress;

    move-result-object v9

    check-cast v9, Lio/netty/channel/unix/DomainSocketAddress;

    move-object v8, v9

    .line 348
    :cond_6
    invoke-virtual {v7}, Lio/netty/channel/unix/DomainDatagramSocketAddress;->receivedAmount()I

    move-result v9

    invoke-virtual {v1, v9}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 349
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v9

    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v9}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 351
    new-instance v9, Lio/netty/channel/unix/DomainDatagramPacket;

    invoke-direct {v9, v5, v8, v7}, Lio/netty/channel/unix/DomainDatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/channel/unix/DomainSocketAddress;Lio/netty/channel/unix/DomainSocketAddress;)V

    move-object v7, v9

    .line 354
    .end local v8    # "localAddress":Lio/netty/channel/unix/DomainSocketAddress;
    .local v7, "packet":Lio/netty/channel/unix/DomainDatagramPacket;
    :goto_1
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->incMessagesRead(I)V

    .line 356
    const/4 v8, 0x0

    iput-boolean v8, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;->readPending:Z

    .line 357
    invoke-interface {v2, v7}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 359
    const/4 v5, 0x0

    .line 363
    .end local v7    # "packet":Lio/netty/channel/unix/DomainDatagramPacket;
    sget-object v7, Lio/netty/util/UncheckedBooleanSupplier;->TRUE_SUPPLIER:Lio/netty/util/UncheckedBooleanSupplier;

    invoke-virtual {v1, v7}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->continueReading(Lio/netty/util/UncheckedBooleanSupplier;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    .line 369
    .end local v6    # "connected":Z
    :goto_2
    goto :goto_4

    .line 364
    :catchall_0
    move-exception v6

    .line 365
    .local v6, "t":Ljava/lang/Throwable;
    if-eqz v5, :cond_7

    .line 366
    :try_start_1
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->release()Z

    goto :goto_3

    .line 378
    .end local v5    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v5

    goto :goto_5

    .line 368
    .restart local v5    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .restart local v6    # "t":Ljava/lang/Throwable;
    :cond_7
    :goto_3
    move-object v4, v6

    .line 371
    .end local v6    # "t":Ljava/lang/Throwable;
    :goto_4
    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->readComplete()V

    .line 372
    invoke-interface {v2}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 374
    if-eqz v4, :cond_8

    .line 375
    invoke-interface {v2, v4}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 378
    .end local v5    # "byteBuf":Lio/netty/buffer/ByteBuf;
    :cond_8
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;->epollInFinally(Lio/netty/channel/ChannelConfig;)V

    .line 379
    nop

    .line 380
    return-void

    .line 378
    :goto_5
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;->epollInFinally(Lio/netty/channel/ChannelConfig;)V

    .line 379
    throw v5

    .line 293
    .end local v0    # "config":Lio/netty/channel/unix/DomainDatagramChannelConfig;
    .end local v1    # "allocHandle":Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .end local v2    # "pipeline":Lio/netty/channel/ChannelPipeline;
    .end local v3    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .end local v4    # "exception":Ljava/lang/Throwable;
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
