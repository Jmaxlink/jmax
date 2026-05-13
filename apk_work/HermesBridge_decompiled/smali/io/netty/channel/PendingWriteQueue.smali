.class public final Lio/netty/channel/PendingWriteQueue;
.super Ljava/lang/Object;
.source "PendingWriteQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/PendingWriteQueue$PendingWrite;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PENDING_WRITE_OVERHEAD:I

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private bytes:J

.field private final executor:Lio/netty/util/concurrent/EventExecutor;

.field private head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

.field private final invoker:Lio/netty/channel/ChannelOutboundInvoker;

.field private size:I

.field private tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

.field private final tracker:Lio/netty/channel/PendingBytesTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    nop

    .line 34
    const-class v0, Lio/netty/channel/PendingWriteQueue;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/PendingWriteQueue;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 39
    nop

    .line 40
    const-string v0, "io.netty.transport.pendingWriteSizeOverhead"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lio/netty/channel/PendingWriteQueue;->PENDING_WRITE_OVERHEAD:I

    .line 39
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/Channel;)V
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lio/netty/channel/PendingBytesTracker;->newTracker(Lio/netty/channel/Channel;)Lio/netty/channel/PendingBytesTracker;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/PendingWriteQueue;->tracker:Lio/netty/channel/PendingBytesTracker;

    .line 60
    iput-object p1, p0, Lio/netty/channel/PendingWriteQueue;->invoker:Lio/netty/channel/ChannelOutboundInvoker;

    .line 61
    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/PendingWriteQueue;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 62
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/PendingBytesTracker;->newTracker(Lio/netty/channel/Channel;)Lio/netty/channel/PendingBytesTracker;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/PendingWriteQueue;->tracker:Lio/netty/channel/PendingBytesTracker;

    .line 54
    iput-object p1, p0, Lio/netty/channel/PendingWriteQueue;->invoker:Lio/netty/channel/ChannelOutboundInvoker;

    .line 55
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/PendingWriteQueue;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 56
    return-void
.end method

.method private assertEmpty()V
    .locals 1

    .line 212
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez v0, :cond_0

    iget v0, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    if-nez v0, :cond_0

    .line 213
    return-void

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;Z)V
    .locals 7
    .param p1, "write"    # Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .param p2, "update"    # Z

    .line 265
    invoke-static {p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$000(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object v0

    .line 266
    .local v0, "next":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    invoke-static {p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$100(Lio/netty/channel/PendingWriteQueue$PendingWrite;)J

    move-result-wide v1

    .line 268
    .local v1, "writeSize":J
    if-eqz p2, :cond_2

    .line 269
    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    .line 272
    const/4 v5, 0x0

    iput-object v5, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    iput-object v5, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 273
    const/4 v5, 0x0

    iput v5, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    .line 274
    iput-wide v3, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    goto :goto_0

    .line 276
    :cond_0
    iput-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 277
    iget v5, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    .line 278
    iget-wide v5, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    sub-long/2addr v5, v1

    iput-wide v5, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    .line 279
    iget v5, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    if-lez v5, :cond_1

    iget-wide v5, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    cmp-long v3, v5, v3

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 283
    :cond_2
    :goto_0
    invoke-static {p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$400(Lio/netty/channel/PendingWriteQueue$PendingWrite;)V

    .line 284
    iget-object v3, p0, Lio/netty/channel/PendingWriteQueue;->tracker:Lio/netty/channel/PendingBytesTracker;

    invoke-virtual {v3, v1, v2}, Lio/netty/channel/PendingBytesTracker;->decrementPendingOutboundBytes(J)V

    .line 285
    return-void
.end method

.method private static safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 288
    instance-of v0, p0, Lio/netty/channel/VoidChannelPromise;

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    sget-object v0, Lio/netty/channel/PendingWriteQueue;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Failed to mark a promise as failure because it\'s done already: {}"

    invoke-interface {v0, v1, p0, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    :cond_0
    return-void
.end method

.method private size(Ljava/lang/Object;)I
    .locals 2
    .param p1, "msg"    # Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->tracker:Lio/netty/channel/PendingBytesTracker;

    invoke-virtual {v0, p1}, Lio/netty/channel/PendingBytesTracker;->size(Ljava/lang/Object;)I

    move-result v0

    .line 93
    .local v0, "messageSize":I
    if-gez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 97
    :cond_0
    sget v1, Lio/netty/channel/PendingWriteQueue;->PENDING_WRITE_OVERHEAD:I

    add-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 104
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const-string v0, "msg"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    const-string v0, "promise"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    invoke-direct {p0, p1}, Lio/netty/channel/PendingWriteQueue;->size(Ljava/lang/Object;)I

    move-result v0

    .line 111
    .local v0, "messageSize":I
    invoke-static {p1, v0, p2}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->newInstance(Ljava/lang/Object;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object v1

    .line 112
    .local v1, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    iget-object v2, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 113
    .local v2, "currentTail":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    if-nez v2, :cond_0

    .line 114
    iput-object v1, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    iput-object v1, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {v2, v1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$002(Lio/netty/channel/PendingWriteQueue$PendingWrite;Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 117
    iput-object v1, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 119
    :goto_0
    iget v3, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    .line 120
    iget-wide v3, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    .line 121
    iget-object v3, p0, Lio/netty/channel/PendingWriteQueue;->tracker:Lio/netty/channel/PendingBytesTracker;

    invoke-static {v1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$100(Lio/netty/channel/PendingWriteQueue$PendingWrite;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lio/netty/channel/PendingBytesTracker;->incrementPendingOutboundBytes(J)V

    .line 122
    return-void

    .line 104
    .end local v0    # "messageSize":I
    .end local v1    # "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .end local v2    # "currentTail":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bytes()J
    .locals 2

    .line 85
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-wide v0, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    return-wide v0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public current()Ljava/lang/Object;
    .locals 2

    .line 256
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 258
    .local v0, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    if-nez v0, :cond_0

    .line 259
    const/4 v1, 0x0

    return-object v1

    .line 261
    :cond_0
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$200(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 256
    .end local v0    # "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public remove()Lio/netty/channel/ChannelPromise;
    .locals 3

    .line 241
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 243
    .local v0, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    if-nez v0, :cond_0

    .line 244
    const/4 v1, 0x0

    return-object v1

    .line 246
    :cond_0
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$300(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v1

    .line 247
    .local v1, "promise":Lio/netty/channel/ChannelPromise;
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$200(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 248
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;Z)V

    .line 249
    return-object v1

    .line 241
    .end local v0    # "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .end local v1    # "promise":Lio/netty/channel/ChannelPromise;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public removeAndFail(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 198
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    const-string v0, "cause"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 202
    .local v0, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    if-nez v0, :cond_0

    .line 203
    return-void

    .line 205
    :cond_0
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$200(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 206
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$300(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v1

    .line 207
    .local v1, "promise":Lio/netty/channel/ChannelPromise;
    invoke-static {v1, p1}, Lio/netty/channel/PendingWriteQueue;->safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 208
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;Z)V

    .line 209
    return-void

    .line 198
    .end local v0    # "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .end local v1    # "promise":Lio/netty/channel/ChannelPromise;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public removeAndFailAll(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 173
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    const-string v0, "cause"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .local v0, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    :goto_0
    if-eqz v0, :cond_1

    .line 178
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    iput-object v1, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 179
    const/4 v1, 0x0

    iput v1, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    .line 180
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    .line 181
    :goto_1
    if-eqz v0, :cond_0

    .line 182
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$000(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object v2

    .line 183
    .local v2, "next":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$200(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 184
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$300(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v3

    .line 185
    .local v3, "promise":Lio/netty/channel/ChannelPromise;
    invoke-direct {p0, v0, v1}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;Z)V

    .line 186
    invoke-static {v3, p1}, Lio/netty/channel/PendingWriteQueue;->safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 187
    move-object v0, v2

    .line 188
    .end local v2    # "next":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .end local v3    # "promise":Lio/netty/channel/ChannelPromise;
    goto :goto_1

    .line 177
    :cond_0
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    goto :goto_0

    .line 190
    .end local v0    # "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    :cond_1
    invoke-direct {p0}, Lio/netty/channel/PendingWriteQueue;->assertEmpty()V

    .line 191
    return-void

    .line 173
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public removeAndWrite()Lio/netty/channel/ChannelFuture;
    .locals 4

    .line 223
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 225
    .local v0, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    if-nez v0, :cond_0

    .line 226
    const/4 v1, 0x0

    return-object v1

    .line 228
    :cond_0
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$200(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v1

    .line 229
    .local v1, "msg":Ljava/lang/Object;
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$300(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v2

    .line 230
    .local v2, "promise":Lio/netty/channel/ChannelPromise;
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;Z)V

    .line 231
    iget-object v3, p0, Lio/netty/channel/PendingWriteQueue;->invoker:Lio/netty/channel/ChannelOutboundInvoker;

    invoke-interface {v3, v1, v2}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v3

    return-object v3

    .line 223
    .end local v0    # "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .end local v1    # "msg":Ljava/lang/Object;
    .end local v2    # "promise":Lio/netty/channel/ChannelPromise;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public removeAndWriteAll()Lio/netty/channel/ChannelFuture;
    .locals 9

    .line 132
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 134
    invoke-virtual {p0}, Lio/netty/channel/PendingWriteQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 135
    return-object v1

    .line 138
    :cond_0
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->invoker:Lio/netty/channel/ChannelOutboundInvoker;

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    .line 139
    .local v0, "p":Lio/netty/channel/ChannelPromise;
    new-instance v2, Lio/netty/util/concurrent/PromiseCombiner;

    iget-object v3, p0, Lio/netty/channel/PendingWriteQueue;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-direct {v2, v3}, Lio/netty/util/concurrent/PromiseCombiner;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 143
    .local v2, "combiner":Lio/netty/util/concurrent/PromiseCombiner;
    :try_start_0
    iget-object v3, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .local v3, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    :goto_0
    if-eqz v3, :cond_3

    .line 144
    iput-object v1, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    iput-object v1, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 145
    const/4 v4, 0x0

    iput v4, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    .line 146
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    .line 148
    :goto_1
    if-eqz v3, :cond_2

    .line 149
    invoke-static {v3}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$000(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object v5

    .line 150
    .local v5, "next":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    invoke-static {v3}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$200(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v6

    .line 151
    .local v6, "msg":Ljava/lang/Object;
    invoke-static {v3}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$300(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v7

    .line 152
    .local v7, "promise":Lio/netty/channel/ChannelPromise;
    invoke-direct {p0, v3, v4}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;Z)V

    .line 153
    instance-of v8, v7, Lio/netty/channel/VoidChannelPromise;

    if-nez v8, :cond_1

    .line 154
    invoke-virtual {v2, v7}, Lio/netty/util/concurrent/PromiseCombiner;->add(Lio/netty/util/concurrent/Promise;)V

    .line 156
    :cond_1
    iget-object v8, p0, Lio/netty/channel/PendingWriteQueue;->invoker:Lio/netty/channel/ChannelOutboundInvoker;

    invoke-interface {v8, v6, v7}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 157
    move-object v3, v5

    .line 158
    .end local v5    # "next":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .end local v6    # "msg":Ljava/lang/Object;
    .end local v7    # "promise":Lio/netty/channel/ChannelPromise;
    goto :goto_1

    .line 143
    :cond_2
    iget-object v4, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-object v3, v4

    goto :goto_0

    .line 160
    .end local v3    # "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    :cond_3
    invoke-virtual {v2, v0}, Lio/netty/util/concurrent/PromiseCombiner;->finish(Lio/netty/util/concurrent/Promise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    goto :goto_2

    .line 161
    :catchall_0
    move-exception v1

    .line 162
    .local v1, "cause":Ljava/lang/Throwable;
    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 164
    .end local v1    # "cause":Ljava/lang/Throwable;
    :goto_2
    invoke-direct {p0}, Lio/netty/channel/PendingWriteQueue;->assertEmpty()V

    .line 165
    return-object v0

    .line 132
    .end local v0    # "p":Lio/netty/channel/ChannelPromise;
    .end local v2    # "combiner":Lio/netty/util/concurrent/PromiseCombiner;
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 76
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget v0, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    return v0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
