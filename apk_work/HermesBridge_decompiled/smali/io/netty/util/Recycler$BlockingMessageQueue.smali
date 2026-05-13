.class final Lio/netty/util/Recycler$BlockingMessageQueue;
.super Ljava/lang/Object;
.source "Recycler.java"

# interfaces
.implements Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockingMessageQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final deque:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final maxCapacity:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "maxCapacity"    # I

    .line 385
    .local p0, "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput p1, p0, Lio/netty/util/Recycler$BlockingMessageQueue;->maxCapacity:I

    .line 396
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/netty/util/Recycler$BlockingMessageQueue;->deque:Ljava/util/Queue;

    .line 397
    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 434
    .local p0, "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    iget v0, p0, Lio/netty/util/Recycler$BlockingMessageQueue;->maxCapacity:I

    return v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .local p0, "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    monitor-enter p0

    .line 424
    :try_start_0
    iget-object v0, p0, Lio/netty/util/Recycler$BlockingMessageQueue;->deque:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    monitor-exit p0

    return-void

    .line 423
    .end local p0    # "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TT;>;)I"
        }
    .end annotation

    .line 469
    .local p0, "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 3
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TT;>;I)I"
        }
    .end annotation

    .line 455
    .local p0, "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TT;>;"
    const/4 v0, 0x0

    .line 456
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0}, Lio/netty/util/Recycler$BlockingMessageQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_0

    .line 457
    invoke-interface {p1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    return v0
.end method

.method public drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 1
    .param p2, "wait"    # Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;
    .param p3, "exit"    # Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TT;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;",
            ")V"
        }
    .end annotation

    .line 479
    .local p0, "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TT;>;)I"
        }
    .end annotation

    .line 474
    .local p0, "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 1
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TT;>;I)I"
        }
    .end annotation

    .line 464
    .local p0, "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 1
    .param p2, "wait"    # Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;
    .param p3, "exit"    # Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TT;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;",
            ")V"
        }
    .end annotation

    .line 484
    .local p0, "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    .local p1, "s":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .local p0, "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    monitor-enter p0

    .line 429
    :try_start_0
    iget-object v0, p0, Lio/netty/util/Recycler$BlockingMessageQueue;->deque:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 429
    .end local p0    # "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .local p0, "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 401
    :try_start_0
    iget-object v0, p0, Lio/netty/util/Recycler$BlockingMessageQueue;->deque:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lio/netty/util/Recycler$BlockingMessageQueue;->maxCapacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 402
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 404
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/netty/util/Recycler$BlockingMessageQueue;->deque:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 400
    .end local p0    # "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    .end local p1    # "e":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .local p0, "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    monitor-enter p0

    .line 414
    :try_start_0
    iget-object v0, p0, Lio/netty/util/Recycler$BlockingMessageQueue;->deque:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 414
    .end local p0    # "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .local p0, "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    monitor-enter p0

    .line 409
    :try_start_0
    iget-object v0, p0, Lio/netty/util/Recycler$BlockingMessageQueue;->deque:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 409
    .end local p0    # "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 439
    .local p0, "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lio/netty/util/Recycler$BlockingMessageQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public relaxedPeek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 449
    .local p0, "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    invoke-virtual {p0}, Lio/netty/util/Recycler$BlockingMessageQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public relaxedPoll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 444
    .local p0, "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    invoke-virtual {p0}, Lio/netty/util/Recycler$BlockingMessageQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .local p0, "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    monitor-enter p0

    .line 419
    :try_start_0
    iget-object v0, p0, Lio/netty/util/Recycler$BlockingMessageQueue;->deque:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 419
    .end local p0    # "this":Lio/netty/util/Recycler$BlockingMessageQueue;, "Lio/netty/util/Recycler$BlockingMessageQueue<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
