.class final Lio/netty/buffer/PoolThreadCache;
.super Ljava/lang/Object;
.source "PoolThreadCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/PoolThreadCache$FreeOnFinalize;,
        Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;,
        Lio/netty/buffer/PoolThreadCache$NormalMemoryRegionCache;,
        Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;
    }
.end annotation


# static fields
.field private static final INTEGER_SIZE_MINUS_ONE:I = 0x1f

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private allocations:I

.field final directArena:Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolArena<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final freeOnFinalize:Lio/netty/buffer/PoolThreadCache$FreeOnFinalize;

.field private final freeSweepAllocationThreshold:I

.field private final freed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final heapArena:Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolArena<",
            "[B>;"
        }
    .end annotation
.end field

.field private final normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "[B>;"
        }
    .end annotation
.end field

.field private final smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lio/netty/buffer/PoolThreadCache;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/PoolThreadCache;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method constructor <init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolArena;IIIIZ)V
    .locals 3
    .param p3, "smallCacheSize"    # I
    .param p4, "normalCacheSize"    # I
    .param p5, "maxCachedBufferCapacity"    # I
    .param p6, "freeSweepAllocationThreshold"    # I
    .param p7, "useFinalizer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "[B>;",
            "Lio/netty/buffer/PoolArena<",
            "Ljava/nio/ByteBuffer;",
            ">;IIIIZ)V"
        }
    .end annotation

    .line 71
    .local p1, "heapArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<[B>;"
    .local p2, "directArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<Ljava/nio/ByteBuffer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache;->freed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    const-string v0, "maxCachedBufferCapacity"

    invoke-static {p5, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 73
    iput p6, p0, Lio/netty/buffer/PoolThreadCache;->freeSweepAllocationThreshold:I

    .line 74
    iput-object p1, p0, Lio/netty/buffer/PoolThreadCache;->heapArena:Lio/netty/buffer/PoolArena;

    .line 75
    iput-object p2, p0, Lio/netty/buffer/PoolThreadCache;->directArena:Lio/netty/buffer/PoolArena;

    .line 76
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 77
    iget v1, p2, Lio/netty/buffer/PoolArena;->numSmallSubpagePools:I

    invoke-static {p3, v1}, Lio/netty/buffer/PoolThreadCache;->createSubPageCaches(II)[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v1

    iput-object v1, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 80
    invoke-static {p4, p5, p2}, Lio/netty/buffer/PoolThreadCache;->createNormalCaches(IILio/netty/buffer/PoolArena;)[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v1

    iput-object v1, p0, Lio/netty/buffer/PoolThreadCache;->normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 83
    iget-object v1, p2, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    goto :goto_0

    .line 86
    :cond_0
    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 87
    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache;->normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 89
    :goto_0
    if-eqz p1, :cond_1

    .line 91
    iget v1, p1, Lio/netty/buffer/PoolArena;->numSmallSubpagePools:I

    invoke-static {p3, v1}, Lio/netty/buffer/PoolThreadCache;->createSubPageCaches(II)[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v1

    iput-object v1, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 94
    invoke-static {p4, p5, p1}, Lio/netty/buffer/PoolThreadCache;->createNormalCaches(IILio/netty/buffer/PoolArena;)[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v1

    iput-object v1, p0, Lio/netty/buffer/PoolThreadCache;->normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 97
    iget-object v1, p1, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    goto :goto_1

    .line 100
    :cond_1
    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 101
    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache;->normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 105
    :goto_1
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    if-lt p6, v1, :cond_5

    .line 111
    :cond_3
    if-eqz p7, :cond_4

    new-instance v1, Lio/netty/buffer/PoolThreadCache$FreeOnFinalize;

    invoke-direct {v1, p0, v0}, Lio/netty/buffer/PoolThreadCache$FreeOnFinalize;-><init>(Lio/netty/buffer/PoolThreadCache;Lio/netty/buffer/PoolThreadCache$1;)V

    move-object v0, v1

    :cond_4
    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache;->freeOnFinalize:Lio/netty/buffer/PoolThreadCache$FreeOnFinalize;

    .line 112
    return-void

    .line 108
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freeSweepAllocationThreshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: > 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private allocate(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Lio/netty/buffer/PooledByteBuf;I)Z
    .locals 4
    .param p2, "buf"    # Lio/netty/buffer/PooledByteBuf;
    .param p3, "reqCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "*>;",
            "Lio/netty/buffer/PooledByteBuf;",
            "I)Z"
        }
    .end annotation

    .line 167
    .local p1, "cache":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 169
    return v0

    .line 171
    :cond_0
    invoke-virtual {p1, p2, p3, p0}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->allocate(Lio/netty/buffer/PooledByteBuf;ILio/netty/buffer/PoolThreadCache;)Z

    move-result v1

    .line 172
    .local v1, "allocated":Z
    iget v2, p0, Lio/netty/buffer/PoolThreadCache;->allocations:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/netty/buffer/PoolThreadCache;->allocations:I

    iget v3, p0, Lio/netty/buffer/PoolThreadCache;->freeSweepAllocationThreshold:I

    if-lt v2, v3, :cond_1

    .line 173
    iput v0, p0, Lio/netty/buffer/PoolThreadCache;->allocations:I

    .line 174
    invoke-virtual {p0}, Lio/netty/buffer/PoolThreadCache;->trim()V

    .line 176
    :cond_1
    return v1
.end method

.method private cache(Lio/netty/buffer/PoolArena;ILio/netty/buffer/PoolArena$SizeClass;)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .locals 2
    .param p2, "sizeIdx"    # I
    .param p3, "sizeClass"    # Lio/netty/buffer/PoolArena$SizeClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "*>;I",
            "Lio/netty/buffer/PoolArena$SizeClass;",
            ")",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "*>;"
        }
    .end annotation

    .line 198
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    sget-object v0, Lio/netty/buffer/PoolThreadCache$1;->$SwitchMap$io$netty$buffer$PoolArena$SizeClass:[I

    invoke-virtual {p3}, Lio/netty/buffer/PoolArena$SizeClass;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 204
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 202
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PoolThreadCache;->cacheForSmall(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    return-object v0

    .line 200
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PoolThreadCache;->cacheForNormal(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static cache([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .locals 1
    .param p1, "sizeIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "TT;>;I)",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "TT;>;"
        }
    .end annotation

    .line 309
    .local p0, "cache":[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    if-eqz p0, :cond_1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    aget-object v0, p0, p1

    return-object v0

    .line 310
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private cacheForNormal(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .locals 2
    .param p2, "sizeIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "*>;I)",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "*>;"
        }
    .end annotation

    .line 301
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    iget v0, p1, Lio/netty/buffer/PoolArena;->numSmallSubpagePools:I

    sub-int v0, p2, v0

    .line 302
    .local v0, "idx":I
    invoke-virtual {p1}, Lio/netty/buffer/PoolArena;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v1, v0}, Lio/netty/buffer/PoolThreadCache;->cache([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v1

    return-object v1

    .line 305
    :cond_0
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v1, v0}, Lio/netty/buffer/PoolThreadCache;->cache([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v1

    return-object v1
.end method

.method private cacheForSmall(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .locals 1
    .param p2, "sizeIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "*>;I)",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "*>;"
        }
    .end annotation

    .line 293
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    invoke-virtual {p1}, Lio/netty/buffer/PoolArena;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v0, p2}, Lio/netty/buffer/PoolThreadCache;->cache([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    return-object v0

    .line 296
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v0, p2}, Lio/netty/buffer/PoolThreadCache;->cache([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    return-object v0
.end method

.method private static checkCacheMayLeak([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 242
    .local p0, "caches":[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 243
    .local v2, "cache":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    invoke-static {v2}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->access$100(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 244
    sget-object v0, Lio/netty/buffer/PoolThreadCache;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "{} memory may leak."

    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    return-void

    .line 242
    .end local v2    # "cache":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_1
    return-void
.end method

.method private static createNormalCaches(IILio/netty/buffer/PoolArena;)[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .locals 4
    .param p0, "cacheSize"    # I
    .param p1, "maxCachedBufferCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;)[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "TT;>;"
        }
    .end annotation

    .line 132
    .local p2, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    if-lez p0, :cond_1

    if-lez p1, :cond_1

    .line 133
    iget v0, p2, Lio/netty/buffer/PoolArena;->chunkSize:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 136
    .local v0, "max":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v1, "cache":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;>;"
    iget v2, p2, Lio/netty/buffer/PoolArena;->numSmallSubpagePools:I

    .local v2, "idx":I
    :goto_0
    iget v3, p2, Lio/netty/buffer/PoolArena;->nSizes:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p2, v2}, Lio/netty/buffer/PoolArena;->sizeIdx2size(I)I

    move-result v3

    if-gt v3, v0, :cond_0

    .line 138
    new-instance v3, Lio/netty/buffer/PoolThreadCache$NormalMemoryRegionCache;

    invoke-direct {v3, p0}, Lio/netty/buffer/PoolThreadCache$NormalMemoryRegionCache;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v2    # "idx":I
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    return-object v2

    .line 142
    .end local v0    # "max":I
    .end local v1    # "cache":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createSubPageCaches(II)[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .locals 3
    .param p0, "cacheSize"    # I
    .param p1, "numCaches"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "TT;>;"
        }
    .end annotation

    .line 116
    if-lez p0, :cond_1

    if-lez p1, :cond_1

    .line 118
    new-array v0, p1, [Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 119
    .local v0, "cache":[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 121
    new-instance v2, Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;

    invoke-direct {v2, p0}, Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;-><init>(I)V

    aput-object v2, v0, v1

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 125
    .end local v0    # "cache":[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static free(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Z)I
    .locals 1
    .param p1, "finalizer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "*>;Z)I"
        }
    .end annotation

    .line 263
    .local p0, "cache":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    if-nez p0, :cond_0

    .line 264
    const/4 v0, 0x0

    return v0

    .line 266
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->free(Z)I

    move-result v0

    return v0
.end method

.method private static free([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Z)I
    .locals 5
    .param p1, "finalizer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "*>;Z)I"
        }
    .end annotation

    .line 251
    .local p0, "caches":[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 252
    return v0

    .line 255
    :cond_0
    const/4 v1, 0x0

    .line 256
    .local v1, "numFreed":I
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 257
    .local v3, "c":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    invoke-static {v3, p1}, Lio/netty/buffer/PoolThreadCache;->free(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 256
    .end local v3    # "c":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    return v1
.end method

.method static log2(I)I
    .locals 1
    .param p0, "val"    # I

    .line 148
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private static trim(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "*>;)V"
        }
    .end annotation

    .line 286
    .local p0, "cache":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    if-nez p0, :cond_0

    .line 287
    return-void

    .line 289
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->trim()V

    .line 290
    return-void
.end method

.method private static trim([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "*>;)V"
        }
    .end annotation

    .line 277
    .local p0, "caches":[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    if-nez p0, :cond_0

    .line 278
    return-void

    .line 280
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 281
    .local v2, "c":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    invoke-static {v2}, Lio/netty/buffer/PoolThreadCache;->trim(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V

    .line 280
    .end local v2    # "c":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_1
    return-void
.end method


# virtual methods
.method add(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JILio/netty/buffer/PoolArena$SizeClass;)Z
    .locals 8
    .param p2, "chunk"    # Lio/netty/buffer/PoolChunk;
    .param p3, "nioBuffer"    # Ljava/nio/ByteBuffer;
    .param p4, "handle"    # J
    .param p6, "normCapacity"    # I
    .param p7, "sizeClass"    # Lio/netty/buffer/PoolArena$SizeClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "*>;",
            "Lio/netty/buffer/PoolChunk;",
            "Ljava/nio/ByteBuffer;",
            "JI",
            "Lio/netty/buffer/PoolArena$SizeClass;",
            ")Z"
        }
    .end annotation

    .line 186
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    invoke-virtual {p1, p6}, Lio/netty/buffer/PoolArena;->size2SizeIdx(I)I

    move-result v0

    .line 187
    .local v0, "sizeIdx":I
    invoke-direct {p0, p1, v0, p7}, Lio/netty/buffer/PoolThreadCache;->cache(Lio/netty/buffer/PoolArena;ILio/netty/buffer/PoolArena$SizeClass;)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v7

    .line 188
    .local v7, "cache":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    const/4 v1, 0x0

    if-nez v7, :cond_0

    .line 189
    return v1

    .line 191
    :cond_0
    iget-object v2, p0, Lio/netty/buffer/PoolThreadCache;->freed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    return v1

    .line 194
    :cond_1
    move-object v1, v7

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->add(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JI)Z

    move-result v1

    return v1
.end method

.method allocateNormal(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PooledByteBuf;II)Z
    .locals 1
    .param p3, "reqCapacity"    # I
    .param p4, "sizeIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "*>;",
            "Lio/netty/buffer/PooledByteBuf<",
            "*>;II)Z"
        }
    .end annotation

    .line 162
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    .local p2, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<*>;"
    invoke-direct {p0, p1, p4}, Lio/netty/buffer/PoolThreadCache;->cacheForNormal(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lio/netty/buffer/PoolThreadCache;->allocate(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Lio/netty/buffer/PooledByteBuf;I)Z

    move-result v0

    return v0
.end method

.method allocateSmall(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PooledByteBuf;II)Z
    .locals 1
    .param p3, "reqCapacity"    # I
    .param p4, "sizeIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "*>;",
            "Lio/netty/buffer/PooledByteBuf<",
            "*>;II)Z"
        }
    .end annotation

    .line 155
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    .local p2, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<*>;"
    invoke-direct {p0, p1, p4}, Lio/netty/buffer/PoolThreadCache;->cacheForSmall(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lio/netty/buffer/PoolThreadCache;->allocate(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Lio/netty/buffer/PooledByteBuf;I)Z

    move-result v0

    return v0
.end method

.method free(Z)V
    .locals 5
    .param p1, "finalizer"    # Z

    .line 214
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->freed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v0, p1}, Lio/netty/buffer/PoolThreadCache;->free([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Z)I

    move-result v0

    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 216
    invoke-static {v1, p1}, Lio/netty/buffer/PoolThreadCache;->free([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 217
    invoke-static {v1, p1}, Lio/netty/buffer/PoolThreadCache;->free([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 218
    invoke-static {v1, p1}, Lio/netty/buffer/PoolThreadCache;->free([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 220
    .local v0, "numFreed":I
    if-lez v0, :cond_0

    sget-object v1, Lio/netty/buffer/PoolThreadCache;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    sget-object v1, Lio/netty/buffer/PoolThreadCache;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 222
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 221
    const-string v4, "Freed {} thread-local buffer(s) from thread: {}"

    invoke-interface {v1, v4, v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    :cond_0
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->directArena:Lio/netty/buffer/PoolArena;

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->directArena:Lio/netty/buffer/PoolArena;

    iget-object v1, v1, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 229
    :cond_1
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->heapArena:Lio/netty/buffer/PoolArena;

    if-eqz v1, :cond_2

    .line 230
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->heapArena:Lio/netty/buffer/PoolArena;

    iget-object v1, v1, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 232
    .end local v0    # "numFreed":I
    :cond_2
    goto :goto_0

    .line 234
    :cond_3
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    const-string v1, "SmallSubPageDirectCaches"

    invoke-static {v0, v1}, Lio/netty/buffer/PoolThreadCache;->checkCacheMayLeak([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    const-string v1, "NormalDirectCaches"

    invoke-static {v0, v1}, Lio/netty/buffer/PoolThreadCache;->checkCacheMayLeak([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    const-string v1, "SmallSubPageHeapCaches"

    invoke-static {v0, v1}, Lio/netty/buffer/PoolThreadCache;->checkCacheMayLeak([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    const-string v1, "NormalHeapCaches"

    invoke-static {v0, v1}, Lio/netty/buffer/PoolThreadCache;->checkCacheMayLeak([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Ljava/lang/String;)V

    .line 239
    :goto_0
    return-void
.end method

.method trim()V
    .locals 1

    .line 270
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->trim([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V

    .line 271
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->trim([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V

    .line 272
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->trim([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V

    .line 273
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->trim([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V

    .line 274
    return-void
.end method
