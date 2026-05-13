.class Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;
.super Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
.source "AbstractEpollStreamChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/epoll/AbstractEpollStreamChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EpollStreamUnsafe"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;


# direct methods
.method constructor <init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 709
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;-><init>(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    return-void
.end method

.method private handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;ZLio/netty/channel/epoll/EpollRecvByteAllocatorHandle;)V
    .locals 2
    .param p1, "pipeline"    # Lio/netty/channel/ChannelPipeline;
    .param p2, "byteBuf"    # Lio/netty/buffer/ByteBuf;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .param p4, "close"    # Z
    .param p5, "allocHandle"    # Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;

    .line 718
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 719
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    iput-boolean v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->readPending:Z

    .line 721
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    .line 723
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 726
    :cond_1
    :goto_0
    invoke-virtual {p5}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->readComplete()V

    .line 727
    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 728
    invoke-interface {p1, p3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    .line 732
    if-nez p4, :cond_2

    instance-of v1, p3, Ljava/lang/OutOfMemoryError;

    if-nez v1, :cond_2

    instance-of v1, p3, Ljava/io/IOException;

    if-eqz v1, :cond_3

    .line 733
    :cond_2
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->shutdownInput(Z)V

    .line 735
    :cond_3
    return-void
.end method


# virtual methods
.method epollInReady()V
    .locals 13

    .line 744
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object v0

    .line 745
    .local v0, "config":Lio/netty/channel/ChannelConfig;
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v1, v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->shouldBreakEpollInReady(Lio/netty/channel/ChannelConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->clearEpollIn0()V

    .line 747
    return-void

    .line 749
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->recvBufAllocHandle()Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;

    move-result-object v1

    .line 750
    .local v1, "allocHandle":Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    sget v3, Lio/netty/channel/epoll/Native;->EPOLLET:I

    invoke-virtual {v2, v3}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->isFlagSet(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->edgeTriggered(Z)V

    .line 752
    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v2}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v8

    .line 753
    .local v8, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v9

    .line 754
    .local v9, "allocator":Lio/netty/buffer/ByteBufAllocator;
    invoke-virtual {v1, v0}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 755
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->epollInBefore()V

    .line 757
    const/4 v2, 0x0

    .line 758
    .local v2, "byteBuf":Lio/netty/buffer/ByteBuf;
    const/4 v3, 0x0

    .line 759
    .local v3, "close":Z
    const/4 v4, 0x0

    .line 762
    .local v4, "sQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;>;"
    :cond_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    :try_start_0
    iget-object v7, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-static {v7}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$400(Lio/netty/channel/epoll/AbstractEpollStreamChannel;)Ljava/util/Queue;

    move-result-object v7

    move-object v4, v7

    if-eqz v7, :cond_4

    .line 763
    :cond_2
    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;

    .line 764
    .local v7, "spliceTask":Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;
    if-eqz v7, :cond_4

    .line 765
    invoke-virtual {v7, v1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->spliceIn(Lio/netty/channel/RecvByteBufAllocator$Handle;)Z

    move-result v10

    .line 767
    .local v10, "spliceInResult":Z
    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->isReceivedRdHup()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 768
    invoke-virtual {p0, v5}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->shutdownInput(Z)V

    .line 770
    :cond_3
    if-eqz v10, :cond_8

    .line 773
    iget-object v5, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v5}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->isActive()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 774
    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_1

    .line 785
    .end local v7    # "spliceTask":Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;
    .end local v10    # "spliceInResult":Z
    :cond_4
    invoke-virtual {v1, v9}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    move-object v2, v7

    .line 786
    iget-object v7, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v7, v2}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->doReadBytes(Lio/netty/buffer/ByteBuf;)I

    move-result v7

    invoke-virtual {v1, v7}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 787
    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead()I

    move-result v7

    if-gtz v7, :cond_6

    .line 789
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 790
    const/4 v2, 0x0

    .line 791
    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead()I

    move-result v7

    if-gez v7, :cond_5

    goto :goto_0

    :cond_5
    move v5, v6

    :goto_0
    move v3, v5

    .line 792
    if-eqz v3, :cond_8

    .line 794
    iput-boolean v6, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->readPending:Z

    goto :goto_2

    .line 798
    :cond_6
    invoke-virtual {v1, v5}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->incMessagesRead(I)V

    .line 799
    iput-boolean v6, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->readPending:Z

    .line 800
    invoke-interface {v8, v2}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 801
    const/4 v2, 0x0

    .line 803
    iget-object v5, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v5, v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->shouldBreakEpollInReady(Lio/netty/channel/ChannelConfig;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 815
    goto :goto_2

    .line 817
    :cond_7
    :goto_1
    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->continueReading()Z

    move-result v5

    if-nez v5, :cond_1

    .line 819
    :cond_8
    :goto_2
    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->readComplete()V

    .line 820
    invoke-interface {v8}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 822
    if-eqz v3, :cond_9

    .line 823
    invoke-virtual {p0, v6}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->shutdownInput(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    :cond_9
    if-nez v4, :cond_a

    .line 829
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->epollInFinally(Lio/netty/channel/ChannelConfig;)V

    goto :goto_4

    .line 831
    :cond_a
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v5

    if-nez v5, :cond_d

    .line 832
    iget-object v5, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v5}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->clearEpollIn()V

    goto :goto_4

    .line 825
    :catchall_0
    move-exception v5

    move-object v10, v2

    move v11, v3

    move-object v12, v4

    .line 826
    .end local v2    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .end local v3    # "close":Z
    .end local v4    # "sQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;>;"
    .local v5, "t":Ljava/lang/Throwable;
    .local v10, "byteBuf":Lio/netty/buffer/ByteBuf;
    .local v11, "close":Z
    .local v12, "sQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;>;"
    move-object v2, p0

    move-object v3, v8

    move-object v4, v10

    move v6, v11

    move-object v7, v1

    :try_start_1
    invoke-direct/range {v2 .. v7}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;ZLio/netty/channel/epoll/EpollRecvByteAllocatorHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 828
    .end local v5    # "t":Ljava/lang/Throwable;
    if-nez v12, :cond_b

    .line 829
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->epollInFinally(Lio/netty/channel/ChannelConfig;)V

    goto :goto_3

    .line 831
    :cond_b
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v2

    if-nez v2, :cond_c

    .line 832
    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v2}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->clearEpollIn()V

    .line 836
    :cond_c
    :goto_3
    move-object v2, v10

    move v3, v11

    move-object v4, v12

    .end local v10    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .end local v11    # "close":Z
    .end local v12    # "sQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;>;"
    .restart local v2    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .restart local v3    # "close":Z
    .restart local v4    # "sQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;>;"
    :cond_d
    :goto_4
    return-void

    .line 828
    .end local v2    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .end local v3    # "close":Z
    .end local v4    # "sQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;>;"
    .restart local v10    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .restart local v11    # "close":Z
    .restart local v12    # "sQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;>;"
    :catchall_1
    move-exception v2

    if-eqz v12, :cond_e

    .line 831
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v3

    if-nez v3, :cond_f

    .line 832
    iget-object v3, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v3}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->clearEpollIn()V

    goto :goto_5

    .line 829
    :cond_e
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->epollInFinally(Lio/netty/channel/ChannelConfig;)V

    .line 835
    :cond_f
    :goto_5
    throw v2
.end method

.method newEpollHandle(Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;)Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .locals 1
    .param p1, "handle"    # Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;

    .line 739
    new-instance v0, Lio/netty/channel/epoll/EpollRecvByteAllocatorStreamingHandle;

    invoke-direct {v0, p1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorStreamingHandle;-><init>(Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;)V

    return-object v0
.end method

.method protected prepareToClose()Ljava/util/concurrent/Executor;
    .locals 1

    .line 713
    invoke-super {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->prepareToClose()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method
