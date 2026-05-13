.class final Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;
.super Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
.source "KQueueDatagramChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/kqueue/KQueueDatagramChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KQueueDatagramChannelUnsafe"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lio/netty/channel/kqueue/KQueueDatagramChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 368
    const-class v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/kqueue/KQueueDatagramChannel;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/kqueue/KQueueDatagramChannel;

    .line 368
    iput-object p1, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDatagramChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;-><init>(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V

    return-void
.end method


# virtual methods
.method readReady(Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;)V
    .locals 11
    .param p1, "allocHandle"    # Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;

    .line 372
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDatagramChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 373
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDatagramChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->config()Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object v0

    .line 374
    .local v0, "config":Lio/netty/channel/socket/DatagramChannelConfig;
    iget-object v1, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDatagramChannel;

    invoke-virtual {v1, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->shouldBreakReadReady(Lio/netty/channel/ChannelConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->clearReadFilter0()V

    .line 376
    return-void

    .line 378
    :cond_0
    iget-object v1, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDatagramChannel;

    invoke-virtual {v1}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    .line 379
    .local v1, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-interface {v0}, Lio/netty/channel/socket/DatagramChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    .line 380
    .local v2, "allocator":Lio/netty/buffer/ByteBufAllocator;
    invoke-virtual {p1, v0}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 381
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->readReadyBefore()V

    .line 383
    const/4 v3, 0x0

    .line 385
    .local v3, "exception":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 387
    .local v4, "byteBuf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    iget-object v5, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDatagramChannel;

    invoke-virtual {v5}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->isConnected()Z

    move-result v5

    .line 389
    .local v5, "connected":Z
    :cond_1
    invoke-virtual {p1, v2}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    move-object v4, v6

    .line 390
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v6

    invoke-virtual {p1, v6}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->attemptedBytesRead(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    if-eqz v5, :cond_4

    .line 395
    :try_start_1
    iget-object v6, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDatagramChannel;

    invoke-virtual {v6, v4}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->doReadBytes(Lio/netty/buffer/ByteBuf;)I

    move-result v6

    invoke-virtual {p1, v6}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V
    :try_end_1
    .catch Lio/netty/channel/unix/Errors$NativeIoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    nop

    .line 405
    :try_start_2
    invoke-virtual {p1}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead()I

    move-result v6

    if-gtz v6, :cond_2

    .line 407
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 408
    const/4 v4, 0x0

    .line 409
    goto/16 :goto_2

    .line 411
    :cond_2
    new-instance v6, Lio/netty/channel/socket/DatagramPacket;

    .line 412
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->localAddress()Ljava/net/SocketAddress;

    move-result-object v7

    check-cast v7, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v8

    check-cast v8, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v4, v7, v8}, Lio/netty/channel/socket/DatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    .local v6, "packet":Lio/netty/channel/socket/DatagramPacket;
    goto/16 :goto_1

    .line 396
    .end local v6    # "packet":Lio/netty/channel/socket/DatagramPacket;
    :catch_0
    move-exception v6

    .line 398
    .local v6, "e":Lio/netty/channel/unix/Errors$NativeIoException;
    invoke-virtual {v6}, Lio/netty/channel/unix/Errors$NativeIoException;->expectedErr()I

    move-result v7

    sget v8, Lio/netty/channel/unix/Errors;->ERROR_ECONNREFUSED_NEGATIVE:I

    if-ne v7, v8, :cond_3

    .line 399
    new-instance v7, Ljava/net/PortUnreachableException;

    invoke-virtual {v6}, Lio/netty/channel/unix/Errors$NativeIoException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;)V

    .line 400
    .local v7, "error":Ljava/net/PortUnreachableException;
    invoke-virtual {v7, v6}, Ljava/net/PortUnreachableException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 401
    nop

    .end local v0    # "config":Lio/netty/channel/socket/DatagramChannelConfig;
    .end local v1    # "pipeline":Lio/netty/channel/ChannelPipeline;
    .end local v2    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .end local v3    # "exception":Ljava/lang/Throwable;
    .end local v4    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .end local p1    # "allocHandle":Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;
    throw v7

    .line 403
    .end local v7    # "error":Ljava/net/PortUnreachableException;
    .restart local v0    # "config":Lio/netty/channel/socket/DatagramChannelConfig;
    .restart local v1    # "pipeline":Lio/netty/channel/ChannelPipeline;
    .restart local v2    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .restart local v3    # "exception":Ljava/lang/Throwable;
    .restart local v4    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "allocHandle":Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;
    :cond_3
    nop

    .end local v0    # "config":Lio/netty/channel/socket/DatagramChannelConfig;
    .end local v1    # "pipeline":Lio/netty/channel/ChannelPipeline;
    .end local v2    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .end local v3    # "exception":Ljava/lang/Throwable;
    .end local v4    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .end local p1    # "allocHandle":Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;
    throw v6

    .line 415
    .end local v6    # "e":Lio/netty/channel/unix/Errors$NativeIoException;
    .restart local v0    # "config":Lio/netty/channel/socket/DatagramChannelConfig;
    .restart local v1    # "pipeline":Lio/netty/channel/ChannelPipeline;
    .restart local v2    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .restart local v3    # "exception":Ljava/lang/Throwable;
    .restart local v4    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "allocHandle":Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;
    :cond_4
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 417
    iget-object v6, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDatagramChannel;

    iget-object v6, v6, Lio/netty/channel/kqueue/KQueueDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v7

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v9

    .line 418
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v10

    .line 417
    invoke-virtual {v6, v7, v8, v9, v10}, Lio/netty/channel/kqueue/BsdSocket;->recvFromAddress(JII)Lio/netty/channel/unix/DatagramSocketAddress;

    move-result-object v6

    .local v6, "remoteAddress":Lio/netty/channel/unix/DatagramSocketAddress;
    goto :goto_0

    .line 420
    .end local v6    # "remoteAddress":Lio/netty/channel/unix/DatagramSocketAddress;
    :cond_5
    nop

    .line 421
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v6

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v7

    .line 420
    invoke-virtual {v4, v6, v7}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 422
    .local v6, "nioData":Ljava/nio/ByteBuffer;
    iget-object v7, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->this$0:Lio/netty/channel/kqueue/KQueueDatagramChannel;

    iget-object v7, v7, Lio/netty/channel/kqueue/KQueueDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    invoke-virtual {v7, v6, v8, v9}, Lio/netty/channel/kqueue/BsdSocket;->recvFrom(Ljava/nio/ByteBuffer;II)Lio/netty/channel/unix/DatagramSocketAddress;

    move-result-object v7

    move-object v6, v7

    .line 425
    .local v6, "remoteAddress":Lio/netty/channel/unix/DatagramSocketAddress;
    :goto_0
    if-nez v6, :cond_6

    .line 426
    const/4 v7, -0x1

    invoke-virtual {p1, v7}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 427
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 428
    const/4 v4, 0x0

    .line 429
    goto :goto_2

    .line 431
    :cond_6
    invoke-virtual {v6}, Lio/netty/channel/unix/DatagramSocketAddress;->localAddress()Lio/netty/channel/unix/DatagramSocketAddress;

    move-result-object v7

    .line 432
    .local v7, "localAddress":Ljava/net/InetSocketAddress;
    if-nez v7, :cond_7

    .line 433
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->localAddress()Ljava/net/SocketAddress;

    move-result-object v8

    check-cast v8, Ljava/net/InetSocketAddress;

    move-object v7, v8

    .line 435
    :cond_7
    invoke-virtual {v6}, Lio/netty/channel/unix/DatagramSocketAddress;->receivedAmount()I

    move-result v8

    invoke-virtual {p1, v8}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 436
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v8

    invoke-virtual {p1}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v8}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 438
    new-instance v8, Lio/netty/channel/socket/DatagramPacket;

    invoke-direct {v8, v4, v7, v6}, Lio/netty/channel/socket/DatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    move-object v6, v8

    .line 441
    .end local v7    # "localAddress":Ljava/net/InetSocketAddress;
    .local v6, "packet":Lio/netty/channel/socket/DatagramPacket;
    :goto_1
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->incMessagesRead(I)V

    .line 443
    const/4 v7, 0x0

    iput-boolean v7, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->readPending:Z

    .line 444
    invoke-interface {v1, v6}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 446
    const/4 v4, 0x0

    .line 450
    .end local v6    # "packet":Lio/netty/channel/socket/DatagramPacket;
    sget-object v6, Lio/netty/util/UncheckedBooleanSupplier;->TRUE_SUPPLIER:Lio/netty/util/UncheckedBooleanSupplier;

    invoke-virtual {p1, v6}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->continueReading(Lio/netty/util/UncheckedBooleanSupplier;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_1

    .line 456
    .end local v5    # "connected":Z
    :goto_2
    goto :goto_4

    .line 451
    :catchall_0
    move-exception v5

    .line 452
    .local v5, "t":Ljava/lang/Throwable;
    if-eqz v4, :cond_8

    .line 453
    :try_start_3
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->release()Z

    goto :goto_3

    .line 465
    .end local v4    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .end local v5    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    goto :goto_5

    .line 455
    .restart local v4    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .restart local v5    # "t":Ljava/lang/Throwable;
    :cond_8
    :goto_3
    move-object v3, v5

    .line 458
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_4
    invoke-virtual {p1}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->readComplete()V

    .line 459
    invoke-interface {v1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 461
    if-eqz v3, :cond_9

    .line 462
    invoke-interface {v1, v3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 465
    .end local v4    # "byteBuf":Lio/netty/buffer/ByteBuf;
    :cond_9
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    .line 466
    nop

    .line 467
    return-void

    .line 465
    :goto_5
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    .line 466
    throw v4

    .line 372
    .end local v0    # "config":Lio/netty/channel/socket/DatagramChannelConfig;
    .end local v1    # "pipeline":Lio/netty/channel/ChannelPipeline;
    .end local v2    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .end local v3    # "exception":Ljava/lang/Throwable;
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
