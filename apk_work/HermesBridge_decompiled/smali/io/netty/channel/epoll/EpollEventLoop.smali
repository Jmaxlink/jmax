.class public Lio/netty/channel/epoll/EpollEventLoop;
.super Lio/netty/channel/SingleThreadEventLoop;
.source "EpollEventLoop.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final AWAKE:J = -0x1L

.field private static final EPOLL_WAIT_MILLIS_THRESHOLD:J

.field private static final MAX_SCHEDULED_TIMERFD_NS:J = 0x3b9ac9ffL

.field private static final NONE:J = 0x7fffffffffffffffL

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final allowGrowing:Z

.field private final channels:Lio/netty/util/collection/IntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/collection/IntObjectMap<",
            "Lio/netty/channel/epoll/AbstractEpollChannel;",
            ">;"
        }
    .end annotation
.end field

.field private datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

.field private epollFd:Lio/netty/channel/unix/FileDescriptor;

.field private eventFd:Lio/netty/channel/unix/FileDescriptor;

.field private final events:Lio/netty/channel/epoll/EpollEventArray;

.field private volatile ioRatio:I

.field private iovArray:Lio/netty/channel/unix/IovArray;

.field private final nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

.field private pendingWakeup:Z

.field private final selectNowSupplier:Lio/netty/util/IntSupplier;

.field private final selectStrategy:Lio/netty/channel/SelectStrategy;

.field private timerFd:Lio/netty/channel/unix/FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    nop

    .line 50
    const-class v0, Lio/netty/channel/epoll/EpollEventLoop;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 51
    nop

    .line 52
    const-string v0, "io.netty.channel.epoll.epollWaitThreshold"

    const-wide/16 v1, 0xa

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lio/netty/channel/epoll/EpollEventLoop;->EPOLL_WAIT_MILLIS_THRESHOLD:J

    .line 57
    invoke-static {}, Lio/netty/channel/epoll/Epoll;->ensureAvailability()V

    .line 58
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

    .line 96
    invoke-static {p6}, Lio/netty/channel/epoll/EpollEventLoop;->newTaskQueue(Lio/netty/channel/EventLoopTaskQueueFactory;)Ljava/util/Queue;

    move-result-object v4

    invoke-static {p7}, Lio/netty/channel/epoll/EpollEventLoop;->newTaskQueue(Lio/netty/channel/EventLoopTaskQueueFactory;)Ljava/util/Queue;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/channel/SingleThreadEventLoop;-><init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/Executor;ZLjava/util/Queue;Ljava/util/Queue;Lio/netty/util/concurrent/RejectedExecutionHandler;)V

    .line 63
    new-instance v0, Lio/netty/util/collection/IntObjectHashMap;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lio/netty/util/collection/IntObjectHashMap;-><init>(I)V

    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    .line 72
    new-instance v0, Lio/netty/channel/epoll/EpollEventLoop$1;

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/EpollEventLoop$1;-><init>(Lio/netty/channel/epoll/EpollEventLoop;)V

    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->selectNowSupplier:Lio/netty/util/IntSupplier;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    .line 88
    const/16 v0, 0x32

    iput v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->ioRatio:I

    .line 98
    const-string v0, "strategy"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/SelectStrategy;

    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->selectStrategy:Lio/netty/channel/SelectStrategy;

    .line 99
    if-nez p3, :cond_0

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->allowGrowing:Z

    .line 101
    new-instance v0, Lio/netty/channel/epoll/EpollEventArray;

    invoke-direct {v0, v1}, Lio/netty/channel/epoll/EpollEventArray;-><init>(I)V

    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    goto :goto_0

    .line 103
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->allowGrowing:Z

    .line 104
    new-instance v0, Lio/netty/channel/epoll/EpollEventArray;

    invoke-direct {v0, p3}, Lio/netty/channel/epoll/EpollEventArray;-><init>(I)V

    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    .line 106
    :goto_0
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->openFileDescriptors()V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/epoll/EpollEventLoop;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/epoll/EpollEventLoop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollEventLoop;->epollWaitNow()I

    move-result v0

    return v0
.end method

.method private closeAll()V
    .locals 6

    .line 462
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v0}, Lio/netty/util/collection/IntObjectMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/channel/epoll/AbstractEpollChannel;

    .line 464
    .local v0, "localChannels":[Lio/netty/channel/epoll/AbstractEpollChannel;
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 465
    .local v3, "ch":Lio/netty/channel/epoll/AbstractEpollChannel;
    invoke-virtual {v3}, Lio/netty/channel/epoll/AbstractEpollChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v4

    invoke-virtual {v3}, Lio/netty/channel/epoll/AbstractEpollChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel$Unsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/netty/channel/Channel$Unsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 464
    .end local v3    # "ch":Lio/netty/channel/epoll/AbstractEpollChannel;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    :cond_0
    return-void
.end method

.method private epollBusyWait()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    invoke-static {v0, v1}, Lio/netty/channel/epoll/Native;->epollBusyWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;)I

    move-result v0

    return v0
.end method

.method private epollWait(J)J
    .locals 13
    .param p1, "deadlineNanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 306
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    iget-object v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    iget-object v3, p0, Lio/netty/channel/epoll/EpollEventLoop;->timerFd:Lio/netty/channel/unix/FileDescriptor;

    const/4 v5, 0x0

    sget-wide v6, Lio/netty/channel/epoll/EpollEventLoop;->EPOLL_WAIT_MILLIS_THRESHOLD:J

    const v4, 0x7fffffff

    invoke-static/range {v1 .. v7}, Lio/netty/channel/epoll/Native;->epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;Lio/netty/channel/unix/FileDescriptor;IIJ)J

    move-result-wide v0

    return-wide v0

    .line 309
    :cond_0
    invoke-static {p1, p2}, Lio/netty/channel/epoll/EpollEventLoop;->deadlineToDelayNanos(J)J

    move-result-wide v0

    .line 310
    .local v0, "totalDelay":J
    const-wide/32 v2, 0x3b9aca00

    div-long v4, v0, v2

    const-wide/32 v6, 0x7fffffff

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 311
    .local v4, "delaySeconds":I
    int-to-long v5, v4

    mul-long/2addr v5, v2

    sub-long v2, v0, v5

    const-wide/32 v5, 0x3b9ac9ff

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 312
    .local v2, "delayNanos":I
    iget-object v6, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    iget-object v7, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    iget-object v8, p0, Lio/netty/channel/epoll/EpollEventLoop;->timerFd:Lio/netty/channel/unix/FileDescriptor;

    sget-wide v11, Lio/netty/channel/epoll/EpollEventLoop;->EPOLL_WAIT_MILLIS_THRESHOLD:J

    move v9, v4

    move v10, v2

    invoke-static/range {v6 .. v12}, Lio/netty/channel/epoll/Native;->epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;Lio/netty/channel/unix/FileDescriptor;IIJ)J

    move-result-wide v5

    return-wide v5
.end method

.method private epollWaitNoTimerChange()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/netty/channel/epoll/Native;->epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;Z)I

    move-result v0

    return v0
.end method

.method private epollWaitNow()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lio/netty/channel/epoll/Native;->epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;Z)I

    move-result v0

    return v0
.end method

.method private epollWaitTimeboxed()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lio/netty/channel/epoll/Native;->epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;I)I

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

    .line 167
    if-nez p0, :cond_0

    .line 168
    sget v0, Lio/netty/channel/epoll/EpollEventLoop;->DEFAULT_MAX_PENDING_TASKS:I

    invoke-static {v0}, Lio/netty/channel/epoll/EpollEventLoop;->newTaskQueue0(I)Ljava/util/Queue;

    move-result-object v0

    return-object v0

    .line 170
    :cond_0
    sget v0, Lio/netty/channel/epoll/EpollEventLoop;->DEFAULT_MAX_PENDING_TASKS:I

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

    .line 267
    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newMpscQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_0

    .line 268
    :cond_0
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->newMpscQueue(I)Ljava/util/Queue;

    move-result-object v0

    .line 267
    :goto_0
    return-object v0
.end method

.method private processReady(Lio/netty/channel/epoll/EpollEventArray;I)Z
    .locals 11
    .param p1, "events"    # Lio/netty/channel/epoll/EpollEventArray;
    .param p2, "ready"    # I

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "timerFired":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_6

    .line 473
    invoke-virtual {p1, v1}, Lio/netty/channel/epoll/EpollEventArray;->fd(I)I

    move-result v2

    .line 474
    .local v2, "fd":I
    iget-object v3, p0, Lio/netty/channel/epoll/EpollEventLoop;->eventFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v3}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 475
    const/4 v3, 0x0

    iput-boolean v3, p0, Lio/netty/channel/epoll/EpollEventLoop;->pendingWakeup:Z

    goto :goto_1

    .line 476
    :cond_0
    iget-object v3, p0, Lio/netty/channel/epoll/EpollEventLoop;->timerFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v3}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 477
    const/4 v0, 0x1

    goto :goto_1

    .line 479
    :cond_1
    invoke-virtual {p1, v1}, Lio/netty/channel/epoll/EpollEventArray;->events(I)I

    move-result v3

    int-to-long v3, v3

    .line 481
    .local v3, "ev":J
    iget-object v5, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v5, v2}, Lio/netty/util/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/netty/channel/epoll/AbstractEpollChannel;

    .line 482
    .local v5, "ch":Lio/netty/channel/epoll/AbstractEpollChannel;
    if-eqz v5, :cond_5

    .line 487
    invoke-virtual {v5}, Lio/netty/channel/epoll/AbstractEpollChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v6

    check-cast v6, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;

    .line 497
    .local v6, "unsafe":Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
    sget v7, Lio/netty/channel/epoll/Native;->EPOLLERR:I

    sget v8, Lio/netty/channel/epoll/Native;->EPOLLOUT:I

    or-int/2addr v7, v8

    int-to-long v7, v7

    and-long/2addr v7, v3

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    .line 499
    invoke-virtual {v6}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollOutReady()V

    .line 507
    :cond_2
    sget v7, Lio/netty/channel/epoll/Native;->EPOLLERR:I

    sget v8, Lio/netty/channel/epoll/Native;->EPOLLIN:I

    or-int/2addr v7, v8

    int-to-long v7, v7

    and-long/2addr v7, v3

    cmp-long v7, v7, v9

    if-eqz v7, :cond_3

    .line 509
    invoke-virtual {v6}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollInReady()V

    .line 515
    :cond_3
    sget v7, Lio/netty/channel/epoll/Native;->EPOLLRDHUP:I

    int-to-long v7, v7

    and-long/2addr v7, v3

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    .line 516
    invoke-virtual {v6}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollRdHupReady()V

    .line 518
    .end local v6    # "unsafe":Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
    :cond_4
    goto :goto_1

    .line 521
    :cond_5
    :try_start_0
    iget-object v6, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v6}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v6

    invoke-static {v6, v2}, Lio/netty/channel/epoll/Native;->epollCtlDel(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    goto :goto_1

    .line 522
    :catch_0
    move-exception v6

    .line 472
    .end local v2    # "fd":I
    .end local v3    # "ev":J
    .end local v5    # "ch":Lio/netty/channel/epoll/AbstractEpollChannel;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 531
    .end local v1    # "i":I
    :cond_6
    return v0
.end method


# virtual methods
.method add(Lio/netty/channel/epoll/AbstractEpollChannel;)V
    .locals 3
    .param p1, "ch"    # Lio/netty/channel/epoll/AbstractEpollChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p1, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    .line 223
    .local v0, "fd":I
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v1

    iget v2, p1, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    invoke-static {v1, v0, v2}, Lio/netty/channel/epoll/Native;->epollCtlAdd(III)V

    .line 224
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v1, v0, p1}, Lio/netty/util/collection/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/epoll/AbstractEpollChannel;

    .line 228
    .local v1, "old":Lio/netty/channel/epoll/AbstractEpollChannel;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lio/netty/channel/epoll/AbstractEpollChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 229
    :cond_1
    :goto_0
    return-void

    .line 221
    .end local v0    # "fd":I
    .end local v1    # "old":Lio/netty/channel/epoll/AbstractEpollChannel;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected afterScheduledTaskSubmitted(J)Z
    .locals 2
    .param p1, "deadlineNanos"    # J

    .line 214
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected beforeScheduledTaskSubmitted(J)Z
    .locals 2
    .param p1, "deadlineNanos"    # J

    .line 208
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method cleanDatagramPacketArray()Lio/netty/channel/epoll/NativeDatagramPacketArray;
    .locals 1

    .line 189
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lio/netty/channel/epoll/NativeDatagramPacketArray;

    invoke-direct {v0}, Lio/netty/channel/epoll/NativeDatagramPacketArray;-><init>()V

    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    invoke-virtual {v0}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->clear()V

    .line 194
    :goto_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    return-object v0
.end method

.method cleanIovArray()Lio/netty/channel/unix/IovArray;
    .locals 1

    .line 177
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lio/netty/channel/unix/IovArray;

    invoke-direct {v0}, Lio/netty/channel/unix/IovArray;-><init>()V

    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    invoke-virtual {v0}, Lio/netty/channel/unix/IovArray;->clear()V

    .line 182
    :goto_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    return-object v0
.end method

.method protected cleanup()V
    .locals 3

    .line 537
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->closeFileDescriptors()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    invoke-virtual {v1}, Lio/netty/channel/unix/IovArray;->release()V

    .line 542
    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    .line 544
    :cond_0
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    if-eqz v1, :cond_1

    .line 545
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    invoke-virtual {v1}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->release()V

    .line 546
    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    .line 548
    :cond_1
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollEventArray;->free()V

    .line 549
    nop

    .line 550
    return-void

    .line 540
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    if-eqz v2, :cond_2

    .line 541
    iget-object v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    invoke-virtual {v2}, Lio/netty/channel/unix/IovArray;->release()V

    .line 542
    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    .line 544
    :cond_2
    iget-object v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    if-eqz v2, :cond_3

    .line 545
    iget-object v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    invoke-virtual {v2}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->release()V

    .line 546
    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    .line 548
    :cond_3
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollEventArray;->free()V

    .line 549
    throw v1
.end method

.method public closeFileDescriptors()V
    .locals 4

    .line 561
    nop

    :goto_0
    iget-boolean v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->pendingWakeup:Z

    if-eqz v0, :cond_3

    .line 563
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollEventLoop;->epollWaitTimeboxed()I

    move-result v0

    .line 564
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 566
    goto :goto_3

    .line 568
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 569
    iget-object v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    invoke-virtual {v2, v1}, Lio/netty/channel/epoll/EpollEventArray;->fd(I)I

    move-result v2

    iget-object v3, p0, Lio/netty/channel/epoll/EpollEventLoop;->eventFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v3}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 570
    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->pendingWakeup:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    goto :goto_2

    .line 568
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 574
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 576
    :cond_2
    :goto_2
    goto :goto_0

    .line 579
    :cond_3
    :goto_3
    :try_start_1
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->eventFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v0}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 582
    goto :goto_4

    .line 580
    :catch_1
    move-exception v0

    .line 581
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lio/netty/channel/epoll/EpollEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to close the event fd."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 584
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_2
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->timerFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v0}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 587
    goto :goto_5

    .line 585
    :catch_2
    move-exception v0

    .line 586
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v1, Lio/netty/channel/epoll/EpollEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to close the timer fd."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 590
    .end local v0    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_3
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v0}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 593
    goto :goto_6

    .line 591
    :catch_3
    move-exception v0

    .line 592
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v1, Lio/netty/channel/epoll/EpollEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to close the epoll fd."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 594
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6
    return-void
.end method

.method public getIoRatio()I
    .locals 1

    .line 275
    iget v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->ioRatio:I

    return v0
.end method

.method handleLoopException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 448
    sget-object v0, Lio/netty/channel/epoll/EpollEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Unexpected exception in the selector loop."

    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 453
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 457
    :goto_0
    return-void
.end method

.method modify(Lio/netty/channel/epoll/AbstractEpollChannel;)V
    .locals 3
    .param p1, "ch"    # Lio/netty/channel/epoll/AbstractEpollChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    iget-object v1, p1, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v1}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v1

    iget v2, p1, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    invoke-static {v0, v1, v2}, Lio/netty/channel/epoll/Native;->epollCtlMod(III)V

    .line 237
    return-void

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
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

    .line 262
    invoke-static {p1}, Lio/netty/channel/epoll/EpollEventLoop;->newTaskQueue0(I)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public openFileDescriptors()V
    .locals 8

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "success":Z
    const/4 v1, 0x0

    .line 117
    .local v1, "epollFd":Lio/netty/channel/unix/FileDescriptor;
    const/4 v2, 0x0

    .line 118
    .local v2, "eventFd":Lio/netty/channel/unix/FileDescriptor;
    const/4 v3, 0x0

    .line 120
    .local v3, "timerFd":Lio/netty/channel/unix/FileDescriptor;
    :try_start_0
    invoke-static {}, Lio/netty/channel/epoll/Native;->newEpollCreate()Lio/netty/channel/unix/FileDescriptor;

    move-result-object v4

    move-object v1, v4

    iput-object v4, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    .line 121
    invoke-static {}, Lio/netty/channel/epoll/Native;->newEventFd()Lio/netty/channel/unix/FileDescriptor;

    move-result-object v4

    move-object v2, v4

    iput-object v4, p0, Lio/netty/channel/epoll/EpollEventLoop;->eventFd:Lio/netty/channel/unix/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :try_start_1
    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v4

    invoke-virtual {v2}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v5

    sget v6, Lio/netty/channel/epoll/Native;->EPOLLIN:I

    sget v7, Lio/netty/channel/epoll/Native;->EPOLLET:I

    or-int/2addr v6, v7

    invoke-static {v4, v5, v6}, Lio/netty/channel/epoll/Native;->epollCtlAdd(III)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    nop

    .line 129
    :try_start_2
    invoke-static {}, Lio/netty/channel/epoll/Native;->newTimerFd()Lio/netty/channel/unix/FileDescriptor;

    move-result-object v4

    move-object v3, v4

    iput-object v4, p0, Lio/netty/channel/epoll/EpollEventLoop;->timerFd:Lio/netty/channel/unix/FileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :try_start_3
    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v5

    sget v6, Lio/netty/channel/epoll/Native;->EPOLLIN:I

    sget v7, Lio/netty/channel/epoll/Native;->EPOLLET:I

    or-int/2addr v6, v7

    invoke-static {v4, v5, v6}, Lio/netty/channel/epoll/Native;->epollCtlAdd(III)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    nop

    .line 137
    const/4 v0, 0x1

    .line 139
    if-nez v0, :cond_2

    .line 140
    if-eqz v1, :cond_0

    .line 142
    :try_start_4
    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 145
    goto :goto_0

    .line 143
    :catch_0
    move-exception v4

    .line 147
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 149
    :try_start_5
    invoke-virtual {v2}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 152
    goto :goto_1

    .line 150
    :catch_1
    move-exception v4

    .line 154
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 156
    :try_start_6
    invoke-virtual {v3}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 159
    :goto_2
    goto :goto_3

    .line 157
    :catch_2
    move-exception v4

    goto :goto_2

    .line 163
    :cond_2
    :goto_3
    return-void

    .line 134
    :catch_3
    move-exception v4

    .line 135
    .local v4, "e":Ljava/io/IOException;
    :try_start_7
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unable to add timerFd filedescriptor to epoll"

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "success":Z
    .end local v1    # "epollFd":Lio/netty/channel/unix/FileDescriptor;
    .end local v2    # "eventFd":Lio/netty/channel/unix/FileDescriptor;
    .end local v3    # "timerFd":Lio/netty/channel/unix/FileDescriptor;
    throw v5

    .line 126
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "success":Z
    .restart local v1    # "epollFd":Lio/netty/channel/unix/FileDescriptor;
    .restart local v2    # "eventFd":Lio/netty/channel/unix/FileDescriptor;
    .restart local v3    # "timerFd":Lio/netty/channel/unix/FileDescriptor;
    :catch_4
    move-exception v4

    .line 127
    .restart local v4    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unable to add eventFd filedescriptor to epoll"

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "success":Z
    .end local v1    # "epollFd":Lio/netty/channel/unix/FileDescriptor;
    .end local v2    # "eventFd":Lio/netty/channel/unix/FileDescriptor;
    .end local v3    # "timerFd":Lio/netty/channel/unix/FileDescriptor;
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 139
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "success":Z
    .restart local v1    # "epollFd":Lio/netty/channel/unix/FileDescriptor;
    .restart local v2    # "eventFd":Lio/netty/channel/unix/FileDescriptor;
    .restart local v3    # "timerFd":Lio/netty/channel/unix/FileDescriptor;
    :catchall_0
    move-exception v4

    if-nez v0, :cond_5

    .line 140
    if-eqz v1, :cond_3

    .line 142
    :try_start_8
    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 145
    goto :goto_4

    .line 143
    :catch_5
    move-exception v5

    .line 147
    :cond_3
    :goto_4
    if-eqz v2, :cond_4

    .line 149
    :try_start_9
    invoke-virtual {v2}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 152
    goto :goto_5

    .line 150
    :catch_6
    move-exception v5

    .line 154
    :cond_4
    :goto_5
    if-eqz v3, :cond_5

    .line 156
    :try_start_a
    invoke-virtual {v3}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 159
    goto :goto_6

    .line 157
    :catch_7
    move-exception v5

    .line 162
    :cond_5
    :goto_6
    throw v4
.end method

.method public registeredChannels()I
    .locals 1

    .line 291
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

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

    .line 296
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    .line 298
    .local v0, "ch":Lio/netty/util/collection/IntObjectMap;, "Lio/netty/util/collection/IntObjectMap<Lio/netty/channel/epoll/AbstractEpollChannel;>;"
    invoke-interface {v0}, Lio/netty/util/collection/IntObjectMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    invoke-static {}, Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator;->empty()Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 301
    :cond_0
    new-instance v1, Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator;

    invoke-interface {v0}, Lio/netty/util/collection/IntObjectMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/channel/SingleThreadEventLoop$ChannelsReadOnlyIterator;-><init>(Ljava/lang/Iterable;)V

    return-object v1

    .line 296
    .end local v0    # "ch":Lio/netty/util/collection/IntObjectMap;, "Lio/netty/util/collection/IntObjectMap<Lio/netty/channel/epoll/AbstractEpollChannel;>;"
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method remove(Lio/netty/channel/epoll/AbstractEpollChannel;)V
    .locals 3
    .param p1, "ch"    # Lio/netty/channel/epoll/AbstractEpollChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p1, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    .line 246
    .local v0, "fd":I
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v1, v0}, Lio/netty/util/collection/IntObjectMap;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/epoll/AbstractEpollChannel;

    .line 247
    .local v1, "old":Lio/netty/channel/epoll/AbstractEpollChannel;
    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_1

    .line 249
    iget-object v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v2, v0, v1}, Lio/netty/util/collection/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual {p1}, Lio/netty/channel/epoll/AbstractEpollChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 253
    :cond_1
    invoke-virtual {p1}, Lio/netty/channel/epoll/AbstractEpollChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    iget-object v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v2}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v2

    invoke-static {v2, v0}, Lio/netty/channel/epoll/Native;->epollCtlDel(II)V

    .line 258
    :cond_2
    :goto_0
    return-void

    .line 243
    .end local v0    # "fd":I
    .end local v1    # "old":Lio/netty/channel/epoll/AbstractEpollChannel;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected run()V
    .locals 13

    .line 334
    const-wide v0, 0x7fffffffffffffffL

    .line 337
    .local v0, "prevDeadlineNanos":J
    :goto_0
    :try_start_0
    iget-object v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->selectStrategy:Lio/netty/channel/SelectStrategy;

    iget-object v3, p0, Lio/netty/channel/epoll/EpollEventLoop;->selectNowSupplier:Lio/netty/util/IntSupplier;

    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->hasTasks()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lio/netty/channel/SelectStrategy;->calculateStrategy(Lio/netty/util/IntSupplier;Z)I

    move-result v2

    .line 338
    .local v2, "strategy":I
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 347
    :pswitch_0
    iget-boolean v3, p0, Lio/netty/channel/epoll/EpollEventLoop;->pendingWakeup:Z

    if-eqz v3, :cond_1

    .line 350
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollEventLoop;->epollWaitTimeboxed()I

    move-result v3

    move v2, v3

    .line 351
    if-eqz v2, :cond_0

    .line 352
    goto/16 :goto_3

    .line 356
    :cond_0
    sget-object v3, Lio/netty/channel/epoll/EpollEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Missed eventfd write (not seen after > 1 second)"

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 357
    const/4 v3, 0x0

    iput-boolean v3, p0, Lio/netty/channel/epoll/EpollEventLoop;->pendingWakeup:Z

    .line 358
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->hasTasks()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    goto/16 :goto_3

    .line 364
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->nextScheduledTaskDeadlineNanos()J

    move-result-wide v3

    .line 365
    .local v3, "curDeadlineNanos":J
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 366
    const-wide v3, 0x7fffffffffffffffL

    .line 368
    :cond_2
    iget-object v7, p0, Lio/netty/channel/epoll/EpollEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 370
    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->hasTasks()Z

    move-result v8

    if-nez v8, :cond_5

    .line 371
    cmp-long v8, v3, v0

    if-nez v8, :cond_3

    .line 373
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollEventLoop;->epollWaitNoTimerChange()I

    move-result v8

    move v2, v8

    goto :goto_2

    .line 376
    :cond_3
    invoke-direct {p0, v3, v4}, Lio/netty/channel/epoll/EpollEventLoop;->epollWait(J)J

    move-result-wide v8

    .line 379
    .local v8, "result":J
    invoke-static {v8, v9}, Lio/netty/channel/epoll/Native;->epollReady(J)I

    move-result v10

    move v2, v10

    .line 380
    invoke-static {v8, v9}, Lio/netty/channel/epoll/Native;->epollTimerWasUsed(J)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_4

    move-wide v10, v3

    goto :goto_1

    :cond_4
    const-wide v10, 0x7fffffffffffffffL

    :goto_1
    move-wide v0, v10

    .line 386
    .end local v8    # "result":J
    :cond_5
    :goto_2
    :try_start_2
    iget-object v8, p0, Lio/netty/channel/epoll/EpollEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    cmp-long v8, v8, v5

    if-eqz v8, :cond_6

    iget-object v8, p0, Lio/netty/channel/epoll/EpollEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v8

    cmp-long v5, v8, v5

    if-nez v5, :cond_a

    .line 387
    :cond_6
    iput-boolean v7, p0, Lio/netty/channel/epoll/EpollEventLoop;->pendingWakeup:Z

    goto :goto_3

    .line 386
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lio/netty/channel/epoll/EpollEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    cmp-long v9, v9, v5

    if-eqz v9, :cond_7

    iget-object v9, p0, Lio/netty/channel/epoll/EpollEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v9

    cmp-long v5, v9, v5

    if-nez v5, :cond_8

    .line 387
    :cond_7
    iput-boolean v7, p0, Lio/netty/channel/epoll/EpollEventLoop;->pendingWakeup:Z

    .line 389
    :cond_8
    nop

    .end local v0    # "prevDeadlineNanos":J
    throw v8
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 429
    .end local v3    # "curDeadlineNanos":J
    .restart local v0    # "prevDeadlineNanos":J
    :pswitch_1
    :try_start_3
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->isShuttingDown()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 430
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollEventLoop;->closeAll()V

    .line 431
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->confirmShutdown()Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_9

    .line 432
    goto/16 :goto_8

    .line 437
    :catchall_1
    move-exception v3

    .line 438
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v3}, Lio/netty/channel/epoll/EpollEventLoop;->handleLoopException(Ljava/lang/Throwable;)V

    .line 439
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_9
    goto/16 :goto_0

    .line 435
    :catch_0
    move-exception v3

    .line 436
    .local v3, "e":Ljava/lang/Error;
    throw v3

    .line 343
    .end local v3    # "e":Ljava/lang/Error;
    :pswitch_2
    :try_start_4
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollEventLoop;->epollBusyWait()I

    move-result v3

    move v2, v3

    .line 344
    nop

    .line 394
    :cond_a
    :goto_3
    iget v3, p0, Lio/netty/channel/epoll/EpollEventLoop;->ioRatio:I
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 395
    .local v3, "ioRatio":I
    const/16 v4, 0x64

    if-ne v3, v4, :cond_c

    .line 397
    if-lez v2, :cond_b

    :try_start_5
    iget-object v4, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    invoke-direct {p0, v4, v2}, Lio/netty/channel/epoll/EpollEventLoop;->processReady(Lio/netty/channel/epoll/EpollEventArray;I)Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_b

    .line 398
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_4

    .line 402
    :catchall_2
    move-exception v4

    :try_start_6
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->runAllTasks()Z

    .line 403
    nop

    .end local v0    # "prevDeadlineNanos":J
    throw v4

    .line 402
    .restart local v0    # "prevDeadlineNanos":J
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->runAllTasks()Z

    .line 403
    goto :goto_5

    .line 404
    :cond_c
    if-lez v2, :cond_e

    .line 405
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4
    :try_end_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 407
    .local v4, "ioStartTime":J
    :try_start_7
    iget-object v6, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    invoke-direct {p0, v6, v2}, Lio/netty/channel/epoll/EpollEventLoop;->processReady(Lio/netty/channel/epoll/EpollEventArray;I)Z

    move-result v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v6, :cond_d

    .line 408
    const-wide v0, 0x7fffffffffffffffL

    .line 412
    :cond_d
    :try_start_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 413
    .local v6, "ioTime":J
    rsub-int/lit8 v8, v3, 0x64

    int-to-long v8, v8

    mul-long/2addr v8, v6

    int-to-long v10, v3

    div-long/2addr v8, v10

    invoke-virtual {p0, v8, v9}, Lio/netty/channel/epoll/EpollEventLoop;->runAllTasks(J)Z

    .line 414
    nop

    .line 415
    .end local v4    # "ioStartTime":J
    .end local v6    # "ioTime":J
    goto :goto_5

    .line 412
    .restart local v4    # "ioStartTime":J
    :catchall_3
    move-exception v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v4

    .line 413
    .local v7, "ioTime":J
    rsub-int/lit8 v9, v3, 0x64

    int-to-long v9, v9

    mul-long/2addr v9, v7

    int-to-long v11, v3

    div-long/2addr v9, v11

    invoke-virtual {p0, v9, v10}, Lio/netty/channel/epoll/EpollEventLoop;->runAllTasks(J)Z

    .line 414
    nop

    .end local v0    # "prevDeadlineNanos":J
    .end local v7    # "ioTime":J
    throw v6

    .line 416
    .end local v4    # "ioStartTime":J
    .restart local v0    # "prevDeadlineNanos":J
    :cond_e
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lio/netty/channel/epoll/EpollEventLoop;->runAllTasks(J)Z

    .line 418
    :goto_5
    iget-boolean v4, p0, Lio/netty/channel/epoll/EpollEventLoop;->allowGrowing:Z

    if-eqz v4, :cond_f

    iget-object v4, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    invoke-virtual {v4}, Lio/netty/channel/epoll/EpollEventArray;->length()I

    move-result v4

    if-ne v2, v4, :cond_f

    .line 420
    iget-object v4, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    invoke-virtual {v4}, Lio/netty/channel/epoll/EpollEventArray;->increase()V
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 429
    .end local v2    # "strategy":I
    .end local v3    # "ioRatio":I
    :cond_f
    :try_start_9
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->isShuttingDown()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 430
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollEventLoop;->closeAll()V

    .line 431
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->confirmShutdown()Z

    move-result v2
    :try_end_9
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v2, :cond_10

    .line 432
    goto :goto_6

    .line 439
    :cond_10
    goto :goto_7

    .line 437
    :catchall_4
    move-exception v2

    .line 438
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v2}, Lio/netty/channel/epoll/EpollEventLoop;->handleLoopException(Ljava/lang/Throwable;)V

    .line 440
    .end local v2    # "t":Ljava/lang/Throwable;
    goto :goto_7

    .line 435
    :catch_1
    move-exception v2

    .line 436
    .local v2, "e":Ljava/lang/Error;
    throw v2

    .line 424
    .end local v2    # "e":Ljava/lang/Error;
    :catchall_5
    move-exception v2

    .line 425
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_a
    invoke-virtual {p0, v2}, Lio/netty/channel/epoll/EpollEventLoop;->handleLoopException(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 429
    .end local v2    # "t":Ljava/lang/Throwable;
    :try_start_b
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->isShuttingDown()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 430
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollEventLoop;->closeAll()V

    .line 431
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->confirmShutdown()Z

    move-result v2
    :try_end_b
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v2, :cond_10

    .line 432
    :goto_6
    goto :goto_8

    .line 440
    :goto_7
    goto/16 :goto_0

    .line 435
    :catch_2
    move-exception v2

    .line 436
    .local v2, "e":Ljava/lang/Error;
    throw v2

    .line 422
    .end local v2    # "e":Ljava/lang/Error;
    :catch_3
    move-exception v2

    .line 423
    .restart local v2    # "e":Ljava/lang/Error;
    nop

    .end local v0    # "prevDeadlineNanos":J
    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 428
    .end local v2    # "e":Ljava/lang/Error;
    .restart local v0    # "prevDeadlineNanos":J
    :catchall_6
    move-exception v2

    .line 429
    :try_start_d
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->isShuttingDown()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 430
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollEventLoop;->closeAll()V

    .line 431
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->confirmShutdown()Z

    move-result v3
    :try_end_d
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    if-eqz v3, :cond_11

    .line 432
    goto :goto_6

    .line 442
    :goto_8
    return-void

    .line 439
    :cond_11
    goto :goto_9

    .line 437
    :catchall_7
    move-exception v3

    .line 438
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v3}, Lio/netty/channel/epoll/EpollEventLoop;->handleLoopException(Ljava/lang/Throwable;)V

    .line 440
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_9
    throw v2

    .line 435
    :catch_4
    move-exception v2

    .line 436
    .restart local v2    # "e":Ljava/lang/Error;
    throw v2

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setIoRatio(I)V
    .locals 3
    .param p1, "ioRatio"    # I

    .line 283
    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 286
    iput p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->ioRatio:I

    .line 287
    return-void

    .line 284
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
    .locals 5
    .param p1, "inEventLoop"    # Z

    .line 199
    if-nez p1, :cond_0

    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->eventFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lio/netty/channel/epoll/Native;->eventFdWrite(IJ)V

    .line 203
    :cond_0
    return-void
.end method
