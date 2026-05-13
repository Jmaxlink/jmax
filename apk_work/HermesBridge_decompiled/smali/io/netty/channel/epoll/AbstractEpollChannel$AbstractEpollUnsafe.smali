.class public abstract Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
.super Lio/netty/channel/AbstractChannel$AbstractUnsafe;
.source "AbstractEpollChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/epoll/AbstractEpollChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "AbstractEpollUnsafe"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private allocHandle:Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;

.field private final epollInReadyRunnable:Ljava/lang/Runnable;

.field maybeMoreDataToRead:Z

.field readPending:Z

.field final synthetic this$0:Lio/netty/channel/epoll/AbstractEpollChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 417
    const-class v0, Lio/netty/channel/epoll/AbstractEpollChannel;

    return-void
.end method

.method protected constructor <init>(Lio/netty/channel/epoll/AbstractEpollChannel;)V
    .locals 1
    .param p1, "this$0"    # Lio/netty/channel/epoll/AbstractEpollChannel;

    .line 417
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;-><init>(Lio/netty/channel/AbstractChannel;)V

    .line 421
    new-instance v0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe$1;

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe$1;-><init>(Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;)V

    iput-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollInReadyRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private clearEpollRdHup()V
    .locals 2

    .line 495
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    sget v1, Lio/netty/channel/epoll/Native;->EPOLLRDHUP:I

    invoke-virtual {v0, v1}, Lio/netty/channel/epoll/AbstractEpollChannel;->clearFlag(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v1}, Lio/netty/channel/epoll/AbstractEpollChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    .line 498
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 500
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private doFinishConnect()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->finishConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 711
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    sget v1, Lio/netty/channel/epoll/Native;->EPOLLOUT:I

    invoke-virtual {v0, v1}, Lio/netty/channel/epoll/AbstractEpollChannel;->clearFlag(I)V

    .line 712
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-static {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$200(Lio/netty/channel/epoll/AbstractEpollChannel;)Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-static {v1}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$200(Lio/netty/channel/epoll/AbstractEpollChannel;)Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    iget-object v2, v2, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v2}, Lio/netty/channel/epoll/LinuxSocket;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/channel/unix/UnixChannelUtil;->computeRemoteAddr(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v0, v1}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$402(Lio/netty/channel/epoll/AbstractEpollChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    .line 715
    :cond_0
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$202(Lio/netty/channel/epoll/AbstractEpollChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    .line 717
    const/4 v0, 0x1

    return v0

    .line 719
    :cond_1
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    sget v1, Lio/netty/channel/epoll/Native;->EPOLLOUT:I

    invoke-virtual {v0, v1}, Lio/netty/channel/epoll/AbstractEpollChannel;->setFlag(I)V

    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method private finishConnect()V
    .locals 6

    .line 682
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 684
    const/4 v0, 0x0

    .line 686
    .local v0, "connectStillInProgress":Z
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v3}, Lio/netty/channel/epoll/AbstractEpollChannel;->isActive()Z

    move-result v3

    .line 687
    .local v3, "wasActive":Z
    invoke-direct {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->doFinishConnect()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 688
    const/4 v0, 0x1

    .line 695
    if-nez v0, :cond_1

    .line 698
    iget-object v4, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-static {v4}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$300(Lio/netty/channel/epoll/AbstractEpollChannel;)Lio/netty/util/concurrent/Future;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 699
    iget-object v4, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-static {v4}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$300(Lio/netty/channel/epoll/AbstractEpollChannel;)Lio/netty/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v4, v1}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    .line 701
    :cond_0
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-static {v1, v2}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$102(Lio/netty/channel/epoll/AbstractEpollChannel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;

    .line 689
    :cond_1
    return-void

    .line 691
    :cond_2
    :try_start_1
    iget-object v4, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-static {v4}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$100(Lio/netty/channel/epoll/AbstractEpollChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->fulfillConnectPromise(Lio/netty/channel/ChannelPromise;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 695
    .end local v3    # "wasActive":Z
    if-nez v0, :cond_4

    .line 698
    iget-object v3, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-static {v3}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$300(Lio/netty/channel/epoll/AbstractEpollChannel;)Lio/netty/util/concurrent/Future;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 699
    :goto_0
    iget-object v3, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-static {v3}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$300(Lio/netty/channel/epoll/AbstractEpollChannel;)Lio/netty/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v3, v1}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    .line 701
    :cond_3
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-static {v1, v2}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$102(Lio/netty/channel/epoll/AbstractEpollChannel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;

    goto :goto_1

    .line 692
    :catchall_0
    move-exception v3

    .line 693
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v4, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-static {v4}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$100(Lio/netty/channel/epoll/AbstractEpollChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v4

    iget-object v5, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-static {v5}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$200(Lio/netty/channel/epoll/AbstractEpollChannel;)Ljava/net/SocketAddress;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->annotateConnectException(Ljava/lang/Throwable;Ljava/net/SocketAddress;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->fulfillConnectPromise(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 695
    .end local v3    # "t":Ljava/lang/Throwable;
    if-nez v0, :cond_4

    .line 698
    iget-object v3, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-static {v3}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$300(Lio/netty/channel/epoll/AbstractEpollChannel;)Lio/netty/util/concurrent/Future;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 699
    goto :goto_0

    .line 704
    :cond_4
    :goto_1
    return-void

    .line 695
    :catchall_1
    move-exception v3

    if-nez v0, :cond_6

    .line 698
    iget-object v4, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-static {v4}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$300(Lio/netty/channel/epoll/AbstractEpollChannel;)Lio/netty/util/concurrent/Future;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 699
    iget-object v4, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-static {v4}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$300(Lio/netty/channel/epoll/AbstractEpollChannel;)Lio/netty/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v4, v1}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    .line 701
    :cond_5
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-static {v1, v2}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$102(Lio/netty/channel/epoll/AbstractEpollChannel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;

    .line 703
    :cond_6
    throw v3

    .line 682
    .end local v0    # "connectStillInProgress":Z
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private fireEventAndClose(Ljava/lang/Object;)V
    .locals 1
    .param p1, "evt"    # Ljava/lang/Object;

    .line 531
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 532
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 533
    return-void
.end method

.method private fulfillConnectPromise(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 668
    if-nez p1, :cond_0

    .line 670
    return-void

    .line 674
    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 675
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->closeIfClosed()V

    .line 676
    return-void
.end method

.method private fulfillConnectPromise(Lio/netty/channel/ChannelPromise;Z)V
    .locals 3
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p2, "wasActive"    # Z

    .line 642
    if-nez p1, :cond_0

    .line 644
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->active:Z

    .line 650
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->isActive()Z

    move-result v0

    .line 653
    .local v0, "active":Z
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->trySuccess()Z

    move-result v1

    .line 657
    .local v1, "promiseSet":Z
    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    .line 658
    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v2}, Lio/netty/channel/epoll/AbstractEpollChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/ChannelPipeline;->fireChannelActive()Lio/netty/channel/ChannelPipeline;

    .line 662
    :cond_1
    if-nez v1, :cond_2

    .line 663
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 665
    :cond_2
    return-void
.end method


# virtual methods
.method protected final clearEpollIn0()V
    .locals 3

    .line 575
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->readPending:Z

    .line 578
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    sget v1, Lio/netty/channel/epoll/Native;->EPOLLIN:I

    invoke-virtual {v0, v1}, Lio/netty/channel/epoll/AbstractEpollChannel;->clearFlag(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    goto :goto_0

    .line 579
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v1}, Lio/netty/channel/epoll/AbstractEpollChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    .line 583
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v1}, Lio/netty/channel/epoll/AbstractEpollChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v2}, Lio/netty/channel/epoll/AbstractEpollChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/Channel$Unsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/netty/channel/Channel$Unsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 585
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 575
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 8
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 590
    invoke-interface {p3}, Lio/netty/channel/ChannelPromise;->setUncancellable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p3}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->ensureOpen(Lio/netty/channel/ChannelPromise;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 595
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-static {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$100(Lio/netty/channel/epoll/AbstractEpollChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    if-nez v0, :cond_3

    .line 599
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->isActive()Z

    move-result v0

    .line 600
    .local v0, "wasActive":Z
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v1, p1, p2}, Lio/netty/channel/epoll/AbstractEpollChannel;->doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    invoke-direct {p0, p3, v0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->fulfillConnectPromise(Lio/netty/channel/ChannelPromise;Z)V

    goto :goto_0

    .line 603
    :cond_1
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-static {v1, p3}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$102(Lio/netty/channel/epoll/AbstractEpollChannel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;

    .line 604
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-static {v1, p1}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$202(Lio/netty/channel/epoll/AbstractEpollChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    .line 607
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v1}, Lio/netty/channel/epoll/AbstractEpollChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollChannelConfig;->getConnectTimeoutMillis()I

    move-result v1

    .line 608
    .local v1, "connectTimeoutMillis":I
    if-lez v1, :cond_2

    .line 609
    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    iget-object v3, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v3}, Lio/netty/channel/epoll/AbstractEpollChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v3

    new-instance v4, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe$2;

    invoke-direct {v4, p0, p1}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe$2;-><init>(Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;Ljava/net/SocketAddress;)V

    int-to-long v5, v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6, v7}, Lio/netty/channel/EventLoop;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v3

    invoke-static {v2, v3}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$302(Lio/netty/channel/epoll/AbstractEpollChannel;Lio/netty/util/concurrent/Future;)Lio/netty/util/concurrent/Future;

    .line 622
    :cond_2
    new-instance v2, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe$3;

    invoke-direct {v2, p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe$3;-><init>(Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;)V

    invoke-interface {p3, v2}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 638
    .end local v0    # "wasActive":Z
    .end local v1    # "connectTimeoutMillis":I
    :goto_0
    goto :goto_1

    .line 596
    :cond_3
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    .end local p1    # "remoteAddress":Ljava/net/SocketAddress;
    .end local p2    # "localAddress":Ljava/net/SocketAddress;
    .end local p3    # "promise":Lio/netty/channel/ChannelPromise;
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    .restart local p1    # "remoteAddress":Ljava/net/SocketAddress;
    .restart local p2    # "localAddress":Ljava/net/SocketAddress;
    .restart local p3    # "promise":Lio/netty/channel/ChannelPromise;
    :catchall_0
    move-exception v0

    .line 636
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->closeIfClosed()V

    .line 637
    invoke-virtual {p0, v0, p1}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->annotateConnectException(Ljava/lang/Throwable;Ljava/net/SocketAddress;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {p3, v1}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 639
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 591
    :cond_4
    :goto_2
    return-void
.end method

.method final epollInBefore()V
    .locals 1

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->maybeMoreDataToRead:Z

    .line 436
    return-void
.end method

.method final epollInFinally(Lio/netty/channel/ChannelConfig;)V
    .locals 1
    .param p1, "config"    # Lio/netty/channel/ChannelConfig;

    .line 439
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->allocHandle:Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->maybeMoreDataToRead()Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->maybeMoreDataToRead:Z

    .line 441
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->allocHandle:Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->isReceivedRdHup()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->readPending:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->maybeMoreDataToRead:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    iget-boolean v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->readPending:Z

    if-nez v0, :cond_2

    invoke-interface {p1}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 457
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->clearEpollIn()V

    goto :goto_1

    .line 449
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->executeEpollInReadyRunnable(Lio/netty/channel/ChannelConfig;)V

    .line 459
    :cond_2
    :goto_1
    return-void
.end method

.method abstract epollInReady()V
.end method

.method final epollOutReady()V
    .locals 1

    .line 565
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-static {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$100(Lio/netty/channel/epoll/AbstractEpollChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    invoke-direct {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->finishConnect()V

    goto :goto_0

    .line 568
    :cond_0
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 570
    invoke-super {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->flush0()V

    .line 572
    :cond_1
    :goto_0
    return-void
.end method

.method final epollRdHupReady()V
    .locals 1

    .line 474
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->recvBufAllocHandle()Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->receivedRdHup()V

    .line 476
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollInReady()V

    goto :goto_0

    .line 483
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->shutdownInput(Z)V

    .line 487
    :goto_0
    invoke-direct {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->clearEpollRdHup()V

    .line 488
    return-void
.end method

.method final executeEpollInReadyRunnable(Lio/netty/channel/ChannelConfig;)V
    .locals 2
    .param p1, "config"    # Lio/netty/channel/ChannelConfig;

    .line 462
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    iget-boolean v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->epollInReadyRunnablePending:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/AbstractEpollChannel;->shouldBreakEpollInReady(Lio/netty/channel/ChannelConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 465
    :cond_0
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->epollInReadyRunnablePending:Z

    .line 466
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollInReadyRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 467
    return-void

    .line 463
    :cond_1
    :goto_0
    return-void
.end method

.method protected final flush0()V
    .locals 2

    .line 556
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    sget v1, Lio/netty/channel/epoll/Native;->EPOLLOUT:I

    invoke-virtual {v0, v1}, Lio/netty/channel/epoll/AbstractEpollChannel;->isFlagSet(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    invoke-super {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->flush0()V

    .line 559
    :cond_0
    return-void
.end method

.method newEpollHandle(Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;)Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .locals 1
    .param p1, "handle"    # Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;

    .line 548
    new-instance v0, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;

    invoke-direct {v0, p1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;-><init>(Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;)V

    return-object v0
.end method

.method public bridge synthetic recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;
    .locals 1

    .line 417
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->recvBufAllocHandle()Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;

    move-result-object v0

    return-object v0
.end method

.method public recvBufAllocHandle()Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .locals 1

    .line 537
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->allocHandle:Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;

    if-nez v0, :cond_0

    .line 538
    invoke-super {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v0

    check-cast v0, Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->newEpollHandle(Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;)Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->allocHandle:Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;

    .line 540
    :cond_0
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->allocHandle:Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;

    return-object v0
.end method

.method shutdownInput(Z)V
    .locals 3
    .param p1, "rdHup"    # Z

    .line 506
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->isInputShutdown()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 507
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->access$000(Lio/netty/channel/ChannelConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/epoll/LinuxSocket;->shutdown(ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/NotYetConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    goto :goto_0

    .line 515
    :catch_0
    move-exception v0

    .line 519
    :goto_0
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->clearEpollIn0()V

    .line 520
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    sget-object v1, Lio/netty/channel/socket/ChannelInputShutdownEvent;->INSTANCE:Lio/netty/channel/socket/ChannelInputShutdownEvent;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    goto :goto_1

    .line 510
    :catch_1
    move-exception v0

    .line 513
    .local v0, "ignored":Ljava/io/IOException;
    sget-object v1, Lio/netty/channel/socket/ChannelInputShutdownEvent;->INSTANCE:Lio/netty/channel/socket/ChannelInputShutdownEvent;

    invoke-direct {p0, v1}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->fireEventAndClose(Ljava/lang/Object;)V

    .line 514
    return-void

    .line 522
    .end local v0    # "ignored":Ljava/io/IOException;
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    goto :goto_1

    .line 524
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    iget-boolean v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->inputClosedSeenErrorOnRead:Z

    if-nez v0, :cond_2

    .line 525
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    iput-boolean v1, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->inputClosedSeenErrorOnRead:Z

    .line 526
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    sget-object v1, Lio/netty/channel/socket/ChannelInputShutdownReadComplete;->INSTANCE:Lio/netty/channel/socket/ChannelInputShutdownReadComplete;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 528
    :cond_2
    :goto_1
    return-void
.end method
