.class public final Lio/netty/util/internal/InternalThreadLocalMap;
.super Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;
.source "InternalThreadLocalMap.java"


# static fields
.field private static final ARRAY_LIST_CAPACITY_EXPAND_THRESHOLD:I = 0x40000000

.field private static final ARRAY_LIST_CAPACITY_MAX_SIZE:I = 0x7ffffff7

.field private static final DEFAULT_ARRAY_LIST_INITIAL_CAPACITY:I = 0x8

.field private static final HANDLER_SHARABLE_CACHE_INITIAL_CAPACITY:I = 0x4

.field private static final INDEXED_VARIABLE_TABLE_INITIAL_SIZE:I = 0x20

.field private static final STRING_BUILDER_INITIAL_SIZE:I

.field private static final STRING_BUILDER_MAX_SIZE:I

.field public static final UNSET:Ljava/lang/Object;

.field public static final VARIABLES_TO_REMOVE_INDEX:I

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;

.field private static final nextIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final slowThreadLocalMap:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/netty/util/internal/InternalThreadLocalMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private charsetDecoderCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/charset/Charset;",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private charsetEncoderCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/charset/Charset;",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private cleanerFlags:Ljava/util/BitSet;

.field private counterHashCode:Lio/netty/util/internal/IntegerHolder;

.field private futureListenerStackDepth:I

.field private handlerSharableCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private indexedVariables:[Ljava/lang/Object;

.field private localChannelReaderStackDepth:I

.field private random:Lio/netty/util/internal/ThreadLocalRandom;

.field public rp1:J

.field public rp2:J

.field public rp3:J

.field public rp4:J

.field public rp5:J

.field public rp6:J

.field public rp7:J

.field public rp8:J

.field private stringBuilder:Ljava/lang/StringBuilder;

.field private typeParameterMatcherFindCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/netty/util/internal/TypeParameterMatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private typeParameterMatcherGetCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/netty/util/internal/TypeParameterMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lio/netty/util/internal/InternalThreadLocalMap;->slowThreadLocalMap:Ljava/lang/ThreadLocal;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lio/netty/util/internal/InternalThreadLocalMap;->nextIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->nextVariableIndex()I

    move-result v0

    sput v0, Lio/netty/util/internal/InternalThreadLocalMap;->VARIABLES_TO_REMOVE_INDEX:I

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    .line 89
    nop

    .line 90
    const-string v0, "io.netty.threadLocalMap.stringBuilder.initialSize"

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lio/netty/util/internal/InternalThreadLocalMap;->STRING_BUILDER_INITIAL_SIZE:I

    .line 91
    nop

    .line 92
    const-string v0, "io.netty.threadLocalMap.stringBuilder.maxSize"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lio/netty/util/internal/InternalThreadLocalMap;->STRING_BUILDER_MAX_SIZE:I

    .line 99
    const-class v0, Lio/netty/util/internal/InternalThreadLocalMap;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/InternalThreadLocalMap;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 100
    sget-object v0, Lio/netty/util/internal/InternalThreadLocalMap;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget v1, Lio/netty/util/internal/InternalThreadLocalMap;->STRING_BUILDER_INITIAL_SIZE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-Dio.netty.threadLocalMap.stringBuilder.initialSize: {}"

    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    sget-object v0, Lio/netty/util/internal/InternalThreadLocalMap;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget v1, Lio/netty/util/internal/InternalThreadLocalMap;->STRING_BUILDER_MAX_SIZE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-Dio.netty.threadLocalMap.stringBuilder.maxSize: {}"

    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 164
    invoke-direct {p0}, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;-><init>()V

    .line 165
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->newIndexedVariableTable()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    .line 166
    return-void
.end method

.method public static destroy()V
    .locals 1

    .line 148
    sget-object v0, Lio/netty/util/internal/InternalThreadLocalMap;->slowThreadLocalMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 149
    return-void
.end method

.method private expandIndexedVariableTableAndSet(ILjava/lang/Object;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    .line 347
    .local v0, "oldArray":[Ljava/lang/Object;
    array-length v1, v0

    .line 349
    .local v1, "oldCapacity":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ge p1, v2, :cond_0

    .line 350
    move v2, p1

    .line 351
    .local v2, "newCapacity":I
    ushr-int/lit8 v3, v2, 0x1

    or-int/2addr v2, v3

    .line 352
    ushr-int/lit8 v3, v2, 0x2

    or-int/2addr v2, v3

    .line 353
    ushr-int/lit8 v3, v2, 0x4

    or-int/2addr v2, v3

    .line 354
    ushr-int/lit8 v3, v2, 0x8

    or-int/2addr v2, v3

    .line 355
    ushr-int/lit8 v3, v2, 0x10

    or-int/2addr v2, v3

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    .end local v2    # "newCapacity":I
    :cond_0
    const v2, 0x7ffffff7

    .line 361
    .restart local v2    # "newCapacity":I
    :goto_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 362
    .local v3, "newArray":[Ljava/lang/Object;
    array-length v4, v3

    sget-object v5, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 363
    aput-object p2, v3, p1

    .line 364
    iput-object v3, p0, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    .line 365
    return-void
.end method

.method private static fastGet(Lio/netty/util/concurrent/FastThreadLocalThread;)Lio/netty/util/internal/InternalThreadLocalMap;
    .locals 2
    .param p0, "thread"    # Lio/netty/util/concurrent/FastThreadLocalThread;

    .line 122
    invoke-virtual {p0}, Lio/netty/util/concurrent/FastThreadLocalThread;->threadLocalMap()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    .line 123
    .local v0, "threadLocalMap":Lio/netty/util/internal/InternalThreadLocalMap;
    if-nez v0, :cond_0

    .line 124
    new-instance v1, Lio/netty/util/internal/InternalThreadLocalMap;

    invoke-direct {v1}, Lio/netty/util/internal/InternalThreadLocalMap;-><init>()V

    move-object v0, v1

    invoke-virtual {p0, v1}, Lio/netty/util/concurrent/FastThreadLocalThread;->setThreadLocalMap(Lio/netty/util/internal/InternalThreadLocalMap;)V

    .line 126
    :cond_0
    return-object v0
.end method

.method public static get()Lio/netty/util/internal/InternalThreadLocalMap;
    .locals 2

    .line 113
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 114
    .local v0, "thread":Ljava/lang/Thread;
    instance-of v1, v0, Lio/netty/util/concurrent/FastThreadLocalThread;

    if-eqz v1, :cond_0

    .line 115
    move-object v1, v0

    check-cast v1, Lio/netty/util/concurrent/FastThreadLocalThread;

    invoke-static {v1}, Lio/netty/util/internal/InternalThreadLocalMap;->fastGet(Lio/netty/util/concurrent/FastThreadLocalThread;)Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v1

    return-object v1

    .line 117
    :cond_0
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->slowGet()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v1

    return-object v1
.end method

.method public static getIfSet()Lio/netty/util/internal/InternalThreadLocalMap;
    .locals 2

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 106
    .local v0, "thread":Ljava/lang/Thread;
    instance-of v1, v0, Lio/netty/util/concurrent/FastThreadLocalThread;

    if-eqz v1, :cond_0

    .line 107
    move-object v1, v0

    check-cast v1, Lio/netty/util/concurrent/FastThreadLocalThread;

    invoke-virtual {v1}, Lio/netty/util/concurrent/FastThreadLocalThread;->threadLocalMap()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v1

    return-object v1

    .line 109
    :cond_0
    sget-object v1, Lio/netty/util/internal/InternalThreadLocalMap;->slowThreadLocalMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/internal/InternalThreadLocalMap;

    return-object v1
.end method

.method public static lastVariableIndex()I
    .locals 1

    .line 161
    sget-object v0, Lio/netty/util/internal/InternalThreadLocalMap;->nextIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static newIndexedVariableTable()[Ljava/lang/Object;
    .locals 2

    .line 169
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    .line 170
    .local v0, "array":[Ljava/lang/Object;
    sget-object v1, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    return-object v0
.end method

.method public static nextVariableIndex()I
    .locals 3

    .line 152
    sget-object v0, Lio/netty/util/internal/InternalThreadLocalMap;->nextIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 153
    .local v0, "index":I
    const v1, 0x7ffffff7

    if-ge v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 157
    return v0

    .line 154
    :cond_0
    sget-object v2, Lio/netty/util/internal/InternalThreadLocalMap;->nextIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 155
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "too many thread-local indexed variables"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static remove()V
    .locals 3

    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 140
    .local v0, "thread":Ljava/lang/Thread;
    instance-of v1, v0, Lio/netty/util/concurrent/FastThreadLocalThread;

    if-eqz v1, :cond_0

    .line 141
    move-object v1, v0

    check-cast v1, Lio/netty/util/concurrent/FastThreadLocalThread;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/netty/util/concurrent/FastThreadLocalThread;->setThreadLocalMap(Lio/netty/util/internal/InternalThreadLocalMap;)V

    goto :goto_0

    .line 143
    :cond_0
    sget-object v1, Lio/netty/util/internal/InternalThreadLocalMap;->slowThreadLocalMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 145
    :goto_0
    return-void
.end method

.method private static slowGet()Lio/netty/util/internal/InternalThreadLocalMap;
    .locals 2

    .line 130
    sget-object v0, Lio/netty/util/internal/InternalThreadLocalMap;->slowThreadLocalMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/internal/InternalThreadLocalMap;

    .line 131
    .local v0, "ret":Lio/netty/util/internal/InternalThreadLocalMap;
    if-nez v0, :cond_0

    .line 132
    new-instance v1, Lio/netty/util/internal/InternalThreadLocalMap;

    invoke-direct {v1}, Lio/netty/util/internal/InternalThreadLocalMap;-><init>()V

    move-object v0, v1

    .line 133
    sget-object v1, Lio/netty/util/internal/InternalThreadLocalMap;->slowThreadLocalMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 135
    :cond_0
    return-object v0
.end method


# virtual methods
.method public arrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 251
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lio/netty/util/internal/InternalThreadLocalMap;->arrayList(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public arrayList(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "minCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->arrayList:Ljava/util/ArrayList;

    .line 257
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-nez v0, :cond_0

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->arrayList:Ljava/util/ArrayList;

    .line 259
    iget-object v1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->arrayList:Ljava/util/ArrayList;

    return-object v1

    .line 261
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 262
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 263
    return-object v0
.end method

.method public charsetDecoderCache()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/nio/charset/Charset;",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->charsetDecoderCache:Ljava/util/Map;

    .line 244
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/charset/Charset;Ljava/nio/charset/CharsetDecoder;>;"
    if-nez v0, :cond_0

    .line 245
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->charsetDecoderCache:Ljava/util/Map;

    .line 247
    :cond_0
    return-object v0
.end method

.method public charsetEncoderCache()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/nio/charset/Charset;",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->charsetEncoderCache:Ljava/util/Map;

    .line 236
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/charset/Charset;Ljava/nio/charset/CharsetEncoder;>;"
    if-nez v0, :cond_0

    .line 237
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->charsetEncoderCache:Ljava/util/Map;

    .line 239
    :cond_0
    return-object v0
.end method

.method public counterHashCode()Lio/netty/util/internal/IntegerHolder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->counterHashCode:Lio/netty/util/internal/IntegerHolder;

    return-object v0
.end method

.method public futureListenerStackDepth()I
    .locals 1

    .line 267
    iget v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->futureListenerStackDepth:I

    return v0
.end method

.method public handlerSharableCache()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->handlerSharableCache:Ljava/util/Map;

    .line 310
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    if-nez v0, :cond_0

    .line 312
    new-instance v1, Ljava/util/WeakHashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/WeakHashMap;-><init>(I)V

    move-object v0, v1

    iput-object v1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->handlerSharableCache:Ljava/util/Map;

    .line 314
    :cond_0
    return-object v0
.end method

.method public indexedVariable(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 326
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    .line 327
    .local v0, "lookup":[Ljava/lang/Object;
    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v1, v0, p1

    goto :goto_0

    :cond_0
    sget-object v1, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    :goto_0
    return-object v1
.end method

.method public isCleanerFlagSet(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 384
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->cleanerFlags:Ljava/util/BitSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->cleanerFlags:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIndexedVariableSet(I)Z
    .locals 3
    .param p1, "index"    # I

    .line 379
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    .line 380
    .local v0, "lookup":[Ljava/lang/Object;
    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v1, v0, p1

    sget-object v2, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public localChannelReaderStackDepth()I
    .locals 1

    .line 318
    iget v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->localChannelReaderStackDepth:I

    return v0
.end method

.method public random()Lio/netty/util/internal/ThreadLocalRandom;
    .locals 2

    .line 275
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->random:Lio/netty/util/internal/ThreadLocalRandom;

    .line 276
    .local v0, "r":Lio/netty/util/internal/ThreadLocalRandom;
    if-nez v0, :cond_0

    .line 277
    new-instance v1, Lio/netty/util/internal/ThreadLocalRandom;

    invoke-direct {v1}, Lio/netty/util/internal/ThreadLocalRandom;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->random:Lio/netty/util/internal/ThreadLocalRandom;

    .line 279
    :cond_0
    return-object v0
.end method

.method public removeIndexedVariable(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .line 368
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    .line 369
    .local v0, "lookup":[Ljava/lang/Object;
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 370
    aget-object v1, v0, p1

    .line 371
    .local v1, "v":Ljava/lang/Object;
    sget-object v2, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    aput-object v2, v0, p1

    .line 372
    return-object v1

    .line 374
    .end local v1    # "v":Ljava/lang/Object;
    :cond_0
    sget-object v1, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    return-object v1
.end method

.method public setCleanerFlag(I)V
    .locals 1
    .param p1, "index"    # I

    .line 388
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->cleanerFlags:Ljava/util/BitSet;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->cleanerFlags:Ljava/util/BitSet;

    .line 391
    :cond_0
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->cleanerFlags:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 392
    return-void
.end method

.method public setCounterHashCode(Lio/netty/util/internal/IntegerHolder;)V
    .locals 0
    .param p1, "counterHashCode"    # Lio/netty/util/internal/IntegerHolder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    iput-object p1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->counterHashCode:Lio/netty/util/internal/IntegerHolder;

    .line 306
    return-void
.end method

.method public setFutureListenerStackDepth(I)V
    .locals 0
    .param p1, "futureListenerStackDepth"    # I

    .line 271
    iput p1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->futureListenerStackDepth:I

    .line 272
    return-void
.end method

.method public setIndexedVariable(ILjava/lang/Object;)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    .line 335
    .local v0, "lookup":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    .line 336
    aget-object v1, v0, p1

    .line 337
    .local v1, "oldValue":Ljava/lang/Object;
    aput-object p2, v0, p1

    .line 338
    sget-object v3, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 340
    .end local v1    # "oldValue":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/netty/util/internal/InternalThreadLocalMap;->expandIndexedVariableTableAndSet(ILjava/lang/Object;)V

    .line 341
    return v2
.end method

.method public setLocalChannelReaderStackDepth(I)V
    .locals 0
    .param p1, "localChannelReaderStackDepth"    # I

    .line 322
    iput p1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->localChannelReaderStackDepth:I

    .line 323
    return-void
.end method

.method public size()I
    .locals 4

    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, "count":I
    iget v1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->futureListenerStackDepth:I

    if-eqz v1, :cond_0

    .line 178
    add-int/lit8 v0, v0, 0x1

    .line 180
    :cond_0
    iget v1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->localChannelReaderStackDepth:I

    if-eqz v1, :cond_1

    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 183
    :cond_1
    iget-object v1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->handlerSharableCache:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 184
    add-int/lit8 v0, v0, 0x1

    .line 186
    :cond_2
    iget-object v1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->counterHashCode:Lio/netty/util/internal/IntegerHolder;

    if-eqz v1, :cond_3

    .line 187
    add-int/lit8 v0, v0, 0x1

    .line 189
    :cond_3
    iget-object v1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->random:Lio/netty/util/internal/ThreadLocalRandom;

    if-eqz v1, :cond_4

    .line 190
    add-int/lit8 v0, v0, 0x1

    .line 192
    :cond_4
    iget-object v1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->typeParameterMatcherGetCache:Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 193
    add-int/lit8 v0, v0, 0x1

    .line 195
    :cond_5
    iget-object v1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->typeParameterMatcherFindCache:Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 196
    add-int/lit8 v0, v0, 0x1

    .line 198
    :cond_6
    iget-object v1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->stringBuilder:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_7

    .line 199
    add-int/lit8 v0, v0, 0x1

    .line 201
    :cond_7
    iget-object v1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->charsetEncoderCache:Ljava/util/Map;

    if-eqz v1, :cond_8

    .line 202
    add-int/lit8 v0, v0, 0x1

    .line 204
    :cond_8
    iget-object v1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->charsetDecoderCache:Ljava/util/Map;

    if-eqz v1, :cond_9

    .line 205
    add-int/lit8 v0, v0, 0x1

    .line 207
    :cond_9
    iget-object v1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->arrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 208
    add-int/lit8 v0, v0, 0x1

    .line 211
    :cond_a
    sget v1, Lio/netty/util/internal/InternalThreadLocalMap;->VARIABLES_TO_REMOVE_INDEX:I

    invoke-virtual {p0, v1}, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariable(I)Ljava/lang/Object;

    move-result-object v1

    .line 212
    .local v1, "v":Ljava/lang/Object;
    if-eqz v1, :cond_b

    sget-object v2, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq v1, v2, :cond_b

    .line 214
    move-object v2, v1

    check-cast v2, Ljava/util/Set;

    .line 215
    .local v2, "variablesToRemove":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/util/concurrent/FastThreadLocal<*>;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 218
    .end local v2    # "variablesToRemove":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/util/concurrent/FastThreadLocal<*>;>;"
    :cond_b
    return v0
.end method

.method public stringBuilder()Ljava/lang/StringBuilder;
    .locals 3

    .line 222
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->stringBuilder:Ljava/lang/StringBuilder;

    .line 223
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lio/netty/util/internal/InternalThreadLocalMap;->STRING_BUILDER_INITIAL_SIZE:I

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->stringBuilder:Ljava/lang/StringBuilder;

    return-object v1

    .line 226
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->capacity()I

    move-result v1

    sget v2, Lio/netty/util/internal/InternalThreadLocalMap;->STRING_BUILDER_MAX_SIZE:I

    if-le v1, v2, :cond_1

    .line 227
    sget v1, Lio/netty/util/internal/InternalThreadLocalMap;->STRING_BUILDER_INITIAL_SIZE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->trimToSize()V

    .line 230
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 231
    return-object v0
.end method

.method public typeParameterMatcherFindCache()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/netty/util/internal/TypeParameterMatcher;",
            ">;>;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->typeParameterMatcherFindCache:Ljava/util/Map;

    .line 292
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/Map<Ljava/lang/String;Lio/netty/util/internal/TypeParameterMatcher;>;>;"
    if-nez v0, :cond_0

    .line 293
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->typeParameterMatcherFindCache:Ljava/util/Map;

    .line 295
    :cond_0
    return-object v0
.end method

.method public typeParameterMatcherGetCache()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/netty/util/internal/TypeParameterMatcher;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->typeParameterMatcherGetCache:Ljava/util/Map;

    .line 284
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lio/netty/util/internal/TypeParameterMatcher;>;"
    if-nez v0, :cond_0

    .line 285
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->typeParameterMatcherGetCache:Ljava/util/Map;

    .line 287
    :cond_0
    return-object v0
.end method
