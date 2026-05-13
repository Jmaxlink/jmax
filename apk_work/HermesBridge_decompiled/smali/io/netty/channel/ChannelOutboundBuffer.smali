.class public final Lio/netty/channel/ChannelOutboundBuffer;
.super Ljava/lang/Object;
.source "ChannelOutboundBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/ChannelOutboundBuffer$Entry;,
        Lio/netty/channel/ChannelOutboundBuffer$MessageProcessor;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final CHANNEL_OUTBOUND_BUFFER_ENTRY_OVERHEAD:I

.field private static final NIO_BUFFERS:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "[",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOTAL_PENDING_SIZE_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lio/netty/channel/ChannelOutboundBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNWRITABLE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/netty/channel/ChannelOutboundBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final channel:Lio/netty/channel/Channel;

.field private volatile fireChannelWritabilityChangedTask:Ljava/lang/Runnable;

.field private flushed:I

.field private flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

.field private inFail:Z

.field private nioBufferCount:I

.field private nioBufferSize:J

.field private tailEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

.field private volatile totalPendingSize:J

.field private unflushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

.field private volatile unwritable:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    nop

    .line 62
    nop

    .line 63
    const-string v0, "io.netty.transport.outboundBufferEntrySizeOverhead"

    const/16 v1, 0x60

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lio/netty/channel/ChannelOutboundBuffer;->CHANNEL_OUTBOUND_BUFFER_ENTRY_OVERHEAD:I

    .line 65
    const-class v0, Lio/netty/channel/ChannelOutboundBuffer;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/channel/ChannelOutboundBuffer;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 67
    new-instance v1, Lio/netty/channel/ChannelOutboundBuffer$1;

    invoke-direct {v1}, Lio/netty/channel/ChannelOutboundBuffer$1;-><init>()V

    sput-object v1, Lio/netty/channel/ChannelOutboundBuffer;->NIO_BUFFERS:Lio/netty/util/concurrent/FastThreadLocal;

    .line 92
    nop

    .line 93
    const-string v1, "totalPendingSize"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lio/netty/channel/ChannelOutboundBuffer;->TOTAL_PENDING_SIZE_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 98
    nop

    .line 99
    const-string v1, "unwritable"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/channel/ChannelOutboundBuffer;->UNWRITABLE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 98
    return-void
.end method

.method constructor <init>(Lio/netty/channel/AbstractChannel;)V
    .locals 0
    .param p1, "channel"    # Lio/netty/channel/AbstractChannel;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lio/netty/channel/ChannelOutboundBuffer;->channel:Lio/netty/channel/Channel;

    .line 108
    return-void
.end method

.method private clearNioBuffers()V
    .locals 4

    .line 376
    iget v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->nioBufferCount:I

    .line 377
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 378
    const/4 v1, 0x0

    iput v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->nioBufferCount:I

    .line 379
    sget-object v2, Lio/netty/channel/ChannelOutboundBuffer;->NIO_BUFFERS:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v2}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 381
    :cond_0
    return-void
.end method

.method private clearUserDefinedWritability(I)V
    .locals 4
    .param p1, "index"    # I

    .line 577
    invoke-static {p1}, Lio/netty/channel/ChannelOutboundBuffer;->writabilityMask(I)I

    move-result v0

    .line 579
    .local v0, "mask":I
    :goto_0
    iget v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->unwritable:I

    .line 580
    .local v1, "oldValue":I
    or-int v2, v1, v0

    .line 581
    .local v2, "newValue":I
    sget-object v3, Lio/netty/channel/ChannelOutboundBuffer;->UNWRITABLE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 582
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 583
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lio/netty/channel/ChannelOutboundBuffer;->fireChannelWritabilityChanged(Z)V

    .line 588
    .end local v1    # "oldValue":I
    .end local v2    # "newValue":I
    :cond_0
    return-void

    .line 587
    :cond_1
    goto :goto_0
.end method

.method private decrementPendingOutboundBytes(JZZ)V
    .locals 4
    .param p1, "size"    # J
    .param p3, "invokeLater"    # Z
    .param p4, "notifyWritability"    # Z

    .line 190
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 191
    return-void

    .line 194
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOutboundBuffer;->TOTAL_PENDING_SIZE_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    neg-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 195
    .local v0, "newWriteBufferSize":J
    if-eqz p4, :cond_1

    iget-object v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->channel:Lio/netty/channel/Channel;

    invoke-interface {v2}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/ChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 196
    invoke-direct {p0, p3}, Lio/netty/channel/ChannelOutboundBuffer;->setWritable(Z)V

    .line 198
    :cond_1
    return-void
.end method

.method private static expandNioBufferArray([Ljava/nio/ByteBuffer;II)[Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "array"    # [Ljava/nio/ByteBuffer;
    .param p1, "neededSpace"    # I
    .param p2, "size"    # I

    .line 497
    array-length v0, p0

    .line 501
    .local v0, "newCapacity":I
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 503
    if-ltz v0, :cond_1

    .line 507
    if-gt p1, v0, :cond_0

    .line 509
    new-array v1, v0, [Ljava/nio/ByteBuffer;

    .line 510
    .local v1, "newArray":[Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 512
    return-object v1

    .line 504
    .end local v1    # "newArray":[Ljava/nio/ByteBuffer;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method private fireChannelWritabilityChanged(Z)V
    .locals 3
    .param p1, "invokeLater"    # Z

    .line 624
    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 625
    .local v0, "pipeline":Lio/netty/channel/ChannelPipeline;
    if-eqz p1, :cond_1

    .line 626
    iget-object v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->fireChannelWritabilityChangedTask:Ljava/lang/Runnable;

    .line 627
    .local v1, "task":Ljava/lang/Runnable;
    if-nez v1, :cond_0

    .line 628
    new-instance v2, Lio/netty/channel/ChannelOutboundBuffer$2;

    invoke-direct {v2, p0, v0}, Lio/netty/channel/ChannelOutboundBuffer$2;-><init>(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/channel/ChannelPipeline;)V

    move-object v1, v2

    iput-object v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->fireChannelWritabilityChangedTask:Ljava/lang/Runnable;

    .line 635
    :cond_0
    iget-object v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->channel:Lio/netty/channel/Channel;

    invoke-interface {v2}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 636
    .end local v1    # "task":Ljava/lang/Runnable;
    goto :goto_0

    .line 637
    :cond_1
    invoke-interface {v0}, Lio/netty/channel/ChannelPipeline;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelPipeline;

    .line 639
    :goto_0
    return-void
.end method

.method private incrementPendingOutboundBytes(JZ)V
    .locals 4
    .param p1, "size"    # J
    .param p3, "invokeLater"    # Z

    .line 171
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 172
    return-void

    .line 175
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOutboundBuffer;->TOTAL_PENDING_SIZE_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 176
    .local v0, "newWriteBufferSize":J
    iget-object v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->channel:Lio/netty/channel/Channel;

    invoke-interface {v2}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/ChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 177
    invoke-direct {p0, p3}, Lio/netty/channel/ChannelOutboundBuffer;->setUnwritable(Z)V

    .line 179
    :cond_1
    return-void
.end method

.method private isFlushedEntry(Lio/netty/channel/ChannelOutboundBuffer$Entry;)Z
    .locals 1
    .param p1, "e"    # Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 794
    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->unflushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static nioBuffers(Lio/netty/channel/ChannelOutboundBuffer$Entry;Lio/netty/buffer/ByteBuf;[Ljava/nio/ByteBuffer;II)I
    .locals 4
    .param p0, "entry"    # Lio/netty/channel/ChannelOutboundBuffer$Entry;
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "nioBuffers"    # [Ljava/nio/ByteBuffer;
    .param p3, "nioBufferCount"    # I
    .param p4, "maxCount"    # I

    .line 478
    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->bufs:[Ljava/nio/ByteBuffer;

    .line 479
    .local v0, "nioBufs":[Ljava/nio/ByteBuffer;
    if-nez v0, :cond_0

    .line 482
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->nioBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->bufs:[Ljava/nio/ByteBuffer;

    .line 484
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    if-ge p3, p4, :cond_3

    .line 485
    aget-object v2, v0, v1

    .line 486
    .local v2, "nioBuf":Ljava/nio/ByteBuffer;
    if-nez v2, :cond_1

    .line 487
    goto :goto_2

    .line 488
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_2

    .line 489
    goto :goto_1

    .line 491
    :cond_2
    add-int/lit8 v3, p3, 0x1

    .end local p3    # "nioBufferCount":I
    .local v3, "nioBufferCount":I
    aput-object v2, p2, p3

    move p3, v3

    .line 484
    .end local v2    # "nioBuf":Ljava/nio/ByteBuffer;
    .end local v3    # "nioBufferCount":I
    .restart local p3    # "nioBufferCount":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v1    # "i":I
    :cond_3
    :goto_2
    return p3
.end method

.method private remove0(Ljava/lang/Throwable;Z)Z
    .locals 7
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "notifyWritability"    # Z

    .line 301
    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 302
    .local v0, "e":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 303
    invoke-direct {p0}, Lio/netty/channel/ChannelOutboundBuffer;->clearNioBuffers()V

    .line 304
    return v1

    .line 306
    :cond_0
    iget-object v2, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->msg:Ljava/lang/Object;

    .line 308
    .local v2, "msg":Ljava/lang/Object;
    iget-object v3, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->promise:Lio/netty/channel/ChannelPromise;

    .line 309
    .local v3, "promise":Lio/netty/channel/ChannelPromise;
    iget v4, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->pendingSize:I

    .line 311
    .local v4, "size":I
    invoke-direct {p0, v0}, Lio/netty/channel/ChannelOutboundBuffer;->removeEntry(Lio/netty/channel/ChannelOutboundBuffer$Entry;)V

    .line 313
    iget-boolean v5, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->cancelled:Z

    if-nez v5, :cond_1

    .line 315
    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 317
    invoke-static {v3, p1}, Lio/netty/channel/ChannelOutboundBuffer;->safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 318
    int-to-long v5, v4

    invoke-direct {p0, v5, v6, v1, p2}, Lio/netty/channel/ChannelOutboundBuffer;->decrementPendingOutboundBytes(JZZ)V

    .line 322
    :cond_1
    invoke-virtual {v0}, Lio/netty/channel/ChannelOutboundBuffer$Entry;->unguardedRecycle()V

    .line 324
    const/4 v1, 0x1

    return v1
.end method

.method private removeEntry(Lio/netty/channel/ChannelOutboundBuffer$Entry;)V
    .locals 2
    .param p1, "e"    # Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 328
    iget v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushed:I

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 331
    iget-object v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->tailEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    if-ne p1, v1, :cond_1

    .line 332
    iput-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->tailEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 333
    iput-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->unflushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    goto :goto_0

    .line 336
    :cond_0
    iget-object v0, p1, Lio/netty/channel/ChannelOutboundBuffer$Entry;->next:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    iput-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 338
    :cond_1
    :goto_0
    return-void
.end method

.method private static safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 732
    instance-of v0, p0, Lio/netty/channel/VoidChannelPromise;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOutboundBuffer;->logger:Lio/netty/util/internal/logging/InternalLogger;

    :goto_0
    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PromiseNotificationUtil;->tryFailure(Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;Lio/netty/util/internal/logging/InternalLogger;)V

    .line 733
    return-void
.end method

.method private static safeSuccess(Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p0, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 726
    instance-of v0, p0, Lio/netty/channel/VoidChannelPromise;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOutboundBuffer;->logger:Lio/netty/util/internal/logging/InternalLogger;

    :goto_0
    invoke-static {p0, v1, v0}, Lio/netty/util/internal/PromiseNotificationUtil;->trySuccess(Lio/netty/util/concurrent/Promise;Ljava/lang/Object;Lio/netty/util/internal/logging/InternalLogger;)V

    .line 727
    return-void
.end method

.method private setUnwritable(Z)V
    .locals 3
    .param p1, "invokeLater"    # Z

    .line 612
    nop

    :goto_0
    iget v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->unwritable:I

    .line 613
    .local v0, "oldValue":I
    or-int/lit8 v1, v0, 0x1

    .line 614
    .local v1, "newValue":I
    sget-object v2, Lio/netty/channel/ChannelOutboundBuffer;->UNWRITABLE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 615
    if-nez v0, :cond_0

    .line 616
    invoke-direct {p0, p1}, Lio/netty/channel/ChannelOutboundBuffer;->fireChannelWritabilityChanged(Z)V

    .line 621
    .end local v0    # "oldValue":I
    .end local v1    # "newValue":I
    :cond_0
    return-void

    .line 620
    :cond_1
    goto :goto_0
.end method

.method private setUserDefinedWritability(I)V
    .locals 4
    .param p1, "index"    # I

    .line 563
    invoke-static {p1}, Lio/netty/channel/ChannelOutboundBuffer;->writabilityMask(I)I

    move-result v0

    not-int v0, v0

    .line 565
    .local v0, "mask":I
    :goto_0
    iget v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->unwritable:I

    .line 566
    .local v1, "oldValue":I
    and-int v2, v1, v0

    .line 567
    .local v2, "newValue":I
    sget-object v3, Lio/netty/channel/ChannelOutboundBuffer;->UNWRITABLE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 568
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    .line 569
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lio/netty/channel/ChannelOutboundBuffer;->fireChannelWritabilityChanged(Z)V

    .line 574
    .end local v1    # "oldValue":I
    .end local v2    # "newValue":I
    :cond_0
    return-void

    .line 573
    :cond_1
    goto :goto_0
.end method

.method private setWritable(Z)V
    .locals 3
    .param p1, "invokeLater"    # Z

    .line 599
    nop

    :goto_0
    iget v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->unwritable:I

    .line 600
    .local v0, "oldValue":I
    and-int/lit8 v1, v0, -0x2

    .line 601
    .local v1, "newValue":I
    sget-object v2, Lio/netty/channel/ChannelOutboundBuffer;->UNWRITABLE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 602
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 603
    invoke-direct {p0, p1}, Lio/netty/channel/ChannelOutboundBuffer;->fireChannelWritabilityChanged(Z)V

    .line 608
    .end local v0    # "oldValue":I
    .end local v1    # "newValue":I
    :cond_0
    return-void

    .line 607
    :cond_1
    goto :goto_0
.end method

.method private static total(Ljava/lang/Object;)J
    .locals 2
    .param p0, "msg"    # Ljava/lang/Object;

    .line 201
    instance-of v0, p0, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 202
    move-object v0, p0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 204
    :cond_0
    instance-of v0, p0, Lio/netty/channel/FileRegion;

    if-eqz v0, :cond_1

    .line 205
    move-object v0, p0

    check-cast v0, Lio/netty/channel/FileRegion;

    invoke-interface {v0}, Lio/netty/channel/FileRegion;->count()J

    move-result-wide v0

    return-wide v0

    .line 207
    :cond_1
    instance-of v0, p0, Lio/netty/buffer/ByteBufHolder;

    if-eqz v0, :cond_2

    .line 208
    move-object v0, p0

    check-cast v0, Lio/netty/buffer/ByteBufHolder;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 210
    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static writabilityMask(I)I
    .locals 3
    .param p0, "index"    # I

    .line 591
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x1f

    if-gt p0, v1, :cond_0

    .line 594
    shl-int/2addr v0, p0

    return v0

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 1~31)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addFlush()V
    .locals 6

    .line 141
    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->unflushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 142
    .local v0, "entry":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    if-eqz v0, :cond_2

    .line 143
    iget-object v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    if-nez v1, :cond_0

    .line 145
    iput-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 148
    :cond_0
    iget v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushed:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushed:I

    .line 149
    iget-object v1, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v1}, Lio/netty/channel/ChannelPromise;->setUncancellable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    invoke-virtual {v0}, Lio/netty/channel/ChannelOutboundBuffer$Entry;->cancel()I

    move-result v1

    .line 152
    .local v1, "pending":I
    int-to-long v3, v1

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5, v2}, Lio/netty/channel/ChannelOutboundBuffer;->decrementPendingOutboundBytes(JZZ)V

    .line 154
    .end local v1    # "pending":I
    :cond_1
    iget-object v0, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->next:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 155
    if-nez v0, :cond_0

    .line 158
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->unflushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 160
    :cond_2
    return-void
.end method

.method public addMessage(Ljava/lang/Object;ILio/netty/channel/ChannelPromise;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "size"    # I
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 115
    invoke-static {p1}, Lio/netty/channel/ChannelOutboundBuffer;->total(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1, p3}, Lio/netty/channel/ChannelOutboundBuffer$Entry;->newInstance(Ljava/lang/Object;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelOutboundBuffer$Entry;

    move-result-object v0

    .line 116
    .local v0, "entry":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    iget-object v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->tailEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    if-nez v1, :cond_0

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    goto :goto_0

    .line 119
    :cond_0
    iget-object v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->tailEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 120
    .local v1, "tail":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    iput-object v0, v1, Lio/netty/channel/ChannelOutboundBuffer$Entry;->next:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 122
    .end local v1    # "tail":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    :goto_0
    iput-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->tailEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 123
    iget-object v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->unflushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    if-nez v1, :cond_1

    .line 124
    iput-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->unflushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 129
    :cond_1
    iget v1, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->pendingSize:I

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lio/netty/channel/ChannelOutboundBuffer;->incrementPendingOutboundBytes(JZ)V

    .line 130
    return-void
.end method

.method public bytesBeforeUnwritable()J
    .locals 5

    .line 750
    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->totalPendingSize:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 754
    .local v0, "bytes":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lio/netty/channel/ChannelOutboundBuffer;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_0

    move-wide v2, v0

    :cond_0
    return-wide v2
.end method

.method public bytesBeforeWritable()J
    .locals 5

    .line 763
    iget-wide v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->totalPendingSize:J

    iget-object v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->channel:Lio/netty/channel/Channel;

    invoke-interface {v2}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/ChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 767
    .local v0, "bytes":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lio/netty/channel/ChannelOutboundBuffer;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method close(Ljava/lang/Throwable;Z)V
    .locals 6
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "allowChannelOpen"    # Z

    .line 679
    iget-boolean v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->inFail:Z

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    new-instance v1, Lio/netty/channel/ChannelOutboundBuffer$3;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/channel/ChannelOutboundBuffer$3;-><init>(Lio/netty/channel/ChannelOutboundBuffer;Ljava/lang/Throwable;Z)V

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 686
    return-void

    .line 689
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->inFail:Z

    .line 691
    if-nez p2, :cond_2

    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 692
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "close() must be invoked after the channel is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lio/netty/channel/ChannelOutboundBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 701
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->unflushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 702
    .local v1, "e":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    :goto_1
    if-eqz v1, :cond_4

    .line 704
    iget v2, v1, Lio/netty/channel/ChannelOutboundBuffer$Entry;->pendingSize:I

    .line 705
    .local v2, "size":I
    sget-object v3, Lio/netty/channel/ChannelOutboundBuffer;->TOTAL_PENDING_SIZE_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    neg-int v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 707
    iget-boolean v3, v1, Lio/netty/channel/ChannelOutboundBuffer$Entry;->cancelled:Z

    if-nez v3, :cond_3

    .line 708
    iget-object v3, v1, Lio/netty/channel/ChannelOutboundBuffer$Entry;->msg:Ljava/lang/Object;

    invoke-static {v3}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 709
    iget-object v3, v1, Lio/netty/channel/ChannelOutboundBuffer$Entry;->promise:Lio/netty/channel/ChannelPromise;

    invoke-static {v3, p1}, Lio/netty/channel/ChannelOutboundBuffer;->safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 711
    :cond_3
    invoke-virtual {v1}, Lio/netty/channel/ChannelOutboundBuffer$Entry;->unguardedRecycleAndGetNext()Lio/netty/channel/ChannelOutboundBuffer$Entry;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 712
    .end local v2    # "size":I
    goto :goto_1

    .line 714
    .end local v1    # "e":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    :cond_4
    iput-boolean v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->inFail:Z

    .line 715
    nop

    .line 716
    invoke-direct {p0}, Lio/netty/channel/ChannelOutboundBuffer;->clearNioBuffers()V

    .line 717
    return-void

    .line 714
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->inFail:Z

    .line 715
    throw v1

    .line 696
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "close() must be invoked after all flushed writes are handled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method close(Ljava/nio/channels/ClosedChannelException;)V
    .locals 1
    .param p1, "cause"    # Ljava/nio/channels/ClosedChannelException;

    .line 720
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/ChannelOutboundBuffer;->close(Ljava/lang/Throwable;Z)V

    .line 721
    return-void
.end method

.method public current()Ljava/lang/Object;
    .locals 2

    .line 217
    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 218
    .local v0, "entry":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    if-nez v0, :cond_0

    .line 219
    const/4 v1, 0x0

    return-object v1

    .line 222
    :cond_0
    iget-object v1, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->msg:Ljava/lang/Object;

    return-object v1
.end method

.method public currentProgress()J
    .locals 3

    .line 230
    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 231
    .local v0, "entry":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    if-nez v0, :cond_0

    .line 232
    const-wide/16 v1, 0x0

    return-wide v1

    .line 234
    :cond_0
    iget-wide v1, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->progress:J

    return-wide v1
.end method

.method decrementPendingOutboundBytes(J)V
    .locals 1
    .param p1, "size"    # J

    .line 186
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lio/netty/channel/ChannelOutboundBuffer;->decrementPendingOutboundBytes(JZZ)V

    .line 187
    return-void
.end method

.method failFlushed(Ljava/lang/Throwable;Z)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "notify"    # Z

    .line 662
    iget-boolean v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->inFail:Z

    if-eqz v0, :cond_0

    .line 663
    return-void

    .line 667
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->inFail:Z

    .line 669
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/netty/channel/ChannelOutboundBuffer;->remove0(Ljava/lang/Throwable;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 670
    nop

    .line 674
    iput-boolean v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->inFail:Z

    .line 675
    nop

    .line 676
    return-void

    .line 674
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->inFail:Z

    .line 675
    throw v0
.end method

.method public forEachFlushedMessage(Lio/netty/channel/ChannelOutboundBuffer$MessageProcessor;)V
    .locals 2
    .param p1, "processor"    # Lio/netty/channel/ChannelOutboundBuffer$MessageProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 776
    const-string v0, "processor"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 778
    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 779
    .local v0, "entry":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    if-nez v0, :cond_0

    .line 780
    return-void

    .line 784
    :cond_0
    iget-boolean v1, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->cancelled:Z

    if-nez v1, :cond_1

    .line 785
    iget-object v1, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->msg:Ljava/lang/Object;

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelOutboundBuffer$MessageProcessor;->processMessage(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 786
    return-void

    .line 789
    :cond_1
    iget-object v0, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->next:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 790
    invoke-direct {p0, v0}, Lio/netty/channel/ChannelOutboundBuffer;->isFlushedEntry(Lio/netty/channel/ChannelOutboundBuffer$Entry;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 791
    return-void
.end method

.method public getUserDefinedWritability(I)Z
    .locals 2
    .param p1, "index"    # I

    .line 548
    iget v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->unwritable:I

    invoke-static {p1}, Lio/netty/channel/ChannelOutboundBuffer;->writabilityMask(I)I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method incrementPendingOutboundBytes(J)V
    .locals 1
    .param p1, "size"    # J

    .line 167
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/ChannelOutboundBuffer;->incrementPendingOutboundBytes(JZ)V

    .line 168
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 653
    iget v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushed:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWritable()Z
    .locals 1

    .line 540
    iget v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->unwritable:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nioBufferCount()I
    .locals 1

    .line 521
    iget v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->nioBufferCount:I

    return v0
.end method

.method public nioBufferSize()J
    .locals 2

    .line 530
    iget-wide v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->nioBufferSize:J

    return-wide v0
.end method

.method public nioBuffers()[Ljava/nio/ByteBuffer;
    .locals 3

    .line 394
    const v0, 0x7fffffff

    const-wide/32 v1, 0x7fffffff

    invoke-virtual {p0, v0, v1, v2}, Lio/netty/channel/ChannelOutboundBuffer;->nioBuffers(IJ)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBuffers(IJ)[Ljava/nio/ByteBuffer;
    .locals 15
    .param p1, "maxCount"    # I
    .param p2, "maxBytes"    # J

    .line 412
    move-object v0, p0

    move/from16 v1, p1

    if-lez v1, :cond_8

    .line 413
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_7

    .line 414
    const-wide/16 v2, 0x0

    .line 415
    .local v2, "nioBufferSize":J
    const/4 v4, 0x0

    .line 416
    .local v4, "nioBufferCount":I
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v5

    .line 417
    .local v5, "threadLocalMap":Lio/netty/util/internal/InternalThreadLocalMap;
    sget-object v6, Lio/netty/channel/ChannelOutboundBuffer;->NIO_BUFFERS:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v6, v5}, Lio/netty/util/concurrent/FastThreadLocal;->get(Lio/netty/util/internal/InternalThreadLocalMap;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/nio/ByteBuffer;

    .line 418
    .local v6, "nioBuffers":[Ljava/nio/ByteBuffer;
    iget-object v7, v0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 419
    .local v7, "entry":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    :goto_0
    invoke-direct {p0, v7}, Lio/netty/channel/ChannelOutboundBuffer;->isFlushedEntry(Lio/netty/channel/ChannelOutboundBuffer$Entry;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v7, Lio/netty/channel/ChannelOutboundBuffer$Entry;->msg:Ljava/lang/Object;

    instance-of v8, v8, Lio/netty/buffer/ByteBuf;

    if-eqz v8, :cond_6

    .line 420
    iget-boolean v8, v7, Lio/netty/channel/ChannelOutboundBuffer$Entry;->cancelled:Z

    if-nez v8, :cond_5

    .line 421
    iget-object v8, v7, Lio/netty/channel/ChannelOutboundBuffer$Entry;->msg:Ljava/lang/Object;

    check-cast v8, Lio/netty/buffer/ByteBuf;

    .line 422
    .local v8, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v8}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v9

    .line 423
    .local v9, "readerIndex":I
    invoke-virtual {v8}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v10

    sub-int/2addr v10, v9

    .line 425
    .local v10, "readableBytes":I
    if-lez v10, :cond_5

    .line 426
    int-to-long v11, v10

    sub-long v11, p2, v11

    cmp-long v11, v11, v2

    if-gez v11, :cond_0

    if-eqz v4, :cond_0

    .line 438
    goto :goto_2

    .line 440
    :cond_0
    int-to-long v11, v10

    add-long/2addr v2, v11

    .line 441
    iget v11, v7, Lio/netty/channel/ChannelOutboundBuffer$Entry;->count:I

    .line 442
    .local v11, "count":I
    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 444
    invoke-virtual {v8}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v12

    move v11, v12

    iput v12, v7, Lio/netty/channel/ChannelOutboundBuffer$Entry;->count:I

    .line 446
    :cond_1
    add-int v12, v4, v11

    invoke-static {v1, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 447
    .local v12, "neededSpace":I
    array-length v13, v6

    if-le v12, v13, :cond_2

    .line 448
    invoke-static {v6, v12, v4}, Lio/netty/channel/ChannelOutboundBuffer;->expandNioBufferArray([Ljava/nio/ByteBuffer;II)[Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 449
    sget-object v13, Lio/netty/channel/ChannelOutboundBuffer;->NIO_BUFFERS:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v13, v5, v6}, Lio/netty/util/concurrent/FastThreadLocal;->set(Lio/netty/util/internal/InternalThreadLocalMap;Ljava/lang/Object;)V

    .line 451
    :cond_2
    const/4 v13, 0x1

    if-ne v11, v13, :cond_4

    .line 452
    iget-object v13, v7, Lio/netty/channel/ChannelOutboundBuffer$Entry;->buf:Ljava/nio/ByteBuffer;

    .line 453
    .local v13, "nioBuf":Ljava/nio/ByteBuffer;
    if-nez v13, :cond_3

    .line 456
    invoke-virtual {v8, v9, v10}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v14

    move-object v13, v14

    iput-object v14, v7, Lio/netty/channel/ChannelOutboundBuffer$Entry;->buf:Ljava/nio/ByteBuffer;

    .line 458
    :cond_3
    add-int/lit8 v14, v4, 0x1

    .end local v4    # "nioBufferCount":I
    .local v14, "nioBufferCount":I
    aput-object v13, v6, v4

    .line 459
    .end local v13    # "nioBuf":Ljava/nio/ByteBuffer;
    move v4, v14

    goto :goto_1

    .line 462
    .end local v14    # "nioBufferCount":I
    .restart local v4    # "nioBufferCount":I
    :cond_4
    invoke-static {v7, v8, v6, v4, v1}, Lio/netty/channel/ChannelOutboundBuffer;->nioBuffers(Lio/netty/channel/ChannelOutboundBuffer$Entry;Lio/netty/buffer/ByteBuf;[Ljava/nio/ByteBuffer;II)I

    move-result v4

    .line 464
    :goto_1
    if-lt v4, v1, :cond_5

    .line 465
    goto :goto_2

    .line 469
    .end local v8    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v9    # "readerIndex":I
    .end local v10    # "readableBytes":I
    .end local v11    # "count":I
    .end local v12    # "neededSpace":I
    :cond_5
    iget-object v7, v7, Lio/netty/channel/ChannelOutboundBuffer$Entry;->next:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    goto :goto_0

    .line 471
    :cond_6
    :goto_2
    iput v4, v0, Lio/netty/channel/ChannelOutboundBuffer;->nioBufferCount:I

    .line 472
    iput-wide v2, v0, Lio/netty/channel/ChannelOutboundBuffer;->nioBufferSize:J

    .line 474
    return-object v6

    .line 413
    .end local v2    # "nioBufferSize":J
    .end local v4    # "nioBufferCount":I
    .end local v5    # "threadLocalMap":Lio/netty/util/internal/InternalThreadLocalMap;
    .end local v6    # "nioBuffers":[Ljava/nio/ByteBuffer;
    .end local v7    # "entry":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    :cond_7
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 412
    :cond_8
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public progress(J)V
    .locals 8
    .param p1, "amount"    # J

    .line 241
    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 242
    .local v0, "e":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    if-eqz v0, :cond_5

    .line 243
    iget-object v1, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->promise:Lio/netty/channel/ChannelPromise;

    .line 244
    .local v1, "p":Lio/netty/channel/ChannelPromise;
    iget-wide v2, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->progress:J

    add-long/2addr v2, p1

    .line 245
    .local v2, "progress":J
    iput-wide v2, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->progress:J

    .line 246
    if-eqz v1, :cond_4

    .line 247
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 249
    .local v4, "promiseClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lio/netty/channel/VoidChannelPromise;

    if-eq v4, v5, :cond_3

    const-class v5, Lio/netty/channel/DefaultChannelPromise;

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 253
    :cond_0
    instance-of v5, v1, Lio/netty/channel/DefaultChannelProgressivePromise;

    if-eqz v5, :cond_1

    .line 254
    move-object v5, v1

    check-cast v5, Lio/netty/channel/DefaultChannelProgressivePromise;

    iget-wide v6, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->total:J

    invoke-virtual {v5, v2, v3, v6, v7}, Lio/netty/channel/DefaultChannelProgressivePromise;->tryProgress(JJ)Z

    goto :goto_0

    .line 255
    :cond_1
    instance-of v5, v1, Lio/netty/channel/ChannelProgressivePromise;

    if-eqz v5, :cond_2

    .line 256
    move-object v5, v1

    check-cast v5, Lio/netty/channel/ChannelProgressivePromise;

    iget-wide v6, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->total:J

    invoke-interface {v5, v2, v3, v6, v7}, Lio/netty/channel/ChannelProgressivePromise;->tryProgress(JJ)Z

    .line 258
    :cond_2
    :goto_0
    return-void

    .line 250
    :cond_3
    :goto_1
    return-void

    .line 246
    .end local v4    # "promiseClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 242
    .end local v1    # "p":Lio/netty/channel/ChannelPromise;
    .end local v2    # "progress":J
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public recycle()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 738
    return-void
.end method

.method public remove()Z
    .locals 9

    .line 266
    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 267
    .local v0, "e":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 268
    invoke-direct {p0}, Lio/netty/channel/ChannelOutboundBuffer;->clearNioBuffers()V

    .line 269
    return v1

    .line 271
    :cond_0
    iget-object v2, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->msg:Ljava/lang/Object;

    .line 273
    .local v2, "msg":Ljava/lang/Object;
    iget-object v3, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->promise:Lio/netty/channel/ChannelPromise;

    .line 274
    .local v3, "promise":Lio/netty/channel/ChannelPromise;
    iget v4, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->pendingSize:I

    .line 276
    .local v4, "size":I
    invoke-direct {p0, v0}, Lio/netty/channel/ChannelOutboundBuffer;->removeEntry(Lio/netty/channel/ChannelOutboundBuffer$Entry;)V

    .line 278
    iget-boolean v5, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->cancelled:Z

    const/4 v6, 0x1

    if-nez v5, :cond_1

    .line 280
    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 281
    invoke-static {v3}, Lio/netty/channel/ChannelOutboundBuffer;->safeSuccess(Lio/netty/channel/ChannelPromise;)V

    .line 282
    int-to-long v7, v4

    invoke-direct {p0, v7, v8, v1, v6}, Lio/netty/channel/ChannelOutboundBuffer;->decrementPendingOutboundBytes(JZZ)V

    .line 286
    :cond_1
    invoke-virtual {v0}, Lio/netty/channel/ChannelOutboundBuffer$Entry;->unguardedRecycle()V

    .line 288
    return v6
.end method

.method public remove(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 297
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/channel/ChannelOutboundBuffer;->remove0(Ljava/lang/Throwable;Z)Z

    move-result v0

    return v0
.end method

.method public removeBytes(J)V
    .locals 8
    .param p1, "writtenBytes"    # J

    .line 346
    nop

    :goto_0
    invoke-virtual {p0}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v0

    .line 347
    .local v0, "msg":Ljava/lang/Object;
    instance-of v1, v0, Lio/netty/buffer/ByteBuf;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    .line 348
    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 352
    :cond_1
    move-object v1, v0

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 353
    .local v1, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    .line 354
    .local v4, "readerIndex":I
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v5

    sub-int/2addr v5, v4

    .line 356
    .local v5, "readableBytes":I
    int-to-long v6, v5

    cmp-long v6, v6, p1

    if-gtz v6, :cond_3

    .line 357
    cmp-long v2, p1, v2

    if-eqz v2, :cond_2

    .line 358
    int-to-long v2, v5

    invoke-virtual {p0, v2, v3}, Lio/netty/channel/ChannelOutboundBuffer;->progress(J)V

    .line 359
    int-to-long v2, v5

    sub-long/2addr p1, v2

    .line 361
    :cond_2
    invoke-virtual {p0}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 369
    .end local v0    # "msg":Ljava/lang/Object;
    .end local v1    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v4    # "readerIndex":I
    .end local v5    # "readableBytes":I
    goto :goto_0

    .line 363
    .restart local v0    # "msg":Ljava/lang/Object;
    .restart local v1    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local v4    # "readerIndex":I
    .restart local v5    # "readableBytes":I
    :cond_3
    cmp-long v2, p1, v2

    if-eqz v2, :cond_4

    .line 364
    long-to-int v2, p1

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 365
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/ChannelOutboundBuffer;->progress(J)V

    .line 370
    .end local v0    # "msg":Ljava/lang/Object;
    .end local v1    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v4    # "readerIndex":I
    .end local v5    # "readableBytes":I
    :cond_4
    :goto_1
    invoke-direct {p0}, Lio/netty/channel/ChannelOutboundBuffer;->clearNioBuffers()V

    .line 371
    return-void
.end method

.method public setUserDefinedWritability(IZ)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "writable"    # Z

    .line 555
    if-eqz p2, :cond_0

    .line 556
    invoke-direct {p0, p1}, Lio/netty/channel/ChannelOutboundBuffer;->setUserDefinedWritability(I)V

    goto :goto_0

    .line 558
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/channel/ChannelOutboundBuffer;->clearUserDefinedWritability(I)V

    .line 560
    :goto_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 645
    iget v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushed:I

    return v0
.end method

.method public totalPendingWriteBytes()J
    .locals 2

    .line 741
    iget-wide v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->totalPendingSize:J

    return-wide v0
.end method
