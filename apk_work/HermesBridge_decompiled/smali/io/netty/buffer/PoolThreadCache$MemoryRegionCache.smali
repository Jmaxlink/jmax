.class abstract Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
.super Ljava/lang/Object;
.source "PoolThreadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolThreadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MemoryRegionCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final RECYCLER:Lio/netty/util/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool<",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allocations:I

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final size:I

.field private final sizeClass:Lio/netty/buffer/PoolArena$SizeClass;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 484
    new-instance v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$1;

    invoke-direct {v0}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$1;-><init>()V

    invoke-static {v0}, Lio/netty/util/internal/ObjectPool;->newPool(Lio/netty/util/internal/ObjectPool$ObjectCreator;)Lio/netty/util/internal/ObjectPool;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    return-void
.end method

.method constructor <init>(ILio/netty/buffer/PoolArena$SizeClass;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "sizeClass"    # Lio/netty/buffer/PoolArena$SizeClass;

    .line 353
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    invoke-static {p1}, Lio/netty/util/internal/MathUtil;->safeFindNextPositivePowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->size:I

    .line 355
    iget v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->size:I

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->newFixedMpscQueue(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->queue:Ljava/util/Queue;

    .line 356
    iput-object p2, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->sizeClass:Lio/netty/buffer/PoolArena$SizeClass;

    .line 357
    return-void
.end method

.method static synthetic access$100(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 347
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->queue:Ljava/util/Queue;

    return-object v0
.end method

.method private free(IZ)I
    .locals 2
    .param p1, "max"    # I
    .param p2, "finalizer"    # Z

    .line 404
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    const/4 v0, 0x0

    .line 405
    .local v0, "numFreed":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 406
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    .line 407
    .local v1, "entry":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<TT;>;"
    if-eqz v1, :cond_0

    .line 408
    invoke-direct {p0, v1, p2}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->freeEntry(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;Z)V

    .line 405
    .end local v1    # "entry":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<TT;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    .restart local v1    # "entry":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<TT;>;"
    :cond_0
    return v0

    .line 414
    .end local v1    # "entry":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<TT;>;"
    :cond_1
    return v0
.end method

.method private freeEntry(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;Z)V
    .locals 13
    .param p1, "entry"    # Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;
    .param p2, "finalizer"    # Z

    .line 433
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    iget-object v8, p1, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    .line 434
    .local v8, "chunk":Lio/netty/buffer/PoolChunk;
    iget-wide v9, p1, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    .line 435
    .local v9, "handle":J
    iget-object v11, p1, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->nioBuffer:Ljava/nio/ByteBuffer;

    .line 436
    .local v11, "nioBuffer":Ljava/nio/ByteBuffer;
    iget v12, p1, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->normCapacity:I

    .line 438
    .local v12, "normCapacity":I
    if-nez p2, :cond_0

    .line 441
    invoke-virtual {p1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->recycle()V

    .line 444
    :cond_0
    iget-object v0, v8, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v5, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->sizeClass:Lio/netty/buffer/PoolArena$SizeClass;

    move-object v1, v8

    move-wide v2, v9

    move v4, v12

    move-object v6, v11

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lio/netty/buffer/PoolArena;->freeChunk(Lio/netty/buffer/PoolChunk;JILio/netty/buffer/PoolArena$SizeClass;Ljava/nio/ByteBuffer;Z)V

    .line 445
    return-void
.end method

.method private static newEntry(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JI)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;
    .locals 1
    .param p1, "nioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "handle"    # J
    .param p4, "normCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "*>;",
            "Ljava/nio/ByteBuffer;",
            "JI)",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;"
        }
    .end annotation

    .line 475
    .local p0, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<*>;"
    sget-object v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    invoke-virtual {v0}, Lio/netty/util/internal/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    .line 476
    .local v0, "entry":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;
    iput-object p0, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    .line 477
    iput-object p1, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->nioBuffer:Ljava/nio/ByteBuffer;

    .line 478
    iput-wide p2, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    .line 479
    iput p4, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->normCapacity:I

    .line 480
    return-object v0
.end method


# virtual methods
.method public final add(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JI)Z
    .locals 2
    .param p2, "nioBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "handle"    # J
    .param p5, "normCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JI)Z"
        }
    .end annotation

    .line 370
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-static {p1, p2, p3, p4, p5}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->newEntry(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JI)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    move-result-object v0

    .line 371
    .local v0, "entry":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<TT;>;"
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->queue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 372
    .local v1, "queued":Z
    if-nez v1, :cond_0

    .line 374
    invoke-virtual {v0}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->unguardedRecycle()V

    .line 377
    :cond_0
    return v1
.end method

.method public final allocate(Lio/netty/buffer/PooledByteBuf;ILio/netty/buffer/PoolThreadCache;)Z
    .locals 10
    .param p2, "reqCapacity"    # I
    .param p3, "threadCache"    # Lio/netty/buffer/PoolThreadCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;I",
            "Lio/netty/buffer/PoolThreadCache;",
            ")Z"
        }
    .end annotation

    .line 384
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    .line 385
    .local v0, "entry":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<TT;>;"
    if-nez v0, :cond_0

    .line 386
    const/4 v1, 0x0

    return v1

    .line 388
    :cond_0
    iget-object v3, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v4, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->nioBuffer:Ljava/nio/ByteBuffer;

    iget-wide v5, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    move-object v2, p0

    move-object v7, p1

    move v8, p2

    move-object v9, p3

    invoke-virtual/range {v2 .. v9}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->initBuf(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JLio/netty/buffer/PooledByteBuf;ILio/netty/buffer/PoolThreadCache;)V

    .line 389
    invoke-virtual {v0}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->unguardedRecycle()V

    .line 392
    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->allocations:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->allocations:I

    .line 393
    return v2
.end method

.method public final free(Z)I
    .locals 1
    .param p1, "finalizer"    # Z

    .line 400
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0, p1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->free(IZ)I

    move-result v0

    return v0
.end method

.method protected abstract initBuf(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JLio/netty/buffer/PooledByteBuf;ILio/netty/buffer/PoolThreadCache;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;I",
            "Lio/netty/buffer/PoolThreadCache;",
            ")V"
        }
    .end annotation
.end method

.method public final trim()V
    .locals 2

    .line 421
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->size:I

    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->allocations:I

    sub-int/2addr v0, v1

    .line 422
    .local v0, "free":I
    const/4 v1, 0x0

    iput v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->allocations:I

    .line 425
    if-lez v0, :cond_0

    .line 426
    invoke-direct {p0, v0, v1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->free(IZ)I

    .line 428
    :cond_0
    return-void
.end method
