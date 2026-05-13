.class final Lio/netty/buffer/PoolChunk;
.super Ljava/lang/Object;
.source "PoolChunk.java"

# interfaces
.implements Lio/netty/buffer/PoolChunkMetric;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/buffer/PoolChunkMetric;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BITMAP_IDX_BIT_LENGTH:I = 0x20

.field private static final INUSED_BIT_LENGTH:I = 0x1

.field static final IS_SUBPAGE_SHIFT:I = 0x20

.field static final IS_USED_SHIFT:I = 0x21

.field static final RUN_OFFSET_SHIFT:I = 0x31

.field private static final SIZE_BIT_LENGTH:I = 0xf

.field static final SIZE_SHIFT:I = 0x22

.field private static final SUBPAGE_BIT_LENGTH:I = 0x1


# instance fields
.field final arena:Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolArena<",
            "TT;>;"
        }
    .end annotation
.end field

.field final base:Ljava/lang/Object;

.field private final cachedNioBuffers:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final chunkSize:I

.field freeBytes:I

.field final memory:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field next:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final pageShifts:I

.field private final pageSize:I

.field parent:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final pinnedBytes:Lio/netty/util/internal/LongCounter;

.field prev:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final runsAvail:[Lio/netty/buffer/IntPriorityQueue;

.field private final runsAvailLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final runsAvailMap:Lio/netty/buffer/LongLongHashMap;

.field private final subpages:[Lio/netty/buffer/PoolSubpage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation
.end field

.field final unpooled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 136
    return-void
.end method

.method constructor <init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1
    .param p2, "base"    # Ljava/lang/Object;
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;",
            "Ljava/lang/Object;",
            "TT;I)V"
        }
    .end annotation

    .line 219
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .local p1, "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    .local p3, "memory":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newLongCounter()Lio/netty/util/internal/LongCounter;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/PoolChunk;->pinnedBytes:Lio/netty/util/internal/LongCounter;

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/buffer/PoolChunk;->unpooled:Z

    .line 221
    iput-object p1, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    .line 222
    iput-object p2, p0, Lio/netty/buffer/PoolChunk;->base:Ljava/lang/Object;

    .line 223
    iput-object p3, p0, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/buffer/PoolChunk;->pageSize:I

    .line 225
    iput v0, p0, Lio/netty/buffer/PoolChunk;->pageShifts:I

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/buffer/PoolChunk;->runsAvailMap:Lio/netty/buffer/LongLongHashMap;

    .line 227
    iput-object v0, p0, Lio/netty/buffer/PoolChunk;->runsAvail:[Lio/netty/buffer/IntPriorityQueue;

    .line 228
    iput-object v0, p0, Lio/netty/buffer/PoolChunk;->runsAvailLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 229
    iput-object v0, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    .line 230
    iput p4, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    .line 231
    iput-object v0, p0, Lio/netty/buffer/PoolChunk;->cachedNioBuffers:Ljava/util/Deque;

    .line 232
    return-void
.end method

.method constructor <init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;Ljava/lang/Object;IIII)V
    .locals 5
    .param p2, "base"    # Ljava/lang/Object;
    .param p4, "pageSize"    # I
    .param p5, "pageShifts"    # I
    .param p6, "chunkSize"    # I
    .param p7, "maxPageIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;",
            "Ljava/lang/Object;",
            "TT;IIII)V"
        }
    .end annotation

    .line 195
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .local p1, "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    .local p3, "memory":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newLongCounter()Lio/netty/util/internal/LongCounter;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/PoolChunk;->pinnedBytes:Lio/netty/util/internal/LongCounter;

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/buffer/PoolChunk;->unpooled:Z

    .line 197
    iput-object p1, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    .line 198
    iput-object p2, p0, Lio/netty/buffer/PoolChunk;->base:Ljava/lang/Object;

    .line 199
    iput-object p3, p0, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    .line 200
    iput p4, p0, Lio/netty/buffer/PoolChunk;->pageSize:I

    .line 201
    iput p5, p0, Lio/netty/buffer/PoolChunk;->pageShifts:I

    .line 202
    iput p6, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    .line 203
    iput p6, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    .line 205
    invoke-static {p7}, Lio/netty/buffer/PoolChunk;->newRunsAvailqueueArray(I)[Lio/netty/buffer/IntPriorityQueue;

    move-result-object v1

    iput-object v1, p0, Lio/netty/buffer/PoolChunk;->runsAvail:[Lio/netty/buffer/IntPriorityQueue;

    .line 206
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lio/netty/buffer/PoolChunk;->runsAvailLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 207
    new-instance v1, Lio/netty/buffer/LongLongHashMap;

    const-wide/16 v2, -0x1

    invoke-direct {v1, v2, v3}, Lio/netty/buffer/LongLongHashMap;-><init>(J)V

    iput-object v1, p0, Lio/netty/buffer/PoolChunk;->runsAvailMap:Lio/netty/buffer/LongLongHashMap;

    .line 208
    shr-int v1, p6, p5

    new-array v1, v1, [Lio/netty/buffer/PoolSubpage;

    iput-object v1, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    .line 211
    shr-int v1, p6, p5

    .line 212
    .local v1, "pages":I
    int-to-long v2, v1

    const/16 v4, 0x22

    shl-long/2addr v2, v4

    .line 213
    .local v2, "initHandle":J
    invoke-direct {p0, v0, v1, v2, v3}, Lio/netty/buffer/PoolChunk;->insertAvailRun(IIJ)V

    .line 215
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v4, 0x8

    invoke-direct {v0, v4}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/netty/buffer/PoolChunk;->cachedNioBuffers:Ljava/util/Deque;

    .line 216
    return-void
.end method

.method private allocateRun(I)J
    .locals 9
    .param p1, "runSize"    # I

    .line 359
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolChunk;->pageShifts:I

    shr-int v0, p1, v0

    .line 360
    .local v0, "pages":I
    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v1, v0}, Lio/netty/buffer/PoolArena;->pages2pageIdx(I)I

    move-result v1

    .line 362
    .local v1, "pageIdx":I
    iget-object v2, p0, Lio/netty/buffer/PoolChunk;->runsAvailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 365
    :try_start_0
    invoke-direct {p0, v1}, Lio/netty/buffer/PoolChunk;->runFirstBestFit(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    .local v2, "queueIdx":I
    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    if-ne v2, v3, :cond_0

    .line 367
    nop

    .line 385
    iget-object v3, p0, Lio/netty/buffer/PoolChunk;->runsAvailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 367
    return-wide v4

    .line 371
    :cond_0
    :try_start_1
    iget-object v3, p0, Lio/netty/buffer/PoolChunk;->runsAvail:[Lio/netty/buffer/IntPriorityQueue;

    aget-object v3, v3, v2

    .line 372
    .local v3, "queue":Lio/netty/buffer/IntPriorityQueue;
    invoke-virtual {v3}, Lio/netty/buffer/IntPriorityQueue;->poll()I

    move-result v6

    int-to-long v6, v6

    .line 373
    .local v6, "handle":J
    cmp-long v4, v6, v4

    if-eqz v4, :cond_2

    .line 374
    const/16 v4, 0x20

    shl-long v4, v6, v4

    .line 375
    .end local v6    # "handle":J
    .local v4, "handle":J
    invoke-static {v4, v5}, Lio/netty/buffer/PoolChunk;->isUsed(J)Z

    move-result v6

    if-nez v6, :cond_1

    .line 377
    invoke-direct {p0, v4, v5}, Lio/netty/buffer/PoolChunk;->removeAvailRun0(J)V

    .line 379
    invoke-direct {p0, v4, v5, v0}, Lio/netty/buffer/PoolChunk;->splitLargeRun(JI)J

    move-result-wide v6

    move-wide v4, v6

    .line 381
    iget v6, p0, Lio/netty/buffer/PoolChunk;->pageShifts:I

    invoke-static {v6, v4, v5}, Lio/netty/buffer/PoolChunk;->runSize(IJ)I

    move-result v6

    .line 382
    .local v6, "pinnedSize":I
    iget v7, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    sub-int/2addr v7, v6

    iput v7, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    nop

    .line 385
    iget-object v7, p0, Lio/netty/buffer/PoolChunk;->runsAvailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 383
    return-wide v4

    .line 375
    .end local v6    # "pinnedSize":I
    :cond_1
    :try_start_2
    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid handle: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "pages":I
    .end local v1    # "pageIdx":I
    .end local p1    # "runSize":I
    throw v6

    .line 373
    .end local v4    # "handle":J
    .restart local v0    # "pages":I
    .restart local v1    # "pageIdx":I
    .local v6, "handle":J
    .restart local p1    # "runSize":I
    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "pages":I
    .end local v1    # "pageIdx":I
    .end local p1    # "runSize":I
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 385
    .end local v2    # "queueIdx":I
    .end local v3    # "queue":Lio/netty/buffer/IntPriorityQueue;
    .end local v6    # "handle":J
    .restart local v0    # "pages":I
    .restart local v1    # "pageIdx":I
    .restart local p1    # "runSize":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lio/netty/buffer/PoolChunk;->runsAvailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 386
    throw v2
.end method

.method private allocateSubpage(ILio/netty/buffer/PoolSubpage;)J
    .locals 13
    .param p1, "sizeIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;)J"
        }
    .end annotation

    .line 463
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .local p2, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->calculateRunSize(I)I

    move-result v0

    .line 465
    .local v0, "runSize":I
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->allocateRun(I)J

    move-result-wide v1

    .line 466
    .local v1, "runHandle":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 467
    const-wide/16 v3, -0x1

    return-wide v3

    .line 470
    :cond_0
    invoke-static {v1, v2}, Lio/netty/buffer/PoolChunk;->runOffset(J)I

    move-result v3

    .line 471
    .local v3, "runOffset":I
    iget-object v4, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    aget-object v4, v4, v3

    if-nez v4, :cond_1

    .line 472
    iget-object v4, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v4, p1}, Lio/netty/buffer/PoolArena;->sizeIdx2size(I)I

    move-result v4

    .line 474
    .local v4, "elemSize":I
    new-instance v12, Lio/netty/buffer/PoolSubpage;

    iget v8, p0, Lio/netty/buffer/PoolChunk;->pageShifts:I

    iget v5, p0, Lio/netty/buffer/PoolChunk;->pageShifts:I

    .line 475
    invoke-static {v5, v1, v2}, Lio/netty/buffer/PoolChunk;->runSize(IJ)I

    move-result v10

    move-object v5, v12

    move-object v6, p2

    move-object v7, p0

    move v9, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Lio/netty/buffer/PoolSubpage;-><init>(Lio/netty/buffer/PoolSubpage;Lio/netty/buffer/PoolChunk;IIII)V

    .line 477
    .local v5, "subpage":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v6, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    aput-object v5, v6, v3

    .line 478
    invoke-virtual {v5}, Lio/netty/buffer/PoolSubpage;->allocate()J

    move-result-wide v6

    return-wide v6

    .line 471
    .end local v4    # "elemSize":I
    .end local v5    # "subpage":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    :cond_1
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method static bitmapIdx(J)I
    .locals 1
    .param p0, "handle"    # J

    .line 706
    long-to-int v0, p0

    return v0
.end method

.method private calculateRunSize(I)I
    .locals 5
    .param p1, "sizeIdx"    # I

    .line 390
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolChunk;->pageShifts:I

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 391
    .local v0, "maxElements":I
    const/4 v1, 0x0

    .line 394
    .local v1, "runSize":I
    iget-object v2, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v2, p1}, Lio/netty/buffer/PoolArena;->sizeIdx2size(I)I

    move-result v2

    .line 398
    .local v2, "elemSize":I
    :cond_0
    iget v3, p0, Lio/netty/buffer/PoolChunk;->pageSize:I

    add-int/2addr v1, v3

    .line 399
    div-int v3, v1, v2

    .line 400
    .local v3, "nElements":I
    if-ge v3, v0, :cond_1

    mul-int v4, v3, v2

    if-ne v1, v4, :cond_0

    .line 402
    :cond_1
    :goto_0
    if-le v3, v0, :cond_2

    .line 403
    iget v4, p0, Lio/netty/buffer/PoolChunk;->pageSize:I

    sub-int/2addr v1, v4

    .line 404
    div-int v3, v1, v2

    goto :goto_0

    .line 407
    :cond_2
    if-lez v3, :cond_5

    .line 408
    iget v4, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    if-gt v1, v4, :cond_4

    .line 409
    if-lt v1, v2, :cond_3

    .line 411
    return v1

    .line 409
    :cond_3
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 408
    :cond_4
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 407
    :cond_5
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method private collapseNext(J)J
    .locals 8
    .param p1, "handle"    # J

    .line 566
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    nop

    :goto_0
    invoke-static {p1, p2}, Lio/netty/buffer/PoolChunk;->runOffset(J)I

    move-result v0

    .line 567
    .local v0, "runOffset":I
    invoke-static {p1, p2}, Lio/netty/buffer/PoolChunk;->runPages(J)I

    move-result v1

    .line 569
    .local v1, "runPages":I
    add-int v2, v0, v1

    invoke-direct {p0, v2}, Lio/netty/buffer/PoolChunk;->getAvailRunByOffset(I)J

    move-result-wide v2

    .line 570
    .local v2, "nextRun":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 571
    return-wide p1

    .line 574
    :cond_0
    invoke-static {v2, v3}, Lio/netty/buffer/PoolChunk;->runOffset(J)I

    move-result v4

    .line 575
    .local v4, "nextOffset":I
    invoke-static {v2, v3}, Lio/netty/buffer/PoolChunk;->runPages(J)I

    move-result v5

    .line 578
    .local v5, "nextPages":I
    cmp-long v6, v2, p1

    if-eqz v6, :cond_1

    add-int v6, v0, v1

    if-ne v6, v4, :cond_1

    .line 580
    invoke-direct {p0, v2, v3}, Lio/netty/buffer/PoolChunk;->removeAvailRun(J)V

    .line 581
    add-int v6, v1, v5

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Lio/netty/buffer/PoolChunk;->toRunHandle(III)J

    move-result-wide p1

    .line 585
    .end local v0    # "runOffset":I
    .end local v1    # "runPages":I
    .end local v2    # "nextRun":J
    .end local v4    # "nextOffset":I
    .end local v5    # "nextPages":I
    goto :goto_0

    .line 583
    .restart local v0    # "runOffset":I
    .restart local v1    # "runPages":I
    .restart local v2    # "nextRun":J
    .restart local v4    # "nextOffset":I
    .restart local v5    # "nextPages":I
    :cond_1
    return-wide p1
.end method

.method private collapsePast(J)J
    .locals 8
    .param p1, "handle"    # J

    .line 542
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    nop

    :goto_0
    invoke-static {p1, p2}, Lio/netty/buffer/PoolChunk;->runOffset(J)I

    move-result v0

    .line 543
    .local v0, "runOffset":I
    invoke-static {p1, p2}, Lio/netty/buffer/PoolChunk;->runPages(J)I

    move-result v1

    .line 545
    .local v1, "runPages":I
    add-int/lit8 v2, v0, -0x1

    invoke-direct {p0, v2}, Lio/netty/buffer/PoolChunk;->getAvailRunByOffset(I)J

    move-result-wide v2

    .line 546
    .local v2, "pastRun":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 547
    return-wide p1

    .line 550
    :cond_0
    invoke-static {v2, v3}, Lio/netty/buffer/PoolChunk;->runOffset(J)I

    move-result v4

    .line 551
    .local v4, "pastOffset":I
    invoke-static {v2, v3}, Lio/netty/buffer/PoolChunk;->runPages(J)I

    move-result v5

    .line 554
    .local v5, "pastPages":I
    cmp-long v6, v2, p1

    if-eqz v6, :cond_1

    add-int v6, v4, v5

    if-ne v6, v0, :cond_1

    .line 556
    invoke-direct {p0, v2, v3}, Lio/netty/buffer/PoolChunk;->removeAvailRun(J)V

    .line 557
    add-int v6, v5, v1

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lio/netty/buffer/PoolChunk;->toRunHandle(III)J

    move-result-wide p1

    .line 561
    .end local v0    # "runOffset":I
    .end local v1    # "runPages":I
    .end local v2    # "pastRun":J
    .end local v4    # "pastOffset":I
    .end local v5    # "pastPages":I
    goto :goto_0

    .line 559
    .restart local v0    # "runOffset":I
    .restart local v1    # "runPages":I
    .restart local v2    # "pastRun":J
    .restart local v4    # "pastOffset":I
    .restart local v5    # "pastPages":I
    :cond_1
    return-wide p1
.end method

.method private collapseRuns(J)J
    .locals 2
    .param p1, "handle"    # J

    .line 537
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PoolChunk;->collapsePast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/netty/buffer/PoolChunk;->collapseNext(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getAvailRunByOffset(I)J
    .locals 3
    .param p1, "runOffset"    # I

    .line 283
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->runsAvailMap:Lio/netty/buffer/LongLongHashMap;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/netty/buffer/LongLongHashMap;->get(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private insertAvailRun(IIJ)V
    .locals 4
    .param p1, "runOffset"    # I
    .param p2, "pages"    # I
    .param p3, "handle"    # J

    .line 243
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v0, p2}, Lio/netty/buffer/PoolArena;->pages2pageIdxFloor(I)I

    move-result v0

    .line 244
    .local v0, "pageIdxFloor":I
    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->runsAvail:[Lio/netty/buffer/IntPriorityQueue;

    aget-object v1, v1, v0

    .line 245
    .local v1, "queue":Lio/netty/buffer/IntPriorityQueue;
    invoke-static {p3, p4}, Lio/netty/buffer/PoolChunk;->isRun(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    const/16 v2, 0x20

    shr-long v2, p3, v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/IntPriorityQueue;->offer(I)V

    .line 249
    invoke-direct {p0, p1, p3, p4}, Lio/netty/buffer/PoolChunk;->insertAvailRun0(IJ)V

    .line 250
    const/4 v2, 0x1

    if-le p2, v2, :cond_0

    .line 252
    invoke-static {p1, p2}, Lio/netty/buffer/PoolChunk;->lastPage(II)I

    move-result v2

    invoke-direct {p0, v2, p3, p4}, Lio/netty/buffer/PoolChunk;->insertAvailRun0(IJ)V

    .line 254
    :cond_0
    return-void

    .line 245
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private insertAvailRun0(IJ)V
    .locals 4
    .param p1, "runOffset"    # I
    .param p2, "handle"    # J

    .line 257
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->runsAvailMap:Lio/netty/buffer/LongLongHashMap;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2, p3}, Lio/netty/buffer/LongLongHashMap;->put(JJ)J

    move-result-wide v0

    .line 258
    .local v0, "pre":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 259
    return-void

    .line 258
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method static isRun(J)Z
    .locals 1
    .param p0, "handle"    # J

    .line 698
    invoke-static {p0, p1}, Lio/netty/buffer/PoolChunk;->isSubpage(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static isSubpage(J)Z
    .locals 4
    .param p0, "handle"    # J

    .line 702
    const/16 v0, 0x20

    shr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isUsed(J)Z
    .locals 4
    .param p0, "handle"    # J

    .line 694
    const/16 v0, 0x21

    shr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static lastPage(II)I
    .locals 1
    .param p0, "runOffset"    # I
    .param p1, "pages"    # I

    .line 279
    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static newRunsAvailqueueArray(I)[Lio/netty/buffer/IntPriorityQueue;
    .locals 3
    .param p0, "size"    # I

    .line 235
    new-array v0, p0, [Lio/netty/buffer/IntPriorityQueue;

    .line 236
    .local v0, "queueArray":[Lio/netty/buffer/IntPriorityQueue;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 237
    new-instance v2, Lio/netty/buffer/IntPriorityQueue;

    invoke-direct {v2}, Lio/netty/buffer/IntPriorityQueue;-><init>()V

    aput-object v2, v0, v1

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private removeAvailRun(J)V
    .locals 4
    .param p1, "handle"    # J

    .line 262
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    invoke-static {p1, p2}, Lio/netty/buffer/PoolChunk;->runPages(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/PoolArena;->pages2pageIdxFloor(I)I

    move-result v0

    .line 263
    .local v0, "pageIdxFloor":I
    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->runsAvail:[Lio/netty/buffer/IntPriorityQueue;

    aget-object v1, v1, v0

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/IntPriorityQueue;->remove(I)V

    .line 264
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PoolChunk;->removeAvailRun0(J)V

    .line 265
    return-void
.end method

.method private removeAvailRun0(J)V
    .locals 5
    .param p1, "handle"    # J

    .line 268
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-static {p1, p2}, Lio/netty/buffer/PoolChunk;->runOffset(J)I

    move-result v0

    .line 269
    .local v0, "runOffset":I
    invoke-static {p1, p2}, Lio/netty/buffer/PoolChunk;->runPages(J)I

    move-result v1

    .line 271
    .local v1, "pages":I
    iget-object v2, p0, Lio/netty/buffer/PoolChunk;->runsAvailMap:Lio/netty/buffer/LongLongHashMap;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lio/netty/buffer/LongLongHashMap;->remove(J)V

    .line 272
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 274
    iget-object v2, p0, Lio/netty/buffer/PoolChunk;->runsAvailMap:Lio/netty/buffer/LongLongHashMap;

    invoke-static {v0, v1}, Lio/netty/buffer/PoolChunk;->lastPage(II)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lio/netty/buffer/LongLongHashMap;->remove(J)V

    .line 276
    :cond_0
    return-void
.end method

.method private runFirstBestFit(I)I
    .locals 3
    .param p1, "pageIdx"    # I

    .line 415
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    iget v1, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    if-ne v0, v1, :cond_0

    .line 416
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget v0, v0, Lio/netty/buffer/PoolArena;->nPSizes:I

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 418
    :cond_0
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget v1, v1, Lio/netty/buffer/PoolArena;->nPSizes:I

    if-ge v0, v1, :cond_2

    .line 419
    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->runsAvail:[Lio/netty/buffer/IntPriorityQueue;

    aget-object v1, v1, v0

    .line 420
    .local v1, "queue":Lio/netty/buffer/IntPriorityQueue;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lio/netty/buffer/IntPriorityQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 421
    return v0

    .line 418
    .end local v1    # "queue":Lio/netty/buffer/IntPriorityQueue;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method static runOffset(J)I
    .locals 2
    .param p0, "handle"    # J

    .line 682
    const/16 v0, 0x31

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method static runPages(J)I
    .locals 4
    .param p0, "handle"    # J

    .line 690
    const/16 v0, 0x22

    shr-long v0, p0, v0

    const-wide/16 v2, 0x7fff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static runSize(IJ)I
    .locals 1
    .param p0, "pageShifts"    # I
    .param p1, "handle"    # J

    .line 686
    invoke-static {p1, p2}, Lio/netty/buffer/PoolChunk;->runPages(J)I

    move-result v0

    shl-int/2addr v0, p0

    return v0
.end method

.method private splitLargeRun(JI)J
    .locals 8
    .param p1, "handle"    # J
    .param p3, "needPages"    # I

    .line 428
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    if-lez p3, :cond_2

    .line 430
    invoke-static {p1, p2}, Lio/netty/buffer/PoolChunk;->runPages(J)I

    move-result v0

    .line 431
    .local v0, "totalPages":I
    if-gt p3, v0, :cond_1

    .line 433
    sub-int v1, v0, p3

    .line 435
    .local v1, "remPages":I
    if-lez v1, :cond_0

    .line 436
    invoke-static {p1, p2}, Lio/netty/buffer/PoolChunk;->runOffset(J)I

    move-result v2

    .line 439
    .local v2, "runOffset":I
    add-int v3, v2, p3

    .line 440
    .local v3, "availOffset":I
    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lio/netty/buffer/PoolChunk;->toRunHandle(III)J

    move-result-wide v4

    .line 441
    .local v4, "availRun":J
    invoke-direct {p0, v3, v1, v4, v5}, Lio/netty/buffer/PoolChunk;->insertAvailRun(IIJ)V

    .line 444
    const/4 v6, 0x1

    invoke-static {v2, p3, v6}, Lio/netty/buffer/PoolChunk;->toRunHandle(III)J

    move-result-wide v6

    return-wide v6

    .line 448
    .end local v2    # "runOffset":I
    .end local v3    # "availOffset":I
    .end local v4    # "availRun":J
    :cond_0
    const-wide v2, 0x200000000L

    or-long/2addr p1, v2

    .line 449
    return-wide p1

    .line 431
    .end local v1    # "remPages":I
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 428
    .end local v0    # "totalPages":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static toRunHandle(III)J
    .locals 5
    .param p0, "runOffset"    # I
    .param p1, "runPages"    # I
    .param p2, "inUsed"    # I

    .line 589
    int-to-long v0, p0

    const/16 v2, 0x31

    shl-long/2addr v0, v2

    int-to-long v2, p1

    const/16 v4, 0x22

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p2

    const/16 v4, 0x21

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private usage(I)I
    .locals 4
    .param p1, "freeBytes"    # I

    .line 303
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    if-nez p1, :cond_0

    .line 304
    const/16 v0, 0x64

    return v0

    .line 307
    :cond_0
    int-to-long v0, p1

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget v2, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 308
    .local v0, "freePercentage":I
    if-nez v0, :cond_1

    .line 309
    const/16 v1, 0x63

    return v1

    .line 311
    :cond_1
    rsub-int/lit8 v1, v0, 0x64

    return v1
.end method


# virtual methods
.method allocate(Lio/netty/buffer/PooledByteBuf;IILio/netty/buffer/PoolThreadCache;)Z
    .locals 18
    .param p2, "reqCapacity"    # I
    .param p3, "sizeIdx"    # I
    .param p4, "cache"    # Lio/netty/buffer/PoolThreadCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;II",
            "Lio/netty/buffer/PoolThreadCache;",
            ")Z"
        }
    .end annotation

    .line 316
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    move-object/from16 v8, p0

    move/from16 v9, p3

    iget-object v0, v8, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget v0, v0, Lio/netty/buffer/PoolArena;->smallMaxSizeIdx:I

    const/4 v10, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-gt v9, v0, :cond_6

    .line 321
    iget-object v0, v8, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v0, v0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    aget-object v4, v0, v9

    .line 322
    .local v4, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    invoke-virtual {v4}, Lio/netty/buffer/PoolSubpage;->lock()V

    .line 324
    :try_start_0
    iget-object v0, v4, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 325
    .local v0, "nextSub":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    if-eq v0, v4, :cond_3

    .line 326
    iget-boolean v1, v0, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lio/netty/buffer/PoolSubpage;->elemSize:I

    iget-object v5, v8, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v5, v9}, Lio/netty/buffer/PoolArena;->sizeIdx2size(I)I

    move-result v5

    if-ne v1, v5, :cond_2

    .line 328
    invoke-virtual {v0}, Lio/netty/buffer/PoolSubpage;->allocate()J

    move-result-wide v5

    .line 329
    .local v5, "handle":J
    cmp-long v1, v5, v2

    if-ltz v1, :cond_1

    .line 330
    invoke-static {v5, v6}, Lio/netty/buffer/PoolChunk;->isSubpage(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v11, v0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    const/4 v13, 0x0

    move-object/from16 v12, p1

    move-wide v14, v5

    move/from16 v16, p2

    move-object/from16 v17, p4

    invoke-virtual/range {v11 .. v17}, Lio/netty/buffer/PoolChunk;->initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JILio/netty/buffer/PoolThreadCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    nop

    .line 340
    invoke-virtual {v4}, Lio/netty/buffer/PoolSubpage;->unlock()V

    .line 332
    return v10

    .line 330
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v4    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local p1    # "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    .end local p2    # "reqCapacity":I
    .end local p3    # "sizeIdx":I
    .end local p4    # "cache":Lio/netty/buffer/PoolThreadCache;
    throw v1

    .line 329
    .restart local v4    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .restart local p1    # "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    .restart local p2    # "reqCapacity":I
    .restart local p3    # "sizeIdx":I
    .restart local p4    # "cache":Lio/netty/buffer/PoolThreadCache;
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v4    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local p1    # "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    .end local p2    # "reqCapacity":I
    .end local p3    # "sizeIdx":I
    .end local p4    # "cache":Lio/netty/buffer/PoolThreadCache;
    throw v1

    .line 326
    .end local v5    # "handle":J
    .restart local v4    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .restart local p1    # "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    .restart local p2    # "reqCapacity":I
    .restart local p3    # "sizeIdx":I
    .restart local p4    # "cache":Lio/netty/buffer/PoolThreadCache;
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doNotDestroy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", elemSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lio/netty/buffer/PoolSubpage;->elemSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sizeIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v4    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local p1    # "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    .end local p2    # "reqCapacity":I
    .end local p3    # "sizeIdx":I
    .end local p4    # "cache":Lio/netty/buffer/PoolThreadCache;
    throw v1

    .line 334
    .restart local v4    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .restart local p1    # "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    .restart local p2    # "reqCapacity":I
    .restart local p3    # "sizeIdx":I
    .restart local p4    # "cache":Lio/netty/buffer/PoolThreadCache;
    :cond_3
    invoke-direct {v8, v9, v4}, Lio/netty/buffer/PoolChunk;->allocateSubpage(ILio/netty/buffer/PoolSubpage;)J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    .restart local v5    # "handle":J
    cmp-long v2, v5, v2

    if-gez v2, :cond_4

    .line 336
    nop

    .line 340
    invoke-virtual {v4}, Lio/netty/buffer/PoolSubpage;->unlock()V

    .line 336
    return v1

    .line 338
    :cond_4
    :try_start_2
    invoke-static {v5, v6}, Lio/netty/buffer/PoolChunk;->isSubpage(J)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_5

    .line 340
    invoke-virtual {v4}, Lio/netty/buffer/PoolSubpage;->unlock()V

    .line 341
    nop

    .line 342
    .end local v0    # "nextSub":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local v4    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    move-wide v11, v5

    goto :goto_0

    .line 338
    .restart local v0    # "nextSub":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .restart local v4    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    :cond_5
    :try_start_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v4    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local p1    # "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    .end local p2    # "reqCapacity":I
    .end local p3    # "sizeIdx":I
    .end local p4    # "cache":Lio/netty/buffer/PoolThreadCache;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 340
    .end local v0    # "nextSub":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local v5    # "handle":J
    .restart local v4    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .restart local p1    # "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    .restart local p2    # "reqCapacity":I
    .restart local p3    # "sizeIdx":I
    .restart local p4    # "cache":Lio/netty/buffer/PoolThreadCache;
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Lio/netty/buffer/PoolSubpage;->unlock()V

    .line 341
    throw v0

    .line 345
    .end local v4    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    :cond_6
    iget-object v0, v8, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v0, v9}, Lio/netty/buffer/PoolArena;->sizeIdx2size(I)I

    move-result v0

    .line 346
    .local v0, "runSize":I
    invoke-direct {v8, v0}, Lio/netty/buffer/PoolChunk;->allocateRun(I)J

    move-result-wide v5

    .line 347
    .restart local v5    # "handle":J
    cmp-long v2, v5, v2

    if-gez v2, :cond_7

    .line 348
    return v1

    .line 350
    :cond_7
    invoke-static {v5, v6}, Lio/netty/buffer/PoolChunk;->isSubpage(J)Z

    move-result v1

    if-nez v1, :cond_9

    .line 353
    .end local v0    # "runSize":I
    move-wide v11, v5

    .end local v5    # "handle":J
    .local v11, "handle":J
    :goto_0
    iget-object v0, v8, Lio/netty/buffer/PoolChunk;->cachedNioBuffers:Ljava/util/Deque;

    if-eqz v0, :cond_8

    iget-object v0, v8, Lio/netty/buffer/PoolChunk;->cachedNioBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_1
    move-object v3, v0

    .line 354
    .local v3, "nioBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide v4, v11

    move/from16 v6, p2

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lio/netty/buffer/PoolChunk;->initBuf(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JILio/netty/buffer/PoolThreadCache;)V

    .line 355
    return v10

    .line 350
    .end local v3    # "nioBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "handle":J
    .restart local v0    # "runSize":I
    .restart local v5    # "handle":J
    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public chunkSize()I
    .locals 1

    .line 630
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    return v0
.end method

.method decrementPinnedMemory(I)V
    .locals 3
    .param p1, "delta"    # I

    .line 624
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    if-lez p1, :cond_0

    .line 625
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->pinnedBytes:Lio/netty/util/internal/LongCounter;

    neg-int v1, p1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/LongCounter;->add(J)V

    .line 626
    return-void

    .line 624
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method destroy()V
    .locals 1

    .line 678
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v0, p0}, Lio/netty/buffer/PoolArena;->destroyChunk(Lio/netty/buffer/PoolChunk;)V

    .line 679
    return-void
.end method

.method free(JILjava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "handle"    # J
    .param p3, "normCapacity"    # I
    .param p4, "nioBuffer"    # Ljava/nio/ByteBuffer;

    .line 489
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-static {p1, p2}, Lio/netty/buffer/PoolChunk;->isSubpage(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 490
    invoke-static {p1, p2}, Lio/netty/buffer/PoolChunk;->runOffset(J)I

    move-result v0

    .line 491
    .local v0, "sIdx":I
    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    aget-object v1, v1, v0

    .line 492
    .local v1, "subpage":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    if-eqz v1, :cond_3

    .line 493
    iget-object v2, v1, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v2, v2, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v2, v2, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    iget v3, v1, Lio/netty/buffer/PoolSubpage;->headIndex:I

    aget-object v2, v2, v3

    .line 496
    .local v2, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    invoke-virtual {v2}, Lio/netty/buffer/PoolSubpage;->lock()V

    .line 498
    :try_start_0
    iget-boolean v3, v1, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    if-eqz v3, :cond_2

    .line 499
    invoke-static {p1, p2}, Lio/netty/buffer/PoolChunk;->bitmapIdx(J)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lio/netty/buffer/PoolSubpage;->free(Lio/netty/buffer/PoolSubpage;I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 507
    invoke-virtual {v2}, Lio/netty/buffer/PoolSubpage;->unlock()V

    .line 501
    return-void

    .line 503
    :cond_0
    :try_start_1
    iget-boolean v3, v1, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    if-nez v3, :cond_1

    .line 505
    iget-object v3, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    const/4 v4, 0x0

    aput-object v4, v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    invoke-virtual {v2}, Lio/netty/buffer/PoolSubpage;->unlock()V

    .line 508
    goto :goto_1

    .line 503
    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "sIdx":I
    .end local v1    # "subpage":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local v2    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local p1    # "handle":J
    .end local p3    # "normCapacity":I
    .end local p4    # "nioBuffer":Ljava/nio/ByteBuffer;
    throw v3

    .line 507
    .restart local v0    # "sIdx":I
    .restart local v1    # "subpage":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .restart local v2    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .restart local p1    # "handle":J
    .restart local p3    # "normCapacity":I
    .restart local p4    # "nioBuffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 498
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "sIdx":I
    .end local v1    # "subpage":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local v2    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local p1    # "handle":J
    .end local p3    # "normCapacity":I
    .end local p4    # "nioBuffer":Ljava/nio/ByteBuffer;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 507
    .restart local v0    # "sIdx":I
    .restart local v1    # "subpage":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .restart local v2    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .restart local p1    # "handle":J
    .restart local p3    # "normCapacity":I
    .restart local p4    # "nioBuffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v2}, Lio/netty/buffer/PoolSubpage;->unlock()V

    .line 508
    throw v3

    .line 492
    .end local v2    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 511
    .end local v0    # "sIdx":I
    .end local v1    # "subpage":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    :cond_4
    :goto_1
    iget v0, p0, Lio/netty/buffer/PoolChunk;->pageShifts:I

    invoke-static {v0, p1, p2}, Lio/netty/buffer/PoolChunk;->runSize(IJ)I

    move-result v0

    .line 513
    .local v0, "runSize":I
    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->runsAvailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 517
    :try_start_3
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PoolChunk;->collapseRuns(J)J

    move-result-wide v1

    .line 520
    .local v1, "finalRun":J
    const-wide v3, -0x200000001L

    and-long/2addr v1, v3

    .line 522
    const-wide v3, -0x100000001L

    and-long/2addr v1, v3

    .line 524
    invoke-static {v1, v2}, Lio/netty/buffer/PoolChunk;->runOffset(J)I

    move-result v3

    invoke-static {v1, v2}, Lio/netty/buffer/PoolChunk;->runPages(J)I

    move-result v4

    invoke-direct {p0, v3, v4, v1, v2}, Lio/netty/buffer/PoolChunk;->insertAvailRun(IIJ)V

    .line 525
    iget v3, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    add-int/2addr v3, v0

    iput v3, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 527
    .end local v1    # "finalRun":J
    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->runsAvailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 528
    nop

    .line 530
    if-eqz p4, :cond_5

    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->cachedNioBuffers:Ljava/util/Deque;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->cachedNioBuffers:Ljava/util/Deque;

    .line 531
    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    sget v2, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_CACHED_BYTEBUFFERS_PER_CHUNK:I

    if-ge v1, v2, :cond_5

    .line 532
    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->cachedNioBuffers:Ljava/util/Deque;

    invoke-interface {v1, p4}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 534
    :cond_5
    return-void

    .line 527
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lio/netty/buffer/PoolChunk;->runsAvailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 528
    throw v1
.end method

.method public freeBytes()I
    .locals 2

    .line 635
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-boolean v0, p0, Lio/netty/buffer/PoolChunk;->unpooled:Z

    if-eqz v0, :cond_0

    .line 636
    iget v0, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    return v0

    .line 638
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->runsAvailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 640
    :try_start_0
    iget v0, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->runsAvailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 640
    return v0

    .line 642
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->runsAvailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 643
    throw v0
.end method

.method incrementPinnedMemory(I)V
    .locals 3
    .param p1, "delta"    # I

    .line 619
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    if-lez p1, :cond_0

    .line 620
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->pinnedBytes:Lio/netty/util/internal/LongCounter;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/LongCounter;->add(J)V

    .line 621
    return-void

    .line 619
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method initBuf(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JILio/netty/buffer/PoolThreadCache;)V
    .locals 13
    .param p2, "nioBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "handle"    # J
    .param p5, "reqCapacity"    # I
    .param p6, "threadCache"    # Lio/netty/buffer/PoolThreadCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JI",
            "Lio/netty/buffer/PoolThreadCache;",
            ")V"
        }
    .end annotation

    .line 596
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    move-object v9, p0

    invoke-static/range {p3 .. p4}, Lio/netty/buffer/PoolChunk;->isSubpage(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    invoke-virtual/range {p0 .. p6}, Lio/netty/buffer/PoolChunk;->initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JILio/netty/buffer/PoolThreadCache;)V

    move-wide/from16 v10, p3

    goto :goto_0

    .line 599
    :cond_0
    iget v0, v9, Lio/netty/buffer/PoolChunk;->pageShifts:I

    move-wide/from16 v10, p3

    invoke-static {v0, v10, v11}, Lio/netty/buffer/PoolChunk;->runSize(IJ)I

    move-result v12

    .line 600
    .local v12, "maxLength":I
    invoke-static/range {p3 .. p4}, Lio/netty/buffer/PoolChunk;->runOffset(J)I

    move-result v0

    iget v1, v9, Lio/netty/buffer/PoolChunk;->pageShifts:I

    shl-int v5, v0, v1

    iget-object v0, v9, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v0, v0, Lio/netty/buffer/PoolArena;->parent:Lio/netty/buffer/PooledByteBufAllocator;

    .line 601
    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator;->threadCache()Lio/netty/buffer/PoolThreadCache;

    move-result-object v8

    .line 600
    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-wide/from16 v3, p3

    move/from16 v6, p5

    move v7, v12

    invoke-virtual/range {v0 .. v8}, Lio/netty/buffer/PooledByteBuf;->init(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JIIILio/netty/buffer/PoolThreadCache;)V

    .line 603
    .end local v12    # "maxLength":I
    :goto_0
    return-void
.end method

.method initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JILio/netty/buffer/PoolThreadCache;)V
    .locals 15
    .param p2, "nioBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "handle"    # J
    .param p5, "reqCapacity"    # I
    .param p6, "threadCache"    # Lio/netty/buffer/PoolThreadCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JI",
            "Lio/netty/buffer/PoolThreadCache;",
            ")V"
        }
    .end annotation

    .line 607
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    move-object v9, p0

    move/from16 v10, p5

    invoke-static/range {p3 .. p4}, Lio/netty/buffer/PoolChunk;->runOffset(J)I

    move-result v11

    .line 608
    .local v11, "runOffset":I
    invoke-static/range {p3 .. p4}, Lio/netty/buffer/PoolChunk;->bitmapIdx(J)I

    move-result v12

    .line 610
    .local v12, "bitmapIdx":I
    iget-object v0, v9, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    aget-object v13, v0, v11

    .line 611
    .local v13, "s":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    invoke-virtual {v13}, Lio/netty/buffer/PoolSubpage;->isDoNotDestroy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    iget v0, v13, Lio/netty/buffer/PoolSubpage;->elemSize:I

    if-gt v10, v0, :cond_0

    .line 614
    iget v0, v9, Lio/netty/buffer/PoolChunk;->pageShifts:I

    shl-int v0, v11, v0

    iget v1, v13, Lio/netty/buffer/PoolSubpage;->elemSize:I

    mul-int/2addr v1, v12

    add-int v14, v0, v1

    .line 615
    .local v14, "offset":I
    iget v7, v13, Lio/netty/buffer/PoolSubpage;->elemSize:I

    move-object/from16 v0, p1

    move-object v1, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move v5, v14

    move/from16 v6, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lio/netty/buffer/PooledByteBuf;->init(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JIIILio/netty/buffer/PoolThreadCache;)V

    .line 616
    return-void

    .line 612
    .end local v14    # "offset":I
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v13, Lio/netty/buffer/PoolSubpage;->elemSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 611
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public pinnedBytes()I
    .locals 2

    .line 647
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->pinnedBytes:Lio/netty/util/internal/LongCounter;

    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 653
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-boolean v0, p0, Lio/netty/buffer/PoolChunk;->unpooled:Z

    if-eqz v0, :cond_0

    .line 654
    iget v0, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    .local v0, "freeBytes":I
    goto :goto_0

    .line 656
    .end local v0    # "freeBytes":I
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->runsAvailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 658
    :try_start_0
    iget v0, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    .restart local v0    # "freeBytes":I
    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->runsAvailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 661
    nop

    .line 664
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 665
    const-string v2, "Chunk("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 666
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 667
    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 668
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->usage(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 669
    const-string v2, "%, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    sub-int/2addr v2, v0

    .line 670
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 671
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    .line 672
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 673
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 674
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 664
    return-object v1

    .line 660
    .end local v0    # "freeBytes":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->runsAvailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 661
    throw v0
.end method

.method public usage()I
    .locals 2

    .line 289
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-boolean v0, p0, Lio/netty/buffer/PoolChunk;->unpooled:Z

    if-eqz v0, :cond_0

    .line 290
    iget v0, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    .local v0, "freeBytes":I
    goto :goto_0

    .line 292
    .end local v0    # "freeBytes":I
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->runsAvailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 294
    :try_start_0
    iget v0, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    .restart local v0    # "freeBytes":I
    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->runsAvailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 297
    nop

    .line 299
    :goto_0
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->usage(I)I

    move-result v1

    return v1

    .line 296
    .end local v0    # "freeBytes":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/buffer/PoolChunk;->runsAvailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 297
    throw v0
.end method
