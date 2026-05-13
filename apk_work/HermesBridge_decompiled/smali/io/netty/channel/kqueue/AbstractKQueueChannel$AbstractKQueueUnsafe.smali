.class public abstract Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
.super Lio/netty/channel/AbstractChannel$AbstractUnsafe;
.source "AbstractKQueueChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/kqueue/AbstractKQueueChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractKQueueUnsafe"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private allocHandle:Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;

.field maybeMoreDataToRead:Z

.field readPending:Z

.field private final readReadyRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 371
    const-class v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V
    .locals 1
    .param p1, "this$0"    # Lio/netty/channel/kqueue/AbstractKQueueChannel;

    .line 372
    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;-><init>(Lio/netty/channel/AbstractChannel;)V

    .line 376
    new-instance v0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe$1;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe$1;-><init>(Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;)V

    iput-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readReadyRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private doFinishConnect()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->finishConnect()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v0, v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->writeFilter(Z)V

    .line 667
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$400(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$400(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    iget-object v3, v3, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v3}, Lio/netty/channel/kqueue/BsdSocket;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-static {v1, v3}, Lio/netty/channel/unix/UnixChannelUtil;->computeRemoteAddr(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v0, v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$602(Lio/netty/channel/kqueue/AbstractKQueueChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    .line 670
    :cond_0
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$402(Lio/netty/channel/kqueue/AbstractKQueueChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    .line 671
    return v2

    .line 673
    :cond_1
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v0, v2}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->writeFilter(Z)V

    .line 674
    return v1
.end method

.method private finishConnect()V
    .locals 6

    .line 640
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 642
    const/4 v0, 0x0

    .line 644
    .local v0, "connectStillInProgress":Z
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v3}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isActive()Z

    move-result v3

    .line 645
    .local v3, "wasActive":Z
    invoke-direct {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->doFinishConnect()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 646
    const/4 v0, 0x1

    .line 653
    if-nez v0, :cond_1

    .line 656
    iget-object v4, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v4}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$500(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Lio/netty/util/concurrent/Future;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 657
    iget-object v4, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v4}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$500(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Lio/netty/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v4, v1}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    .line 659
    :cond_0
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v1, v2}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$002(Lio/netty/channel/kqueue/AbstractKQueueChannel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;

    .line 647
    :cond_1
    return-void

    .line 649
    :cond_2
    :try_start_1
    iget-object v4, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v4}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$000(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->fulfillConnectPromise(Lio/netty/channel/ChannelPromise;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    .end local v3    # "wasActive":Z
    if-nez v0, :cond_4

    .line 656
    iget-object v3, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v3}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$500(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Lio/netty/util/concurrent/Future;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 657
    :goto_0
    iget-object v3, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v3}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$500(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Lio/netty/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v3, v1}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    .line 659
    :cond_3
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v1, v2}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$002(Lio/netty/channel/kqueue/AbstractKQueueChannel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;

    goto :goto_1

    .line 650
    :catchall_0
    move-exception v3

    .line 651
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v4, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v4}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$000(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v4

    iget-object v5, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v5}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$400(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Ljava/net/SocketAddress;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->annotateConnectException(Ljava/lang/Throwable;Ljava/net/SocketAddress;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->fulfillConnectPromise(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 653
    .end local v3    # "t":Ljava/lang/Throwable;
    if-nez v0, :cond_4

    .line 656
    iget-object v3, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v3}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$500(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Lio/netty/util/concurrent/Future;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 657
    goto :goto_0

    .line 662
    :cond_4
    :goto_1
    return-void

    .line 653
    :catchall_1
    move-exception v3

    if-nez v0, :cond_6

    .line 656
    iget-object v4, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v4}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$500(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Lio/netty/util/concurrent/Future;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 657
    iget-object v4, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v4}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$500(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Lio/netty/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v4, v1}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    .line 659
    :cond_5
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v1, v2}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$002(Lio/netty/channel/kqueue/AbstractKQueueChannel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;

    .line 661
    :cond_6
    throw v3

    .line 640
    .end local v0    # "connectStillInProgress":Z
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private fireEventAndClose(Ljava/lang/Object;)V
    .locals 1
    .param p1, "evt"    # Ljava/lang/Object;

    .line 541
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 542
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 543
    return-void
.end method

.method private fulfillConnectPromise(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 626
    if-nez p1, :cond_0

    .line 628
    return-void

    .line 632
    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 633
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->closeIfClosed()V

    .line 634
    return-void
.end method

.method private fulfillConnectPromise(Lio/netty/channel/ChannelPromise;Z)V
    .locals 3
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p2, "wasActive"    # Z

    .line 600
    if-nez p1, :cond_0

    .line 602
    return-void

    .line 604
    :cond_0
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->active:Z

    .line 608
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isActive()Z

    move-result v0

    .line 611
    .local v0, "active":Z
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->trySuccess()Z

    move-result v1

    .line 615
    .local v1, "promiseSet":Z
    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    .line 616
    iget-object v2, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v2}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/ChannelPipeline;->fireChannelActive()Lio/netty/channel/ChannelPipeline;

    .line 620
    :cond_1
    if-nez v1, :cond_2

    .line 621
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 623
    :cond_2
    return-void
.end method


# virtual methods
.method protected final clearReadFilter0()V
    .locals 3

    .line 528
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readPending:Z

    .line 531
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v1, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->readFilter(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    .line 536
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    iget-object v2, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v2}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/Channel$Unsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/netty/channel/Channel$Unsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 538
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 528
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic close(Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/channel/ChannelPromise;

    .line 371
    invoke-super {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 8
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 548
    invoke-interface {p3}, Lio/netty/channel/ChannelPromise;->setUncancellable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p3}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->ensureOpen(Lio/netty/channel/ChannelPromise;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 553
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$000(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    if-nez v0, :cond_3

    .line 557
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isActive()Z

    move-result v0

    .line 558
    .local v0, "wasActive":Z
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v1, p1, p2}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    invoke-direct {p0, p3, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->fulfillConnectPromise(Lio/netty/channel/ChannelPromise;Z)V

    goto :goto_0

    .line 561
    :cond_1
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v1, p3}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$002(Lio/netty/channel/kqueue/AbstractKQueueChannel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;

    .line 562
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v1, p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$402(Lio/netty/channel/kqueue/AbstractKQueueChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    .line 565
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->config()Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->getConnectTimeoutMillis()I

    move-result v1

    .line 566
    .local v1, "connectTimeoutMillis":I
    if-lez v1, :cond_2

    .line 567
    iget-object v2, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    iget-object v3, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v3}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v3

    new-instance v4, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe$2;

    invoke-direct {v4, p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe$2;-><init>(Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;Ljava/net/SocketAddress;)V

    int-to-long v5, v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6, v7}, Lio/netty/channel/EventLoop;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v3

    invoke-static {v2, v3}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$502(Lio/netty/channel/kqueue/AbstractKQueueChannel;Lio/netty/util/concurrent/Future;)Lio/netty/util/concurrent/Future;

    .line 580
    :cond_2
    new-instance v2, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe$3;

    invoke-direct {v2, p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe$3;-><init>(Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;)V

    invoke-interface {p3, v2}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 596
    .end local v0    # "wasActive":Z
    .end local v1    # "connectTimeoutMillis":I
    :goto_0
    goto :goto_1

    .line 554
    :cond_3
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    .end local p1    # "remoteAddress":Ljava/net/SocketAddress;
    .end local p2    # "localAddress":Ljava/net/SocketAddress;
    .end local p3    # "promise":Lio/netty/channel/ChannelPromise;
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    .restart local p1    # "remoteAddress":Ljava/net/SocketAddress;
    .restart local p2    # "localAddress":Ljava/net/SocketAddress;
    .restart local p3    # "promise":Lio/netty/channel/ChannelPromise;
    :catchall_0
    move-exception v0

    .line 594
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->closeIfClosed()V

    .line 595
    invoke-virtual {p0, v0, p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->annotateConnectException(Ljava/lang/Throwable;Ljava/net/SocketAddress;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {p3, v1}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 597
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 549
    :cond_4
    :goto_2
    return-void
.end method

.method final executeReadReadyRunnable(Lio/netty/channel/ChannelConfig;)V
    .locals 2
    .param p1, "config"    # Lio/netty/channel/ChannelConfig;

    .line 520
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    iget-boolean v0, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->readReadyRunnablePending:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v0, p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->shouldBreakReadReady(Lio/netty/channel/ChannelConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->readReadyRunnablePending:Z

    .line 524
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readReadyRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 525
    return-void

    .line 521
    :cond_1
    :goto_0
    return-void
.end method

.method final failConnectPromise(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 420
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$000(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$000(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    .line 425
    .local v0, "connectPromise":Lio/netty/channel/ChannelPromise;
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$002(Lio/netty/channel/kqueue/AbstractKQueueChannel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;

    .line 426
    instance-of v1, p1, Ljava/net/ConnectException;

    if-eqz v1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/net/ConnectException;

    const-string v2, "failed to connect"

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v1, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 426
    :goto_0
    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->closeIfClosed()V

    .line 429
    const/4 v1, 0x1

    return v1

    .line 432
    .end local v0    # "connectPromise":Lio/netty/channel/ChannelPromise;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected final flush0()V
    .locals 1

    .line 514
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$300(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    invoke-super {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->flush0()V

    .line 517
    :cond_0
    return-void
.end method

.method final readEOF()V
    .locals 2

    .line 483
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->recvBufAllocHandle()Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;

    move-result-object v0

    .line 484
    .local v0, "allocHandle":Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;
    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->readEOF()V

    .line 486
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readReady(Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;)V

    goto :goto_0

    .line 493
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->shutdownInput(Z)V

    .line 497
    :goto_0
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$200(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V

    .line 498
    return-void
.end method

.method final readReady(J)V
    .locals 1
    .param p1, "numberBytesPending"    # J

    .line 385
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->recvBufAllocHandle()Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;

    move-result-object v0

    .line 386
    .local v0, "allocHandle":Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;
    invoke-virtual {v0, p1, p2}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->numberBytesPending(J)V

    .line 387
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readReady(Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;)V

    .line 388
    return-void
.end method

.method abstract readReady(Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;)V
.end method

.method final readReadyBefore()V
    .locals 1

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->maybeMoreDataToRead:Z

    .line 394
    return-void
.end method

.method final readReadyFinally(Lio/netty/channel/ChannelConfig;)V
    .locals 1
    .param p1, "config"    # Lio/netty/channel/ChannelConfig;

    .line 397
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->allocHandle:Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->maybeMoreDataToRead()Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->maybeMoreDataToRead:Z

    .line 399
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->allocHandle:Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;->isReadEOF()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readPending:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->maybeMoreDataToRead:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    iget-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readPending:Z

    if-nez v0, :cond_2

    invoke-interface {p1}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 415
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->clearReadFilter0()V

    goto :goto_1

    .line 407
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->executeReadReadyRunnable(Lio/netty/channel/ChannelConfig;)V

    .line 417
    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;
    .locals 1

    .line 371
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->recvBufAllocHandle()Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;

    move-result-object v0

    return-object v0
.end method

.method public recvBufAllocHandle()Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;
    .locals 2

    .line 502
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->allocHandle:Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;

    .line 504
    invoke-super {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v1

    check-cast v1, Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;

    invoke-direct {v0, v1}, Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;-><init>(Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;)V

    iput-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->allocHandle:Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;

    .line 506
    :cond_0
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->allocHandle:Lio/netty/channel/kqueue/KQueueRecvByteAllocatorHandle;

    return-object v0
.end method

.method shutdownInput(Z)V
    .locals 3
    .param p1, "readEOF"    # Z

    .line 454
    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$000(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    invoke-direct {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->finishConnect()V

    .line 457
    :cond_0
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->isInputShutdown()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 458
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->config()Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$100(Lio/netty/channel/ChannelConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/kqueue/BsdSocket;->shutdown(ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/NotYetConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 470
    :goto_0
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->clearReadFilter0()V

    .line 471
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    sget-object v1, Lio/netty/channel/socket/ChannelInputShutdownEvent;->INSTANCE:Lio/netty/channel/socket/ChannelInputShutdownEvent;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    goto :goto_1

    .line 461
    :catch_1
    move-exception v0

    .line 464
    .local v0, "ignored":Ljava/io/IOException;
    sget-object v1, Lio/netty/channel/socket/ChannelInputShutdownEvent;->INSTANCE:Lio/netty/channel/socket/ChannelInputShutdownEvent;

    invoke-direct {p0, v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->fireEventAndClose(Ljava/lang/Object;)V

    .line 465
    return-void

    .line 473
    .end local v0    # "ignored":Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    goto :goto_1

    .line 475
    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    iget-boolean v0, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->inputClosedSeenErrorOnRead:Z

    if-nez v0, :cond_3

    .line 476
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    iput-boolean v1, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->inputClosedSeenErrorOnRead:Z

    .line 477
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    sget-object v1, Lio/netty/channel/socket/ChannelInputShutdownReadComplete;->INSTANCE:Lio/netty/channel/socket/ChannelInputShutdownReadComplete;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 479
    :cond_3
    :goto_1
    return-void
.end method

.method final writeReady()V
    .locals 1

    .line 436
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-static {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->access$000(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    invoke-direct {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->finishConnect()V

    goto :goto_0

    .line 439
    :cond_0
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->this$0:Lio/netty/channel/kqueue/AbstractKQueueChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 441
    invoke-super {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->flush0()V

    .line 443
    :cond_1
    :goto_0
    return-void
.end method
