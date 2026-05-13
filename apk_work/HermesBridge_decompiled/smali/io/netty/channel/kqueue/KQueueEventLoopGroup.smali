.class public final Lio/netty/channel/kqueue/KQueueEventLoopGroup;
.super Lio/netty/channel/MultithreadEventLoopGroup;
.source "KQueueEventLoopGroup.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/channel/kqueue/KQueueEventLoopGroup;-><init>(I)V

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "nThreads"    # I

    .line 53
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ThreadFactory;

    invoke-direct {p0, p1, v0}, Lio/netty/channel/kqueue/KQueueEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 54
    return-void
.end method

.method public constructor <init>(ILio/netty/channel/SelectStrategyFactory;)V
    .locals 2
    .param p1, "nThreads"    # I
    .param p2, "selectStrategyFactory"    # Lio/netty/channel/SelectStrategyFactory;

    .line 69
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ThreadFactory;

    invoke-direct {p0, p1, v0, p2}, Lio/netty/channel/kqueue/KQueueEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;Lio/netty/channel/SelectStrategyFactory;)V

    .line 70
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 81
    sget-object v0, Lio/netty/channel/DefaultSelectStrategyFactory;->INSTANCE:Lio/netty/channel/SelectStrategyFactory;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/kqueue/KQueueEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Lio/netty/channel/SelectStrategyFactory;)V

    .line 82
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Lio/netty/channel/SelectStrategyFactory;)V
    .locals 2
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "selectStrategyFactory"    # Lio/netty/channel/SelectStrategyFactory;

    .line 118
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lio/netty/util/concurrent/RejectedExecutionHandlers;->reject()Lio/netty/util/concurrent/RejectedExecutionHandler;

    move-result-object v1

    filled-new-array {v0, p3, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;[Ljava/lang/Object;)V

    .line 40
    invoke-static {}, Lio/netty/channel/kqueue/KQueue;->ensureAvailability()V

    .line 119
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;Lio/netty/channel/SelectStrategyFactory;)V
    .locals 2
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "chooserFactory"    # Lio/netty/util/concurrent/EventExecutorChooserFactory;
    .param p4, "selectStrategyFactory"    # Lio/netty/channel/SelectStrategyFactory;

    .line 123
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lio/netty/util/concurrent/RejectedExecutionHandlers;->reject()Lio/netty/util/concurrent/RejectedExecutionHandler;

    move-result-object v1

    filled-new-array {v0, p4, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;[Ljava/lang/Object;)V

    .line 40
    invoke-static {}, Lio/netty/channel/kqueue/KQueue;->ensureAvailability()V

    .line 124
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;Lio/netty/channel/SelectStrategyFactory;Lio/netty/util/concurrent/RejectedExecutionHandler;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "chooserFactory"    # Lio/netty/util/concurrent/EventExecutorChooserFactory;
    .param p4, "selectStrategyFactory"    # Lio/netty/channel/SelectStrategyFactory;
    .param p5, "rejectedExecutionHandler"    # Lio/netty/util/concurrent/RejectedExecutionHandler;

    .line 129
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p4, p5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;[Ljava/lang/Object;)V

    .line 40
    invoke-static {}, Lio/netty/channel/kqueue/KQueue;->ensureAvailability()V

    .line 130
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;Lio/netty/channel/SelectStrategyFactory;Lio/netty/util/concurrent/RejectedExecutionHandler;Lio/netty/channel/EventLoopTaskQueueFactory;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "chooserFactory"    # Lio/netty/util/concurrent/EventExecutorChooserFactory;
    .param p4, "selectStrategyFactory"    # Lio/netty/channel/SelectStrategyFactory;
    .param p5, "rejectedExecutionHandler"    # Lio/netty/util/concurrent/RejectedExecutionHandler;
    .param p6, "queueFactory"    # Lio/netty/channel/EventLoopTaskQueueFactory;

    .line 136
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p4, p5, p6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;[Ljava/lang/Object;)V

    .line 40
    invoke-static {}, Lio/netty/channel/kqueue/KQueue;->ensureAvailability()V

    .line 138
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;Lio/netty/channel/SelectStrategyFactory;Lio/netty/util/concurrent/RejectedExecutionHandler;Lio/netty/channel/EventLoopTaskQueueFactory;Lio/netty/channel/EventLoopTaskQueueFactory;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "chooserFactory"    # Lio/netty/util/concurrent/EventExecutorChooserFactory;
    .param p4, "selectStrategyFactory"    # Lio/netty/channel/SelectStrategyFactory;
    .param p5, "rejectedExecutionHandler"    # Lio/netty/util/concurrent/RejectedExecutionHandler;
    .param p6, "taskQueueFactory"    # Lio/netty/channel/EventLoopTaskQueueFactory;
    .param p7, "tailTaskQueueFactory"    # Lio/netty/channel/EventLoopTaskQueueFactory;

    .line 158
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p4, p5, p6, p7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;[Ljava/lang/Object;)V

    .line 40
    invoke-static {}, Lio/netty/channel/kqueue/KQueue;->ensureAvailability()V

    .line 160
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/kqueue/KQueueEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;I)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "maxEventsAtOnce"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    sget-object v0, Lio/netty/channel/DefaultSelectStrategyFactory;->INSTANCE:Lio/netty/channel/SelectStrategyFactory;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/kqueue/KQueueEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;ILio/netty/channel/SelectStrategyFactory;)V

    .line 102
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;ILio/netty/channel/SelectStrategyFactory;)V
    .locals 2
    .param p1, "nThreads"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "maxEventsAtOnce"    # I
    .param p4, "selectStrategyFactory"    # Lio/netty/channel/SelectStrategyFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lio/netty/util/concurrent/RejectedExecutionHandlers;->reject()Lio/netty/util/concurrent/RejectedExecutionHandler;

    move-result-object v1

    filled-new-array {v0, p4, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V

    .line 40
    invoke-static {}, Lio/netty/channel/kqueue/KQueue;->ensureAvailability()V

    .line 115
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Lio/netty/channel/SelectStrategyFactory;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "selectStrategyFactory"    # Lio/netty/channel/SelectStrategyFactory;

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lio/netty/channel/kqueue/KQueueEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;ILio/netty/channel/SelectStrategyFactory;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lio/netty/channel/kqueue/KQueueEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;I)V

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

    .line 174
    move-object/from16 v0, p2

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    .line 175
    .local v1, "maxEvents":Ljava/lang/Integer;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Lio/netty/channel/SelectStrategyFactory;

    .line 176
    .local v2, "selectStrategyFactory":Lio/netty/channel/SelectStrategyFactory;
    const/4 v3, 0x2

    aget-object v3, v0, v3

    check-cast v3, Lio/netty/util/concurrent/RejectedExecutionHandler;

    .line 177
    .local v3, "rejectedExecutionHandler":Lio/netty/util/concurrent/RejectedExecutionHandler;
    const/4 v4, 0x0

    .line 178
    .local v4, "taskQueueFactory":Lio/netty/channel/EventLoopTaskQueueFactory;
    const/4 v5, 0x0

    .line 180
    .local v5, "tailTaskQueueFactory":Lio/netty/channel/EventLoopTaskQueueFactory;
    array-length v12, v0

    .line 181
    .local v12, "argsLength":I
    const/4 v6, 0x3

    if-le v12, v6, :cond_0

    .line 182
    aget-object v6, v0, v6

    move-object v4, v6

    check-cast v4, Lio/netty/channel/EventLoopTaskQueueFactory;

    move-object v13, v4

    goto :goto_0

    .line 181
    :cond_0
    move-object v13, v4

    .line 184
    .end local v4    # "taskQueueFactory":Lio/netty/channel/EventLoopTaskQueueFactory;
    .local v13, "taskQueueFactory":Lio/netty/channel/EventLoopTaskQueueFactory;
    :goto_0
    const/4 v4, 0x4

    if-le v12, v4, :cond_1

    .line 185
    aget-object v4, v0, v4

    move-object v5, v4

    check-cast v5, Lio/netty/channel/EventLoopTaskQueueFactory;

    move-object v14, v5

    goto :goto_1

    .line 184
    :cond_1
    move-object v14, v5

    .line 187
    .end local v5    # "tailTaskQueueFactory":Lio/netty/channel/EventLoopTaskQueueFactory;
    .local v14, "tailTaskQueueFactory":Lio/netty/channel/EventLoopTaskQueueFactory;
    :goto_1
    new-instance v15, Lio/netty/channel/kqueue/KQueueEventLoop;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 188
    invoke-interface {v2}, Lio/netty/channel/SelectStrategyFactory;->newSelectStrategy()Lio/netty/channel/SelectStrategy;

    move-result-object v8

    move-object v4, v15

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v9, v3

    move-object v10, v13

    move-object v11, v14

    invoke-direct/range {v4 .. v11}, Lio/netty/channel/kqueue/KQueueEventLoop;-><init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/Executor;ILio/netty/channel/SelectStrategy;Lio/netty/util/concurrent/RejectedExecutionHandler;Lio/netty/channel/EventLoopTaskQueueFactory;Lio/netty/channel/EventLoopTaskQueueFactory;)V

    .line 187
    return-object v15
.end method

.method protected bridge synthetic newChild(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/netty/util/concurrent/EventExecutor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/kqueue/KQueueEventLoopGroup;->newChild(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/netty/channel/EventLoop;

    move-result-object p1

    return-object p1
.end method

.method public setIoRatio(I)V
    .locals 3
    .param p1, "ioRatio"    # I

    .line 167
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueEventLoopGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/concurrent/EventExecutor;

    .line 168
    .local v1, "e":Lio/netty/util/concurrent/EventExecutor;
    move-object v2, v1

    check-cast v2, Lio/netty/channel/kqueue/KQueueEventLoop;

    invoke-virtual {v2, p1}, Lio/netty/channel/kqueue/KQueueEventLoop;->setIoRatio(I)V

    .line 169
    .end local v1    # "e":Lio/netty/util/concurrent/EventExecutor;
    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method
