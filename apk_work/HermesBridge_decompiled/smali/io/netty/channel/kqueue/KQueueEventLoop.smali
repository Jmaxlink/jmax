.class final Lio/netty/channel/kqueue/KQueueEventLoop;
.super Lio/netty/channel/SingleThreadEventLoop;
.source "KQueueEventLoop.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final KQUEUE_MAX_TIMEOUT_SECONDS:I = 0x1517f

.field private static final KQUEUE_WAKE_UP_IDENT:I

.field private static final WAKEN_UP_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/netty/channel/kqueue/KQueueEventLoop;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final allowGrowing:Z

.field private final changeList:Lio/netty/channel/kqueue/KQueueEventArray;

.field private final channels:Lio/netty/util/collection/IntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/collection/IntObjectMap<",
            "Lio/netty/channel/kqueue/AbstractKQueueChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final eventList:Lio/netty/channel/kqueue/KQueueEventArray;

.field private volatile ioRatio:I

.field private final iovArray:Lio/netty/channel/unix/IovArray;

.field private final kqueueFd:Lio/netty/channel/unix/FileDescriptor;

.field private final selectNowSupplier:Lio/netty/util/IntSupplier;

.field private final selectStrategy:Lio/netty/channel/SelectStrategy;

.field private volatile wakenUp:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    nop

    .line 48
    const-class v0, Lio/netty/channel/kqueue/KQueueEventLoop;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/channel/kqueue/KQueueEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 49
    nop

    .line 50
    const-string v1, "wakenUp"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/channel/kqueue/KQueueEventLoop;->WAKEN_UP_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 60
    invoke-static {}, Lio/netty/channel/kqueue/KQueue;->ensureAvailability()V

    .line 61
    return-void
.end method

.method constructor <init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/Executor;ILio/netty/channel/SelectStrategy;Lio/netty/util/concurrent/RejectedExecutionHandler;Lio/netty/channel/EventLoopTaskQueueFactory;Lio/netty/channel/EventLoopTaskQueueFactory;)V
    .locals 7
    .param p1, "parent"    # Lio/netty/channel/EventLoopGroup;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "maxEvents"    # I
    .param p4, "strategy"    # Lio/netty/channel/SelectStrategy;
    .param p5, "rejectedExecutionHandler"    # Lio/netty/util/concurrent/RejectedExecutionHandler;
    .param p6, "taskQueueFactory"    # Lio/netty/channel/EventLoopTaskQueueFactory;
    .param p7, "tailTaskQueueFactory"    # Lio/netty/channel/EventLoopTaskQueueFactory;

    .line 83
    invoke-static {p6}, Lio/netty/channel/kqueue/KQueueEventLoop;->newTaskQueue(Lio/netty/channel/EventLoopTaskQueueFactory;)Ljava/util/Queue;

    move-result-object v4

    invoke-static {p7}, Lio/netty/channel/kqueue/KQueueEventLoop;->newTaskQueue(Lio/netty/channel/EventLoopTaskQueueFactory;)Ljava/util/Queue;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/channel/SingleThreadEventLoop;-><init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/Executor;ZLjava/util/Queue;Ljava/util/Queue;Lio/netty/util/concurrent/RejectedExecutionHandler;)V

    .line 68
    new-instance v0, Lio/netty/channel/unix/IovArray;

    invoke-direct {v0}, Lio/netty/channel/unix/IovArray;-><init>()V

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    .line 69
    new-instance v0, Lio/netty/channel/kqueue/KQueueEventLoop$1;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/KQueueEventLoop$1;-><init>(Lio/netty/channel/kqueue/KQueueEventLoop;)V

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->selectNowSupplier:Lio/netty/util/IntSupplier;

    .line 75
    new-instance v0, Lio/netty/util/collection/IntObjectHashMap;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lio/netty/util/collection/IntObjectHashMap;-><init>(I)V

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    .line 78
    const/16 v0, 0x32

    iput v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->ioRatio:I

    .line 85
    const-string v0, "strategy"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/SelectStrategy;

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->selectStrategy:Lio/netty/channel/SelectStrategy;

    .line 86
    invoke-static {}, Lio/netty/channel/kqueue/Native;->newKQueue()Lio/netty/channel/unix/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->kqueueFd:Lio/netty/channel/unix/FileDescriptor;

    .line 87
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->allowGrowing:Z

    .line 89
    const/16 p3, 0x1000

    goto :goto_0

    .line 91
    :cond_0
    iput-boolean v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->allowGrowing:Z

    .line 93
    :goto_0
    new-instance v1, Lio/netty/channel/kqueue/KQueueEventArray;

    invoke-direct {v1, p3}, Lio/netty/channel/kqueue/KQueueEventArray;-><init>(I)V

    iput-object v1, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->changeList:Lio/netty/channel/kqueue/KQueueEventArray;

    .line 94
    new-instance v1, Lio/netty/channel/kqueue/KQueueEventArray;

    invoke-direct {v1, p3}, Lio/netty/channel/kqueue/KQueueEventArray;-><init>(I)V

    iput-object v1, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->eventList:Lio/netty/channel/kqueue/KQueueEventArray;

    .line 95
    iget-object v1, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->kqueueFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v1

    invoke-static {v1, v0}, Lio/netty/channel/kqueue/Native;->keventAddUserEvent(II)I

    move-result v0

    .line 96
    .local v0, "result":I
    if-ltz v0, :cond_1

    .line 100
    return-void

    .line 97
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->cleanup()V

    .line 98
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kevent failed to add user event with errno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lio/netty/channel/kqueue/KQueueEventLoop;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/kqueue/KQueueEventLoop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->kqueueWaitNow()I

    move-result v0

    return v0
.end method

.method private closeAll()V
    .locals 6

    .line 390
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->kqueueWaitNow()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 397
    :goto_0
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v0}, Lio/netty/util/collection/IntObjectMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/channel/kqueue/AbstractKQueueChannel;

    .line 399
    .local v0, "localChannels":[Lio/netty/channel/kqueue/AbstractKQueueChannel;
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 400
    .local v3, "ch":Lio/netty/channel/kqueue/AbstractKQueueChannel;
    invoke-virtual {v3}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v4

    invoke-virtual {v3}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel$Unsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/netty/channel/Channel$Unsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 399
    .end local v3    # "ch":Lio/netty/channel/kqueue/AbstractKQueueChannel;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 402
    :cond_0
    return-void
.end method

.method private static handleLoopException(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 405
    sget-object v0, Lio/netty/channel/kqueue/KQueueEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Unexpected exception in the selector loop."

    invoke-interface {v0, v1, p0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 410
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 414
    :goto_0
    return-void
.end method

.method private kqueueWait(II)I
    .locals 3
    .param p1, "timeoutSec"    # I
    .param p2, "timeoutNs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->kqueueFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    iget-object v1, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->changeList:Lio/netty/channel/kqueue/KQueueEventArray;

    iget-object v2, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->eventList:Lio/netty/channel/kqueue/KQueueEventArray;

    invoke-static {v0, v1, v2, p1, p2}, Lio/netty/channel/kqueue/Native;->keventWait(ILio/netty/channel/kqueue/KQueueEventArray;Lio/netty/channel/kqueue/KQueueEventArray;II)I

    move-result v0

    .line 185
    .local v0, "numEvents":I
    iget-object v1, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->changeList:Lio/netty/channel/kqueue/KQueueEventArray;

    invoke-virtual {v1}, Lio/netty/channel/kqueue/KQueueEventArray;->clear()V

    .line 186
    return v0
.end method

.method private kqueueWait(Z)I
    .locals 8
    .param p1, "oldWakeup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->hasTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->kqueueWaitNow()I

    move-result v0

    return v0

    .line 173
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/channel/kqueue/KQueueEventLoop;->delayNanos(J)J

    move-result-wide v0

    .line 174
    .local v0, "totalDelay":J
    const-wide/32 v2, 0x3b9aca00

    div-long v4, v0, v2

    const-wide/32 v6, 0x1517f

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 175
    .local v4, "delaySeconds":I
    rem-long v2, v0, v2

    long-to-int v2, v2

    .line 176
    .local v2, "delayNanos":I
    invoke-direct {p0, v4, v2}, Lio/netty/channel/kqueue/KQueueEventLoop;->kqueueWait(II)I

    move-result v3

    return v3
.end method

.method private kqueueWaitNow()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lio/netty/channel/kqueue/KQueueEventLoop;->kqueueWait(II)I

    move-result v0

    return v0
.end method

.method private static newTaskQueue(Lio/netty/channel/EventLoopTaskQueueFactory;)Ljava/util/Queue;
    .locals 1
    .param p0, "queueFactory"    # Lio/netty/channel/EventLoopTaskQueueFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/EventLoopTaskQueueFactory;",
            ")",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 104
    if-nez p0, :cond_0

    .line 105
    sget v0, Lio/netty/channel/kqueue/KQueueEventLoop;->DEFAULT_MAX_PENDING_TASKS:I

    invoke-static {v0}, Lio/netty/channel/kqueue/KQueueEventLoop;->newTaskQueue0(I)Ljava/util/Queue;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    sget v0, Lio/netty/channel/kqueue/KQueueEventLoop;->DEFAULT_MAX_PENDING_TASKS:I

    invoke-interface {p0, v0}, Lio/netty/channel/EventLoopTaskQueueFactory;->newTaskQueue(I)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method private static newTaskQueue0(I)Ljava/util/Queue;
    .locals 1
    .param p0, "maxPendingTasks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 336
    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newMpscQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_0

    .line 337
    :cond_0
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->newMpscQueue(I)Ljava/util/Queue;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0
.end method

.method private processReady(I)V
    .locals 9
    .param p1, "ready"    # I

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_8

    .line 191
    iget-object v1, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->eventList:Lio/netty/channel/kqueue/KQueueEventArray;

    invoke-virtual {v1, v0}, Lio/netty/channel/kqueue/KQueueEventArray;->filter(I)S

    move-result v1

    .line 192
    .local v1, "filter":S
    iget-object v2, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->eventList:Lio/netty/channel/kqueue/KQueueEventArray;

    invoke-virtual {v2, v0}, Lio/netty/channel/kqueue/KQueueEventArray;->flags(I)S

    move-result v2

    .line 193
    .local v2, "flags":S
    iget-object v3, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->eventList:Lio/netty/channel/kqueue/KQueueEventArray;

    invoke-virtual {v3, v0}, Lio/netty/channel/kqueue/KQueueEventArray;->fd(I)I

    move-result v3

    .line 194
    .local v3, "fd":I
    sget-short v4, Lio/netty/channel/kqueue/Native;->EVFILT_USER:S

    if-eq v1, v4, :cond_5

    sget-short v4, Lio/netty/channel/kqueue/Native;->EV_ERROR:S

    and-int/2addr v4, v2

    if-eqz v4, :cond_0

    goto :goto_2

    .line 202
    :cond_0
    iget-object v4, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v4, v3}, Lio/netty/util/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/channel/kqueue/AbstractKQueueChannel;

    .line 203
    .local v4, "channel":Lio/netty/channel/kqueue/AbstractKQueueChannel;
    if-nez v4, :cond_1

    .line 207
    sget-object v5, Lio/netty/channel/kqueue/KQueueEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->eventList:Lio/netty/channel/kqueue/KQueueEventArray;

    invoke-virtual {v7, v0}, Lio/netty/channel/kqueue/KQueueEventArray;->fd(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    filled-new-array {v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "events[{}]=[{}, {}] had no channel!"

    invoke-interface {v5, v7, v6}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    goto :goto_3

    .line 211
    :cond_1
    invoke-virtual {v4}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v5

    check-cast v5, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;

    .line 214
    .local v5, "unsafe":Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
    sget-short v6, Lio/netty/channel/kqueue/Native;->EVFILT_WRITE:S

    if-ne v1, v6, :cond_2

    .line 215
    invoke-virtual {v5}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->writeReady()V

    goto :goto_1

    .line 216
    :cond_2
    sget-short v6, Lio/netty/channel/kqueue/Native;->EVFILT_READ:S

    if-ne v1, v6, :cond_3

    .line 218
    iget-object v6, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->eventList:Lio/netty/channel/kqueue/KQueueEventArray;

    invoke-virtual {v6, v0}, Lio/netty/channel/kqueue/KQueueEventArray;->data(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readReady(J)V

    goto :goto_1

    .line 219
    :cond_3
    sget-short v6, Lio/netty/channel/kqueue/Native;->EVFILT_SOCK:S

    if-ne v1, v6, :cond_4

    iget-object v6, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->eventList:Lio/netty/channel/kqueue/KQueueEventArray;

    invoke-virtual {v6, v0}, Lio/netty/channel/kqueue/KQueueEventArray;->fflags(I)S

    move-result v6

    sget v7, Lio/netty/channel/kqueue/Native;->NOTE_RDHUP:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    .line 220
    invoke-virtual {v5}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readEOF()V

    .line 226
    :cond_4
    :goto_1
    sget-short v6, Lio/netty/channel/kqueue/Native;->EV_EOF:S

    and-int/2addr v6, v2

    if-eqz v6, :cond_7

    .line 227
    invoke-virtual {v5}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readEOF()V

    goto :goto_3

    .line 197
    .end local v4    # "channel":Lio/netty/channel/kqueue/AbstractKQueueChannel;
    .end local v5    # "unsafe":Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
    :cond_5
    :goto_2
    sget-short v4, Lio/netty/channel/kqueue/Native;->EVFILT_USER:S

    if-ne v1, v4, :cond_7

    sget-short v4, Lio/netty/channel/kqueue/Native;->EVFILT_USER:S

    if-ne v1, v4, :cond_6

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 190
    .end local v1    # "filter":S
    .end local v2    # "flags":S
    .end local v3    # "fd":I
    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 230
    .end local v0    # "i":I
    :cond_8
    return-void
.end method

.method private wakeup()V
    .locals 2

    .line 159
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->kqueueFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/channel/kqueue/Native;->keventTriggerUserEvent(II)I

    .line 162
    return-void
.end method


# virtual methods
.method add(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V
    .locals 2
    .param p1, "ch"    # Lio/netty/channel/kqueue/AbstractKQueueChannel;

    .line 111
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    invoke-virtual {p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->fd()Lio/netty/channel/unix/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lio/netty/util/collection/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;

    .line 115
    .local v0, "old":Lio/netty/channel/kqueue/AbstractKQueueChannel;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 116
    :cond_1
    :goto_0
    return-void

    .line 111
    .end local v0    # "old":Lio/netty/channel/kqueue/AbstractKQueueChannel;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method cleanArray()Lio/netty/channel/unix/IovArray;
    .locals 1

    .line 147
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    invoke-virtual {v0}, Lio/netty/channel/unix/IovArray;->clear()V

    .line 148
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    return-object v0
.end method

.method protected cleanup()V
    .locals 3

    .line 377
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->kqueueFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v0}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    goto :goto_0

    .line 383
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v1, Lio/netty/channel/kqueue/KQueueEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to close the kqueue fd."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->changeList:Lio/netty/channel/kqueue/KQueueEventArray;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueEventArray;->free()V

    .line 384
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->eventList:Lio/netty/channel/kqueue/KQueueEventArray;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueEventArray;->free()V

    .line 385
    nop

    .line 386
    return-void

    .line 383
    :goto_1
    iget-object v1, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->changeList:Lio/netty/channel/kqueue/KQueueEventArray;

    invoke-virtual {v1}, Lio/netty/channel/kqueue/KQueueEventArray;->free()V

    .line 384
    iget-object v1, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->eventList:Lio/netty/channel/kqueue/KQueueEventArray;

    invoke-virtual {v1}, Lio/netty/channel/kqueue/KQueueEventArray;->free()V

    .line 385
    throw v0
.end method

.method evSet(Lio/netty/channel/kqueue/AbstractKQueueChannel;SSI)V
    .locals 1
    .param p1, "ch"    # Lio/netty/channel/kqueue/AbstractKQueueChannel;
    .param p2, "filter"    # S
    .param p3, "flags"    # S
    .param p4, "fflags"    # I

    .line 119
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->changeList:Lio/netty/channel/kqueue/KQueueEventArray;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/netty/channel/kqueue/KQueueEventArray;->evSet(Lio/netty/channel/kqueue/AbstractKQueueChannel;SSI)V

    .line 121
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getIoRatio()I
    .locals 1

    .line 344
    iget v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->ioRatio:I

    return v0
.end method

.method protected newTaskQueue(I)Ljava/util/Queue;
    .locals 1
    .param p1, "maxPendingTasks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 331
    invoke-static {p1}, Lio/netty/channel/kqueue/KQueueEventLoop;->newTaskQueue0(I)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public registeredChannels()I
    .locals 1

    .line 360
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v0}, Lio/netty/util/collection/IntObjectMap;->size()I

    move-result v0

    return v0
.end method

.method public registeredChannelsIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    .line 367
    .local v0, "ch":Lio/netty/util/collection/IntObjectMap;, "Lio/netty/util/collection/IntObjectMap<Lio/netty/channel/kqueue/AbstractKQueueChannel;>;"
    invoke-interface {v0}, Lio/netty/util/collection/IntObjectMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    invoke-static {}, Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator;->empty()Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 370
    :cond_0
    new-instance v1, Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator;

    invoke-interface {v0}, Lio/netty/util/collection/IntObjectMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator;-><init>(Ljava/lang/Iterable;)V

    return-object v1

    .line 365
    .end local v0    # "ch":Lio/netty/util/collection/IntObjectMap;, "Lio/netty/util/collection/IntObjectMap<Lio/netty/channel/kqueue/AbstractKQueueChannel;>;"
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method remove(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V
    .locals 3
    .param p1, "ch"    # Lio/netty/channel/kqueue/AbstractKQueueChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->fd()Lio/netty/channel/unix/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    .line 127
    .local v0, "fd":I
    iget-object v1, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v1, v0}, Lio/netty/util/collection/IntObjectMap;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/kqueue/AbstractKQueueChannel;

    .line 128
    .local v1, "old":Lio/netty/channel/kqueue/AbstractKQueueChannel;
    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_1

    .line 130
    iget-object v2, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v2, v0, v1}, Lio/netty/util/collection/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 134
    :cond_1
    invoke-virtual {p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    invoke-virtual {p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->unregisterFilters()V

    .line 141
    :cond_2
    :goto_0
    return-void

    .line 124
    .end local v0    # "fd":I
    .end local v1    # "old":Lio/netty/channel/kqueue/AbstractKQueueChannel;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected run()V
    .locals 11

    .line 236
    nop

    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->selectStrategy:Lio/netty/channel/SelectStrategy;

    iget-object v1, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->selectNowSupplier:Lio/netty/util/IntSupplier;

    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->hasTasks()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lio/netty/channel/SelectStrategy;->calculateStrategy(Lio/netty/util/IntSupplier;Z)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 237
    .local v0, "strategy":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 314
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->isShuttingDown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-direct {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->closeAll()V

    .line 316
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->confirmShutdown()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 317
    goto/16 :goto_8

    .line 322
    :catchall_0
    move-exception v1

    .line 323
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/netty/channel/kqueue/KQueueEventLoop;->handleLoopException(Ljava/lang/Throwable;)V

    .line 324
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Ljava/lang/Error;
    throw v1

    .line 245
    .end local v1    # "e":Ljava/lang/Error;
    :pswitch_1
    :try_start_2
    sget-object v2, Lio/netty/channel/kqueue/KQueueEventLoop;->WAKEN_UP_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-direct {p0, v2}, Lio/netty/channel/kqueue/KQueueEventLoop;->kqueueWait(Z)I

    move-result v2

    move v0, v2

    .line 275
    iget v2, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->wakenUp:I

    if-ne v2, v3, :cond_2

    .line 276
    invoke-direct {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->wakeup()V

    .line 282
    :cond_2
    :goto_2
    iget v2, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->ioRatio:I
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 283
    .local v2, "ioRatio":I
    const/16 v3, 0x64

    if-ne v2, v3, :cond_4

    .line 285
    if-lez v0, :cond_3

    .line 286
    :try_start_3
    invoke-direct {p0, v0}, Lio/netty/channel/kqueue/KQueueEventLoop;->processReady(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 289
    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->runAllTasks()Z

    .line 290
    throw v1

    .line 289
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->runAllTasks()Z

    .line 290
    goto :goto_5

    .line 292
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 295
    .local v3, "ioStartTime":J
    if-lez v0, :cond_5

    .line 296
    :try_start_5
    invoke-direct {p0, v0}, Lio/netty/channel/kqueue/KQueueEventLoop;->processReady(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    .line 299
    :catchall_2
    move-exception v1

    :try_start_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 300
    .local v5, "ioTime":J
    rsub-int/lit8 v7, v2, 0x64

    int-to-long v7, v7

    mul-long/2addr v7, v5

    int-to-long v9, v2

    div-long/2addr v7, v9

    invoke-virtual {p0, v7, v8}, Lio/netty/channel/kqueue/KQueueEventLoop;->runAllTasks(J)Z

    .line 301
    nop

    .end local v5    # "ioTime":J
    throw v1

    .line 299
    :cond_5
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 300
    .restart local v5    # "ioTime":J
    rsub-int/lit8 v7, v2, 0x64

    int-to-long v7, v7

    mul-long/2addr v7, v5

    int-to-long v9, v2

    div-long/2addr v7, v9

    invoke-virtual {p0, v7, v8}, Lio/netty/channel/kqueue/KQueueEventLoop;->runAllTasks(J)Z

    .line 301
    nop

    .line 303
    .end local v3    # "ioStartTime":J
    .end local v5    # "ioTime":J
    :goto_5
    iget-boolean v3, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->allowGrowing:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->eventList:Lio/netty/channel/kqueue/KQueueEventArray;

    invoke-virtual {v3}, Lio/netty/channel/kqueue/KQueueEventArray;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_6

    .line 305
    iget-object v3, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->eventList:Lio/netty/channel/kqueue/KQueueEventArray;

    invoke-virtual {v3, v1}, Lio/netty/channel/kqueue/KQueueEventArray;->realloc(Z)V
    :try_end_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 314
    .end local v0    # "strategy":I
    .end local v2    # "ioRatio":I
    :cond_6
    :try_start_7
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 315
    invoke-direct {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->closeAll()V

    .line 316
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->confirmShutdown()Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v0, :cond_7

    .line 317
    goto :goto_6

    .line 320
    :catch_1
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Error;
    throw v0

    .line 309
    .end local v0    # "e":Ljava/lang/Error;
    :catchall_3
    move-exception v0

    .line 310
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_8
    invoke-static {v0}, Lio/netty/channel/kqueue/KQueueEventLoop;->handleLoopException(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 314
    .end local v0    # "t":Ljava/lang/Throwable;
    :try_start_9
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 315
    invoke-direct {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->closeAll()V

    .line 316
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->confirmShutdown()Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v0, :cond_7

    .line 317
    :goto_6
    goto :goto_8

    .line 324
    :cond_7
    goto :goto_7

    .line 322
    :catchall_4
    move-exception v0

    .line 323
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/netty/channel/kqueue/KQueueEventLoop;->handleLoopException(Ljava/lang/Throwable;)V

    .line 325
    .end local v0    # "t":Ljava/lang/Throwable;
    nop

    :goto_7
    goto/16 :goto_0

    .line 320
    :catch_2
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Error;
    throw v0

    .line 307
    .end local v0    # "e":Ljava/lang/Error;
    :catch_3
    move-exception v0

    .line 308
    .restart local v0    # "e":Ljava/lang/Error;
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 313
    .end local v0    # "e":Ljava/lang/Error;
    :catchall_5
    move-exception v0

    .line 314
    :try_start_b
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->isShuttingDown()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 315
    invoke-direct {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->closeAll()V

    .line 316
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->confirmShutdown()Z

    move-result v1
    :try_end_b
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v1, :cond_8

    .line 317
    goto :goto_6

    .line 327
    :goto_8
    return-void

    .line 324
    :cond_8
    goto :goto_9

    .line 322
    :catchall_6
    move-exception v1

    .line 323
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/netty/channel/kqueue/KQueueEventLoop;->handleLoopException(Ljava/lang/Throwable;)V

    .line 325
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_9
    throw v0

    .line 320
    :catch_4
    move-exception v0

    .line 321
    .restart local v0    # "e":Ljava/lang/Error;
    throw v0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setIoRatio(I)V
    .locals 3
    .param p1, "ioRatio"    # I

    .line 352
    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 355
    iput p1, p0, Lio/netty/channel/kqueue/KQueueEventLoop;->ioRatio:I

    .line 356
    return-void

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0 < ioRatio <= 100)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected wakeup(Z)V
    .locals 3
    .param p1, "inEventLoop"    # Z

    .line 153
    if-nez p1, :cond_0

    sget-object v0, Lio/netty/channel/kqueue/KQueueEventLoop;->WAKEN_UP_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->wakeup()V

    .line 156
    :cond_0
    return-void
.end method
