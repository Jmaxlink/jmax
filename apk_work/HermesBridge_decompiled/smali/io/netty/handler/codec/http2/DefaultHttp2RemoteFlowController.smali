.class public Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;
.super Ljava/lang/Object;
.source "DefaultHttp2RemoteFlowController.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2RemoteFlowController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;,
        Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;,
        Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MIN_WRITABLE_CHUNK:I = 0x8000

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final connection:Lio/netty/handler/codec/http2/Http2Connection;

.field private final connectionState:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private initialWindowSize:I

.field private monitor:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

.field private final stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

.field private final streamByteDistributor:Lio/netty/handler/codec/http2/StreamByteDistributor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    nop

    .line 46
    nop

    .line 47
    const-class v0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 46
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;)V
    .locals 2
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;

    .line 58
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;-><init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;)V
    .locals 1
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;
    .param p2, "listener"    # Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;

    .line 67
    new-instance v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;-><init>(Lio/netty/handler/codec/http2/Http2Connection;)V

    invoke-direct {p0, p1, v0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;-><init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/StreamByteDistributor;Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/StreamByteDistributor;)V
    .locals 1
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;
    .param p2, "streamByteDistributor"    # Lio/netty/handler/codec/http2/StreamByteDistributor;

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;-><init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/StreamByteDistributor;Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/StreamByteDistributor;Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;)V
    .locals 3
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;
    .param p2, "streamByteDistributor"    # Lio/netty/handler/codec/http2/StreamByteDistributor;
    .param p3, "listener"    # Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const v0, 0xffff

    iput v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->initialWindowSize:I

    .line 73
    const-string v0, "connection"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Connection;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    .line 74
    const-string v0, "streamWriteDistributor"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/StreamByteDistributor;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->streamByteDistributor:Lio/netty/handler/codec/http2/StreamByteDistributor;

    .line 77
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    .line 78
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;Lio/netty/handler/codec/http2/Http2Stream;)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->connectionState:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    .line 79
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->connectionState:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p0, p3}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->listener(Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;)V

    .line 83
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->monitor:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->connectionState:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    iget v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->initialWindowSize:I

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->windowSize(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;I)V

    .line 86
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$1;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$1;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)V

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Connection;->addListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    .line 45
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;
    .param p1, "x1"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 45
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    .line 45
    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->isChannelWritable0()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Lio/netty/handler/codec/http2/Http2Connection;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    .line 45
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    return-object v0
.end method

.method static synthetic access$1200(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    .line 45
    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->isChannelWritable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 45
    sget-object v0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method static synthetic access$200(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    .line 45
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->initialWindowSize:I

    return v0
.end method

.method static synthetic access$202(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;I)I
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->initialWindowSize:I

    return p1
.end method

.method static synthetic access$300(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    .line 45
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->monitor:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

    return-object v0
.end method

.method static synthetic access$500(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    .line 45
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method static synthetic access$600(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Lio/netty/handler/codec/http2/StreamByteDistributor;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    .line 45
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->streamByteDistributor:Lio/netty/handler/codec/http2/StreamByteDistributor;

    return-object v0
.end method

.method static synthetic access$700(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    .line 45
    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->connectionWindowSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    .line 45
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->connectionState:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    return-object v0
.end method

.method static synthetic access$900(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    .line 45
    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->writableBytes()I

    move-result v0

    return v0
.end method

.method private connectionWindowSize()I
    .locals 1

    .line 235
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->connectionState:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;->windowSize()I

    move-result v0

    return v0
.end method

.method private isChannelWritable()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->isChannelWritable0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isChannelWritable0()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v0

    return v0
.end method

.method private maxUsableChannelBytes()I
    .locals 4

    .line 250
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->bytesBeforeUnwritable()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 251
    .local v0, "channelWritableBytes":I
    if-lez v0, :cond_0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->minUsableChannelBytes()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 254
    .local v1, "usableBytes":I
    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->connectionState:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;->windowSize()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private minUsableChannelBytes()I
    .locals 2

    .line 245
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v0

    const v1, 0x8000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 228
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    return-object v0
.end method

.method private writableBytes()I
    .locals 2

    .line 262
    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->connectionWindowSize()I

    move-result v0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->maxUsableChannelBytes()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addFlowControlled(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;)V
    .locals 2
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p2, "frame"    # Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;

    .line 213
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 214
    :cond_1
    :goto_0
    const-string v0, "frame"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 216
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->monitor:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->enqueueFrame(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    goto :goto_1

    .line 217
    :catchall_0
    move-exception v0

    .line 218
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p2, v1, v0}, Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;->error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 220
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public channelHandlerContext()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 152
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method public channelHandlerContext(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 135
    const-string v0, "ctx"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelHandlerContext;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 139
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->channelWritabilityChanged()V

    .line 145
    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->isChannelWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->writePendingBytes()V

    .line 148
    :cond_0
    return-void
.end method

.method public channelWritabilityChanged()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->monitor:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->channelWritabilityChange()V

    .line 179
    return-void
.end method

.method public hasFlowControlled(Lio/netty/handler/codec/http2/Http2Stream;)Z
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 224
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;->hasFrame()Z

    move-result v0

    return v0
.end method

.method public incrementWindowSize(Lio/netty/handler/codec/http2/Http2Stream;I)V
    .locals 2
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p2, "delta"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 207
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->monitor:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->incrementWindowSize(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;I)V

    .line 208
    return-void
.end method

.method public initialWindowSize()I
    .locals 1

    .line 163
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->initialWindowSize:I

    return v0
.end method

.method public initialWindowSize(I)V
    .locals 1
    .param p1, "newWindowSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 158
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->monitor:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->initialWindowSize(I)V

    .line 159
    return-void
.end method

.method public isWritable(Lio/netty/handler/codec/http2/Http2Stream;)Z
    .locals 2
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 173
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->monitor:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->isWritable(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;)Z

    move-result v0

    return v0
.end method

.method public listener(Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;)V
    .locals 2
    .param p1, "listener"    # Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;

    .line 201
    if-nez p1, :cond_0

    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;)V

    :goto_0
    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->monitor:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

    .line 202
    return-void
.end method

.method public updateDependencyTree(IISZ)V
    .locals 2
    .param p1, "childStreamId"    # I
    .param p2, "parentStreamId"    # I
    .param p3, "weight"    # S
    .param p4, "exclusive"    # Z

    .line 184
    const/4 v0, 0x1

    if-lt p3, v0, :cond_2

    const/16 v0, 0x100

    if-gt p3, v0, :cond_2

    .line 185
    if-eq p1, p2, :cond_1

    .line 186
    if-lez p1, :cond_0

    if-ltz p2, :cond_0

    .line 188
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->streamByteDistributor:Lio/netty/handler/codec/http2/StreamByteDistributor;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/StreamByteDistributor;->updateDependencyTree(IISZ)V

    .line 189
    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "childStreamId must be > 0. parentStreamId must be >= 0."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 185
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "A stream cannot depend on itself"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 184
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid weight"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public windowSize(Lio/netty/handler/codec/http2/Http2Stream;)I
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 168
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;->windowSize()I

    move-result v0

    return v0
.end method

.method public writePendingBytes()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->monitor:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->writePendingBytes()V

    .line 268
    return-void
.end method
