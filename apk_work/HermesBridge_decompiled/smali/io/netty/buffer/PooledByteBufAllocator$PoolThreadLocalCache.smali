.class final Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;
.super Lio/netty/util/concurrent/FastThreadLocal;
.source "PooledByteBufAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PooledByteBufAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PoolThreadLocalCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/FastThreadLocal<",
        "Lio/netty/buffer/PoolThreadCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/buffer/PooledByteBufAllocator;

.field private final useCacheForAllThreads:Z


# direct methods
.method constructor <init>(Lio/netty/buffer/PooledByteBufAllocator;Z)V
    .locals 0
    .param p2, "useCacheForAllThreads"    # Z

    .line 505
    iput-object p1, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-direct {p0}, Lio/netty/util/concurrent/FastThreadLocal;-><init>()V

    .line 506
    iput-boolean p2, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->useCacheForAllThreads:Z

    .line 507
    return-void
.end method

.method private leastUsedArena([Lio/netty/buffer/PoolArena;)Lio/netty/buffer/PoolArena;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;)",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;"
        }
    .end annotation

    .line 545
    .local p1, "arenas":[Lio/netty/buffer/PoolArena;, "[Lio/netty/buffer/PoolArena<TT;>;"
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 549
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 552
    .local v0, "minArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget-object v1, v0, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_1

    .line 553
    return-object v0

    .line 555
    :cond_1
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 556
    aget-object v2, p1, v1

    .line 557
    .local v2, "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget-object v3, v2, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget-object v4, v0, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 558
    move-object v0, v2

    .line 555
    .end local v2    # "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    .end local v1    # "i":I
    :cond_3
    return-object v0

    .line 546
    .end local v0    # "minArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized initialValue()Lio/netty/buffer/PoolThreadCache;
    .locals 21

    move-object/from16 v1, p0

    monitor-enter p0

    .line 511
    :try_start_0
    iget-object v0, v1, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->access$000(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->leastUsedArena([Lio/netty/buffer/PoolArena;)Lio/netty/buffer/PoolArena;

    move-result-object v3

    .line 512
    .local v3, "heapArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<[B>;"
    iget-object v0, v1, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->access$100(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->leastUsedArena([Lio/netty/buffer/PoolArena;)Lio/netty/buffer/PoolArena;

    move-result-object v4

    .line 514
    .local v4, "directArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<Ljava/nio/ByteBuffer;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 515
    .local v0, "current":Ljava/lang/Thread;
    invoke-static {}, Lio/netty/util/internal/ThreadExecutorMap;->currentExecutor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    move-object v12, v2

    .line 517
    .local v12, "executor":Lio/netty/util/concurrent/EventExecutor;
    iget-boolean v2, v1, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->useCacheForAllThreads:Z

    if-nez v2, :cond_1

    instance-of v2, v0, Lio/netty/util/concurrent/FastThreadLocalThread;

    if-nez v2, :cond_1

    if-eqz v12, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    new-instance v10, Lio/netty/buffer/PoolThreadCache;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lio/netty/buffer/PoolThreadCache;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolArena;IIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v10

    .line 523
    .end local p0    # "this":Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;
    :cond_1
    :goto_0
    :try_start_1
    new-instance v2, Lio/netty/buffer/PoolThreadCache;

    iget-object v5, v1, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    .line 524
    invoke-static {v5}, Lio/netty/buffer/PooledByteBufAllocator;->access$200(Lio/netty/buffer/PooledByteBufAllocator;)I

    move-result v16

    iget-object v5, v1, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v5}, Lio/netty/buffer/PooledByteBufAllocator;->access$300(Lio/netty/buffer/PooledByteBufAllocator;)I

    move-result v17

    sget v18, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_CACHED_BUFFER_CAPACITY:I

    .line 525
    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->access$400()I

    move-result v19

    const/16 v20, 0x1

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    invoke-direct/range {v13 .. v20}, Lio/netty/buffer/PoolThreadCache;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolArena;IIIIZ)V

    .line 527
    .local v2, "cache":Lio/netty/buffer/PoolThreadCache;
    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->access$500()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 528
    if-eqz v12, :cond_2

    .line 529
    iget-object v5, v1, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v5}, Lio/netty/buffer/PooledByteBufAllocator;->access$600(Lio/netty/buffer/PooledByteBufAllocator;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->access$500()J

    move-result-wide v7

    .line 530
    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->access$500()J

    move-result-wide v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 529
    move-object v5, v12

    invoke-interface/range {v5 .. v11}, Lio/netty/util/concurrent/EventExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    :cond_2
    monitor-exit p0

    return-object v2

    .line 510
    .end local v0    # "current":Ljava/lang/Thread;
    .end local v2    # "cache":Lio/netty/buffer/PoolThreadCache;
    .end local v3    # "heapArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<[B>;"
    .end local v4    # "directArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<Ljava/nio/ByteBuffer;>;"
    .end local v12    # "executor":Lio/netty/util/concurrent/EventExecutor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 502
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->initialValue()Lio/netty/buffer/PoolThreadCache;

    move-result-object v0

    return-object v0
.end method

.method protected onRemoval(Lio/netty/buffer/PoolThreadCache;)V
    .locals 1
    .param p1, "threadCache"    # Lio/netty/buffer/PoolThreadCache;

    .line 541
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/netty/buffer/PoolThreadCache;->free(Z)V

    .line 542
    return-void
.end method

.method protected bridge synthetic onRemoval(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 502
    check-cast p1, Lio/netty/buffer/PoolThreadCache;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->onRemoval(Lio/netty/buffer/PoolThreadCache;)V

    return-void
.end method
