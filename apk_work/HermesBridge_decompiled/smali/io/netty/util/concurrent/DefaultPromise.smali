.class public Lio/netty/util/concurrent/DefaultPromise;
.super Lio/netty/util/concurrent/AbstractFuture;
.source "DefaultPromise.java"

# interfaces
.implements Lio/netty/util/concurrent/Promise;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/concurrent/DefaultPromise$StacklessCancellationException;,
        Lio/netty/util/concurrent/DefaultPromise$CauseHolder;,
        Lio/netty/util/concurrent/DefaultPromise$LeanCancellationException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/concurrent/AbstractFuture<",
        "TV;>;",
        "Lio/netty/util/concurrent/Promise<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CANCELLATION_CAUSE_HOLDER:Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

.field private static final CANCELLATION_STACK:[Ljava/lang/StackTraceElement;

.field private static final MAX_LISTENER_STACK_DEPTH:I

.field private static final RESULT_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/netty/util/concurrent/DefaultPromise;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUCCESS:Ljava/lang/Object;

.field private static final UNCANCELLABLE:Ljava/lang/Object;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;

.field private static final rejectedExecutionLogger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final executor:Lio/netty/util/concurrent/EventExecutor;

.field private listener:Lio/netty/util/concurrent/GenericFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private listeners:Lio/netty/util/concurrent/DefaultFutureListeners;

.field private notifyingListeners:Z

.field private volatile result:Ljava/lang/Object;

.field private waiters:S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    nop

    .line 36
    const-class v0, Lio/netty/util/concurrent/DefaultPromise;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/util/concurrent/DefaultPromise;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".rejectedExecution"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/util/concurrent/DefaultPromise;->rejectedExecutionLogger:Lio/netty/util/internal/logging/InternalLogger;

    .line 39
    nop

    .line 40
    const-string v1, "io.netty.defaultPromise.maxListenerStackDepth"

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 39
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sput v1, Lio/netty/util/concurrent/DefaultPromise;->MAX_LISTENER_STACK_DEPTH:I

    .line 42
    const-class v1, Ljava/lang/Object;

    .line 43
    const-string v2, "result"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lio/netty/util/concurrent/DefaultPromise;->RESULT_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 44
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Ljava/lang/Object;

    .line 45
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    .line 46
    new-instance v1, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    .line 47
    const-string v2, "cancel(...)"

    invoke-static {v0, v2}, Lio/netty/util/concurrent/DefaultPromise$StacklessCancellationException;->newInstance(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/concurrent/DefaultPromise$StacklessCancellationException;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;-><init>(Ljava/lang/Throwable;)V

    sput-object v1, Lio/netty/util/concurrent/DefaultPromise;->CANCELLATION_CAUSE_HOLDER:Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    .line 48
    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->CANCELLATION_CAUSE_HOLDER:Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    iget-object v0, v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;->cause:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    sput-object v0, Lio/netty/util/concurrent/DefaultPromise;->CANCELLATION_STACK:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 90
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractFuture;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 93
    return-void
.end method

.method public constructor <init>(Lio/netty/util/concurrent/EventExecutor;)V
    .locals 1
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;

    .line 83
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractFuture;-><init>()V

    .line 84
    const-string v0, "executor"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/EventExecutor;

    iput-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 85
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/StackTraceElement;
    .locals 1

    .line 35
    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->CANCELLATION_STACK:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method static synthetic access$200(Lio/netty/util/concurrent/DefaultPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/util/concurrent/DefaultPromise;

    .line 35
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListenersNow()V

    return-void
.end method

.method static synthetic access$300(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/util/concurrent/Future;
    .param p1, "x1"    # Lio/netty/util/concurrent/GenericFutureListener;

    .line 35
    invoke-static {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    return-void
.end method

.method static synthetic access$400(Lio/netty/util/concurrent/ProgressiveFuture;[Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V
    .locals 0
    .param p0, "x0"    # Lio/netty/util/concurrent/ProgressiveFuture;
    .param p1, "x1"    # [Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .line 35
    invoke-static/range {p0 .. p5}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListeners0(Lio/netty/util/concurrent/ProgressiveFuture;[Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    return-void
.end method

.method static synthetic access$500(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V
    .locals 0
    .param p0, "x0"    # Lio/netty/util/concurrent/ProgressiveFuture;
    .param p1, "x1"    # Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .line 35
    invoke-static/range {p0 .. p5}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListener0(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    return-void
.end method

.method private addListener0(Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)V"
        }
    .end annotation

    .line 599
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listener:Lio/netty/util/concurrent/GenericFutureListener;

    if-nez v0, :cond_1

    .line 600
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Lio/netty/util/concurrent/DefaultFutureListeners;

    if-nez v0, :cond_0

    .line 601
    iput-object p1, p0, Lio/netty/util/concurrent/DefaultPromise;->listener:Lio/netty/util/concurrent/GenericFutureListener;

    goto :goto_0

    .line 603
    :cond_0
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Lio/netty/util/concurrent/DefaultFutureListeners;

    invoke-virtual {v0, p1}, Lio/netty/util/concurrent/DefaultFutureListeners;->add(Lio/netty/util/concurrent/GenericFutureListener;)V

    goto :goto_0

    .line 606
    :cond_1
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Lio/netty/util/concurrent/DefaultFutureListeners;

    if-nez v0, :cond_2

    .line 607
    new-instance v0, Lio/netty/util/concurrent/DefaultFutureListeners;

    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->listener:Lio/netty/util/concurrent/GenericFutureListener;

    invoke-direct {v0, v1, p1}, Lio/netty/util/concurrent/DefaultFutureListeners;-><init>(Lio/netty/util/concurrent/GenericFutureListener;Lio/netty/util/concurrent/GenericFutureListener;)V

    iput-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Lio/netty/util/concurrent/DefaultFutureListeners;

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listener:Lio/netty/util/concurrent/GenericFutureListener;

    .line 610
    :goto_0
    return-void

    .line 606
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private await0(JZ)Z
    .locals 12
    .param p1, "timeoutNanos"    # J
    .param p3, "interruptable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 675
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 676
    return v1

    .line 679
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_1

    .line 680
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    return v0

    .line 683
    :cond_1
    if-eqz p3, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 684
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->checkDeadLock()V

    .line 691
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 692
    .local v4, "startTime":J
    monitor-enter p0

    .line 693
    const/4 v0, 0x0

    .line 695
    .local v0, "interrupted":Z
    move-wide v6, p1

    .line 696
    .local v6, "waitTime":J
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v8

    if-nez v8, :cond_7

    cmp-long v8, v6, v2

    if-lez v8, :cond_7

    .line 697
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->incWaiters()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 699
    const-wide/32 v8, 0xf4240

    :try_start_1
    div-long v10, v6, v8

    rem-long v8, v6, v8

    long-to-int v8, v8

    invoke-virtual {p0, v10, v11, v8}, Ljava/lang/Object;->wait(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    :goto_2
    :try_start_2
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    .line 708
    goto :goto_3

    .line 707
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 700
    :catch_0
    move-exception v8

    .line 701
    .local v8, "e":Ljava/lang/InterruptedException;
    if-nez p3, :cond_6

    .line 704
    const/4 v0, 0x1

    goto :goto_2

    .line 710
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :goto_3
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_5

    .line 711
    nop

    .line 719
    if-eqz v0, :cond_4

    .line 720
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 711
    return v1

    .line 715
    :cond_5
    :try_start_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sub-long/2addr v8, v4

    sub-long v6, p1, v8

    goto :goto_1

    .line 702
    .restart local v8    # "e":Ljava/lang/InterruptedException;
    :cond_6
    nop

    .end local v0    # "interrupted":Z
    .end local v4    # "startTime":J
    .end local v6    # "waitTime":J
    .end local p1    # "timeoutNanos":J
    .end local p3    # "interruptable":Z
    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 707
    .end local v8    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "interrupted":Z
    .restart local v4    # "startTime":J
    .restart local v6    # "waitTime":J
    .restart local p1    # "timeoutNanos":J
    .restart local p3    # "interruptable":Z
    :goto_4
    :try_start_6
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    .line 708
    nop

    .end local v0    # "interrupted":Z
    .end local v4    # "startTime":J
    .end local p1    # "timeoutNanos":J
    .end local p3    # "interruptable":Z
    throw v1

    .line 717
    .restart local v0    # "interrupted":Z
    .restart local v4    # "startTime":J
    .restart local p1    # "timeoutNanos":J
    .restart local p3    # "interruptable":Z
    :cond_7
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 719
    if-eqz v0, :cond_8

    .line 720
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_8
    monitor-exit p0

    .line 717
    return v1

    .line 719
    .end local v6    # "waitTime":J
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_9

    .line 720
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 722
    :cond_9
    nop

    .end local v4    # "startTime":J
    .end local p1    # "timeoutNanos":J
    .end local p3    # "interruptable":Z
    throw v1

    .line 723
    .end local v0    # "interrupted":Z
    .restart local v4    # "startTime":J
    .restart local p1    # "timeoutNanos":J
    .restart local p3    # "interruptable":Z
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method

.method private cause0(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .line 163
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    instance-of v0, p1, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 164
    return-object v1

    .line 166
    :cond_0
    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->CANCELLATION_CAUSE_HOLDER:Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    if-ne p1, v0, :cond_2

    .line 167
    new-instance v0, Lio/netty/util/concurrent/DefaultPromise$LeanCancellationException;

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/DefaultPromise$LeanCancellationException;-><init>(Lio/netty/util/concurrent/DefaultPromise$1;)V

    .line 168
    .local v0, "ce":Ljava/util/concurrent/CancellationException;
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->RESULT_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lio/netty/util/concurrent/DefaultPromise;->CANCELLATION_CAUSE_HOLDER:Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    new-instance v3, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    invoke-direct {v3, v0}, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, p0, v2, v3}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    return-object v0

    .line 171
    :cond_1
    iget-object p1, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 173
    .end local v0    # "ce":Ljava/util/concurrent/CancellationException;
    :cond_2
    move-object v0, p1

    check-cast v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    iget-object v0, v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method private declared-synchronized checkNotifyWaiters()Z
    .locals 1

    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    monitor-enter p0

    .line 648
    :try_start_0
    iget-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    if-lez v0, :cond_0

    .line 649
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 651
    .end local p0    # "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    :cond_0
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listener:Lio/netty/util/concurrent/GenericFutureListener;

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Lio/netty/util/concurrent/DefaultFutureListeners;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private decWaiters()V
    .locals 1

    .line 662
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    .line 663
    return-void
.end method

.method private incWaiters()V
    .locals 3

    .line 655
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    const/16 v1, 0x7fff

    if-eq v0, v1, :cond_0

    .line 658
    iget-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    .line 659
    return-void

    .line 656
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "too many waiters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isCancelled0(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "result"    # Ljava/lang/Object;

    .line 846
    instance-of v0, p0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    iget-object v0, v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;->cause:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isDone0(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "result"    # Ljava/lang/Object;

    .line 850
    if-eqz p0, :cond_0

    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static notifyListener(Lio/netty/util/concurrent/EventExecutor;Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 3
    .param p0, "eventExecutor"    # Lio/netty/util/concurrent/EventExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Lio/netty/util/concurrent/Future<",
            "*>;",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "*>;)V"
        }
    .end annotation

    .line 478
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    .local p2, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    nop

    .line 479
    const-string v0, "eventExecutor"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/EventExecutor;

    .line 480
    const-string v1, "future"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/concurrent/Future;

    .line 481
    const-string v2, "listener"

    invoke-static {p2, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/util/concurrent/GenericFutureListener;

    .line 478
    invoke-static {v0, v1, v2}, Lio/netty/util/concurrent/DefaultPromise;->notifyListenerWithStackOverFlowProtection(Lio/netty/util/concurrent/EventExecutor;Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 482
    return-void
.end method

.method private static notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 4
    .param p0, "future"    # Lio/netty/util/concurrent/Future;
    .param p1, "l"    # Lio/netty/util/concurrent/GenericFutureListener;

    .line 590
    :try_start_0
    invoke-interface {p1, p0}, Lio/netty/util/concurrent/GenericFutureListener;->operationComplete(Lio/netty/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    goto :goto_0

    .line 591
    :catchall_0
    move-exception v0

    .line 592
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An exception was thrown by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".operationComplete()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 596
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method private static notifyListenerWithStackOverFlowProtection(Lio/netty/util/concurrent/EventExecutor;Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 3
    .param p0, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Lio/netty/util/concurrent/Future<",
            "*>;",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "*>;)V"
        }
    .end annotation

    .line 516
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    .local p2, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    invoke-interface {p0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    .line 518
    .local v0, "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    invoke-virtual {v0}, Lio/netty/util/internal/InternalThreadLocalMap;->futureListenerStackDepth()I

    move-result v1

    .line 519
    .local v1, "stackDepth":I
    sget v2, Lio/netty/util/concurrent/DefaultPromise;->MAX_LISTENER_STACK_DEPTH:I

    if-ge v1, v2, :cond_0

    .line 520
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    .line 522
    :try_start_0
    invoke-static {p1, p2}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    invoke-virtual {v0, v1}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    .line 525
    nop

    .line 526
    return-void

    .line 524
    :catchall_0
    move-exception v2

    invoke-virtual {v0, v1}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    .line 525
    throw v2

    .line 530
    .end local v0    # "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    .end local v1    # "stackDepth":I
    :cond_0
    new-instance v0, Lio/netty/util/concurrent/DefaultPromise$2;

    invoke-direct {v0, p1, p2}, Lio/netty/util/concurrent/DefaultPromise$2;-><init>(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    invoke-static {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    .line 536
    return-void
.end method

.method private notifyListeners()V
    .locals 4

    .line 485
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 486
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v1

    .line 488
    .local v1, "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    invoke-virtual {v1}, Lio/netty/util/internal/InternalThreadLocalMap;->futureListenerStackDepth()I

    move-result v2

    .line 489
    .local v2, "stackDepth":I
    sget v3, Lio/netty/util/concurrent/DefaultPromise;->MAX_LISTENER_STACK_DEPTH:I

    if-ge v2, v3, :cond_0

    .line 490
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    .line 492
    :try_start_0
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListenersNow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    invoke-virtual {v1, v2}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    .line 495
    nop

    .line 496
    return-void

    .line 494
    :catchall_0
    move-exception v3

    invoke-virtual {v1, v2}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    .line 495
    throw v3

    .line 500
    .end local v1    # "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    .end local v2    # "stackDepth":I
    :cond_0
    new-instance v1, Lio/netty/util/concurrent/DefaultPromise$1;

    invoke-direct {v1, p0}, Lio/netty/util/concurrent/DefaultPromise$1;-><init>(Lio/netty/util/concurrent/DefaultPromise;)V

    invoke-static {v0, v1}, Lio/netty/util/concurrent/DefaultPromise;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    .line 506
    return-void
.end method

.method private notifyListeners0(Lio/netty/util/concurrent/DefaultFutureListeners;)V
    .locals 4
    .param p1, "listeners"    # Lio/netty/util/concurrent/DefaultFutureListeners;

    .line 580
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p1}, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners()[Lio/netty/util/concurrent/GenericFutureListener;

    move-result-object v0

    .line 581
    .local v0, "a":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<*>;"
    invoke-virtual {p1}, Lio/netty/util/concurrent/DefaultFutureListeners;->size()I

    move-result v1

    .line 582
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 583
    aget-object v3, v0, v2

    invoke-static {p0, v3}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 582
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 585
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private notifyListenersNow()V
    .locals 4

    .line 541
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    monitor-enter p0

    .line 542
    :try_start_0
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listener:Lio/netty/util/concurrent/GenericFutureListener;

    .line 543
    .local v0, "listener":Lio/netty/util/concurrent/GenericFutureListener;
    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Lio/netty/util/concurrent/DefaultFutureListeners;

    .line 545
    .local v1, "listeners":Lio/netty/util/concurrent/DefaultFutureListeners;
    iget-boolean v2, p0, Lio/netty/util/concurrent/DefaultPromise;->notifyingListeners:Z

    if-nez v2, :cond_5

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    goto :goto_4

    .line 548
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/netty/util/concurrent/DefaultPromise;->notifyingListeners:Z

    .line 549
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 550
    iput-object v2, p0, Lio/netty/util/concurrent/DefaultPromise;->listener:Lio/netty/util/concurrent/GenericFutureListener;

    goto :goto_0

    .line 552
    :cond_1
    iput-object v2, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Lio/netty/util/concurrent/DefaultFutureListeners;

    .line 554
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 556
    :goto_1
    if-eqz v0, :cond_2

    .line 557
    invoke-static {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    goto :goto_2

    .line 559
    :cond_2
    invoke-direct {p0, v1}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners0(Lio/netty/util/concurrent/DefaultFutureListeners;)V

    .line 561
    :goto_2
    monitor-enter p0

    .line 562
    :try_start_1
    iget-object v3, p0, Lio/netty/util/concurrent/DefaultPromise;->listener:Lio/netty/util/concurrent/GenericFutureListener;

    if-nez v3, :cond_3

    iget-object v3, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Lio/netty/util/concurrent/DefaultFutureListeners;

    if-nez v3, :cond_3

    .line 565
    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/netty/util/concurrent/DefaultPromise;->notifyingListeners:Z

    .line 566
    monitor-exit p0

    return-void

    .line 568
    :cond_3
    iget-object v3, p0, Lio/netty/util/concurrent/DefaultPromise;->listener:Lio/netty/util/concurrent/GenericFutureListener;

    move-object v0, v3

    .line 569
    iget-object v3, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Lio/netty/util/concurrent/DefaultFutureListeners;

    move-object v1, v3

    .line 570
    if-eqz v0, :cond_4

    .line 571
    iput-object v2, p0, Lio/netty/util/concurrent/DefaultPromise;->listener:Lio/netty/util/concurrent/GenericFutureListener;

    goto :goto_3

    .line 573
    :cond_4
    iput-object v2, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Lio/netty/util/concurrent/DefaultFutureListeners;

    .line 575
    :goto_3
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 546
    :cond_5
    :goto_4
    :try_start_2
    monitor-exit p0

    return-void

    .line 554
    .end local v0    # "listener":Lio/netty/util/concurrent/GenericFutureListener;
    .end local v1    # "listeners":Lio/netty/util/concurrent/DefaultFutureListeners;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private static notifyProgressiveListener0(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V
    .locals 6
    .param p0, "future"    # Lio/netty/util/concurrent/ProgressiveFuture;
    .param p1, "l"    # Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    .param p2, "progress"    # J
    .param p4, "total"    # J

    .line 837
    move-object v0, p1

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lio/netty/util/concurrent/GenericProgressiveFutureListener;->operationProgressed(Lio/netty/util/concurrent/ProgressiveFuture;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    goto :goto_0

    .line 838
    :catchall_0
    move-exception v0

    .line 839
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 840
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An exception was thrown by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".operationProgressed()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 843
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method private static notifyProgressiveListeners0(Lio/netty/util/concurrent/ProgressiveFuture;[Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V
    .locals 9
    .param p2, "progress"    # J
    .param p4, "total"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/ProgressiveFuture<",
            "*>;[",
            "Lio/netty/util/concurrent/GenericProgressiveFutureListener<",
            "*>;JJ)V"
        }
    .end annotation

    .line 825
    .local p0, "future":Lio/netty/util/concurrent/ProgressiveFuture;, "Lio/netty/util/concurrent/ProgressiveFuture<*>;"
    .local p1, "listeners":[Lio/netty/util/concurrent/GenericProgressiveFutureListener;, "[Lio/netty/util/concurrent/GenericProgressiveFutureListener<*>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v8, p1, v1

    .line 826
    .local v8, "l":Lio/netty/util/concurrent/GenericProgressiveFutureListener;, "Lio/netty/util/concurrent/GenericProgressiveFutureListener<*>;"
    if-nez v8, :cond_0

    .line 827
    goto :goto_1

    .line 829
    :cond_0
    move-object v2, p0

    move-object v3, v8

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v2 .. v7}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListener0(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    .line 825
    .end local v8    # "l":Lio/netty/util/concurrent/GenericProgressiveFutureListener;, "Lio/netty/util/concurrent/GenericProgressiveFutureListener<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 831
    :cond_1
    :goto_1
    return-void
.end method

.method private declared-synchronized progressiveListeners()Ljava/lang/Object;
    .locals 11

    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    monitor-enter p0

    .line 782
    :try_start_0
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listener:Lio/netty/util/concurrent/GenericFutureListener;

    .line 783
    .local v0, "listener":Lio/netty/util/concurrent/GenericFutureListener;
    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Lio/netty/util/concurrent/DefaultFutureListeners;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    .local v1, "listeners":Lio/netty/util/concurrent/DefaultFutureListeners;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 786
    monitor-exit p0

    return-object v2

    .line 789
    :cond_0
    if-eqz v1, :cond_5

    .line 791
    move-object v3, v1

    .line 792
    .local v3, "dfl":Lio/netty/util/concurrent/DefaultFutureListeners;
    :try_start_1
    invoke-virtual {v3}, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize()I

    move-result v4

    .line 793
    .local v4, "progressiveSize":I
    packed-switch v4, :pswitch_data_0

    .line 805
    .end local p0    # "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {v3}, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners()[Lio/netty/util/concurrent/GenericFutureListener;

    move-result-object v2

    goto :goto_1

    .line 797
    .restart local p0    # "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    :pswitch_0
    invoke-virtual {v3}, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners()[Lio/netty/util/concurrent/GenericFutureListener;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 798
    .local v8, "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    instance-of v9, v8, Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_1

    .line 799
    monitor-exit p0

    return-object v8

    .line 797
    .end local v8    # "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 802
    .end local p0    # "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    :cond_2
    monitor-exit p0

    return-object v2

    .line 795
    :pswitch_1
    monitor-exit p0

    return-object v2

    .line 806
    .local v2, "array":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<*>;"
    :goto_1
    :try_start_2
    new-array v5, v4, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    .line 807
    .local v5, "copy":[Lio/netty/util/concurrent/GenericProgressiveFutureListener;, "[Lio/netty/util/concurrent/GenericProgressiveFutureListener<*>;"
    const/4 v6, 0x0

    .local v6, "i":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v7, v4, :cond_4

    .line 808
    aget-object v8, v2, v6

    .line 809
    .restart local v8    # "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    instance-of v9, v8, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-eqz v9, :cond_3

    .line 810
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "j":I
    .local v9, "j":I
    move-object v10, v8

    check-cast v10, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    aput-object v10, v5, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v7, v9

    .line 807
    .end local v8    # "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    .end local v9    # "j":I
    .restart local v7    # "j":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 814
    .end local v6    # "i":I
    .end local v7    # "j":I
    :cond_4
    monitor-exit p0

    return-object v5

    .line 815
    .end local v2    # "array":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<*>;"
    .end local v3    # "dfl":Lio/netty/util/concurrent/DefaultFutureListeners;
    .end local v4    # "progressiveSize":I
    .end local v5    # "copy":[Lio/netty/util/concurrent/GenericProgressiveFutureListener;, "[Lio/netty/util/concurrent/GenericProgressiveFutureListener<*>;"
    :cond_5
    :try_start_3
    instance-of v3, v0, Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_6

    .line 816
    monitor-exit p0

    return-object v0

    .line 819
    :cond_6
    monitor-exit p0

    return-object v2

    .line 781
    .end local v0    # "listener":Lio/netty/util/concurrent/GenericFutureListener;
    .end local v1    # "listeners":Lio/netty/util/concurrent/DefaultFutureListeners;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removeListener0(Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)V"
        }
    .end annotation

    .line 613
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "toRemove":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listener:Lio/netty/util/concurrent/GenericFutureListener;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 614
    iput-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->listener:Lio/netty/util/concurrent/GenericFutureListener;

    goto :goto_0

    .line 615
    :cond_0
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Lio/netty/util/concurrent/DefaultFutureListeners;

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Lio/netty/util/concurrent/DefaultFutureListeners;

    invoke-virtual {v0, p1}, Lio/netty/util/concurrent/DefaultFutureListeners;->remove(Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 618
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Lio/netty/util/concurrent/DefaultFutureListeners;

    invoke-virtual {v0}, Lio/netty/util/concurrent/DefaultFutureListeners;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 619
    iput-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Lio/netty/util/concurrent/DefaultFutureListeners;

    .line 622
    :cond_1
    :goto_0
    return-void
.end method

.method private rethrowIfFailed()V
    .locals 1

    .line 666
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 667
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 668
    return-void

    .line 671
    :cond_0
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 672
    return-void
.end method

.method private static safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 862
    :try_start_0
    invoke-interface {p0, p1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    goto :goto_0

    .line 863
    :catchall_0
    move-exception v0

    .line 864
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->rejectedExecutionLogger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to submit a listener notification task. Event loop shut down?"

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 866
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private setFailure0(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 629
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    new-instance v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    const-string v1, "cause"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->setValue0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setSuccess0(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 625
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->setValue0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setValue0(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "objResult"    # Ljava/lang/Object;

    .line 633
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->RESULT_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->RESULT_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    .line 634
    invoke-static {v0, p0, v1, p1}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 640
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 635
    :cond_1
    :goto_0
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->checkNotifyWaiters()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 636
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners()V

    .line 638
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 35
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 178
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    const-string v0, "listener"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->addListener0(Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 182
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners()V

    .line 188
    :cond_0
    return-object p0

    .line 182
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 35
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public varargs addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "listeners":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    const-string v0, "listeners"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 197
    .local v2, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    if-nez v2, :cond_0

    .line 198
    goto :goto_1

    .line 200
    :cond_0
    invoke-direct {p0, v2}, Lio/netty/util/concurrent/DefaultPromise;->addListener0(Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 196
    .end local v2    # "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners()V

    .line 208
    :cond_2
    return-object p0

    .line 202
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic await()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 35
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->await()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public await()Lio/netty/util/concurrent/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 240
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    return-object p0

    .line 244
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->checkDeadLock()V

    .line 250
    monitor-enter p0

    .line 251
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->incWaiters()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :try_start_2
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    .line 257
    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    .line 257
    throw v0

    .line 259
    :cond_1
    monitor-exit p0

    .line 260
    return-object p0

    .line 259
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 245
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public await(J)Z
    .locals 3
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 300
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lio/netty/util/concurrent/DefaultPromise;->await0(JZ)Z

    move-result v0

    return v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 295
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lio/netty/util/concurrent/DefaultPromise;->await0(JZ)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 35
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->awaitUninterruptibly()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lio/netty/util/concurrent/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 265
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    return-object p0

    .line 269
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->checkDeadLock()V

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "interrupted":Z
    monitor-enter p0

    .line 273
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->incWaiters()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 276
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    .line 282
    goto :goto_0

    .line 281
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    .line 282
    nop

    .end local v0    # "interrupted":Z
    throw v1

    .line 277
    .restart local v0    # "interrupted":Z
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    goto :goto_1

    .line 284
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 286
    if-eqz v0, :cond_2

    .line 287
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 290
    :cond_2
    return-object p0

    .line 284
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public awaitUninterruptibly(J)Z
    .locals 3
    .param p1, "timeoutMillis"    # J

    .line 316
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/netty/util/concurrent/DefaultPromise;->await0(JZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 317
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 306
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/netty/util/concurrent/DefaultPromise;->await0(JZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 307
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public cancel(Z)Z
    .locals 3
    .param p1, "mayInterruptIfRunning"    # Z

    .line 384
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->RESULT_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    sget-object v2, Lio/netty/util/concurrent/DefaultPromise;->CANCELLATION_CAUSE_HOLDER:Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    invoke-static {v0, p0, v1, v2}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->checkNotifyWaiters()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners()V

    .line 388
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 390
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public cause()Ljava/lang/Throwable;
    .locals 1

    .line 159
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->cause0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method protected checkDeadLock()V
    .locals 3

    .line 461
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 462
    .local v0, "e":Lio/netty/util/concurrent/EventExecutor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 463
    :cond_0
    new-instance v1, Lio/netty/util/concurrent/BlockingOperationException;

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/util/concurrent/BlockingOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_1
    :goto_0
    return-void
.end method

.method protected executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .line 457
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->executor:Lio/netty/util/concurrent/EventExecutor;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 336
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 337
    .local v0, "result":Ljava/lang/Object;
    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isDone0(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->await()Lio/netty/util/concurrent/Promise;

    .line 339
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 341
    :cond_0
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Ljava/lang/Object;

    if-eq v0, v1, :cond_4

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 344
    :cond_1
    invoke-direct {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->cause0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 345
    .local v1, "cause":Ljava/lang/Throwable;
    if-nez v1, :cond_2

    .line 346
    return-object v0

    .line 348
    :cond_2
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_3

    .line 349
    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    throw v2

    .line 351
    :cond_3
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 342
    .end local v1    # "cause":Ljava/lang/Throwable;
    :cond_4
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 357
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 358
    .local v0, "result":Ljava/lang/Object;
    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isDone0(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 359
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/util/concurrent/DefaultPromise;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    goto :goto_0

    .line 360
    :cond_0
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    .line 364
    :cond_1
    :goto_0
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Ljava/lang/Object;

    if-eq v0, v1, :cond_5

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 367
    :cond_2
    invoke-direct {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->cause0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 368
    .local v1, "cause":Ljava/lang/Throwable;
    if-nez v1, :cond_3

    .line 369
    return-object v0

    .line 371
    :cond_3
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_4

    .line 372
    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    throw v2

    .line 374
    :cond_4
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 365
    .end local v1    # "cause":Ljava/lang/Throwable;
    :cond_5
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNow()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 326
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 327
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    if-nez v1, :cond_1

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    return-object v0

    .line 328
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public isCancellable()Z
    .locals 1

    .line 138
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 395
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isCancelled0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 400
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isDone0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 132
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 133
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_0

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    instance-of v1, v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method notifyProgressiveListeners(JJ)V
    .locals 13
    .param p1, "progress"    # J
    .param p3, "total"    # J

    .line 738
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->progressiveListeners()Ljava/lang/Object;

    move-result-object v0

    .line 739
    .local v0, "listeners":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 740
    return-void

    .line 743
    :cond_0
    move-object v9, p0

    check-cast v9, Lio/netty/util/concurrent/ProgressiveFuture;

    .line 745
    .local v9, "self":Lio/netty/util/concurrent/ProgressiveFuture;, "Lio/netty/util/concurrent/ProgressiveFuture<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v10

    .line 746
    .local v10, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v10}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 747
    instance-of v1, v0, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-eqz v1, :cond_1

    .line 748
    move-object v1, v0

    check-cast v1, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    move-object v2, v1

    check-cast v2, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    move-object v1, v9

    move-wide v3, p1

    move-wide/from16 v5, p3

    invoke-static/range {v1 .. v6}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListeners0(Lio/netty/util/concurrent/ProgressiveFuture;[Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    goto :goto_0

    .line 751
    :cond_1
    move-object v2, v0

    check-cast v2, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    move-object v1, v9

    move-wide v3, p1

    move-wide/from16 v5, p3

    invoke-static/range {v1 .. v6}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListener0(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    goto :goto_0

    .line 755
    :cond_2
    instance-of v1, v0, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-eqz v1, :cond_3

    .line 756
    move-object v1, v0

    check-cast v1, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    move-object v11, v1

    check-cast v11, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    .line 758
    .local v11, "array":[Lio/netty/util/concurrent/GenericProgressiveFutureListener;, "[Lio/netty/util/concurrent/GenericProgressiveFutureListener<*>;"
    new-instance v12, Lio/netty/util/concurrent/DefaultPromise$3;

    move-object v1, v12

    move-object v2, p0

    move-object v3, v9

    move-object v4, v11

    move-wide v5, p1

    move-wide/from16 v7, p3

    invoke-direct/range {v1 .. v8}, Lio/netty/util/concurrent/DefaultPromise$3;-><init>(Lio/netty/util/concurrent/DefaultPromise;Lio/netty/util/concurrent/ProgressiveFuture;[Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    invoke-static {v10, v12}, Lio/netty/util/concurrent/DefaultPromise;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    .line 764
    .end local v11    # "array":[Lio/netty/util/concurrent/GenericProgressiveFutureListener;, "[Lio/netty/util/concurrent/GenericProgressiveFutureListener<*>;"
    goto :goto_0

    .line 765
    :cond_3
    move-object v11, v0

    check-cast v11, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    .line 767
    .local v11, "l":Lio/netty/util/concurrent/GenericProgressiveFutureListener;, "Lio/netty/util/concurrent/GenericProgressiveFutureListener<Lio/netty/util/concurrent/ProgressiveFuture<TV;>;>;"
    new-instance v12, Lio/netty/util/concurrent/DefaultPromise$4;

    move-object v1, v12

    move-object v2, p0

    move-object v3, v9

    move-object v4, v11

    move-wide v5, p1

    move-wide/from16 v7, p3

    invoke-direct/range {v1 .. v8}, Lio/netty/util/concurrent/DefaultPromise$4;-><init>(Lio/netty/util/concurrent/DefaultPromise;Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    invoke-static {v10, v12}, Lio/netty/util/concurrent/DefaultPromise;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    .line 775
    .end local v11    # "l":Lio/netty/util/concurrent/GenericProgressiveFutureListener;, "Lio/netty/util/concurrent/GenericProgressiveFutureListener<Lio/netty/util/concurrent/ProgressiveFuture<TV;>;>;"
    :goto_0
    return-void
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 35
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 213
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    const-string v0, "listener"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 215
    monitor-enter p0

    .line 216
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->removeListener0(Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 217
    monitor-exit p0

    .line 219
    return-object p0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 35
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public varargs removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 224
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "listeners":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    const-string v0, "listeners"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 228
    .local v2, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    if-nez v2, :cond_0

    .line 229
    goto :goto_1

    .line 231
    :cond_0
    invoke-direct {p0, v2}, Lio/netty/util/concurrent/DefaultPromise;->removeListener0(Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 227
    .end local v2    # "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_1
    :goto_1
    monitor-exit p0

    .line 235
    return-object p0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setFailure0(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    return-object p0

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "complete already: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setSuccess0(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    return-object p0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "complete already: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUncancellable()Z
    .locals 3

    .line 123
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->RESULT_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    sget-object v2, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    invoke-static {v0, p0, v1, v2}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 124
    return v1

    .line 126
    :cond_0
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 127
    .local v0, "result":Ljava/lang/Object;
    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isDone0(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isCancelled0(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 35
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->sync()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public sync()Lio/netty/util/concurrent/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 405
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->await()Lio/netty/util/concurrent/Promise;

    .line 406
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->rethrowIfFailed()V

    .line 407
    return-object p0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 35
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->syncUninterruptibly()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public syncUninterruptibly()Lio/netty/util/concurrent/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    .line 412
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->awaitUninterruptibly()Lio/netty/util/concurrent/Promise;

    .line 413
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->rethrowIfFailed()V

    .line 414
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 419
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .line 423
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 424
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 426
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 428
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 429
    .local v1, "result":Ljava/lang/Object;
    sget-object v2, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 430
    const-string v2, "(success)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 431
    :cond_0
    sget-object v2, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 432
    const-string v2, "(uncancellable)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 433
    :cond_1
    instance-of v2, v1, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    const/16 v3, 0x29

    if-eqz v2, :cond_2

    .line 434
    const-string v2, "(failure: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v4, v1

    check-cast v4, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    iget-object v4, v4, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;->cause:Ljava/lang/Throwable;

    .line 435
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 437
    :cond_2
    if-eqz v1, :cond_3

    .line 438
    const-string v2, "(success: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 439
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 440
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 442
    :cond_3
    const-string v2, "(incomplete)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :goto_0
    return-object v0
.end method

.method public tryFailure(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 118
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setFailure0(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public trySuccess(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 105
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setSuccess0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
