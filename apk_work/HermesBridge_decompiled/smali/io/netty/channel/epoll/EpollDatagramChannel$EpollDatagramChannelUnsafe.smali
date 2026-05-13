.class final Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;
.super Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
.source "EpollDatagramChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/epoll/EpollDatagramChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EpollDatagramChannelUnsafe"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lio/netty/channel/epoll/EpollDatagramChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 502
    const-class v0, Lio/netty/channel/epoll/EpollDatagramChannel;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/epoll/EpollDatagramChannel;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/epoll/EpollDatagramChannel;

    .line 502
    iput-object p1, p0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;-><init>(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    return-void
.end method


# virtual methods
.method epollInReady()V
    .locals 17

    .line 506
    move-object/from16 v1, p0

    iget-object v0, v1, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 507
    iget-object v0, v1, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->config()Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object v2

    .line 508
    .local v2, "config":Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    iget-object v0, v1, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    invoke-virtual {v0, v2}, Lio/netty/channel/epoll/EpollDatagramChannel;->shouldBreakEpollInReady(Lio/netty/channel/ChannelConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->clearEpollIn0()V

    .line 510
    return-void

    .line 512
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->recvBufAllocHandle()Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;

    move-result-object v9

    .line 513
    .local v9, "allocHandle":Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    iget-object v0, v1, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    sget v3, Lio/netty/channel/epoll/Native;->EPOLLET:I

    invoke-virtual {v0, v3}, Lio/netty/channel/epoll/EpollDatagramChannel;->isFlagSet(I)Z

    move-result v0

    invoke-virtual {v9, v0}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->edgeTriggered(Z)V

    .line 515
    iget-object v0, v1, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v10

    .line 516
    .local v10, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-virtual {v2}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v11

    .line 517
    .local v11, "allocator":Lio/netty/buffer/ByteBufAllocator;
    invoke-virtual {v9, v2}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 518
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->epollInBefore()V

    .line 520
    const/4 v12, 0x0

    .line 523
    .local v12, "exception":Ljava/lang/Throwable;
    :try_start_0
    iget-object v0, v1, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->isConnected()Z

    move-result v0

    move v13, v0

    .line 526
    .local v13, "connected":Z
    :cond_1
    iget-object v0, v1, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->config()Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->getMaxDatagramPayloadSize()I

    move-result v0

    move v14, v0

    .line 528
    .local v14, "datagramSize":I
    invoke-virtual {v9, v11}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    move-object v15, v0

    .line 530
    .local v15, "byteBuf":Lio/netty/buffer/ByteBuf;
    sget-boolean v0, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_RECVMMSG:Z

    const/4 v3, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_3

    if-nez v14, :cond_2

    move v0, v3

    goto :goto_0

    .line 531
    :cond_2
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v0

    div-int/2addr v0, v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    move v0, v8

    :goto_0
    move v7, v0

    .line 534
    .local v7, "numDatagram":I
    if-gt v7, v3, :cond_6

    .line 535
    if-eqz v13, :cond_5

    :try_start_1
    invoke-virtual {v2}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->isUdpGro()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 538
    :cond_4
    iget-object v0, v1, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    invoke-static {v0, v9, v15, v14}, Lio/netty/channel/epoll/EpollDatagramChannel;->access$400(Lio/netty/channel/epoll/EpollDatagramChannel;Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;Lio/netty/buffer/ByteBuf;I)Z

    move-result v0

    move v3, v0

    move/from16 v16, v7

    move v0, v8

    .local v0, "read":Z
    goto :goto_2

    .line 536
    .end local v0    # "read":Z
    :cond_5
    :goto_1
    iget-object v0, v1, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v3, v1, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    invoke-static {v3}, Lio/netty/channel/epoll/EpollDatagramChannel;->access$200(Lio/netty/channel/epoll/EpollDatagramChannel;)Lio/netty/channel/epoll/NativeDatagramPacketArray;

    move-result-object v3

    invoke-static {v0, v9, v3, v15}, Lio/netty/channel/epoll/EpollDatagramChannel;->access$300(Lio/netty/channel/epoll/EpollDatagramChannel;Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;Lio/netty/channel/epoll/NativeDatagramPacketArray;Lio/netty/buffer/ByteBuf;)Z

    move-result v0
    :try_end_1
    .catch Lio/netty/channel/unix/Errors$NativeIoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v0

    move/from16 v16, v7

    move v0, v8

    .restart local v0    # "read":Z
    goto :goto_2

    .line 545
    .end local v0    # "read":Z
    :catch_0
    move-exception v0

    move/from16 v16, v7

    goto :goto_3

    .line 542
    :cond_6
    :try_start_2
    iget-object v3, v1, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v0, v1, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    invoke-static {v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->access$200(Lio/netty/channel/epoll/EpollDatagramChannel;)Lio/netty/channel/epoll/NativeDatagramPacketArray;

    move-result-object v5
    :try_end_2
    .catch Lio/netty/channel/unix/Errors$NativeIoException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v9

    move-object v6, v15

    move/from16 v16, v7

    .end local v7    # "numDatagram":I
    .local v16, "numDatagram":I
    move v7, v14

    move v0, v8

    move/from16 v8, v16

    :try_start_3
    invoke-static/range {v3 .. v8}, Lio/netty/channel/epoll/EpollDatagramChannel;->access$500(Lio/netty/channel/epoll/EpollDatagramChannel;Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;Lio/netty/channel/epoll/NativeDatagramPacketArray;Lio/netty/buffer/ByteBuf;II)Z

    move-result v3
    :try_end_3
    .catch Lio/netty/channel/unix/Errors$NativeIoException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 550
    .local v3, "read":Z
    :goto_2
    nop

    .line 552
    if-eqz v3, :cond_7

    .line 553
    :try_start_4
    iput-boolean v0, v1, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->readPending:Z

    .line 559
    .end local v3    # "read":Z
    .end local v14    # "datagramSize":I
    .end local v15    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .end local v16    # "numDatagram":I
    sget-object v0, Lio/netty/util/UncheckedBooleanSupplier;->TRUE_SUPPLIER:Lio/netty/util/UncheckedBooleanSupplier;

    invoke-virtual {v9, v0}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->continueReading(Lio/netty/util/UncheckedBooleanSupplier;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 562
    .end local v13    # "connected":Z
    :cond_7
    goto :goto_4

    .line 545
    .restart local v13    # "connected":Z
    .restart local v14    # "datagramSize":I
    .restart local v15    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .restart local v16    # "numDatagram":I
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v16    # "numDatagram":I
    .restart local v7    # "numDatagram":I
    :catch_2
    move-exception v0

    move/from16 v16, v7

    .line 546
    .end local v7    # "numDatagram":I
    .local v0, "e":Lio/netty/channel/unix/Errors$NativeIoException;
    .restart local v16    # "numDatagram":I
    :goto_3
    if-eqz v13, :cond_8

    .line 547
    iget-object v3, v1, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    invoke-static {v3, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->access$600(Lio/netty/channel/epoll/EpollDatagramChannel;Lio/netty/channel/unix/Errors$NativeIoException;)Ljava/io/IOException;

    move-result-object v3

    .end local v2    # "config":Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .end local v9    # "allocHandle":Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .end local v10    # "pipeline":Lio/netty/channel/ChannelPipeline;
    .end local v11    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .end local v12    # "exception":Ljava/lang/Throwable;
    throw v3

    .line 549
    .restart local v2    # "config":Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .restart local v9    # "allocHandle":Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .restart local v10    # "pipeline":Lio/netty/channel/ChannelPipeline;
    .restart local v11    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .restart local v12    # "exception":Ljava/lang/Throwable;
    :cond_8
    nop

    .end local v2    # "config":Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .end local v9    # "allocHandle":Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .end local v10    # "pipeline":Lio/netty/channel/ChannelPipeline;
    .end local v11    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .end local v12    # "exception":Ljava/lang/Throwable;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 560
    .end local v0    # "e":Lio/netty/channel/unix/Errors$NativeIoException;
    .end local v13    # "connected":Z
    .end local v14    # "datagramSize":I
    .end local v15    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .end local v16    # "numDatagram":I
    .restart local v2    # "config":Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .restart local v9    # "allocHandle":Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .restart local v10    # "pipeline":Lio/netty/channel/ChannelPipeline;
    .restart local v11    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .restart local v12    # "exception":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    .line 561
    .local v0, "t":Ljava/lang/Throwable;
    move-object v12, v0

    .line 564
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_4
    :try_start_5
    invoke-virtual {v9}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->readComplete()V

    .line 565
    invoke-interface {v10}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 567
    if-eqz v12, :cond_9

    .line 568
    invoke-interface {v10, v12}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 571
    :cond_9
    invoke-virtual {v1, v2}, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->epollInFinally(Lio/netty/channel/ChannelConfig;)V

    .line 572
    nop

    .line 573
    return-void

    .line 571
    :catchall_1
    move-exception v0

    invoke-virtual {v1, v2}, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;->epollInFinally(Lio/netty/channel/ChannelConfig;)V

    .line 572
    throw v0

    .line 506
    .end local v2    # "config":Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .end local v9    # "allocHandle":Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .end local v10    # "pipeline":Lio/netty/channel/ChannelPipeline;
    .end local v11    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .end local v12    # "exception":Ljava/lang/Throwable;
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
