.class public Lio/netty/channel/nio/NioEventLoopGroup;
.super Lio/netty/channel/MultithreadEventLoopGroup;
.source "NioEventLoopGroup.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(I)V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "nThreads"    # I

    .line 53
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;)V

    .line 54
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 73
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;)V

    .line 74
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "chooserFactory"    # Lio/netty/util/concurrent/EventExecutorChooserFactory;
    .param p4, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p5, "selectStrategyFactory"    # Lio/netty/channel/SelectStrategyFactory;

    .line 103
    nop

    .line 104
    invoke-static {}, Lio/netty/util/concurrent/RejectedExecutionHandlers;->reject()Lio/netty/util/concurrent/RejectedExecutionHandler;

    move-result-object v0

    filled-new-array {p4, p5, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 103
    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;[Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;Lio/netty/util/concurrent/RejectedExecutionHandler;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "chooserFactory"    # Lio/netty/util/concurrent/EventExecutorChooserFactory;
    .param p4, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p5, "selectStrategyFactory"    # Lio/netty/channel/SelectStrategyFactory;
    .param p6, "rejectedExecutionHandler"    # Lio/netty/util/concurrent/RejectedExecutionHandler;

    .line 111
    filled-new-array {p4, p5, p6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;[Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;Lio/netty/util/concurrent/RejectedExecutionHandler;Lio/netty/channel/EventLoopTaskQueueFactory;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "chooserFactory"    # Lio/netty/util/concurrent/EventExecutorChooserFactory;
    .param p4, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p5, "selectStrategyFactory"    # Lio/netty/channel/SelectStrategyFactory;
    .param p6, "rejectedExecutionHandler"    # Lio/netty/util/concurrent/RejectedExecutionHandler;
    .param p7, "taskQueueFactory"    # Lio/netty/channel/EventLoopTaskQueueFactory;

    .line 119
    filled-new-array {p4, p5, p6, p7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;[Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;Lio/netty/util/concurrent/RejectedExecutionHandler;Lio/netty/channel/EventLoopTaskQueueFactory;Lio/netty/channel/EventLoopTaskQueueFactory;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "chooserFactory"    # Lio/netty/util/concurrent/EventExecutorChooserFactory;
    .param p4, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p5, "selectStrategyFactory"    # Lio/netty/channel/SelectStrategyFactory;
    .param p6, "rejectedExecutionHandler"    # Lio/netty/util/concurrent/RejectedExecutionHandler;
    .param p7, "taskQueueFactory"    # Lio/netty/channel/EventLoopTaskQueueFactory;
    .param p8, "tailTaskQueueFactory"    # Lio/netty/channel/EventLoopTaskQueueFactory;

    .line 143
    filled-new-array {p4, p5, p6, p7, p8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;[Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;

    .line 92
    sget-object v0, Lio/netty/channel/DefaultSelectStrategyFactory;->INSTANCE:Lio/netty/channel/SelectStrategyFactory;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;)V

    .line 93
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p4, "selectStrategyFactory"    # Lio/netty/channel/SelectStrategyFactory;

    .line 97
    invoke-static {}, Lio/netty/util/concurrent/RejectedExecutionHandlers;->reject()Lio/netty/util/concurrent/RejectedExecutionHandler;

    move-result-object v0

    filled-new-array {p3, p4, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;[Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 69
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V

    .line 70
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;

    .line 82
    sget-object v0, Lio/netty/channel/DefaultSelectStrategyFactory;->INSTANCE:Lio/netty/channel/SelectStrategyFactory;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;)V

    .line 83
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategyFactory;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p4, "selectStrategyFactory"    # Lio/netty/channel/SelectStrategyFactory;

    .line 87
    invoke-static {}, Lio/netty/util/concurrent/RejectedExecutionHandlers;->reject()Lio/netty/util/concurrent/RejectedExecutionHandler;

    move-result-object v0

    filled-new-array {p3, p4, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 61
    const/4 v0, 0x0

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected varargs newChild(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/netty/channel/EventLoop;
    .locals 16
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    move-object/from16 v0, p2

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/nio/channels/spi/SelectorProvider;

    .line 170
    .local v1, "selectorProvider":Ljava/nio/channels/spi/SelectorProvider;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    move-object v10, v2

    check-cast v10, Lio/netty/channel/SelectStrategyFactory;

    .line 171
    .local v10, "selectStrategyFactory":Lio/netty/channel/SelectStrategyFactory;
    const/4 v2, 0x2

    aget-object v2, v0, v2

    move-object v11, v2

    check-cast v11, Lio/netty/util/concurrent/RejectedExecutionHandler;

    .line 172
    .local v11, "rejectedExecutionHandler":Lio/netty/util/concurrent/RejectedExecutionHandler;
    const/4 v2, 0x0

    .line 173
    .local v2, "taskQueueFactory":Lio/netty/channel/EventLoopTaskQueueFactory;
    const/4 v3, 0x0

    .line 175
    .local v3, "tailTaskQueueFactory":Lio/netty/channel/EventLoopTaskQueueFactory;
    array-length v12, v0

    .line 176
    .local v12, "argsLength":I
    const/4 v4, 0x3

    if-le v12, v4, :cond_0

    .line 177
    aget-object v4, v0, v4

    move-object v2, v4

    check-cast v2, Lio/netty/channel/EventLoopTaskQueueFactory;

    move-object v13, v2

    goto :goto_0

    .line 176
    :cond_0
    move-object v13, v2

    .line 179
    .end local v2    # "taskQueueFactory":Lio/netty/channel/EventLoopTaskQueueFactory;
    .local v13, "taskQueueFactory":Lio/netty/channel/EventLoopTaskQueueFactory;
    :goto_0
    const/4 v2, 0x4

    if-le v12, v2, :cond_1

    .line 180
    aget-object v2, v0, v2

    move-object v3, v2

    check-cast v3, Lio/netty/channel/EventLoopTaskQueueFactory;

    move-object v14, v3

    goto :goto_1

    .line 179
    :cond_1
    move-object v14, v3

    .line 182
    .end local v3    # "tailTaskQueueFactory":Lio/netty/channel/EventLoopTaskQueueFactory;
    .local v14, "tailTaskQueueFactory":Lio/netty/channel/EventLoopTaskQueueFactory;
    :goto_1
    new-instance v15, Lio/netty/channel/nio/NioEventLoop;

    .line 183
    invoke-interface {v10}, Lio/netty/channel/SelectStrategyFactory;->newSelectStrategy()Lio/netty/channel/SelectStrategy;

    move-result-object v6

    move-object v2, v15

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v1

    move-object v7, v11

    move-object v8, v13

    move-object v9, v14

    invoke-direct/range {v2 .. v9}, Lio/netty/channel/nio/NioEventLoop;-><init>(Lio/netty/channel/nio/NioEventLoopGroup;Ljava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategy;Lio/netty/util/concurrent/RejectedExecutionHandler;Lio/netty/channel/EventLoopTaskQueueFactory;Lio/netty/channel/EventLoopTaskQueueFactory;)V

    .line 182
    return-object v15
.end method

.method protected bridge synthetic newChild(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/netty/util/concurrent/EventExecutor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/nio/NioEventLoopGroup;->newChild(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/netty/channel/EventLoop;

    move-result-object p1

    return-object p1
.end method

.method public rebuildSelectors()V
    .locals 3

    .line 162
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoopGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/concurrent/EventExecutor;

    .line 163
    .local v1, "e":Lio/netty/util/concurrent/EventExecutor;
    move-object v2, v1

    check-cast v2, Lio/netty/channel/nio/NioEventLoop;

    invoke-virtual {v2}, Lio/netty/channel/nio/NioEventLoop;->rebuildSelector()V

    .line 164
    .end local v1    # "e":Lio/netty/util/concurrent/EventExecutor;
    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method

.method public setIoRatio(I)V
    .locals 3
    .param p1, "ioRatio"    # I

    .line 152
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoopGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/concurrent/EventExecutor;

    .line 153
    .local v1, "e":Lio/netty/util/concurrent/EventExecutor;
    move-object v2, v1

    check-cast v2, Lio/netty/channel/nio/NioEventLoop;

    invoke-virtual {v2, p1}, Lio/netty/channel/nio/NioEventLoop;->setIoRatio(I)V

    .line 154
    .end local v1    # "e":Lio/netty/util/concurrent/EventExecutor;
    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method
