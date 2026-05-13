.class public abstract Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;
.super Lio/netty/channel/kqueue/AbstractKQueueChannel;
.source "AbstractKQueueStreamChannel.java"

# interfaces
.implements Lio/netty/channel/socket/DuplexChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueSocketWritableByteChannel;,
        Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    nop

    .line 52
    const-class v0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 53
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/netty/channel/ChannelMetadata;-><init>(ZI)V

    sput-object v0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/buffer/ByteBuf;

    .line 55
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/channel/DefaultFileRegion;

    .line 56
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->EXPECTED_TYPES:Ljava/lang/String;

    .line 54
    return-void
.end method

.method constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "parent"    # Lio/netty/channel/Channel;
    .param p2, "fd"    # Lio/netty/channel/kqueue/BsdSocket;
    .param p3, "remote"    # Ljava/net/SocketAddress;

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/kqueue/AbstractKQueueChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Ljava/net/SocketAddress;)V

    .line 58
    new-instance v0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$1;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$1;-><init>(Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;)V

    iput-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->flushTask:Ljava/lang/Runnable;

    .line 73
    return-void
.end method

.method constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Z)V
    .locals 1
    .param p1, "parent"    # Lio/netty/channel/Channel;
    .param p2, "fd"    # Lio/netty/channel/kqueue/BsdSocket;
    .param p3, "active"    # Z

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/kqueue/AbstractKQueueChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Z)V

    .line 58
    new-instance v0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$1;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$1;-><init>(Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;)V

    iput-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->flushTask:Ljava/lang/Runnable;

    .line 69
    return-void
.end method

.method constructor <init>(Lio/netty/channel/kqueue/BsdSocket;)V
    .locals 2
    .param p1, "fd"    # Lio/netty/channel/kqueue/BsdSocket;

    .line 76
    const/4 v0, 0x0

    invoke-static {p1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->isSoErrorZero(Lio/netty/channel/kqueue/BsdSocket;)Z

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Z)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 51
    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->shutdownInput0(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$100(Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;
    .param p1, "x1"    # Lio/netty/channel/ChannelFuture;
    .param p2, "x2"    # Lio/netty/channel/ChannelPromise;

    .line 51
    invoke-direct {p0, p1, p2}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->shutdownOutputDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$200(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/ChannelFuture;
    .param p1, "x1"    # Lio/netty/channel/ChannelFuture;
    .param p2, "x2"    # Lio/netty/channel/ChannelPromise;

    .line 51
    invoke-static {p0, p1, p2}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->shutdownDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method private adjustMaxBytesPerGatheringWrite(JJJ)V
    .locals 4
    .param p1, "attempted"    # J
    .param p3, "written"    # J
    .param p5, "oldMaxBytesPerGatheringWrite"    # J

    .line 123
    cmp-long v0, p1, p3

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 124
    shl-long v2, p1, v1

    cmp-long v0, v2, p5

    if-lez v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->config()Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object v0

    shl-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setMaxBytesPerGatheringWrite(J)V

    goto :goto_0

    .line 127
    :cond_0
    const-wide/16 v2, 0x1000

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    ushr-long v2, p1, v1

    cmp-long v0, p3, v2

    if-gez v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->config()Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object v0

    ushr-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setMaxBytesPerGatheringWrite(J)V

    .line 130
    :cond_1
    :goto_0
    return-void
.end method

.method private doWriteMultiple(Lio/netty/channel/ChannelOutboundBuffer;)I
    .locals 5
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->config()Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueChannelConfig;->getMaxBytesPerGatheringWrite()J

    move-result-wide v0

    .line 350
    .local v0, "maxBytesPerGatheringWrite":J
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v2

    check-cast v2, Lio/netty/channel/kqueue/KQueueEventLoop;

    invoke-virtual {v2}, Lio/netty/channel/kqueue/KQueueEventLoop;->cleanArray()Lio/netty/channel/unix/IovArray;

    move-result-object v2

    .line 351
    .local v2, "array":Lio/netty/channel/unix/IovArray;
    invoke-virtual {v2, v0, v1}, Lio/netty/channel/unix/IovArray;->maxBytes(J)V

    .line 352
    invoke-virtual {p1, v2}, Lio/netty/channel/ChannelOutboundBuffer;->forEachFlushedMessage(Lio/netty/channel/ChannelOutboundBuffer$MessageProcessor;)V

    .line 354
    invoke-virtual {v2}, Lio/netty/channel/unix/IovArray;->count()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 356
    invoke-direct {p0, p1, v2}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->writeBytesMultiple(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/channel/unix/IovArray;)I

    move-result v3

    return v3

    .line 359
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {p1, v3, v4}, Lio/netty/channel/ChannelOutboundBuffer;->removeBytes(J)V

    .line 360
    const/4 v3, 0x0

    return v3
.end method

.method private static shutdownDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 4
    .param p0, "shutdownOutputFuture"    # Lio/netty/channel/ChannelFuture;
    .param p1, "shutdownInputFuture"    # Lio/netty/channel/ChannelFuture;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 489
    invoke-interface {p0}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 490
    .local v0, "shutdownOutputCause":Ljava/lang/Throwable;
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v1

    .line 491
    .local v1, "shutdownInputCause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 492
    if-eqz v1, :cond_0

    .line 493
    sget-object v2, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Exception suppressed because a previous exception occurred."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 496
    :cond_0
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 497
    :cond_1
    if-eqz v1, :cond_2

    .line 498
    invoke-interface {p2, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 500
    :cond_2
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 502
    :goto_0
    return-void
.end method

.method private shutdownInput0(Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 443
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/kqueue/BsdSocket;->shutdown(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    nop

    .line 448
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 449
    return-void

    .line 444
    :catchall_0
    move-exception v0

    .line 445
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 446
    return-void
.end method

.method private shutdownOutputDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "shutdownOutputFuture"    # Lio/netty/channel/ChannelFuture;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 473
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->shutdownInput()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 474
    .local v0, "shutdownInputFuture":Lio/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-static {p1, v0, p2}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->shutdownDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 477
    :cond_0
    new-instance v1, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$5;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$5;-><init>(Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 484
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

    .line 104
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 105
    .local v0, "readableBytes":I
    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 107
    const/4 v1, 0x0

    return v1

    .line 110
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->nioBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 114
    .local v1, "nioBuffers":[Ljava/nio/ByteBuffer;
    array-length v6, v1

    int-to-long v7, v0

    .line 115
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->config()Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/channel/kqueue/KQueueChannelConfig;->getMaxBytesPerGatheringWrite()J

    move-result-wide v9

    .line 114
    move-object v3, p0

    move-object v4, p1

    move-object v5, v1

    invoke-direct/range {v3 .. v10}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->writeBytesMultiple(Lio/netty/channel/ChannelOutboundBuffer;[Ljava/nio/ByteBuffer;IJJ)I

    move-result v2

    return v2

    .line 111
    .end local v1    # "nioBuffers":[Ljava/nio/ByteBuffer;
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->doWriteBytes(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/buffer/ByteBuf;)I

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

    .line 148
    invoke-virtual {p2}, Lio/netty/channel/unix/IovArray;->size()J

    move-result-wide v7

    .line 149
    .local v7, "expectedWrittenBytes":J
    const-wide/16 v0, 0x0

    cmp-long v2, v7, v0

    if-eqz v2, :cond_2

    .line 150
    invoke-virtual {p2}, Lio/netty/channel/unix/IovArray;->count()I

    move-result v9

    .line 151
    .local v9, "cnt":I
    if-eqz v9, :cond_1

    .line 153
    iget-object v2, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lio/netty/channel/unix/IovArray;->memoryAddress(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v9}, Lio/netty/channel/kqueue/BsdSocket;->writevAddresses(JI)J

    move-result-wide v10

    .line 154
    .local v10, "localWrittenBytes":J
    cmp-long v0, v10, v0

    if-lez v0, :cond_0

    .line 155
    invoke-virtual {p2}, Lio/netty/channel/unix/IovArray;->maxBytes()J

    move-result-wide v5

    move-object v0, p0

    move-wide v1, v7

    move-wide v3, v10

    invoke-direct/range {v0 .. v6}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->adjustMaxBytesPerGatheringWrite(JJJ)V

    .line 156
    invoke-virtual {p1, v10, v11}, Lio/netty/channel/ChannelOutboundBuffer;->removeBytes(J)V

    .line 157
    const/4 v0, 0x1

    return v0

    .line 159
    :cond_0
    const v0, 0x7fffffff

    return v0

    .line 151
    .end local v10    # "localWrittenBytes":J
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 149
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

    .line 183
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-eqz v2, :cond_2

    .line 184
    cmp-long v2, p4, p6

    if-lez v2, :cond_0

    .line 185
    move-wide/from16 v2, p6

    move-wide v10, v2

    .end local p4    # "expectedWrittenBytes":J
    .local v2, "expectedWrittenBytes":J
    goto :goto_0

    .line 184
    .end local v2    # "expectedWrittenBytes":J
    .restart local p4    # "expectedWrittenBytes":J
    :cond_0
    move-wide/from16 v10, p4

    .line 188
    .end local p4    # "expectedWrittenBytes":J
    .local v10, "expectedWrittenBytes":J
    :goto_0
    move-object v2, p0

    iget-object v4, v2, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    const/4 v6, 0x0

    move-object/from16 v5, p2

    move/from16 v7, p3

    move-wide v8, v10

    invoke-virtual/range {v4 .. v9}, Lio/netty/channel/kqueue/BsdSocket;->writev([Ljava/nio/ByteBuffer;IIJ)J

    move-result-wide v12

    .line 189
    .local v12, "localWrittenBytes":J
    cmp-long v0, v12, v0

    if-lez v0, :cond_1

    .line 190
    move-object v3, p0

    move-wide v4, v10

    move-wide v6, v12

    move-wide/from16 v8, p6

    invoke-direct/range {v3 .. v9}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->adjustMaxBytesPerGatheringWrite(JJJ)V

    .line 191
    move-object v0, p1

    invoke-virtual {p1, v12, v13}, Lio/netty/channel/ChannelOutboundBuffer;->removeBytes(J)V

    .line 192
    const/4 v1, 0x1

    return v1

    .line 194
    :cond_1
    move-object v0, p1

    const v1, 0x7fffffff

    return v1

    .line 183
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

    .line 212
    invoke-virtual {p2}, Lio/netty/channel/DefaultFileRegion;->count()J

    move-result-wide v0

    .line 213
    .local v0, "regionCount":J
    invoke-virtual {p2}, Lio/netty/channel/DefaultFileRegion;->transferred()J

    move-result-wide v10

    .line 215
    .local v10, "offset":J
    cmp-long v2, v10, v0

    if-ltz v2, :cond_0

    .line 216
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 217
    const/4 v2, 0x0

    return v2

    .line 220
    :cond_0
    iget-object v2, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {p2}, Lio/netty/channel/DefaultFileRegion;->position()J

    move-result-wide v4

    sub-long v8, v0, v10

    move-object v3, p2

    move-wide v6, v10

    invoke-virtual/range {v2 .. v9}, Lio/netty/channel/kqueue/BsdSocket;->sendFile(Lio/netty/channel/DefaultFileRegion;JJJ)J

    move-result-wide v2

    .line 221
    .local v2, "flushedAmount":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 222
    invoke-virtual {p1, v2, v3}, Lio/netty/channel/ChannelOutboundBuffer;->progress(J)V

    .line 223
    invoke-virtual {p2}, Lio/netty/channel/DefaultFileRegion;->transferred()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-ltz v4, :cond_1

    .line 224
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 226
    :cond_1
    const/4 v4, 0x1

    return v4

    .line 227
    :cond_2
    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    .line 228
    invoke-virtual {p0, p2, v10, v11}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->validateFileRegion(Lio/netty/channel/DefaultFileRegion;J)V

    .line 230
    :cond_3
    const v4, 0x7fffffff

    return v4
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

    .line 248
    invoke-interface {p2}, Lio/netty/channel/FileRegion;->transferred()J

    move-result-wide v0

    invoke-interface {p2}, Lio/netty/channel/FileRegion;->count()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 249
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 250
    const/4 v0, 0x0

    return v0

    .line 253
    :cond_0
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->byteChannel:Ljava/nio/channels/WritableByteChannel;

    if-nez v0, :cond_1

    .line 254
    new-instance v0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueSocketWritableByteChannel;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueSocketWritableByteChannel;-><init>(Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;)V

    iput-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->byteChannel:Ljava/nio/channels/WritableByteChannel;

    .line 256
    :cond_1
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->byteChannel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {p2}, Lio/netty/channel/FileRegion;->transferred()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lio/netty/channel/FileRegion;->transferTo(Ljava/nio/channels/WritableByteChannel;J)J

    move-result-wide v0

    .line 257
    .local v0, "flushedAmount":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 258
    invoke-virtual {p1, v0, v1}, Lio/netty/channel/ChannelOutboundBuffer;->progress(J)V

    .line 259
    invoke-interface {p2}, Lio/netty/channel/FileRegion;->transferred()J

    move-result-wide v2

    invoke-interface {p2}, Lio/netty/channel/FileRegion;->count()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 260
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 262
    :cond_2
    const/4 v2, 0x1

    return v2

    .line 264
    :cond_3
    const v2, 0x7fffffff

    return v2
.end method


# virtual methods
.method protected final doShutdownOutput()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/kqueue/BsdSocket;->shutdown(ZZ)V

    .line 382
    return-void
.end method

.method protected doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .locals 5
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->config()Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueChannelConfig;->getWriteSpinCount()I

    move-result v0

    .line 271
    .local v0, "writeSpinCount":I
    :cond_0
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->size()I

    move-result v1

    .line 273
    .local v1, "msgCount":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lio/netty/buffer/ByteBuf;

    if-eqz v4, :cond_1

    .line 274
    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->doWriteMultiple(Lio/netty/channel/ChannelOutboundBuffer;)I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_0

    .line 275
    :cond_1
    if-nez v1, :cond_2

    .line 277
    invoke-virtual {p0, v2}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->writeFilter(Z)V

    .line 279
    return-void

    .line 281
    :cond_2
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->doWriteSingle(Lio/netty/channel/ChannelOutboundBuffer;)I

    move-result v4

    sub-int/2addr v0, v4

    .line 287
    .end local v1    # "msgCount":I
    :goto_0
    if-gtz v0, :cond_0

    .line 289
    if-nez v0, :cond_3

    .line 294
    invoke-virtual {p0, v2}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->writeFilter(Z)V

    .line 297
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    iget-object v2, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->flushTask:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 301
    :cond_3
    invoke-virtual {p0, v3}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->writeFilter(Z)V

    .line 303
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

    .line 321
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v0

    .line 322
    .local v0, "msg":Ljava/lang/Object;
    instance-of v1, v0, Lio/netty/buffer/ByteBuf;

    if-eqz v1, :cond_0

    .line 323
    move-object v1, v0

    check-cast v1, Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, p1, v1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->writeBytes(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/buffer/ByteBuf;)I

    move-result v1

    return v1

    .line 324
    :cond_0
    instance-of v1, v0, Lio/netty/channel/DefaultFileRegion;

    if-eqz v1, :cond_1

    .line 325
    move-object v1, v0

    check-cast v1, Lio/netty/channel/DefaultFileRegion;

    invoke-direct {p0, p1, v1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->writeDefaultFileRegion(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/channel/DefaultFileRegion;)I

    move-result v1

    return v1

    .line 326
    :cond_1
    instance-of v1, v0, Lio/netty/channel/FileRegion;

    if-eqz v1, :cond_2

    .line 327
    move-object v1, v0

    check-cast v1, Lio/netty/channel/FileRegion;

    invoke-direct {p0, p1, v1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->writeFileRegion(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/channel/FileRegion;)I

    move-result v1

    return v1

    .line 330
    :cond_2
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    throw v1
.end method

.method protected filterOutboundMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "msg"    # Ljava/lang/Object;

    .line 365
    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_1

    .line 366
    move-object v0, p1

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 367
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-static {v0}, Lio/netty/channel/unix/UnixChannelUtil;->isBufferCopyNeededForWrite(Lio/netty/buffer/ByteBuf;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->newDirectBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 370
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_1
    instance-of v0, p1, Lio/netty/channel/FileRegion;

    if-eqz v0, :cond_2

    .line 371
    return-object p1

    .line 374
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 375
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->EXPECTED_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic isActive()Z
    .locals 1

    .line 50
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isActive()Z

    move-result v0

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    .line 391
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpen()Z
    .locals 1

    .line 50
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .line 386
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 396
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 86
    sget-object v0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method protected bridge synthetic newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->newUnsafe()Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;

    move-result-object v0

    return-object v0
.end method

.method protected newUnsafe()Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
    .locals 1

    .line 81
    new-instance v0, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$KQueueStreamUnsafe;-><init>(Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;)V

    return-object v0
.end method

.method public shutdown()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 453
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->shutdown(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public shutdown(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 458
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->shutdownOutput()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 459
    .local v0, "shutdownOutputFuture":Lio/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    invoke-direct {p0, v0, p1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->shutdownOutputDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 462
    :cond_0
    new-instance v1, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$4;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$4;-><init>(Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 469
    :goto_0
    return-object p1
.end method

.method public shutdownInput()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 422
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->shutdownInput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public shutdownInput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 427
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 428
    .local v0, "loop":Lio/netty/channel/EventLoop;
    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->shutdownInput0(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 431
    :cond_0
    new-instance v1, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$3;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$3;-><init>(Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 438
    :goto_0
    return-object p1
.end method

.method public shutdownOutput()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 401
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->shutdownOutput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public shutdownOutput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 406
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 407
    .local v0, "loop":Lio/netty/channel/EventLoop;
    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    check-cast v1, Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    invoke-virtual {v1, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->shutdownOutput(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 410
    :cond_0
    new-instance v1, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$2;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueStreamChannel$2;-><init>(Lio/netty/channel/kqueue/AbstractKQueueStreamChannel;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 417
    :goto_0
    return-object p1
.end method
