.class public abstract Lio/netty/channel/epoll/AbstractEpollStreamChannel;
.super Lio/netty/channel/epoll/AbstractEpollChannel;
.source "AbstractEpollStreamChannel.java"

# interfaces
.implements Lio/netty/channel/socket/DuplexChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollSocketWritableByteChannel;,
        Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;,
        Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceOutTask;,
        Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;,
        Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;,
        Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EXPECTED_TYPES:Ljava/lang/String;

.field private static final METADATA:Lio/netty/channel/ChannelMetadata;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private byteChannel:Ljava/nio/channels/WritableByteChannel;

.field private final flushTask:Ljava/lang/Runnable;

.field private pipeIn:Lio/netty/channel/unix/FileDescriptor;

.field private pipeOut:Lio/netty/channel/unix/FileDescriptor;

.field private volatile spliceQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    nop

    .line 59
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/netty/channel/ChannelMetadata;-><init>(ZI)V

    sput-object v0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/buffer/ByteBuf;

    .line 61
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/channel/DefaultFileRegion;

    .line 62
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->EXPECTED_TYPES:Ljava/lang/String;

    .line 63
    const-class v0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "fd"    # I

    .line 86
    new-instance v0, Lio/netty/channel/epoll/LinuxSocket;

    invoke-direct {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;-><init>(I)V

    invoke-direct {p0, v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;-><init>(Lio/netty/channel/epoll/LinuxSocket;)V

    .line 87
    return-void
.end method

.method protected constructor <init>(Lio/netty/channel/Channel;I)V
    .locals 1
    .param p1, "parent"    # Lio/netty/channel/Channel;
    .param p2, "fd"    # I

    .line 82
    new-instance v0, Lio/netty/channel/epoll/LinuxSocket;

    invoke-direct {v0, p2}, Lio/netty/channel/epoll/LinuxSocket;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/epoll/LinuxSocket;)V

    .line 83
    return-void
.end method

.method constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/epoll/LinuxSocket;)V
    .locals 2
    .param p1, "parent"    # Lio/netty/channel/Channel;
    .param p2, "fd"    # Lio/netty/channel/epoll/LinuxSocket;

    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/epoll/AbstractEpollChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/epoll/LinuxSocket;Z)V

    .line 65
    new-instance v0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$1;

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$1;-><init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;)V

    iput-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->flushTask:Ljava/lang/Runnable;

    .line 96
    iget v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->flags:I

    sget v1, Lio/netty/channel/epoll/Native;->EPOLLRDHUP:I

    or-int/2addr v0, v1

    iput v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->flags:I

    .line 97
    return-void
.end method

.method protected constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/epoll/LinuxSocket;Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "parent"    # Lio/netty/channel/Channel;
    .param p2, "fd"    # Lio/netty/channel/epoll/LinuxSocket;
    .param p3, "remote"    # Ljava/net/SocketAddress;

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/epoll/AbstractEpollChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/epoll/LinuxSocket;Ljava/net/SocketAddress;)V

    .line 65
    new-instance v0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$1;

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$1;-><init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;)V

    iput-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->flushTask:Ljava/lang/Runnable;

    .line 102
    iget v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->flags:I

    sget v1, Lio/netty/channel/epoll/Native;->EPOLLRDHUP:I

    or-int/2addr v0, v1

    iput v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->flags:I

    .line 103
    return-void
.end method

.method constructor <init>(Lio/netty/channel/epoll/LinuxSocket;)V
    .locals 1
    .param p1, "fd"    # Lio/netty/channel/epoll/LinuxSocket;

    .line 90
    invoke-static {p1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->isSoErrorZero(Lio/netty/channel/unix/Socket;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;-><init>(Lio/netty/channel/epoll/LinuxSocket;Z)V

    .line 91
    return-void
.end method

.method protected constructor <init>(Lio/netty/channel/epoll/LinuxSocket;Z)V
    .locals 2
    .param p1, "fd"    # Lio/netty/channel/epoll/LinuxSocket;
    .param p2, "active"    # Z

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lio/netty/channel/epoll/AbstractEpollChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/epoll/LinuxSocket;Z)V

    .line 65
    new-instance v0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$1;

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$1;-><init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;)V

    iput-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->flushTask:Ljava/lang/Runnable;

    .line 108
    iget v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->flags:I

    sget v1, Lio/netty/channel/epoll/Native;->EPOLLRDHUP:I

    or-int/2addr v0, v1

    iput v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->flags:I

    .line 109
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/epoll/AbstractEpollStreamChannel;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 58
    invoke-direct {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->clearSpliceQueue()V

    return-void
.end method

.method static synthetic access$100(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/epoll/AbstractEpollStreamChannel;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 58
    invoke-direct {p0, p1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->shutdownInput0(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$200(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/epoll/AbstractEpollStreamChannel;
    .param p1, "x1"    # Lio/netty/channel/ChannelFuture;
    .param p2, "x2"    # Lio/netty/channel/ChannelPromise;

    .line 58
    invoke-direct {p0, p1, p2}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->shutdownOutputDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$300(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/ChannelFuture;
    .param p1, "x1"    # Lio/netty/channel/ChannelFuture;
    .param p2, "x2"    # Lio/netty/channel/ChannelPromise;

    .line 58
    invoke-static {p0, p1, p2}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->shutdownDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$400(Lio/netty/channel/epoll/AbstractEpollStreamChannel;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 58
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->spliceQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$500(Lio/netty/channel/epoll/AbstractEpollStreamChannel;)Lio/netty/channel/unix/FileDescriptor;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 58
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->pipeOut:Lio/netty/channel/unix/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$502(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/unix/FileDescriptor;)Lio/netty/channel/unix/FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/epoll/AbstractEpollStreamChannel;
    .param p1, "x1"    # Lio/netty/channel/unix/FileDescriptor;

    .line 58
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->pipeOut:Lio/netty/channel/unix/FileDescriptor;

    return-object p1
.end method

.method static synthetic access$600(Lio/netty/channel/epoll/AbstractEpollStreamChannel;)Lio/netty/channel/unix/FileDescriptor;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 58
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->pipeIn:Lio/netty/channel/unix/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$602(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/unix/FileDescriptor;)Lio/netty/channel/unix/FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/epoll/AbstractEpollStreamChannel;
    .param p1, "x1"    # Lio/netty/channel/unix/FileDescriptor;

    .line 58
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->pipeIn:Lio/netty/channel/unix/FileDescriptor;

    return-object p1
.end method

.method static synthetic access$700(Lio/netty/channel/unix/FileDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/unix/FileDescriptor;

    .line 58
    invoke-static {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->safeClosePipe(Lio/netty/channel/unix/FileDescriptor;)V

    return-void
.end method

.method private addToSpliceQueue(Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;)V
    .locals 2
    .param p1, "task"    # Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;

    .line 840
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->spliceQueue:Ljava/util/Queue;

    .line 841
    .local v0, "sQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;>;"
    if-nez v0, :cond_1

    .line 842
    monitor-enter p0

    .line 843
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->spliceQueue:Ljava/util/Queue;

    move-object v0, v1

    .line 844
    if-nez v0, :cond_0

    .line 845
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newMpscQueue()Ljava/util/Queue;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->spliceQueue:Ljava/util/Queue;

    .line 847
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 849
    :cond_1
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 850
    return-void
.end method

.method private adjustMaxBytesPerGatheringWrite(JJJ)V
    .locals 4
    .param p1, "attempted"    # J
    .param p3, "written"    # J
    .param p5, "oldMaxBytesPerGatheringWrite"    # J

    .line 272
    cmp-long v0, p1, p3

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 273
    shl-long v2, p1, v1

    cmp-long v0, v2, p5

    if-lez v0, :cond_1

    .line 274
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object v0

    shl-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/epoll/EpollChannelConfig;->setMaxBytesPerGatheringWrite(J)V

    goto :goto_0

    .line 276
    :cond_0
    const-wide/16 v2, 0x1000

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    ushr-long v2, p1, v1

    cmp-long v0, p3, v2

    if-gez v0, :cond_1

    .line 277
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object v0

    ushr-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/epoll/EpollChannelConfig;->setMaxBytesPerGatheringWrite(J)V

    .line 279
    :cond_1
    :goto_0
    return-void
.end method

.method private clearSpliceQueue()V
    .locals 4

    .line 681
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->spliceQueue:Ljava/util/Queue;

    .line 682
    .local v0, "sQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;>;"
    if-nez v0, :cond_0

    .line 683
    return-void

    .line 685
    :cond_0
    const/4 v1, 0x0

    .line 688
    .local v1, "exception":Ljava/nio/channels/ClosedChannelException;
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;

    .line 689
    .local v2, "task":Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;
    if-nez v2, :cond_1

    .line 690
    nop

    .line 697
    .end local v2    # "task":Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;
    return-void

    .line 692
    .restart local v2    # "task":Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;
    :cond_1
    if-nez v1, :cond_2

    .line 693
    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    move-object v1, v3

    .line 695
    :cond_2
    iget-object v3, v2, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v3, v1}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 696
    .end local v2    # "task":Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;
    goto :goto_0
.end method

.method private doWriteMultiple(Lio/netty/channel/ChannelOutboundBuffer;)I
    .locals 5
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 503
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollChannelConfig;->getMaxBytesPerGatheringWrite()J

    move-result-wide v0

    .line 504
    .local v0, "maxBytesPerGatheringWrite":J
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v2

    check-cast v2, Lio/netty/channel/epoll/EpollEventLoop;

    invoke-virtual {v2}, Lio/netty/channel/epoll/EpollEventLoop;->cleanIovArray()Lio/netty/channel/unix/IovArray;

    move-result-object v2

    .line 505
    .local v2, "array":Lio/netty/channel/unix/IovArray;
    invoke-virtual {v2, v0, v1}, Lio/netty/channel/unix/IovArray;->maxBytes(J)V

    .line 506
    invoke-virtual {p1, v2}, Lio/netty/channel/ChannelOutboundBuffer;->forEachFlushedMessage(Lio/netty/channel/ChannelOutboundBuffer$MessageProcessor;)V

    .line 508
    invoke-virtual {v2}, Lio/netty/channel/unix/IovArray;->count()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 510
    invoke-direct {p0, p1, v2}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->writeBytesMultiple(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/channel/unix/IovArray;)I

    move-result v3

    return v3

    .line 513
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {p1, v3, v4}, Lio/netty/channel/ChannelOutboundBuffer;->removeBytes(J)V

    .line 514
    const/4 v3, 0x0

    return v3
.end method

.method private failSpliceIfClosed(Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 223
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    new-instance v1, Lio/netty/channel/epoll/AbstractEpollStreamChannel$2;

    invoke-direct {v1, p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$2;-><init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;)V

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 236
    :cond_0
    return-void
.end method

.method private static safeClosePipe(Lio/netty/channel/unix/FileDescriptor;)V
    .locals 3
    .param p0, "fd"    # Lio/netty/channel/unix/FileDescriptor;

    .line 700
    if-eqz p0, :cond_0

    .line 702
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    goto :goto_0

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Error while closing a pipe"

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 707
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static shutdownDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 4
    .param p0, "shutdownOutputFuture"    # Lio/netty/channel/ChannelFuture;
    .param p1, "shutdownInputFuture"    # Lio/netty/channel/ChannelFuture;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 653
    invoke-interface {p0}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 654
    .local v0, "shutdownOutputCause":Ljava/lang/Throwable;
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v1

    .line 655
    .local v1, "shutdownInputCause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 656
    if-eqz v1, :cond_0

    .line 657
    sget-object v2, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Exception suppressed because a previous exception occurred."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 660
    :cond_0
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 661
    :cond_1
    if-eqz v1, :cond_2

    .line 662
    invoke-interface {p2, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 664
    :cond_2
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 666
    :goto_0
    return-void
.end method

.method private shutdownInput0(Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 540
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/epoll/LinuxSocket;->shutdown(ZZ)V

    .line 541
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    goto :goto_0

    .line 542
    :catchall_0
    move-exception v0

    .line 543
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 545
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private shutdownOutputDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "shutdownOutputFuture"    # Lio/netty/channel/ChannelFuture;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 637
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->shutdownInput()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 638
    .local v0, "shutdownInputFuture":Lio/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    invoke-static {p1, v0, p2}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->shutdownDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 641
    :cond_0
    new-instance v1, Lio/netty/channel/epoll/AbstractEpollStreamChannel$7;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$7;-><init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 648
    :goto_0
    return-void
.end method

.method private writeBytes(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/buffer/ByteBuf;)I
    .locals 11
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .param p2, "buf"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 253
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 254
    .local v0, "readableBytes":I
    if-nez v0, :cond_0

    .line 255
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 256
    const/4 v1, 0x0

    return v1

    .line 259
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->nioBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 263
    .local v1, "nioBuffers":[Ljava/nio/ByteBuffer;
    array-length v6, v1

    int-to-long v7, v0

    .line 264
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/channel/epoll/EpollChannelConfig;->getMaxBytesPerGatheringWrite()J

    move-result-wide v9

    .line 263
    move-object v3, p0

    move-object v4, p1

    move-object v5, v1

    invoke-direct/range {v3 .. v10}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->writeBytesMultiple(Lio/netty/channel/ChannelOutboundBuffer;[Ljava/nio/ByteBuffer;IJJ)I

    move-result v2

    return v2

    .line 260
    .end local v1    # "nioBuffers":[Ljava/nio/ByteBuffer;
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->doWriteBytes(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/buffer/ByteBuf;)I

    move-result v1

    return v1
.end method

.method private writeBytesMultiple(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/channel/unix/IovArray;)I
    .locals 12
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .param p2, "array"    # Lio/netty/channel/unix/IovArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    invoke-virtual {p2}, Lio/netty/channel/unix/IovArray;->size()J

    move-result-wide v7

    .line 298
    .local v7, "expectedWrittenBytes":J
    const-wide/16 v0, 0x0

    cmp-long v2, v7, v0

    if-eqz v2, :cond_2

    .line 299
    invoke-virtual {p2}, Lio/netty/channel/unix/IovArray;->count()I

    move-result v9

    .line 300
    .local v9, "cnt":I
    if-eqz v9, :cond_1

    .line 302
    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lio/netty/channel/unix/IovArray;->memoryAddress(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v9}, Lio/netty/channel/epoll/LinuxSocket;->writevAddresses(JI)J

    move-result-wide v10

    .line 303
    .local v10, "localWrittenBytes":J
    cmp-long v0, v10, v0

    if-lez v0, :cond_0

    .line 304
    invoke-virtual {p2}, Lio/netty/channel/unix/IovArray;->maxBytes()J

    move-result-wide v5

    move-object v0, p0

    move-wide v1, v7

    move-wide v3, v10

    invoke-direct/range {v0 .. v6}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->adjustMaxBytesPerGatheringWrite(JJJ)V

    .line 305
    invoke-virtual {p1, v10, v11}, Lio/netty/channel/ChannelOutboundBuffer;->removeBytes(J)V

    .line 306
    const/4 v0, 0x1

    return v0

    .line 308
    :cond_0
    const v0, 0x7fffffff

    return v0

    .line 300
    .end local v10    # "localWrittenBytes":J
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 298
    .end local v9    # "cnt":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private writeBytesMultiple(Lio/netty/channel/ChannelOutboundBuffer;[Ljava/nio/ByteBuffer;IJJ)I
    .locals 14
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .param p2, "nioBuffers"    # [Ljava/nio/ByteBuffer;
    .param p3, "nioBufferCnt"    # I
    .param p4, "expectedWrittenBytes"    # J
    .param p6, "maxBytesPerGatheringWrite"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-eqz v2, :cond_2

    .line 333
    cmp-long v2, p4, p6

    if-lez v2, :cond_0

    .line 334
    move-wide/from16 v2, p6

    move-wide v10, v2

    .end local p4    # "expectedWrittenBytes":J
    .local v2, "expectedWrittenBytes":J
    goto :goto_0

    .line 333
    .end local v2    # "expectedWrittenBytes":J
    .restart local p4    # "expectedWrittenBytes":J
    :cond_0
    move-wide/from16 v10, p4

    .line 337
    .end local p4    # "expectedWrittenBytes":J
    .local v10, "expectedWrittenBytes":J
    :goto_0
    move-object v2, p0

    iget-object v4, v2, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    const/4 v6, 0x0

    move-object/from16 v5, p2

    move/from16 v7, p3

    move-wide v8, v10

    invoke-virtual/range {v4 .. v9}, Lio/netty/channel/epoll/LinuxSocket;->writev([Ljava/nio/ByteBuffer;IIJ)J

    move-result-wide v12

    .line 338
    .local v12, "localWrittenBytes":J
    cmp-long v0, v12, v0

    if-lez v0, :cond_1

    .line 339
    move-object v3, p0

    move-wide v4, v10

    move-wide v6, v12

    move-wide/from16 v8, p6

    invoke-direct/range {v3 .. v9}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->adjustMaxBytesPerGatheringWrite(JJJ)V

    .line 340
    move-object v0, p1

    invoke-virtual {p1, v12, v13}, Lio/netty/channel/ChannelOutboundBuffer;->removeBytes(J)V

    .line 341
    const/4 v1, 0x1

    return v1

    .line 343
    :cond_1
    move-object v0, p1

    const v1, 0x7fffffff

    return v1

    .line 332
    .end local v10    # "expectedWrittenBytes":J
    .end local v12    # "localWrittenBytes":J
    .restart local p4    # "expectedWrittenBytes":J
    :cond_2
    move-object v2, p0

    move-object v0, p1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private writeDefaultFileRegion(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/channel/DefaultFileRegion;)I
    .locals 12
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .param p2, "region"    # Lio/netty/channel/DefaultFileRegion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 361
    invoke-virtual {p2}, Lio/netty/channel/DefaultFileRegion;->transferred()J

    move-result-wide v8

    .line 362
    .local v8, "offset":J
    invoke-virtual {p2}, Lio/netty/channel/DefaultFileRegion;->count()J

    move-result-wide v10

    .line 363
    .local v10, "regionCount":J
    cmp-long v0, v8, v10

    if-ltz v0, :cond_0

    .line 364
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 365
    const/4 v0, 0x0

    return v0

    .line 368
    :cond_0
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {p2}, Lio/netty/channel/DefaultFileRegion;->position()J

    move-result-wide v2

    sub-long v6, v10, v8

    move-object v1, p2

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Lio/netty/channel/epoll/LinuxSocket;->sendFile(Lio/netty/channel/DefaultFileRegion;JJJ)J

    move-result-wide v0

    .line 369
    .local v0, "flushedAmount":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 370
    invoke-virtual {p1, v0, v1}, Lio/netty/channel/ChannelOutboundBuffer;->progress(J)V

    .line 371
    invoke-virtual {p2}, Lio/netty/channel/DefaultFileRegion;->transferred()J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-ltz v2, :cond_1

    .line 372
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 374
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 375
    :cond_2
    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 376
    invoke-virtual {p0, p2, v8, v9}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->validateFileRegion(Lio/netty/channel/DefaultFileRegion;J)V

    .line 378
    :cond_3
    const v2, 0x7fffffff

    return v2
.end method

.method private writeFileRegion(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/channel/FileRegion;)I
    .locals 6
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .param p2, "region"    # Lio/netty/channel/FileRegion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 396
    invoke-interface {p2}, Lio/netty/channel/FileRegion;->transferred()J

    move-result-wide v0

    invoke-interface {p2}, Lio/netty/channel/FileRegion;->count()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 397
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 398
    const/4 v0, 0x0

    return v0

    .line 401
    :cond_0
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->byteChannel:Ljava/nio/channels/WritableByteChannel;

    if-nez v0, :cond_1

    .line 402
    new-instance v0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollSocketWritableByteChannel;

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollSocketWritableByteChannel;-><init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;)V

    iput-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->byteChannel:Ljava/nio/channels/WritableByteChannel;

    .line 404
    :cond_1
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->byteChannel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {p2}, Lio/netty/channel/FileRegion;->transferred()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lio/netty/channel/FileRegion;->transferTo(Ljava/nio/channels/WritableByteChannel;J)J

    move-result-wide v0

    .line 405
    .local v0, "flushedAmount":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 406
    invoke-virtual {p1, v0, v1}, Lio/netty/channel/ChannelOutboundBuffer;->progress(J)V

    .line 407
    invoke-interface {p2}, Lio/netty/channel/FileRegion;->transferred()J

    move-result-wide v2

    invoke-interface {p2}, Lio/netty/channel/FileRegion;->count()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 408
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 410
    :cond_2
    const/4 v2, 0x1

    return v2

    .line 412
    :cond_3
    const v2, 0x7fffffff

    return v2
.end method


# virtual methods
.method protected doClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 672
    :try_start_0
    invoke-super {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->pipeIn:Lio/netty/channel/unix/FileDescriptor;

    invoke-static {v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->safeClosePipe(Lio/netty/channel/unix/FileDescriptor;)V

    .line 675
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->pipeOut:Lio/netty/channel/unix/FileDescriptor;

    invoke-static {v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->safeClosePipe(Lio/netty/channel/unix/FileDescriptor;)V

    .line 676
    invoke-direct {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->clearSpliceQueue()V

    .line 677
    nop

    .line 678
    return-void

    .line 674
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->pipeIn:Lio/netty/channel/unix/FileDescriptor;

    invoke-static {v1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->safeClosePipe(Lio/netty/channel/unix/FileDescriptor;)V

    .line 675
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->pipeOut:Lio/netty/channel/unix/FileDescriptor;

    invoke-static {v1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->safeClosePipe(Lio/netty/channel/unix/FileDescriptor;)V

    .line 676
    invoke-direct {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->clearSpliceQueue()V

    .line 677
    throw v0
.end method

.method protected final doShutdownOutput()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/epoll/LinuxSocket;->shutdown(ZZ)V

    .line 536
    return-void
.end method

.method protected doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .locals 3
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 417
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollChannelConfig;->getWriteSpinCount()I

    move-result v0

    .line 419
    .local v0, "writeSpinCount":I
    :cond_0
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->size()I

    move-result v1

    .line 421
    .local v1, "msgCount":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lio/netty/buffer/ByteBuf;

    if-eqz v2, :cond_1

    .line 422
    invoke-direct {p0, p1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->doWriteMultiple(Lio/netty/channel/ChannelOutboundBuffer;)I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 423
    :cond_1
    if-nez v1, :cond_2

    .line 425
    sget v2, Lio/netty/channel/epoll/Native;->EPOLLOUT:I

    invoke-virtual {p0, v2}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->clearFlag(I)V

    .line 427
    return-void

    .line 429
    :cond_2
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->doWriteSingle(Lio/netty/channel/ChannelOutboundBuffer;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 435
    .end local v1    # "msgCount":I
    :goto_0
    if-gtz v0, :cond_0

    .line 437
    if-nez v0, :cond_3

    .line 442
    sget v1, Lio/netty/channel/epoll/Native;->EPOLLOUT:I

    invoke-virtual {p0, v1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->clearFlag(I)V

    .line 445
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->flushTask:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 449
    :cond_3
    sget v1, Lio/netty/channel/epoll/Native;->EPOLLOUT:I

    invoke-virtual {p0, v1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->setFlag(I)V

    .line 451
    :goto_1
    return-void
.end method

.method protected doWriteSingle(Lio/netty/channel/ChannelOutboundBuffer;)I
    .locals 2
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 469
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v0

    .line 470
    .local v0, "msg":Ljava/lang/Object;
    instance-of v1, v0, Lio/netty/buffer/ByteBuf;

    if-eqz v1, :cond_0

    .line 471
    move-object v1, v0

    check-cast v1, Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, p1, v1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->writeBytes(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/buffer/ByteBuf;)I

    move-result v1

    return v1

    .line 472
    :cond_0
    instance-of v1, v0, Lio/netty/channel/DefaultFileRegion;

    if-eqz v1, :cond_1

    .line 473
    move-object v1, v0

    check-cast v1, Lio/netty/channel/DefaultFileRegion;

    invoke-direct {p0, p1, v1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->writeDefaultFileRegion(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/channel/DefaultFileRegion;)I

    move-result v1

    return v1

    .line 474
    :cond_1
    instance-of v1, v0, Lio/netty/channel/FileRegion;

    if-eqz v1, :cond_2

    .line 475
    move-object v1, v0

    check-cast v1, Lio/netty/channel/FileRegion;

    invoke-direct {p0, p1, v1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->writeFileRegion(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/channel/FileRegion;)I

    move-result v1

    return v1

    .line 476
    :cond_2
    instance-of v1, v0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceOutTask;

    if-eqz v1, :cond_4

    .line 477
    move-object v1, v0

    check-cast v1, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceOutTask;

    invoke-virtual {v1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceOutTask;->spliceOut()Z

    move-result v1

    if-nez v1, :cond_3

    .line 478
    const v1, 0x7fffffff

    return v1

    .line 480
    :cond_3
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 481
    const/4 v1, 0x1

    return v1

    .line 484
    :cond_4
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    throw v1
.end method

.method protected filterOutboundMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "msg"    # Ljava/lang/Object;

    .line 519
    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_1

    .line 520
    move-object v0, p1

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 521
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-static {v0}, Lio/netty/channel/unix/UnixChannelUtil;->isBufferCopyNeededForWrite(Lio/netty/buffer/ByteBuf;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->newDirectBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 524
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_1
    instance-of v0, p1, Lio/netty/channel/FileRegion;

    if-nez v0, :cond_3

    instance-of v0, p1, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceOutTask;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 528
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 529
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->EXPECTED_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_3
    :goto_1
    return-object p1
.end method

.method public bridge synthetic isActive()Z
    .locals 1

    .line 58
    invoke-super {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->isActive()Z

    move-result v0

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    .line 554
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpen()Z
    .locals 1

    .line 58
    invoke-super {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .line 549
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 559
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 118
    sget-object v0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method protected bridge synthetic newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->newUnsafe()Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;

    move-result-object v0

    return-object v0
.end method

.method protected newUnsafe()Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
    .locals 1

    .line 113
    new-instance v0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;-><init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;)V

    return-object v0
.end method

.method public shutdown()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 617
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->shutdown(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public shutdown(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 622
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->shutdownOutput()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 623
    .local v0, "shutdownOutputFuture":Lio/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    invoke-direct {p0, v0, p1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->shutdownOutputDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 626
    :cond_0
    new-instance v1, Lio/netty/channel/epoll/AbstractEpollStreamChannel$6;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$6;-><init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 633
    :goto_0
    return-object p1
.end method

.method public shutdownInput()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 586
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->shutdownInput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public shutdownInput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 3
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 591
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    check-cast v0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollStreamUnsafe;->prepareToClose()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 592
    .local v0, "closeExecutor":Ljava/util/concurrent/Executor;
    if-eqz v0, :cond_0

    .line 593
    new-instance v1, Lio/netty/channel/epoll/AbstractEpollStreamChannel$4;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$4;-><init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 600
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    .line 601
    .local v1, "loop":Lio/netty/channel/EventLoop;
    invoke-interface {v1}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 602
    invoke-direct {p0, p1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->shutdownInput0(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 604
    :cond_1
    new-instance v2, Lio/netty/channel/epoll/AbstractEpollStreamChannel$5;

    invoke-direct {v2, p0, p1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$5;-><init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v1, v2}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 612
    .end local v1    # "loop":Lio/netty/channel/EventLoop;
    :goto_0
    return-object p1
.end method

.method public shutdownOutput()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->shutdownOutput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public shutdownOutput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 569
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 570
    .local v0, "loop":Lio/netty/channel/EventLoop;
    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    check-cast v1, Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    invoke-virtual {v1, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->shutdownOutput(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 573
    :cond_0
    new-instance v1, Lio/netty/channel/epoll/AbstractEpollStreamChannel$3;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$3;-><init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 581
    :goto_0
    return-object p1
.end method

.method public final spliceTo(Lio/netty/channel/epoll/AbstractEpollStreamChannel;I)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "ch"    # Lio/netty/channel/epoll/AbstractEpollStreamChannel;
    .param p2, "len"    # I

    .line 136
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->spliceTo(Lio/netty/channel/epoll/AbstractEpollStreamChannel;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final spliceTo(Lio/netty/channel/epoll/AbstractEpollStreamChannel;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 3
    .param p1, "ch"    # Lio/netty/channel/epoll/AbstractEpollStreamChannel;
    .param p2, "len"    # I
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 155
    invoke-virtual {p1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 158
    const-string v0, "len"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 159
    invoke-virtual {p1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollChannelConfig;->getEpollMode()Lio/netty/channel/epoll/EpollMode;

    move-result-object v0

    sget-object v1, Lio/netty/channel/epoll/EpollMode;->LEVEL_TRIGGERED:Lio/netty/channel/epoll/EpollMode;

    if-ne v0, v1, :cond_1

    .line 160
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollChannelConfig;->getEpollMode()Lio/netty/channel/epoll/EpollMode;

    move-result-object v0

    sget-object v1, Lio/netty/channel/epoll/EpollMode;->LEVEL_TRIGGERED:Lio/netty/channel/epoll/EpollMode;

    if-ne v0, v1, :cond_1

    .line 163
    const-string v0, "promise"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {p3, v0}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 167
    :cond_0
    new-instance v0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;-><init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/epoll/AbstractEpollStreamChannel;ILio/netty/channel/ChannelPromise;)V

    invoke-direct {p0, v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->addToSpliceQueue(Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;)V

    .line 168
    invoke-direct {p0, p3}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->failSpliceIfClosed(Lio/netty/channel/ChannelPromise;)V

    .line 170
    :goto_0
    return-object p3

    .line 161
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spliceTo() supported only when using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/netty/channel/epoll/EpollMode;->LEVEL_TRIGGERED:Lio/netty/channel/epoll/EpollMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EventLoops are not the same."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final spliceTo(Lio/netty/channel/unix/FileDescriptor;II)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "ch"    # Lio/netty/channel/unix/FileDescriptor;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 188
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->spliceTo(Lio/netty/channel/unix/FileDescriptor;IILio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final spliceTo(Lio/netty/channel/unix/FileDescriptor;IILio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 7
    .param p1, "ch"    # Lio/netty/channel/unix/FileDescriptor;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 207
    const-string v0, "len"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 208
    const-string v0, "offset"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollChannelConfig;->getEpollMode()Lio/netty/channel/epoll/EpollMode;

    move-result-object v0

    sget-object v1, Lio/netty/channel/epoll/EpollMode;->LEVEL_TRIGGERED:Lio/netty/channel/epoll/EpollMode;

    if-ne v0, v1, :cond_1

    .line 212
    const-string v0, "promise"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    invoke-virtual {p0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {p4, v0}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;-><init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/unix/FileDescriptor;IILio/netty/channel/ChannelPromise;)V

    invoke-direct {p0, v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->addToSpliceQueue(Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;)V

    .line 217
    invoke-direct {p0, p4}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->failSpliceIfClosed(Lio/netty/channel/ChannelPromise;)V

    .line 219
    :goto_0
    return-object p4

    .line 210
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spliceTo() supported only when using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/netty/channel/epoll/EpollMode;->LEVEL_TRIGGERED:Lio/netty/channel/epoll/EpollMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
