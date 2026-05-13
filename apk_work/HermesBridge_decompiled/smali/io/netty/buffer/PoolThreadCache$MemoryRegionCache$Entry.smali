.class final Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;
.super Ljava/lang/Object;
.source "PoolThreadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field chunk:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end field

.field handle:J

.field nioBuffer:Ljava/nio/ByteBuffer;

.field normCapacity:I

.field final recyclerHandle:Lio/netty/util/Recycler$EnhancedHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler$EnhancedHandle<",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<",
            "*>;>;)V"
        }
    .end annotation

    .line 454
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<TT;>;"
    .local p1, "recyclerHandle":Lio/netty/util/internal/ObjectPool$Handle;, "Lio/netty/util/internal/ObjectPool$Handle<Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    .line 455
    move-object v0, p1

    check-cast v0, Lio/netty/util/Recycler$EnhancedHandle;

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->recyclerHandle:Lio/netty/util/Recycler$EnhancedHandle;

    .line 456
    return-void
.end method


# virtual methods
.method recycle()V
    .locals 2

    .line 459
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    .line 460
    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->nioBuffer:Ljava/nio/ByteBuffer;

    .line 461
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    .line 462
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->recyclerHandle:Lio/netty/util/Recycler$EnhancedHandle;

    invoke-virtual {v0, p0}, Lio/netty/util/Recycler$EnhancedHandle;->recycle(Ljava/lang/Object;)V

    .line 463
    return-void
.end method

.method unguardedRecycle()V
    .locals 2

    .line 466
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    .line 467
    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->nioBuffer:Ljava/nio/ByteBuffer;

    .line 468
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    .line 469
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->recyclerHandle:Lio/netty/util/Recycler$EnhancedHandle;

    invoke-virtual {v0, p0}, Lio/netty/util/Recycler$EnhancedHandle;->unguardedRecycle(Ljava/lang/Object;)V

    .line 470
    return-void
.end method
