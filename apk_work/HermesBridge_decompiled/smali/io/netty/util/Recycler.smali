.class public abstract Lio/netty/util/Recycler;
.super Ljava/lang/Object;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/Recycler$BlockingMessageQueue;,
        Lio/netty/util/Recycler$LocalPool;,
        Lio/netty/util/Recycler$DefaultHandle;,
        Lio/netty/util/Recycler$EnhancedHandle;,
        Lio/netty/util/Recycler$Handle;
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
.field private static final BATCH_FAST_TL_ONLY:Z

.field private static final BLOCKING_POOL:Z

.field private static final DEFAULT_INITIAL_MAX_CAPACITY_PER_THREAD:I = 0x1000

.field private static final DEFAULT_MAX_CAPACITY_PER_THREAD:I

.field private static final DEFAULT_QUEUE_CHUNK_SIZE_PER_THREAD:I

.field private static final NOOP_HANDLE:Lio/netty/util/Recycler$EnhancedHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler$EnhancedHandle<",
            "*>;"
        }
    .end annotation
.end field

.field private static final RATIO:I

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final chunkSize:I

.field private final interval:I

.field private final maxCapacityPerThread:I

.field private final threadLocal:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "Lio/netty/util/Recycler$LocalPool<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    const-class v0, Lio/netty/util/Recycler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/Recycler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 44
    new-instance v0, Lio/netty/util/Recycler$1;

    invoke-direct {v0}, Lio/netty/util/Recycler$1;-><init>()V

    sput-object v0, Lio/netty/util/Recycler;->NOOP_HANDLE:Lio/netty/util/Recycler$EnhancedHandle;

    .line 71
    nop

    .line 72
    const-string v0, "io.netty.recycler.maxCapacity"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 71
    const-string v1, "io.netty.recycler.maxCapacityPerThread"

    invoke-static {v1, v0}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 73
    .local v0, "maxCapacityPerThread":I
    if-gez v0, :cond_0

    .line 74
    const/16 v0, 0x1000

    .line 77
    :cond_0
    sput v0, Lio/netty/util/Recycler;->DEFAULT_MAX_CAPACITY_PER_THREAD:I

    .line 78
    const-string v1, "io.netty.recycler.chunkSize"

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lio/netty/util/Recycler;->DEFAULT_QUEUE_CHUNK_SIZE_PER_THREAD:I

    .line 83
    const-string v1, "io.netty.recycler.ratio"

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lio/netty/util/Recycler;->RATIO:I

    .line 85
    const-string v1, "io.netty.recycler.blocking"

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lio/netty/util/Recycler;->BLOCKING_POOL:Z

    .line 86
    const-string v1, "io.netty.recycler.batchFastThreadLocalOnly"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lio/netty/util/Recycler;->BATCH_FAST_TL_ONLY:Z

    .line 88
    sget-object v1, Lio/netty/util/Recycler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    sget v1, Lio/netty/util/Recycler;->DEFAULT_MAX_CAPACITY_PER_THREAD:I

    if-nez v1, :cond_1

    .line 90
    sget-object v1, Lio/netty/util/Recycler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "-Dio.netty.recycler.maxCapacityPerThread: disabled"

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 91
    sget-object v1, Lio/netty/util/Recycler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "-Dio.netty.recycler.ratio: disabled"

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 92
    sget-object v1, Lio/netty/util/Recycler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "-Dio.netty.recycler.chunkSize: disabled"

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 93
    sget-object v1, Lio/netty/util/Recycler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "-Dio.netty.recycler.blocking: disabled"

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 94
    sget-object v1, Lio/netty/util/Recycler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "-Dio.netty.recycler.batchFastThreadLocalOnly: disabled"

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_1
    sget-object v1, Lio/netty/util/Recycler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget v2, Lio/netty/util/Recycler;->DEFAULT_MAX_CAPACITY_PER_THREAD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "-Dio.netty.recycler.maxCapacityPerThread: {}"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    sget-object v1, Lio/netty/util/Recycler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget v2, Lio/netty/util/Recycler;->RATIO:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "-Dio.netty.recycler.ratio: {}"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    sget-object v1, Lio/netty/util/Recycler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget v2, Lio/netty/util/Recycler;->DEFAULT_QUEUE_CHUNK_SIZE_PER_THREAD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "-Dio.netty.recycler.chunkSize: {}"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    sget-object v1, Lio/netty/util/Recycler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget-boolean v2, Lio/netty/util/Recycler;->BLOCKING_POOL:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "-Dio.netty.recycler.blocking: {}"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    sget-object v1, Lio/netty/util/Recycler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget-boolean v2, Lio/netty/util/Recycler;->BATCH_FAST_TL_ONLY:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "-Dio.netty.recycler.batchFastThreadLocalOnly: {}"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    .end local v0    # "maxCapacityPerThread":I
    :cond_2
    :goto_0
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 125
    .local p0, "this":Lio/netty/util/Recycler;, "Lio/netty/util/Recycler<TT;>;"
    sget v0, Lio/netty/util/Recycler;->DEFAULT_MAX_CAPACITY_PER_THREAD:I

    invoke-direct {p0, v0}, Lio/netty/util/Recycler;-><init>(I)V

    .line 126
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2
    .param p1, "maxCapacityPerThread"    # I

    .line 129
    .local p0, "this":Lio/netty/util/Recycler;, "Lio/netty/util/Recycler<TT;>;"
    sget v0, Lio/netty/util/Recycler;->RATIO:I

    sget v1, Lio/netty/util/Recycler;->DEFAULT_QUEUE_CHUNK_SIZE_PER_THREAD:I

    invoke-direct {p0, p1, v0, v1}, Lio/netty/util/Recycler;-><init>(III)V

    .line 130
    return-void
.end method

.method protected constructor <init>(II)V
    .locals 2
    .param p1, "maxCapacityPerThread"    # I
    .param p2, "maxSharedCapacityFactor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    .local p0, "this":Lio/netty/util/Recycler;, "Lio/netty/util/Recycler<TT;>;"
    sget v0, Lio/netty/util/Recycler;->RATIO:I

    sget v1, Lio/netty/util/Recycler;->DEFAULT_QUEUE_CHUNK_SIZE_PER_THREAD:I

    invoke-direct {p0, p1, v0, v1}, Lio/netty/util/Recycler;-><init>(III)V

    .line 140
    return-void
.end method

.method protected constructor <init>(III)V
    .locals 2
    .param p1, "maxCapacityPerThread"    # I
    .param p2, "ratio"    # I
    .param p3, "chunkSize"    # I

    .line 164
    .local p0, "this":Lio/netty/util/Recycler;, "Lio/netty/util/Recycler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lio/netty/util/Recycler$2;

    invoke-direct {v0, p0}, Lio/netty/util/Recycler$2;-><init>(Lio/netty/util/Recycler;)V

    iput-object v0, p0, Lio/netty/util/Recycler;->threadLocal:Lio/netty/util/concurrent/FastThreadLocal;

    .line 165
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lio/netty/util/Recycler;->interval:I

    .line 166
    if-gtz p1, :cond_0

    .line 167
    iput v0, p0, Lio/netty/util/Recycler;->maxCapacityPerThread:I

    .line 168
    iput v0, p0, Lio/netty/util/Recycler;->chunkSize:I

    goto :goto_0

    .line 170
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lio/netty/util/Recycler;->maxCapacityPerThread:I

    .line 171
    iget v0, p0, Lio/netty/util/Recycler;->maxCapacityPerThread:I

    shr-int/lit8 v0, v0, 0x1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lio/netty/util/Recycler;->chunkSize:I

    .line 173
    :goto_0
    return-void
.end method

.method protected constructor <init>(IIII)V
    .locals 1
    .param p1, "maxCapacityPerThread"    # I
    .param p2, "maxSharedCapacityFactor"    # I
    .param p3, "ratio"    # I
    .param p4, "maxDelayedQueuesPerThread"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    .local p0, "this":Lio/netty/util/Recycler;, "Lio/netty/util/Recycler<TT;>;"
    sget v0, Lio/netty/util/Recycler;->DEFAULT_QUEUE_CHUNK_SIZE_PER_THREAD:I

    invoke-direct {p0, p1, p3, v0}, Lio/netty/util/Recycler;-><init>(III)V

    .line 151
    return-void
.end method

.method protected constructor <init>(IIIII)V
    .locals 1
    .param p1, "maxCapacityPerThread"    # I
    .param p2, "maxSharedCapacityFactor"    # I
    .param p3, "ratio"    # I
    .param p4, "maxDelayedQueuesPerThread"    # I
    .param p5, "delayedQueueRatio"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    .local p0, "this":Lio/netty/util/Recycler;, "Lio/netty/util/Recycler<TT;>;"
    sget v0, Lio/netty/util/Recycler;->DEFAULT_QUEUE_CHUNK_SIZE_PER_THREAD:I

    invoke-direct {p0, p1, p3, v0}, Lio/netty/util/Recycler;-><init>(III)V

    .line 162
    return-void
.end method

.method static synthetic access$100(Lio/netty/util/Recycler;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/util/Recycler;

    .line 42
    iget v0, p0, Lio/netty/util/Recycler;->maxCapacityPerThread:I

    return v0
.end method

.method static synthetic access$200(Lio/netty/util/Recycler;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/util/Recycler;

    .line 42
    iget v0, p0, Lio/netty/util/Recycler;->interval:I

    return v0
.end method

.method static synthetic access$300(Lio/netty/util/Recycler;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/util/Recycler;

    .line 42
    iget v0, p0, Lio/netty/util/Recycler;->chunkSize:I

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 42
    sget-boolean v0, Lio/netty/util/Recycler;->BATCH_FAST_TL_ONLY:Z

    return v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 42
    sget-boolean v0, Lio/netty/util/Recycler;->BLOCKING_POOL:Z

    return v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 177
    .local p0, "this":Lio/netty/util/Recycler;, "Lio/netty/util/Recycler<TT;>;"
    iget v0, p0, Lio/netty/util/Recycler;->maxCapacityPerThread:I

    if-nez v0, :cond_0

    .line 178
    sget-object v0, Lio/netty/util/Recycler;->NOOP_HANDLE:Lio/netty/util/Recycler$EnhancedHandle;

    invoke-virtual {p0, v0}, Lio/netty/util/Recycler;->newObject(Lio/netty/util/Recycler$Handle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 180
    :cond_0
    iget-object v0, p0, Lio/netty/util/Recycler;->threadLocal:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/Recycler$LocalPool;

    .line 181
    .local v0, "localPool":Lio/netty/util/Recycler$LocalPool;, "Lio/netty/util/Recycler$LocalPool<TT;>;"
    invoke-virtual {v0}, Lio/netty/util/Recycler$LocalPool;->claim()Lio/netty/util/Recycler$DefaultHandle;

    move-result-object v1

    .line 183
    .local v1, "handle":Lio/netty/util/Recycler$DefaultHandle;, "Lio/netty/util/Recycler$DefaultHandle<TT;>;"
    if-nez v1, :cond_2

    .line 184
    invoke-virtual {v0}, Lio/netty/util/Recycler$LocalPool;->newHandle()Lio/netty/util/Recycler$DefaultHandle;

    move-result-object v1

    .line 185
    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {p0, v1}, Lio/netty/util/Recycler;->newObject(Lio/netty/util/Recycler$Handle;)Ljava/lang/Object;

    move-result-object v2

    .line 187
    .local v2, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1, v2}, Lio/netty/util/Recycler$DefaultHandle;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 189
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    :cond_1
    sget-object v2, Lio/netty/util/Recycler;->NOOP_HANDLE:Lio/netty/util/Recycler$EnhancedHandle;

    invoke-virtual {p0, v2}, Lio/netty/util/Recycler;->newObject(Lio/netty/util/Recycler$Handle;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "obj":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 192
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    :cond_2
    invoke-virtual {v1}, Lio/netty/util/Recycler$DefaultHandle;->get()Ljava/lang/Object;

    move-result-object v2

    .line 195
    .restart local v2    # "obj":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v2
.end method

.method protected abstract newObject(Lio/netty/util/Recycler$Handle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Handle<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public final recycle(Ljava/lang/Object;Lio/netty/util/Recycler$Handle;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/netty/util/Recycler$Handle<",
            "TT;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    .local p0, "this":Lio/netty/util/Recycler;, "Lio/netty/util/Recycler<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    .local p2, "handle":Lio/netty/util/Recycler$Handle;, "Lio/netty/util/Recycler$Handle<TT;>;"
    sget-object v0, Lio/netty/util/Recycler;->NOOP_HANDLE:Lio/netty/util/Recycler$EnhancedHandle;

    if-ne p2, v0, :cond_0

    .line 204
    const/4 v0, 0x0

    return v0

    .line 207
    :cond_0
    invoke-interface {p2, p1}, Lio/netty/util/Recycler$Handle;->recycle(Ljava/lang/Object;)V

    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method final threadLocalSize()I
    .locals 3

    .line 213
    .local p0, "this":Lio/netty/util/Recycler;, "Lio/netty/util/Recycler<TT;>;"
    iget-object v0, p0, Lio/netty/util/Recycler;->threadLocal:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->getIfExists()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/Recycler$LocalPool;

    .line 214
    .local v0, "localPool":Lio/netty/util/Recycler$LocalPool;, "Lio/netty/util/Recycler$LocalPool<TT;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lio/netty/util/Recycler$LocalPool;->access$400(Lio/netty/util/Recycler$LocalPool;)Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;->size()I

    move-result v1

    invoke-static {v0}, Lio/netty/util/Recycler$LocalPool;->access$600(Lio/netty/util/Recycler$LocalPool;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    add-int/2addr v1, v2

    :goto_0
    return v1
.end method
