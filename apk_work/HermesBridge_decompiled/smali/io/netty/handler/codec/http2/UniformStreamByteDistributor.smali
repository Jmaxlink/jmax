.class public final Lio/netty/handler/codec/http2/UniformStreamByteDistributor;
.super Ljava/lang/Object;
.source "UniformStreamByteDistributor.java"

# interfaces
.implements Lio/netty/handler/codec/http2/StreamByteDistributor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;
    }
.end annotation


# instance fields
.field private minAllocationChunk:I

.field private final queue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;",
            ">;"
        }
    .end annotation
.end field

.field private final stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

.field private totalStreamableBytes:J


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;)V
    .locals 3
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->queue:Ljava/util/Deque;

    .line 46
    const/16 v0, 0x400

    iput v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->minAllocationChunk:I

    .line 51
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    .line 52
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 53
    .local v0, "connectionStream":Lio/netty/handler/codec/http2/Http2Stream;
    iget-object v1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    new-instance v2, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;

    invoke-direct {v2, p0, v0}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;-><init>(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;Lio/netty/handler/codec/http2/Http2Stream;)V

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v1, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$1;

    invoke-direct {v1, p0}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$1;-><init>(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;)V

    invoke-interface {p1, v1}, Lio/netty/handler/codec/http2/Http2Connection;->addListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/UniformStreamByteDistributor;

    .line 38
    iget-object v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/UniformStreamByteDistributor;
    .param p1, "x1"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 38
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;)J
    .locals 2
    .param p0, "x0"    # Lio/netty/handler/codec/http2/UniformStreamByteDistributor;

    .line 38
    iget-wide v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->totalStreamableBytes:J

    return-wide v0
.end method

.method static synthetic access$202(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;J)J
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http2/UniformStreamByteDistributor;
    .param p1, "x1"    # J

    .line 38
    iput-wide p1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->totalStreamableBytes:J

    return-wide p1
.end method

.method static synthetic access$300(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;)Ljava/util/Deque;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/UniformStreamByteDistributor;

    .line 38
    iget-object v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->queue:Ljava/util/Deque;

    return-object v0
.end method

.method private state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;
    .locals 2
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 128
    const-string v0, "stream"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Stream;

    iget-object v1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;

    return-object v0
.end method


# virtual methods
.method public distribute(ILio/netty/handler/codec/http2/StreamByteDistributor$Writer;)Z
    .locals 9
    .param p1, "maxBytes"    # I
    .param p2, "writer"    # Lio/netty/handler/codec/http2/StreamByteDistributor$Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->queue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    .line 95
    .local v0, "size":I
    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 96
    iget-wide v5, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->totalStreamableBytes:J

    cmp-long v1, v5, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    .line 99
    :cond_1
    iget v5, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->minAllocationChunk:I

    div-int v6, p1, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 101
    .local v5, "chunkSize":I
    iget-object v6, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->queue:Ljava/util/Deque;

    invoke-interface {v6}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;

    .line 103
    .local v6, "state":Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;
    :cond_2
    iput-boolean v4, v6, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->enqueued:Z

    .line 104
    iget-boolean v7, v6, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->windowNegative:Z

    if-eqz v7, :cond_3

    .line 105
    goto :goto_1

    .line 107
    :cond_3
    if-nez p1, :cond_4

    iget v7, v6, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->streamableBytes:I

    if-lez v7, :cond_4

    .line 111
    iget-object v7, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->queue:Ljava/util/Deque;

    invoke-interface {v7, v6}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 112
    iput-boolean v3, v6, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->enqueued:Z

    .line 113
    goto :goto_2

    .line 117
    :cond_4
    iget v7, v6, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->streamableBytes:I

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 118
    .local v7, "chunk":I
    sub-int/2addr p1, v7

    .line 121
    invoke-virtual {v6, v7, p2}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->write(ILio/netty/handler/codec/http2/StreamByteDistributor$Writer;)V

    .line 122
    .end local v7    # "chunk":I
    :goto_1
    iget-object v7, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->queue:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;

    move-object v6, v7

    if-nez v7, :cond_2

    .line 124
    :goto_2
    iget-wide v7, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->totalStreamableBytes:J

    cmp-long v1, v7, v1

    if-lez v1, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    return v3
.end method

.method public minAllocationChunk(I)V
    .locals 1
    .param p1, "minAllocationChunk"    # I

    .line 76
    const-string v0, "minAllocationChunk"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 77
    iput p1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->minAllocationChunk:I

    .line 78
    return-void
.end method

.method public updateDependencyTree(IISZ)V
    .locals 0
    .param p1, "childStreamId"    # I
    .param p2, "parentStreamId"    # I
    .param p3, "weight"    # S
    .param p4, "exclusive"    # Z

    .line 90
    return-void
.end method

.method public updateStreamableBytes(Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;)V
    .locals 4
    .param p1, "streamState"    # Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;

    .line 82
    invoke-interface {p1}, Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;->stream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;

    move-result-object v0

    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2CodecUtil;->streamableBytes(Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;)I

    move-result v1

    .line 83
    invoke-interface {p1}, Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;->hasFrame()Z

    move-result v2

    .line 84
    invoke-interface {p1}, Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;->windowSize()I

    move-result v3

    .line 82
    invoke-virtual {v0, v1, v2, v3}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->updateStreamableBytes(IZI)V

    .line 85
    return-void
.end method
