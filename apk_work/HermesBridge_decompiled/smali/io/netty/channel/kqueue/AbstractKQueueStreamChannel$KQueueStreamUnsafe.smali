.class Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;
.super Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
.source "AbstractKQueueStreamChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KQueueStreamUnsafe"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;


# direct methods
.method constructor <init>(Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;

    .line 504
    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;-><init>(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V

    return-void
.end method

.method private handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;ZLio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;)V
    .locals 2
    .param p1, "pipeline"    # Lio/netty/channel/ChannelPipeline;
    .param p2, "byteBuf"    # Lio/netty/buffer/ByteBuf;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .param p4, "close"    # Z
    .param p5, "allocHandle"    # Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;

    .line 578
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 579
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    iput-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->readPending:Z

    .line 581
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    .line 583
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 586
    :cond_1
    :goto_0
    invoke-virtual {p0, p3}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->failConnectPromise(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 587
    invoke-virtual {p5}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->readComplete()V

    .line 588
    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 589
    invoke-interface {p1, p3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    .line 593
    if-nez p4, :cond_2

    instance-of v1, p3, Ljava/lang/OutOfMemoryError;

    if-nez v1, :cond_2

    instance-of v1, p3, Ljava/io/IOException;

    if-eqz v1, :cond_3

    .line 594
    :cond_2
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->shutdownInput(Z)V

    .line 597
    :cond_3
    return-void
.end method


# virtual methods
.method protected prepareToClose()Ljava/util/concurrent/Executor;
    .locals 1

    .line 508
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->prepareToClose()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method readReady(Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;)V
    .locals 11
    .param p1, "allocHandle"    # Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;

    .line 513
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->config()Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object v0

    .line 514
    .local v0, "config":Lio/netty/channel/ChannelConfig;
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;

    invoke-virtual {v1, v0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->shouldBreakReadReady(Lio/netty/channel/ChannelConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->clearReadFilter0()V

    .line 516
    return-void

    .line 518
    :cond_0
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;

    invoke-virtual {v1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    .line 519
    .local v1, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v8

    .line 520
    .local v8, "allocator":Lio/netty/buffer/ByteBufAllocator;
    invoke-virtual {p1, v0}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 521
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->readReadyBefore()V

    .line 523
    const/4 v2, 0x0

    .line 524
    .local v2, "byteBuf":Lio/netty/buffer/ByteBuf;
    const/4 v3, 0x0

    .line 529
    .local v3, "close":Z
    :cond_1
    :try_start_0
    invoke-virtual {p1, v8}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    move-object v2, v4

    .line 530
    iget-object v4, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;

    invoke-virtual {v4, v2}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->doReadBytes(Lio/netty/buffer/ByteBuf;)I

    move-result v4

    invoke-virtual {p1, v4}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 531
    invoke-virtual {p1}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gtz v4, :cond_3

    .line 533
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 534
    const/4 v2, 0x0

    .line 535
    invoke-virtual {p1}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->lastBytesRead()I

    move-result v4

    if-gez v4, :cond_2

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    move v3, v5

    .line 536
    if-eqz v3, :cond_5

    .line 538
    iput-boolean v6, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->readPending:Z

    goto :goto_1

    .line 542
    :cond_3
    invoke-virtual {p1, v5}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->incMessagesRead(I)V

    .line 543
    iput-boolean v6, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->readPending:Z

    .line 544
    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 545
    const/4 v2, 0x0

    .line 547
    iget-object v4, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;

    invoke-virtual {v4, v0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->shouldBreakReadReady(Lio/netty/channel/ChannelConfig;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 559
    goto :goto_1

    .line 561
    :cond_4
    invoke-virtual {p1}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->continueReading()Z

    move-result v4

    if-nez v4, :cond_1

    .line 563
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->readComplete()V

    .line 564
    invoke-interface {v1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 566
    if-eqz v3, :cond_6

    .line 567
    invoke-virtual {p0, v6}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->shutdownInput(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    :cond_6
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    .line 573
    goto :goto_2

    .line 569
    :catchall_0
    move-exception v4

    move-object v9, v2

    move v10, v3

    move-object v5, v4

    .line 570
    .end local v2    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .end local v3    # "close":Z
    .local v5, "t":Ljava/lang/Throwable;
    .local v9, "byteBuf":Lio/netty/buffer/ByteBuf;
    .local v10, "close":Z
    move-object v2, p0

    move-object v3, v1

    move-object v4, v9

    move v6, v10

    move-object v7, p1

    :try_start_1
    invoke-direct/range {v2 .. v7}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;ZLio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 572
    .end local v5    # "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    .line 573
    move-object v2, v9

    move v3, v10

    .line 574
    .end local v9    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .end local v10    # "close":Z
    .restart local v2    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .restart local v3    # "close":Z
    :goto_2
    return-void

    .line 572
    .end local v2    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .end local v3    # "close":Z
    .restart local v9    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .restart local v10    # "close":Z
    :catchall_1
    move-exception v2

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;->readReadyFinally(Lio/netty/channel/ChannelConfig;)V

    .line 573
    throw v2
.end method
