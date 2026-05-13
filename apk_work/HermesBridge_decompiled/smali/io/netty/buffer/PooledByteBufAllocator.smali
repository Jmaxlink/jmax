.class public Lio/netty/buffer/PooledByteBufAllocator;
.super Lio/netty/buffer/AbstractByteBufAllocator;
.source "PooledByteBufAllocator.java"

# interfaces
.implements Lio/netty/buffer/ByteBufAllocatorMetricProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CACHE_NOT_USED:I = 0x0

.field public static final DEFAULT:Lio/netty/buffer/PooledByteBufAllocator;

.field private static final DEFAULT_CACHE_TRIM_INTERVAL:I

.field private static final DEFAULT_CACHE_TRIM_INTERVAL_MILLIS:J

.field private static final DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT:I

.field static final DEFAULT_MAX_CACHED_BUFFER_CAPACITY:I

.field static final DEFAULT_MAX_CACHED_BYTEBUFFERS_PER_CHUNK:I

.field private static final DEFAULT_MAX_ORDER:I

.field private static final DEFAULT_NORMAL_CACHE_SIZE:I

.field private static final DEFAULT_NUM_DIRECT_ARENA:I

.field private static final DEFAULT_NUM_HEAP_ARENA:I

.field private static final DEFAULT_PAGE_SIZE:I

.field private static final DEFAULT_SMALL_CACHE_SIZE:I

.field private static final DEFAULT_USE_CACHE_FOR_ALL_THREADS:Z

.field private static final MAX_CHUNK_SIZE:I = 0x40000000

.field private static final MIN_PAGE_SIZE:I = 0x1000

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final chunkSize:I

.field private final directArenaMetrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolArenaMetric;",
            ">;"
        }
    .end annotation
.end field

.field private final directArenas:[Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolArena<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final heapArenaMetrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolArenaMetric;",
            ">;"
        }
    .end annotation
.end field

.field private final heapArenas:[Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolArena<",
            "[B>;"
        }
    .end annotation
.end field

.field private final metric:Lio/netty/buffer/PooledByteBufAllocatorMetric;

.field private final normalCacheSize:I

.field private final smallCacheSize:I

.field private final threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

.field private final trimTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 38
    nop

    .line 40
    const-class v0, Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 68
    const-string v0, "io.netty.allocator.directMemoryCacheAlignment"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 70
    .local v2, "defaultAlignment":I
    const-string v0, "io.netty.allocator.pageSize"

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 71
    .local v4, "defaultPageSize":I
    const/4 v5, 0x0

    .line 73
    .local v5, "pageSizeFallbackCause":Ljava/lang/Throwable;
    :try_start_0
    invoke-static {v4, v2}, Lio/netty/buffer/PooledByteBufAllocator;->validateAndCalculatePageShifts(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 75
    .local v0, "t":Ljava/lang/Throwable;
    move-object v5, v0

    .line 76
    const/16 v4, 0x2000

    .line 77
    const/4 v2, 0x0

    .line 79
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    sput v4, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    .line 80
    sput v2, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT:I

    .line 82
    const-string v0, "io.netty.allocator.maxOrder"

    const/16 v6, 0x9

    invoke-static {v0, v6}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 83
    .local v6, "defaultMaxOrder":I
    const/4 v7, 0x0

    .line 85
    .local v7, "maxOrderFallbackCause":Ljava/lang/Throwable;
    :try_start_1
    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    invoke-static {v0, v6}, Lio/netty/buffer/PooledByteBufAllocator;->validateAndCalculateChunkSize(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    goto :goto_1

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    .restart local v0    # "t":Ljava/lang/Throwable;
    move-object v7, v0

    .line 88
    const/16 v6, 0x9

    .line 90
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    sput v6, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    .line 94
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 103
    .local v0, "runtime":Ljava/lang/Runtime;
    invoke-static {}, Lio/netty/util/NettyRuntime;->availableProcessors()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    .line 104
    .local v8, "defaultMinNumArena":I
    sget v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    sget v10, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    shl-int/2addr v9, v10

    .line 105
    .local v9, "defaultChunkSize":I
    int-to-long v10, v8

    .line 110
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v12

    int-to-long v14, v9

    div-long/2addr v12, v14

    const-wide/16 v14, 0x2

    div-long/2addr v12, v14

    const-wide/16 v16, 0x3

    div-long v12, v12, v16

    .line 108
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v10, v10

    .line 106
    const-string v11, "io.netty.allocator.numHeapArenas"

    invoke-static {v11, v10}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 105
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    sput v10, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_HEAP_ARENA:I

    .line 111
    int-to-long v10, v8

    .line 116
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->maxDirectMemory()J

    move-result-wide v12

    move/from16 v18, v4

    .end local v4    # "defaultPageSize":I
    .local v18, "defaultPageSize":I
    int-to-long v3, v9

    div-long/2addr v12, v3

    div-long/2addr v12, v14

    div-long v12, v12, v16

    .line 114
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 112
    const-string v4, "io.netty.allocator.numDirectArenas"

    invoke-static {v4, v3}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 111
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sput v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_DIRECT_ARENA:I

    .line 119
    const-string v3, "io.netty.allocator.smallCacheSize"

    const/16 v4, 0x100

    invoke-static {v3, v4}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_SMALL_CACHE_SIZE:I

    .line 120
    const-string v3, "io.netty.allocator.normalCacheSize"

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NORMAL_CACHE_SIZE:I

    .line 124
    const-string v3, "io.netty.allocator.maxCachedBufferCapacity"

    const v4, 0x8000

    invoke-static {v3, v4}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_CACHED_BUFFER_CAPACITY:I

    .line 128
    const-string v3, "io.netty.allocator.cacheTrimInterval"

    const/16 v4, 0x2000

    invoke-static {v3, v4}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL:I

    .line 131
    const-string v3, "io.netty.allocation.cacheTrimIntervalMillis"

    invoke-static {v3}, Lio/netty/util/internal/SystemPropertyUtil;->contains(Ljava/lang/String;)Z

    move-result v4

    const-wide/16 v10, 0x0

    const-string v12, "io.netty.allocator.cacheTrimIntervalMillis"

    if-eqz v4, :cond_1

    .line 132
    sget-object v4, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v13, "-Dio.netty.allocation.cacheTrimIntervalMillis is deprecated, use -Dio.netty.allocator.cacheTrimIntervalMillis"

    invoke-interface {v4, v13}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 135
    invoke-static {v12}, Lio/netty/util/internal/SystemPropertyUtil;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    invoke-static {v12, v10, v11}, Lio/netty/util/internal/SystemPropertyUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL_MILLIS:J

    goto :goto_2

    .line 140
    :cond_0
    invoke-static {v3, v10, v11}, Lio/netty/util/internal/SystemPropertyUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL_MILLIS:J

    goto :goto_2

    .line 144
    :cond_1
    invoke-static {v12, v10, v11}, Lio/netty/util/internal/SystemPropertyUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL_MILLIS:J

    .line 148
    :goto_2
    const-string v3, "io.netty.allocator.useCacheForAllThreads"

    invoke-static {v3, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_USE_CACHE_FOR_ALL_THREADS:Z

    .line 153
    const-string v1, "io.netty.allocator.maxCachedByteBuffersPerChunk"

    const/16 v3, 0x3ff

    invoke-static {v1, v3}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_CACHED_BYTEBUFFERS_PER_CHUNK:I

    .line 156
    sget-object v1, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 157
    sget-object v1, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_HEAP_ARENA:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "-Dio.netty.allocator.numHeapArenas: {}"

    invoke-interface {v1, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    sget-object v1, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_DIRECT_ARENA:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "-Dio.netty.allocator.numDirectArenas: {}"

    invoke-interface {v1, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    const-string v1, "-Dio.netty.allocator.pageSize: {}"

    if-nez v5, :cond_2

    .line 160
    sget-object v3, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget v4, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 162
    :cond_2
    sget-object v3, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget v4, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    :goto_3
    const-string v1, "-Dio.netty.allocator.maxOrder: {}"

    if-nez v7, :cond_3

    .line 165
    sget-object v3, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget v4, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 167
    :cond_3
    sget-object v3, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget v4, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    :goto_4
    sget-object v1, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    sget v4, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    shl-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "-Dio.netty.allocator.chunkSize: {}"

    invoke-interface {v1, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    sget-object v1, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_SMALL_CACHE_SIZE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "-Dio.netty.allocator.smallCacheSize: {}"

    invoke-interface {v1, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    sget-object v1, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NORMAL_CACHE_SIZE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "-Dio.netty.allocator.normalCacheSize: {}"

    invoke-interface {v1, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    sget-object v1, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_CACHED_BUFFER_CAPACITY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "-Dio.netty.allocator.maxCachedBufferCapacity: {}"

    invoke-interface {v1, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    sget-object v1, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "-Dio.netty.allocator.cacheTrimInterval: {}"

    invoke-interface {v1, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    sget-object v1, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget-wide v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL_MILLIS:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "-Dio.netty.allocator.cacheTrimIntervalMillis: {}"

    invoke-interface {v1, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    sget-object v1, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget-boolean v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_USE_CACHE_FOR_ALL_THREADS:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "-Dio.netty.allocator.useCacheForAllThreads: {}"

    invoke-interface {v1, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    sget-object v1, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_CACHED_BYTEBUFFERS_PER_CHUNK:I

    .line 177
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 176
    const-string v4, "-Dio.netty.allocator.maxCachedByteBuffersPerChunk: {}"

    invoke-interface {v1, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    .end local v0    # "runtime":Ljava/lang/Runtime;
    .end local v2    # "defaultAlignment":I
    .end local v5    # "pageSizeFallbackCause":Ljava/lang/Throwable;
    .end local v6    # "defaultMaxOrder":I
    .end local v7    # "maxOrderFallbackCause":Ljava/lang/Throwable;
    .end local v8    # "defaultMinNumArena":I
    .end local v9    # "defaultChunkSize":I
    .end local v18    # "defaultPageSize":I
    :cond_4
    new-instance v0, Lio/netty/buffer/PooledByteBufAllocator;

    .line 182
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->directBufferPreferred()Z

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(Z)V

    sput-object v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/PooledByteBufAllocator;

    .line 181
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(Z)V

    .line 196
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6
    .param p1, "nHeapArena"    # I
    .param p2, "nDirectArena"    # I
    .param p3, "pageSize"    # I
    .param p4, "maxOrder"    # I

    .line 205
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIII)V

    .line 206
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 6
    .param p1, "preferDirect"    # Z

    .line 200
    sget v2, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_HEAP_ARENA:I

    sget v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_DIRECT_ARENA:I

    sget v4, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    sget v5, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIII)V

    .line 201
    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 9
    .param p1, "preferDirect"    # Z
    .param p2, "nHeapArena"    # I
    .param p3, "nDirectArena"    # I
    .param p4, "pageSize"    # I
    .param p5, "maxOrder"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    sget v7, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_SMALL_CACHE_SIZE:I

    sget v8, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NORMAL_CACHE_SIZE:I

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIIIIII)V

    .line 216
    return-void
.end method

.method public constructor <init>(ZIIIIIII)V
    .locals 10
    .param p1, "preferDirect"    # Z
    .param p2, "nHeapArena"    # I
    .param p3, "nDirectArena"    # I
    .param p4, "pageSize"    # I
    .param p5, "maxOrder"    # I
    .param p6, "tinyCacheSize"    # I
    .param p7, "smallCacheSize"    # I
    .param p8, "normalCacheSize"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    sget-boolean v8, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_USE_CACHE_FOR_ALL_THREADS:Z

    sget v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v9}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIIIIIZI)V

    .line 227
    return-void
.end method

.method public constructor <init>(ZIIIIIIIZ)V
    .locals 9
    .param p1, "preferDirect"    # Z
    .param p2, "nHeapArena"    # I
    .param p3, "nDirectArena"    # I
    .param p4, "pageSize"    # I
    .param p5, "maxOrder"    # I
    .param p6, "tinyCacheSize"    # I
    .param p7, "smallCacheSize"    # I
    .param p8, "normalCacheSize"    # I
    .param p9, "useCacheForAllThreads"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 238
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIIIIIZ)V

    .line 241
    return-void
.end method

.method public constructor <init>(ZIIIIIIIZI)V
    .locals 10
    .param p1, "preferDirect"    # Z
    .param p2, "nHeapArena"    # I
    .param p3, "nDirectArena"    # I
    .param p4, "pageSize"    # I
    .param p5, "maxOrder"    # I
    .param p6, "tinyCacheSize"    # I
    .param p7, "smallCacheSize"    # I
    .param p8, "normalCacheSize"    # I
    .param p9, "useCacheForAllThreads"    # Z
    .param p10, "directMemoryCacheAlignment"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIIIIIZI)V

    .line 263
    return-void
.end method

.method public constructor <init>(ZIIIIIIZ)V
    .locals 10
    .param p1, "preferDirect"    # Z
    .param p2, "nHeapArena"    # I
    .param p3, "nDirectArena"    # I
    .param p4, "pageSize"    # I
    .param p5, "maxOrder"    # I
    .param p6, "smallCacheSize"    # I
    .param p7, "normalCacheSize"    # I
    .param p8, "useCacheForAllThreads"    # Z

    .line 247
    sget v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIIIIIZI)V

    .line 250
    return-void
.end method

.method public constructor <init>(ZIIIIIIZI)V
    .locals 19
    .param p1, "preferDirect"    # Z
    .param p2, "nHeapArena"    # I
    .param p3, "nDirectArena"    # I
    .param p4, "pageSize"    # I
    .param p5, "maxOrder"    # I
    .param p6, "smallCacheSize"    # I
    .param p7, "normalCacheSize"    # I
    .param p8, "useCacheForAllThreads"    # Z
    .param p9, "directMemoryCacheAlignment"    # I

    .line 268
    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p9

    invoke-direct/range {p0 .. p1}, Lio/netty/buffer/AbstractByteBufAllocator;-><init>(Z)V

    .line 60
    new-instance v0, Lio/netty/buffer/PooledByteBufAllocator$1;

    invoke-direct {v0, v6}, Lio/netty/buffer/PooledByteBufAllocator$1;-><init>(Lio/netty/buffer/PooledByteBufAllocator;)V

    iput-object v0, v6, Lio/netty/buffer/PooledByteBufAllocator;->trimTask:Ljava/lang/Runnable;

    .line 269
    new-instance v0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    move/from16 v10, p8

    invoke-direct {v0, v6, v10}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;-><init>(Lio/netty/buffer/PooledByteBufAllocator;Z)V

    iput-object v0, v6, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    .line 270
    move/from16 v11, p6

    iput v11, v6, Lio/netty/buffer/PooledByteBufAllocator;->smallCacheSize:I

    .line 271
    move/from16 v12, p7

    iput v12, v6, Lio/netty/buffer/PooledByteBufAllocator;->normalCacheSize:I

    .line 273
    if-eqz v9, :cond_1

    .line 274
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasAlignDirectByteBuffer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    move/from16 v0, p4

    int-to-long v1, v0

    invoke-static {v1, v2, v9}, Lio/netty/util/internal/PlatformDependent;->align(JI)J

    move-result-wide v1

    long-to-int v0, v1

    move v13, v0

    .end local p4    # "pageSize":I
    .local v0, "pageSize":I
    goto :goto_0

    .line 275
    .end local v0    # "pageSize":I
    .restart local p4    # "pageSize":I
    :cond_0
    move/from16 v0, p4

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Buffer alignment is not supported. Either Unsafe or ByteBuffer.alignSlice() must be available."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_1
    move/from16 v0, p4

    move v13, v0

    .line 283
    .end local p4    # "pageSize":I
    .local v13, "pageSize":I
    :goto_0
    move/from16 v14, p5

    invoke-static {v13, v14}, Lio/netty/buffer/PooledByteBufAllocator;->validateAndCalculateChunkSize(II)I

    move-result v0

    iput v0, v6, Lio/netty/buffer/PooledByteBufAllocator;->chunkSize:I

    .line 285
    const-string v0, "nHeapArena"

    invoke-static {v7, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 286
    const-string v0, "nDirectArena"

    invoke-static {v8, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 288
    const-string v0, "directMemoryCacheAlignment"

    invoke-static {v9, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 289
    if-lez v9, :cond_3

    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->isDirectMemoryCacheAlignmentSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 290
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "directMemoryCacheAlignment is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_3
    :goto_1
    neg-int v0, v9

    and-int/2addr v0, v9

    if-ne v0, v9, :cond_8

    .line 298
    invoke-static {v13, v9}, Lio/netty/buffer/PooledByteBufAllocator;->validateAndCalculatePageShifts(II)I

    move-result v15

    .line 300
    .local v15, "pageShifts":I
    const/4 v0, 0x0

    if-lez v7, :cond_5

    .line 301
    invoke-static/range {p2 .. p2}, Lio/netty/buffer/PooledByteBufAllocator;->newArenaArray(I)[Lio/netty/buffer/PoolArena;

    move-result-object v1

    iput-object v1, v6, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    .line 302
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v6, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 303
    .local v1, "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolArenaMetric;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, v6, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 304
    new-instance v3, Lio/netty/buffer/PoolArena$HeapArena;

    iget v4, v6, Lio/netty/buffer/PooledByteBufAllocator;->chunkSize:I

    invoke-direct {v3, v6, v13, v15, v4}, Lio/netty/buffer/PoolArena$HeapArena;-><init>(Lio/netty/buffer/PooledByteBufAllocator;III)V

    .line 305
    .local v3, "arena":Lio/netty/buffer/PoolArena$HeapArena;
    iget-object v4, v6, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    aput-object v3, v4, v2

    .line 306
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v3    # "arena":Lio/netty/buffer/PoolArena$HeapArena;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 308
    .end local v2    # "i":I
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v6, Lio/netty/buffer/PooledByteBufAllocator;->heapArenaMetrics:Ljava/util/List;

    .line 309
    .end local v1    # "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolArenaMetric;>;"
    goto :goto_3

    .line 310
    :cond_5
    iput-object v0, v6, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    .line 311
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v6, Lio/netty/buffer/PooledByteBufAllocator;->heapArenaMetrics:Ljava/util/List;

    .line 314
    :goto_3
    if-lez v8, :cond_7

    .line 315
    invoke-static/range {p3 .. p3}, Lio/netty/buffer/PooledByteBufAllocator;->newArenaArray(I)[Lio/netty/buffer/PoolArena;

    move-result-object v0

    iput-object v0, v6, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v0

    .line 317
    .local v5, "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolArenaMetric;>;"
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_4
    iget-object v0, v6, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    array-length v0, v0

    if-ge v4, v0, :cond_6

    .line 318
    new-instance v16, Lio/netty/buffer/PoolArena$DirectArena;

    iget v3, v6, Lio/netty/buffer/PooledByteBufAllocator;->chunkSize:I

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v2, v13

    move/from16 v17, v3

    move v3, v15

    move/from16 v18, v4

    .end local v4    # "i":I
    .local v18, "i":I
    move/from16 v4, v17

    move-object v7, v5

    .end local v5    # "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolArenaMetric;>;"
    .local v7, "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolArenaMetric;>;"
    move/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolArena$DirectArena;-><init>(Lio/netty/buffer/PooledByteBufAllocator;IIII)V

    .line 320
    .local v0, "arena":Lio/netty/buffer/PoolArena$DirectArena;
    iget-object v1, v6, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    aput-object v0, v1, v18

    .line 321
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    .end local v0    # "arena":Lio/netty/buffer/PoolArena$DirectArena;
    add-int/lit8 v4, v18, 0x1

    move-object v5, v7

    move/from16 v7, p2

    .end local v18    # "i":I
    .restart local v4    # "i":I
    goto :goto_4

    .end local v7    # "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolArenaMetric;>;"
    .restart local v5    # "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolArenaMetric;>;"
    :cond_6
    move/from16 v18, v4

    move-object v7, v5

    .line 323
    .end local v4    # "i":I
    .end local v5    # "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolArenaMetric;>;"
    .restart local v7    # "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolArenaMetric;>;"
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v6, Lio/netty/buffer/PooledByteBufAllocator;->directArenaMetrics:Ljava/util/List;

    .line 324
    .end local v7    # "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolArenaMetric;>;"
    goto :goto_5

    .line 325
    :cond_7
    iput-object v0, v6, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    .line 326
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v6, Lio/netty/buffer/PooledByteBufAllocator;->directArenaMetrics:Ljava/util/List;

    .line 328
    :goto_5
    new-instance v0, Lio/netty/buffer/PooledByteBufAllocatorMetric;

    invoke-direct {v0, v6}, Lio/netty/buffer/PooledByteBufAllocatorMetric;-><init>(Lio/netty/buffer/PooledByteBufAllocator;)V

    iput-object v0, v6, Lio/netty/buffer/PooledByteBufAllocator;->metric:Lio/netty/buffer/PooledByteBufAllocatorMetric;

    .line 329
    return-void

    .line 294
    .end local v15    # "pageShifts":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "directMemoryCacheAlignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: power of two)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/PooledByteBufAllocator;

    .line 38
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/PooledByteBufAllocator;

    .line 38
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    return-object v0
.end method

.method static synthetic access$200(Lio/netty/buffer/PooledByteBufAllocator;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/PooledByteBufAllocator;

    .line 38
    iget v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->smallCacheSize:I

    return v0
.end method

.method static synthetic access$300(Lio/netty/buffer/PooledByteBufAllocator;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/PooledByteBufAllocator;

    .line 38
    iget v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->normalCacheSize:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 38
    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL:I

    return v0
.end method

.method static synthetic access$500()J
    .locals 2

    .line 38
    sget-wide v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL_MILLIS:J

    return-wide v0
.end method

.method static synthetic access$600(Lio/netty/buffer/PooledByteBufAllocator;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/PooledByteBufAllocator;

    .line 38
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->trimTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static defaultMaxOrder()I
    .locals 1

    .line 430
    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    return v0
.end method

.method public static defaultNormalCacheSize()I
    .locals 1

    .line 468
    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NORMAL_CACHE_SIZE:I

    return v0
.end method

.method public static defaultNumDirectArena()I
    .locals 1

    .line 416
    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_DIRECT_ARENA:I

    return v0
.end method

.method public static defaultNumHeapArena()I
    .locals 1

    .line 409
    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_HEAP_ARENA:I

    return v0
.end method

.method public static defaultPageSize()I
    .locals 1

    .line 423
    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    return v0
.end method

.method public static defaultPreferDirect()Z
    .locals 1

    .line 444
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->directBufferPreferred()Z

    move-result v0

    return v0
.end method

.method public static defaultSmallCacheSize()I
    .locals 1

    .line 461
    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_SMALL_CACHE_SIZE:I

    return v0
.end method

.method public static defaultTinyCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public static defaultUseCacheForAllThreads()Z
    .locals 1

    .line 437
    sget-boolean v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_USE_CACHE_FOR_ALL_THREADS:Z

    return v0
.end method

.method public static isDirectMemoryCacheAlignmentSupported()Z
    .locals 1

    .line 475
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    return v0
.end method

.method private static newArenaArray(I)[Lio/netty/buffer/PoolArena;
    .locals 1
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;"
        }
    .end annotation

    .line 333
    new-array v0, p0, [Lio/netty/buffer/PoolArena;

    return-object v0
.end method

.method private static pinnedMemory([Lio/netty/buffer/PoolArena;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolArena<",
            "*>;)J"
        }
    .end annotation

    .line 714
    .local p0, "arenas":[Lio/netty/buffer/PoolArena;, "[Lio/netty/buffer/PoolArena<*>;"
    if-nez p0, :cond_0

    .line 715
    const-wide/16 v0, -0x1

    return-wide v0

    .line 717
    :cond_0
    const-wide/16 v0, 0x0

    .line 718
    .local v0, "used":J
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 719
    .local v4, "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    invoke-virtual {v4}, Lio/netty/buffer/PoolArena;->numPinnedBytes()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 720
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gez v5, :cond_1

    .line 721
    const-wide v2, 0x7fffffffffffffffL

    return-wide v2

    .line 718
    .end local v4    # "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 724
    :cond_2
    return-wide v0
.end method

.method private static usedMemory([Lio/netty/buffer/PoolArena;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolArena<",
            "*>;)J"
        }
    .end annotation

    .line 680
    .local p0, "arenas":[Lio/netty/buffer/PoolArena;, "[Lio/netty/buffer/PoolArena<*>;"
    if-nez p0, :cond_0

    .line 681
    const-wide/16 v0, -0x1

    return-wide v0

    .line 683
    :cond_0
    const-wide/16 v0, 0x0

    .line 684
    .local v0, "used":J
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 685
    .local v4, "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    invoke-virtual {v4}, Lio/netty/buffer/PoolArena;->numActiveBytes()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 686
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gez v5, :cond_1

    .line 687
    const-wide v2, 0x7fffffffffffffffL

    return-wide v2

    .line 684
    .end local v4    # "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 690
    :cond_2
    return-wide v0
.end method

.method private static validateAndCalculateChunkSize(II)I
    .locals 6
    .param p0, "pageSize"    # I
    .param p1, "maxOrder"    # I

    .line 355
    const/16 v0, 0xe

    if-gt p1, v0, :cond_2

    .line 360
    move v0, p0

    .line 361
    .local v0, "chunkSize":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 362
    const/high16 v2, 0x20000000

    if-gt v0, v2, :cond_0

    .line 366
    shl-int/lit8 v0, v0, 0x1

    .line 361
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 363
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 364
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 363
    const-string v4, "pageSize (%d) << maxOrder (%d) must not exceed %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 368
    .end local v1    # "i":I
    :cond_1
    return v0

    .line 356
    .end local v0    # "chunkSize":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxOrder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0-14)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateAndCalculatePageShifts(II)I
    .locals 4
    .param p0, "pageSize"    # I
    .param p1, "alignment"    # I

    .line 337
    const-string v0, "pageSize: "

    const/16 v1, 0x1000

    if-lt p0, v1, :cond_2

    .line 341
    add-int/lit8 v1, p0, -0x1

    and-int/2addr v1, p0

    if-nez v1, :cond_1

    .line 345
    if-lt p0, p1, :cond_0

    .line 351
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    return v0

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alignment cannot be greater than page size. Alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", page size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (expected: power of 2)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (expected: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final chunkSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 668
    iget v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->chunkSize:I

    return v0
.end method

.method public directArenas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolArenaMetric;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 608
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenaMetrics:Ljava/util/List;

    return-object v0
.end method

.method public dumpStats()Ljava/lang/String;
    .locals 7

    .line 753
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    array-length v0, v0

    .line 754
    .local v0, "heapArenasLen":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 755
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 756
    const-string v3, " heap arena(s):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 757
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 758
    .local v2, "buf":Ljava/lang/StringBuilder;
    if-lez v0, :cond_1

    .line 759
    iget-object v3, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 760
    .local v6, "a":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<[B>;"
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 759
    .end local v6    # "a":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<[B>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 764
    :cond_1
    iget-object v3, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    array-length v3, v3

    .line 766
    .local v3, "directArenasLen":I
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 767
    const-string v5, " direct arena(s):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 768
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    if-lez v3, :cond_3

    .line 770
    iget-object v4, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    array-length v5, v4

    :goto_3
    if-ge v1, v5, :cond_3

    aget-object v6, v4, v1

    .line 771
    .local v6, "a":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<Ljava/nio/ByteBuffer;>;"
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 770
    .end local v6    # "a":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<Ljava/nio/ByteBuffer;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 775
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public freeThreadLocalCache()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 499
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->remove()V

    .line 500
    return-void
.end method

.method public hasThreadLocalCache()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 490
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->isSet()Z

    move-result v0

    return v0
.end method

.method public heapArenas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolArenaMetric;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 598
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenaMetrics:Ljava/util/List;

    return-object v0
.end method

.method public isDirectBufferPooled()Z
    .locals 1

    .line 480
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic metric()Lio/netty/buffer/ByteBufAllocatorMetric;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBufAllocator;->metric()Lio/netty/buffer/PooledByteBufAllocatorMetric;

    move-result-object v0

    return-object v0
.end method

.method public metric()Lio/netty/buffer/PooledByteBufAllocatorMetric;
    .locals 1

    .line 568
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->metric:Lio/netty/buffer/PooledByteBufAllocatorMetric;

    return-object v0
.end method

.method protected newDirectBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 390
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PoolThreadCache;

    .line 391
    .local v0, "cache":Lio/netty/buffer/PoolThreadCache;
    iget-object v1, v0, Lio/netty/buffer/PoolThreadCache;->directArena:Lio/netty/buffer/PoolArena;

    .line 394
    .local v1, "directArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<Ljava/nio/ByteBuffer;>;"
    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {v1, v0, p1, p2}, Lio/netty/buffer/PoolArena;->allocate(Lio/netty/buffer/PoolThreadCache;II)Lio/netty/buffer/PooledByteBuf;

    move-result-object v2

    .local v2, "buf":Lio/netty/buffer/ByteBuf;
    goto :goto_0

    .line 397
    .end local v2    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    invoke-static {p0, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->newUnsafeDirectByteBuf(Lio/netty/buffer/ByteBufAllocator;II)Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Lio/netty/buffer/UnpooledDirectByteBuf;

    invoke-direct {v2, p0, p1, p2}, Lio/netty/buffer/UnpooledDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    .line 402
    .restart local v2    # "buf":Lio/netty/buffer/ByteBuf;
    :goto_0
    invoke-static {v2}, Lio/netty/buffer/PooledByteBufAllocator;->toLeakAwareBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    return-object v3
.end method

.method protected newHeapBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 373
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PoolThreadCache;

    .line 374
    .local v0, "cache":Lio/netty/buffer/PoolThreadCache;
    iget-object v1, v0, Lio/netty/buffer/PoolThreadCache;->heapArena:Lio/netty/buffer/PoolArena;

    .line 377
    .local v1, "heapArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<[B>;"
    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {v1, v0, p1, p2}, Lio/netty/buffer/PoolArena;->allocate(Lio/netty/buffer/PoolThreadCache;II)Lio/netty/buffer/PooledByteBuf;

    move-result-object v2

    .local v2, "buf":Lio/netty/buffer/ByteBuf;
    goto :goto_0

    .line 380
    .end local v2    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;

    invoke-direct {v2, p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    goto :goto_0

    :cond_1
    new-instance v2, Lio/netty/buffer/UnpooledHeapByteBuf;

    invoke-direct {v2, p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    .line 385
    .restart local v2    # "buf":Lio/netty/buffer/ByteBuf;
    :goto_0
    invoke-static {v2}, Lio/netty/buffer/PooledByteBufAllocator;->toLeakAwareBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    return-object v3
.end method

.method public normalCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 658
    iget v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->normalCacheSize:I

    return v0
.end method

.method public numDirectArenas()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 588
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenaMetrics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public numHeapArenas()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 578
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenaMetrics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public numThreadLocalCaches()I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 618
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    .line 619
    .local v0, "arenas":[Lio/netty/buffer/PoolArena;, "[Lio/netty/buffer/PoolArena<*>;"
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 620
    return v1

    .line 623
    :cond_1
    const/4 v2, 0x0

    .line 624
    .local v2, "total":I
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 625
    .local v4, "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    iget-object v5, v4, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    add-int/2addr v2, v5

    .line 624
    .end local v4    # "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 628
    :cond_2
    return v2
.end method

.method public final pinnedDirectMemory()J
    .locals 2

    .line 710
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->pinnedMemory([Lio/netty/buffer/PoolArena;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final pinnedHeapMemory()J
    .locals 2

    .line 700
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->pinnedMemory([Lio/netty/buffer/PoolArena;)J

    move-result-wide v0

    return-wide v0
.end method

.method public smallCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 648
    iget v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->smallCacheSize:I

    return v0
.end method

.method final threadCache()Lio/netty/buffer/PoolThreadCache;
    .locals 2

    .line 728
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PoolThreadCache;

    .line 729
    .local v0, "cache":Lio/netty/buffer/PoolThreadCache;
    if-eqz v0, :cond_0

    .line 730
    return-object v0

    .line 729
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public tinyCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 638
    const/4 v0, 0x0

    return v0
.end method

.method public trimCurrentThreadCache()Z
    .locals 2

    .line 740
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->getIfExists()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PoolThreadCache;

    .line 741
    .local v0, "cache":Lio/netty/buffer/PoolThreadCache;
    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {v0}, Lio/netty/buffer/PoolThreadCache;->trim()V

    .line 743
    const/4 v1, 0x1

    return v1

    .line 745
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method final usedDirectMemory()J
    .locals 2

    .line 676
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->usedMemory([Lio/netty/buffer/PoolArena;)J

    move-result-wide v0

    return-wide v0
.end method

.method final usedHeapMemory()J
    .locals 2

    .line 672
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->usedMemory([Lio/netty/buffer/PoolArena;)J

    move-result-wide v0

    return-wide v0
.end method
