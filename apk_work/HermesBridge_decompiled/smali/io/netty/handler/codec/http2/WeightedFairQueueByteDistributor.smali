.class public final Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;
.super Ljava/lang/Object;
.source "WeightedFairQueueByteDistributor.java"

# interfaces
.implements Lio/netty/handler/codec/http2/StreamByteDistributor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;,
        Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;,
        Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$StatePseudoTimeComparator;,
        Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$StateOnlyComparator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_MAX_STATE_ONLY_SIZE:I = 0x5

.field static final INITIAL_CHILDREN_MAP_SIZE:I


# instance fields
.field private allocationQuantum:I

.field private final connection:Lio/netty/handler/codec/http2/Http2Connection;

.field private final connectionState:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

.field private final maxStateOnlySize:I

.field private final stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

.field private final stateOnlyMap:Lio/netty/util/collection/IntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/collection/IntObjectMap<",
            "Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;",
            ">;"
        }
    .end annotation
.end field

.field private final stateOnlyRemovalQueue:Lio/netty/util/internal/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/PriorityQueue<",
            "Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    nop

    .line 69
    nop

    .line 70
    const-string v0, "io.netty.http2.childrenMapSize"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->INITIAL_CHILDREN_MAP_SIZE:I

    .line 69
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;)V
    .locals 1
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;

    .line 97
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;-><init>(Lio/netty/handler/codec/http2/Http2Connection;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;I)V
    .locals 4
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;
    .param p2, "maxStateOnlySize"    # I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/16 v0, 0x400

    iput v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->allocationQuantum:I

    .line 101
    const-string v0, "maxStateOnlySize"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 102
    if-nez p2, :cond_0

    .line 103
    invoke-static {}, Lio/netty/util/collection/IntCollections;->emptyMap()Lio/netty/util/collection/IntObjectMap;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->stateOnlyMap:Lio/netty/util/collection/IntObjectMap;

    .line 104
    invoke-static {}, Lio/netty/util/internal/EmptyPriorityQueue;->instance()Lio/netty/util/internal/EmptyPriorityQueue;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->stateOnlyRemovalQueue:Lio/netty/util/internal/PriorityQueue;

    goto :goto_0

    .line 106
    :cond_0
    new-instance v0, Lio/netty/util/collection/IntObjectHashMap;

    invoke-direct {v0, p2}, Lio/netty/util/collection/IntObjectHashMap;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->stateOnlyMap:Lio/netty/util/collection/IntObjectMap;

    .line 109
    new-instance v0, Lio/netty/util/internal/DefaultPriorityQueue;

    sget-object v1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$StateOnlyComparator;->INSTANCE:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$StateOnlyComparator;

    add-int/lit8 v2, p2, 0x2

    invoke-direct {v0, v1, v2}, Lio/netty/util/internal/DefaultPriorityQueue;-><init>(Ljava/util/Comparator;I)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->stateOnlyRemovalQueue:Lio/netty/util/internal/PriorityQueue;

    .line 111
    :goto_0
    iput p2, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->maxStateOnlySize:I

    .line 113
    iput-object p1, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    .line 114
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    .line 115
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 116
    .local v0, "connectionStream":Lio/netty/handler/codec/http2/Http2Stream;
    iget-object v1, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    new-instance v2, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    const/16 v3, 0x10

    invoke-direct {v2, p0, v0, v3}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;-><init>(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;Lio/netty/handler/codec/http2/Http2Stream;I)V

    iput-object v2, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->connectionState:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;

    invoke-direct {v1, p0}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;-><init>(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;)V

    invoke-interface {p1, v1}, Lio/netty/handler/codec/http2/Http2Connection;->addListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V

    .line 190
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;)Lio/netty/util/collection/IntObjectMap;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    .line 60
    iget-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->stateOnlyMap:Lio/netty/util/collection/IntObjectMap;

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;)Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    .line 60
    iget-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->connectionState:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    return-object v0
.end method

.method static synthetic access$200(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;)Lio/netty/util/internal/PriorityQueue;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    .line 60
    iget-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->stateOnlyRemovalQueue:Lio/netty/util/internal/PriorityQueue;

    return-object v0
.end method

.method static synthetic access$300(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    .line 60
    iget-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    return-object v0
.end method

.method static synthetic access$400(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;
    .param p1, "x1"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 60
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    .line 60
    iget v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->maxStateOnlySize:I

    return v0
.end method

.method private distribute(ILio/netty/handler/codec/http2/StreamByteDistributor$Writer;Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;)I
    .locals 3
    .param p1, "maxBytes"    # I
    .param p2, "writer"    # Lio/netty/handler/codec/http2/StreamByteDistributor$Writer;
    .param p3, "state"    # Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 290
    invoke-virtual {p3}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget v0, p3, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->streamableBytes:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 292
    .local v0, "nsent":I
    invoke-virtual {p3, v0, p2}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->write(ILio/netty/handler/codec/http2/StreamByteDistributor$Writer;)V

    .line 293
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 298
    iget v1, p3, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->streamableBytes:I

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->updateStreamableBytes(IZ)V

    .line 300
    :cond_0
    return v0

    .line 303
    .end local v0    # "nsent":I
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->distributeToChildren(ILio/netty/handler/codec/http2/StreamByteDistributor$Writer;Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;)I

    move-result v0

    return v0
.end method

.method private distributeToChildren(ILio/netty/handler/codec/http2/StreamByteDistributor$Writer;Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;)I
    .locals 9
    .param p1, "maxBytes"    # I
    .param p2, "writer"    # Lio/netty/handler/codec/http2/StreamByteDistributor$Writer;
    .param p3, "state"    # Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 317
    const-string v0, "].pseudoTime("

    iget-wide v1, p3, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->totalQueuedWeights:J

    .line 318
    .local v1, "oldTotalQueuedWeights":J
    invoke-virtual {p3}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->pollPseudoTimeQueue()Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    move-result-object v3

    .line 319
    .local v3, "childState":Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    invoke-virtual {p3}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->peekPseudoTimeQueue()Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    move-result-object v4

    .line 320
    .local v4, "nextChildState":Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    invoke-virtual {v3}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->setDistributing()V

    .line 322
    if-eqz v4, :cond_1

    :try_start_0
    iget-wide v5, v4, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->pseudoTimeToWrite:J

    iget-wide v7, v3, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->pseudoTimeToWrite:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nextChildState["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->streamId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->pseudoTimeToWrite:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") <  childState["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->streamId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, v3, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->pseudoTimeToWrite:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0x29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v1    # "oldTotalQueuedWeights":J
    .end local v3    # "childState":Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    .end local v4    # "nextChildState":Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    .end local p1    # "maxBytes":I
    .end local p2    # "writer":Lio/netty/handler/codec/http2/StreamByteDistributor$Writer;
    .end local p3    # "state":Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    throw v5

    .line 325
    .restart local v1    # "oldTotalQueuedWeights":J
    .restart local v3    # "childState":Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    .restart local v4    # "nextChildState":Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    .restart local p1    # "maxBytes":I
    .restart local p2    # "writer":Lio/netty/handler/codec/http2/StreamByteDistributor$Writer;
    .restart local p3    # "state":Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    move v0, p1

    goto :goto_1

    :cond_2
    iget-wide v5, v4, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->pseudoTimeToWrite:J

    iget-wide v7, v3, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->pseudoTimeToWrite:J

    sub-long/2addr v5, v7

    iget-short v0, v3, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->weight:S

    int-to-long v7, v0

    mul-long/2addr v5, v7

    div-long/2addr v5, v1

    iget v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->allocationQuantum:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    .line 326
    const-wide/32 v7, 0x7fffffff

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v0, v5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 325
    :goto_1
    invoke-direct {p0, v0, p2, v3}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->distribute(ILio/netty/handler/codec/http2/StreamByteDistributor$Writer;Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;)I

    move-result v0

    .line 331
    .local v0, "nsent":I
    iget-wide v5, p3, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->pseudoTime:J

    int-to-long v7, v0

    add-long/2addr v5, v7

    iput-wide v5, p3, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->pseudoTime:J

    .line 332
    invoke-virtual {v3, p3, v0, v1, v2}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->updatePseudoTime(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    nop

    .line 335
    invoke-virtual {v3}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->unsetDistributing()V

    .line 339
    iget v5, v3, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->activeCountForTree:I

    if-eqz v5, :cond_3

    .line 340
    invoke-virtual {p3, v3}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->offerPseudoTimeQueue(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;)V

    .line 333
    :cond_3
    return v0

    .line 335
    .end local v0    # "nsent":I
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->unsetDistributing()V

    .line 339
    iget v5, v3, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->activeCountForTree:I

    if-eqz v5, :cond_4

    .line 340
    invoke-virtual {p3, v3}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->offerPseudoTimeQueue(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;)V

    .line 342
    :cond_4
    throw v0
.end method

.method private state(I)Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    .locals 2
    .param p1, "streamId"    # I

    .line 350
    iget-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 351
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->stateOnlyMap:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v1, p1}, Lio/netty/util/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    :goto_0
    return-object v1
.end method

.method private state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 346
    iget-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    return-object v0
.end method


# virtual methods
.method public allocationQuantum(I)V
    .locals 1
    .param p1, "allocationQuantum"    # I

    .line 285
    const-string v0, "allocationQuantum"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 286
    iput p1, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->allocationQuantum:I

    .line 287
    return-void
.end method

.method public distribute(ILio/netty/handler/codec/http2/StreamByteDistributor$Writer;)Z
    .locals 3
    .param p1, "maxBytes"    # I
    .param p2, "writer"    # Lio/netty/handler/codec/http2/StreamByteDistributor$Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->connectionState:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    iget v0, v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->activeCountForTree:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 263
    return v1

    .line 271
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->connectionState:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    iget v0, v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->activeCountForTree:I

    .line 273
    .local v0, "oldIsActiveCountForTree":I
    iget-object v2, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->connectionState:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    invoke-direct {p0, p1, p2, v2}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->distributeToChildren(ILio/netty/handler/codec/http2/StreamByteDistributor$Writer;Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;)I

    move-result v2

    sub-int/2addr p1, v2

    .line 274
    iget-object v2, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->connectionState:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    iget v2, v2, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->activeCountForTree:I

    if-eqz v2, :cond_1

    if-gtz p1, :cond_0

    iget-object v2, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->connectionState:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    iget v2, v2, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->activeCountForTree:I

    if-ne v0, v2, :cond_0

    .line 277
    :cond_1
    iget-object v2, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->connectionState:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    iget v2, v2, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->activeCountForTree:I

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method isChild(IIS)Z
    .locals 3
    .param p1, "childId"    # I
    .param p2, "parentId"    # I
    .param p3, "weight"    # S

    .line 358
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->state(I)Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    move-result-object v0

    .line 360
    .local v0, "parent":Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    iget-object v1, v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->children:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v1, p1}, Lio/netty/util/collection/IntObjectMap;->containsKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->state(I)Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    move-result-object v1

    move-object v2, v1

    .local v2, "child":Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    iget-object v1, v1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->parent:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    if-ne v1, v0, :cond_0

    iget-short v1, v2, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->weight:S

    if-ne v1, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local v2    # "child":Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    :cond_0
    const/4 v1, 0x0

    .line 360
    :goto_0
    return v1
.end method

.method notifyParentChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;",
            ">;)V"
        }
    .end annotation

    .line 377
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 378
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;

    .line 379
    .local v1, "event":Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;
    iget-object v2, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->stateOnlyRemovalQueue:Lio/netty/util/internal/PriorityQueue;

    iget-object v3, v1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;->state:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    invoke-interface {v2, v3}, Lio/netty/util/internal/PriorityQueue;->priorityChanged(Ljava/lang/Object;)V

    .line 380
    iget-object v2, v1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;->state:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    iget-object v2, v2, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->parent:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;->state:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    iget v2, v2, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->activeCountForTree:I

    if-eqz v2, :cond_0

    .line 381
    iget-object v2, v1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;->state:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    iget-object v2, v2, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->parent:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    iget-object v3, v1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;->state:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->offerAndInitializePseudoTime(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;)V

    .line 382
    iget-object v2, v1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;->state:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    iget-object v2, v2, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->parent:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    iget-object v3, v1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;->state:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    iget v3, v3, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->activeCountForTree:I

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->activeCountChangeForTree(I)V

    .line 377
    .end local v1    # "event":Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method numChildren(I)I
    .locals 2
    .param p1, "streamId"    # I

    .line 368
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->state(I)Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    move-result-object v0

    .line 369
    .local v0, "state":Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->children:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v1}, Lio/netty/util/collection/IntObjectMap;->size()I

    move-result v1

    :goto_0
    return v1
.end method

.method public updateDependencyTree(IISZ)V
    .locals 9
    .param p1, "childStreamId"    # I
    .param p2, "parentStreamId"    # I
    .param p3, "weight"    # S
    .param p4, "exclusive"    # Z

    .line 200
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->state(I)Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    move-result-object v0

    .line 201
    .local v0, "state":Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    if-nez v0, :cond_1

    .line 205
    iget v1, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->maxStateOnlySize:I

    if-nez v1, :cond_0

    .line 206
    return-void

    .line 208
    :cond_0
    new-instance v1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;-><init>(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;I)V

    move-object v0, v1

    .line 209
    iget-object v1, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->stateOnlyRemovalQueue:Lio/netty/util/internal/PriorityQueue;

    invoke-interface {v1, v0}, Lio/netty/util/internal/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->stateOnlyMap:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v1, p1, v0}, Lio/netty/util/collection/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_1
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->state(I)Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    move-result-object v1

    .line 214
    .local v1, "newParent":Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 218
    iget v4, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->maxStateOnlySize:I

    if-nez v4, :cond_2

    .line 219
    return-void

    .line 221
    :cond_2
    new-instance v4, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    invoke-direct {v4, p0, p2}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;-><init>(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;I)V

    move-object v1, v4

    .line 222
    iget-object v4, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->stateOnlyRemovalQueue:Lio/netty/util/internal/PriorityQueue;

    invoke-interface {v4, v1}, Lio/netty/util/internal/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v4, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->stateOnlyMap:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v4, p2, v1}, Lio/netty/util/collection/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    .local v4, "events":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;>;"
    iget-object v5, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->connectionState:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    invoke-virtual {v5, v1, v3, v4}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->takeChild(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;ZLjava/util/List;)V

    .line 227
    invoke-virtual {p0, v4}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->notifyParentChanged(Ljava/util/List;)V

    .line 232
    .end local v4    # "events":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;>;"
    :cond_3
    iget v4, v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->activeCountForTree:I

    if-eqz v4, :cond_4

    iget-object v4, v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->parent:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    if-eqz v4, :cond_4

    .line 233
    iget-object v4, v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->parent:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    iget-wide v5, v4, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->totalQueuedWeights:J

    iget-short v7, v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->weight:S

    sub-int v7, p3, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v4, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->totalQueuedWeights:J

    .line 235
    :cond_4
    iput-short p3, v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->weight:S

    .line 237
    iget-object v4, v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->parent:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    if-ne v1, v4, :cond_5

    if-eqz p4, :cond_9

    iget-object v4, v1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->children:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v4}, Lio/netty/util/collection/IntObjectMap;->size()I

    move-result v4

    if-eq v4, v2, :cond_9

    .line 239
    :cond_5
    invoke-virtual {v1, v0}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->isDescendantOf(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    if-eqz p4, :cond_6

    iget-object v4, v1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->children:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v4}, Lio/netty/util/collection/IntObjectMap;->size()I

    move-result v4

    goto :goto_0

    :cond_6
    move v4, v3

    :goto_0
    add-int/lit8 v4, v4, 0x2

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;>;"
    iget-object v4, v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->parent:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    invoke-virtual {v4, v1, v3, v2}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->takeChild(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;ZLjava/util/List;)V

    goto :goto_1

    .line 243
    .end local v2    # "events":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;>;"
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    if-eqz p4, :cond_8

    iget-object v3, v1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->children:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v3}, Lio/netty/util/collection/IntObjectMap;->size()I

    move-result v3

    :cond_8
    add-int/2addr v3, v2

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 245
    .restart local v2    # "events":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;>;"
    :goto_1
    invoke-virtual {v1, v0, p4, v2}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->takeChild(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;ZLjava/util/List;)V

    .line 246
    invoke-virtual {p0, v2}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->notifyParentChanged(Ljava/util/List;)V

    .line 252
    .end local v2    # "events":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;>;"
    :cond_9
    :goto_2
    iget-object v2, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->stateOnlyRemovalQueue:Lio/netty/util/internal/PriorityQueue;

    invoke-interface {v2}, Lio/netty/util/internal/PriorityQueue;->size()I

    move-result v2

    iget v3, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->maxStateOnlySize:I

    if-le v2, v3, :cond_a

    .line 253
    iget-object v2, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->stateOnlyRemovalQueue:Lio/netty/util/internal/PriorityQueue;

    invoke-interface {v2}, Lio/netty/util/internal/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    .line 254
    .local v2, "stateToRemove":Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    iget-object v3, v2, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->parent:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    invoke-virtual {v3, v2}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->removeChild(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;)V

    .line 255
    iget-object v3, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->stateOnlyMap:Lio/netty/util/collection/IntObjectMap;

    iget v4, v2, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->streamId:I

    invoke-interface {v3, v4}, Lio/netty/util/collection/IntObjectMap;->remove(I)Ljava/lang/Object;

    .line 256
    .end local v2    # "stateToRemove":Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    goto :goto_2

    .line 257
    :cond_a
    return-void
.end method

.method public updateStreamableBytes(Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;)V
    .locals 3
    .param p1, "state"    # Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;

    .line 194
    invoke-interface {p1}, Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;->stream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    move-result-object v0

    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2CodecUtil;->streamableBytes(Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;)I

    move-result v1

    .line 195
    invoke-interface {p1}, Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;->hasFrame()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;->windowSize()I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 194
    :goto_0
    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->updateStreamableBytes(IZ)V

    .line 196
    return-void
.end method
