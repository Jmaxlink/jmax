.class final Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;
.super Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;
.source "Http2ControlFrameLimitEncoder.java"


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

.field private limitReached:Z

.field private final maxOutstandingControlFrames:I

.field private outstandingControlFrames:I

.field private final outstandingControlFramesListener:Lio/netty/channel/ChannelFutureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;I)V
    .locals 1
    .param p1, "delegate"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .param p2, "maxOutstandingControlFrames"    # I

    .line 45
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)V

    .line 34
    new-instance v0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder$1;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder$1;-><init>(Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->outstandingControlFramesListener:Lio/netty/channel/ChannelFutureListener;

    .line 46
    const-string v0, "maxOutstandingControlFrames"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->maxOutstandingControlFrames:I

    .line 48
    return-void
.end method

.method static synthetic access$010(Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;)I
    .locals 2
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;

    .line 30
    iget v0, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->outstandingControlFrames:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->outstandingControlFrames:I

    return v0
.end method

.method private handleOutstandingControlFrames(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 89
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->limitReached:Z

    if-nez v0, :cond_2

    .line 90
    iget v0, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->outstandingControlFrames:I

    iget v1, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->maxOutstandingControlFrames:I

    if-ne v0, v1, :cond_0

    .line 92
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 94
    :cond_0
    iget v0, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->outstandingControlFrames:I

    iget v1, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->maxOutstandingControlFrames:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 95
    iput-boolean v2, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->limitReached:Z

    .line 96
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->ENHANCE_YOUR_CALM:Lio/netty/handler/codec/http2/Http2Error;

    iget v1, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->maxOutstandingControlFrames:I

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 96
    const-string v3, "Maximum number %d of outstanding control frames reached"

    invoke-static {v0, v3, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    .line 98
    .local v0, "exception":Lio/netty/handler/codec/http2/Http2Exception;
    sget-object v1, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget v3, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->maxOutstandingControlFrames:I

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    filled-new-array {v3, v4, v0}, [Ljava/lang/Object;

    move-result-object v3

    .line 98
    const-string v4, "Maximum number {} of outstanding control frames reached. Closing channel {}"

    invoke-interface {v1, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    invoke-interface {v1, p1, v2, v0}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    .line 103
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 105
    .end local v0    # "exception":Lio/netty/handler/codec/http2/Http2Exception;
    :cond_1
    iget v0, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->outstandingControlFrames:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->outstandingControlFrames:I

    .line 109
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->unvoid()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->outstandingControlFramesListener:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0

    .line 111
    :cond_2
    return-object p2
.end method


# virtual methods
.method public lifecycleManager(Lio/netty/handler/codec/http2/Http2LifecycleManager;)V
    .locals 0
    .param p1, "lifecycleManager"    # Lio/netty/handler/codec/http2/Http2LifecycleManager;

    .line 52
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    .line 53
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->lifecycleManager(Lio/netty/handler/codec/http2/Http2LifecycleManager;)V

    .line 54
    return-void
.end method

.method public writePing(Lio/netty/channel/ChannelHandlerContext;ZJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "ack"    # Z
    .param p3, "data"    # J
    .param p5, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 68
    if-eqz p2, :cond_1

    .line 69
    invoke-direct {p0, p1, p5}, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->handleOutstandingControlFrames(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;

    move-result-object v6

    .line 70
    .local v6, "newPromise":Lio/netty/channel/ChannelPromise;
    if-nez v6, :cond_0

    .line 71
    return-object p5

    .line 73
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, v6

    invoke-super/range {v0 .. v5}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->writePing(Lio/netty/channel/ChannelHandlerContext;ZJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 75
    .end local v6    # "newPromise":Lio/netty/channel/ChannelPromise;
    :cond_1
    invoke-super/range {p0 .. p5}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->writePing(Lio/netty/channel/ChannelHandlerContext;ZJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public writeRstStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "errorCode"    # J
    .param p5, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 81
    invoke-direct {p0, p1, p5}, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->handleOutstandingControlFrames(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;

    move-result-object v6

    .line 82
    .local v6, "newPromise":Lio/netty/channel/ChannelPromise;
    if-nez v6, :cond_0

    .line 83
    return-object p5

    .line 85
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, v6

    invoke-super/range {v0 .. v5}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->writeRstStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public writeSettingsAck(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 58
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;->handleOutstandingControlFrames(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    .line 59
    .local v0, "newPromise":Lio/netty/channel/ChannelPromise;
    if-nez v0, :cond_0

    .line 60
    return-object p2

    .line 62
    :cond_0
    invoke-super {p0, p1, v0}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->writeSettingsAck(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1
.end method
