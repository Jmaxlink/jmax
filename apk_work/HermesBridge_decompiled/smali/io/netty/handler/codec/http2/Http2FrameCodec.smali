.class public Lio/netty/handler/codec/http2/Http2FrameCodec;
.super Lio/netty/handler/codec/http2/Http2ConnectionHandler;
.source "Http2FrameCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;,
        Lio/netty/handler/codec/http2/Http2FrameCodec$Http2RemoteFlowControllerListener;,
        Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;,
        Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final frameStreamToInitializeMap:Lio/netty/util/collection/IntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/collection/IntObjectMap<",
            "Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;",
            ">;"
        }
    .end annotation
.end field

.field private final initialFlowControlWindowSize:Ljava/lang/Integer;

.field private numBufferedStreams:I

.field protected final streamKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

.field private final upgradeKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 147
    nop

    .line 150
    const-class v0, Lio/netty/handler/codec/http2/Http2FrameCodec;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/Http2FrameCodec;->LOG:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Settings;ZZ)V
    .locals 6
    .param p1, "encoder"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .param p2, "decoder"    # Lio/netty/handler/codec/http2/Http2ConnectionDecoder;
    .param p3, "initialSettings"    # Lio/netty/handler/codec/http2/Http2Settings;
    .param p4, "decoupleCloseAndGoAway"    # Z
    .param p5, "flushPreface"    # Z

    .line 168
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;ZZ)V

    .line 163
    new-instance v0, Lio/netty/util/collection/IntObjectHashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lio/netty/util/collection/IntObjectHashMap;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->frameStreamToInitializeMap:Lio/netty/util/collection/IntObjectMap;

    .line 170
    new-instance v0, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;-><init>(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$1;)V

    invoke-interface {p2, v0}, Lio/netty/handler/codec/http2/Http2ConnectionDecoder;->frameListener(Lio/netty/handler/codec/http2/Http2FrameListener;)V

    .line 171
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    new-instance v2, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;

    invoke-direct {v2, p0, v1}, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;-><init>(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$1;)V

    invoke-interface {v0, v2}, Lio/netty/handler/codec/http2/Http2Connection;->addListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V

    .line 172
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController()Lio/netty/handler/codec/http2/Http2FlowController;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    new-instance v2, Lio/netty/handler/codec/http2/Http2FrameCodec$Http2RemoteFlowControllerListener;

    invoke-direct {v2, p0, v1}, Lio/netty/handler/codec/http2/Http2FrameCodec$Http2RemoteFlowControllerListener;-><init>(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$1;)V

    invoke-interface {v0, v2}, Lio/netty/handler/codec/http2/Http2RemoteFlowController;->listener(Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;)V

    .line 173
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->streamKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    .line 174
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->upgradeKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    .line 175
    invoke-virtual {p3}, Lio/netty/handler/codec/http2/Http2Settings;->initialWindowSize()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->initialFlowControlWindowSize:Ljava/lang/Integer;

    .line 176
    return-void
.end method

.method static synthetic access$310(Lio/netty/handler/codec/http2/Http2FrameCodec;)I
    .locals 2
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2FrameCodec;

    .line 148
    iget v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->numBufferedStreams:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->numBufferedStreams:I

    return v0
.end method

.method static synthetic access$400(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/channel/ChannelFuture;I)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2FrameCodec;
    .param p1, "x1"    # Lio/netty/channel/ChannelFuture;
    .param p2, "x2"    # I

    .line 148
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameCodec;->handleHeaderFuture(Lio/netty/channel/ChannelFuture;I)V

    return-void
.end method

.method static synthetic access$600(Lio/netty/handler/codec/http2/Http2FrameCodec;)Lio/netty/util/collection/IntObjectMap;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2FrameCodec;

    .line 148
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->frameStreamToInitializeMap:Lio/netty/util/collection/IntObjectMap;

    return-object v0
.end method

.method static synthetic access$700(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2FrameCodec;
    .param p1, "x1"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 148
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onStreamActive0(Lio/netty/handler/codec/http2/Http2Stream;)V

    return-void
.end method

.method static synthetic access$800(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Z)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2FrameCodec;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
    .param p3, "x3"    # Z

    .line 148
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2StreamWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Z)V

    return-void
.end method

.method private handleHeaderFuture(Lio/netty/channel/ChannelFuture;I)V
    .locals 1
    .param p1, "channelFuture"    # Lio/netty/channel/ChannelFuture;
    .param p2, "streamId"    # I

    .line 486
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->frameStreamToInitializeMap:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v0, p2}, Lio/netty/util/collection/IntObjectMap;->remove(I)Ljava/lang/Object;

    .line 489
    :cond_0
    return-void
.end method

.method private increaseInitialConnectionWindow(I)V
    .locals 2
    .param p1, "deltaBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 368
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController()Lio/netty/handler/codec/http2/Http2FlowController;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2LocalFlowController;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->incrementWindowSize(Lio/netty/handler/codec/http2/Http2Stream;I)V

    .line 369
    return-void
.end method

.method private initializeNewStream(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Lio/netty/channel/ChannelPromise;)Z
    .locals 8
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "http2FrameStream"    # Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 458
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    .line 459
    .local v0, "connection":Lio/netty/handler/codec/http2/Http2Connection;
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->incrementAndGetNextStreamId()I

    move-result v1

    .line 460
    .local v1, "streamId":I
    if-gez v1, :cond_1

    .line 461
    new-instance v2, Lio/netty/handler/codec/http2/Http2NoMoreStreamIdsException;

    invoke-direct {v2}, Lio/netty/handler/codec/http2/Http2NoMoreStreamIdsException;-><init>()V

    invoke-interface {p3, v2}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 465
    new-instance v2, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7fffffff

    goto :goto_0

    :cond_0
    const v3, 0x7ffffffe

    :goto_0
    sget-object v4, Lio/netty/handler/codec/http2/Http2Error;->NO_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 466
    invoke-virtual {v4}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v4

    .line 467
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v6

    const-string v7, "Stream IDs exhausted on local stream creation"

    invoke-static {v6, v7}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/CharSequence;)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;-><init>(IJLio/netty/buffer/ByteBuf;)V

    .line 465
    invoke-virtual {p0, p1, v2}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2Frame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Frame;)V

    .line 469
    const/4 v2, 0x0

    return v2

    .line 471
    :cond_1
    invoke-static {p2, v1}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->access$502(Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;I)I

    .line 478
    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->frameStreamToInitializeMap:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v2, v1, p2}, Lio/netty/util/collection/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 481
    .local v2, "old":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 482
    const/4 v3, 0x1

    return v3

    .line 481
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method private onHttp2StreamWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Z)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "stream"    # Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
    .param p3, "writable"    # Z

    .line 704
    iget-object v0, p2, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->writabilityChanged:Lio/netty/handler/codec/http2/Http2FrameStreamEvent;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 705
    return-void
.end method

.method private static onHttp2UnknownStreamError(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$StreamException;)V
    .locals 4
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "streamException"    # Lio/netty/handler/codec/http2/Http2Exception$StreamException;

    .line 584
    sget-object v0, Lio/netty/handler/codec/http2/Http2FrameCodec;->LOG:Lio/netty/util/internal/logging/InternalLogger;

    sget-object v1, Lio/netty/util/internal/logging/InternalLogLevel;->DEBUG:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2Exception$StreamException;->streamId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Stream exception thrown for unknown stream {}."

    invoke-interface {v0, v1, v3, v2, p1}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 585
    return-void
.end method

.method private onStreamActive0(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 2
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 492
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 493
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v1

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->isValidStreamId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    return-void

    .line 497
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->newStream()Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->streamKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-virtual {v0, v1, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->setStreamAndProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    move-result-object v0

    .line 498
    .local v0, "stream2":Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {p0, v1, v0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2StreamStateChanged(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;)V

    .line 499
    return-void
.end method

.method private onUpgradeEvent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;

    .line 699
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 700
    return-void
.end method

.method private tryExpandConnectionFlowControlWindow(Lio/netty/handler/codec/http2/Http2Connection;)V
    .locals 4
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->initialFlowControlWindowSize:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 233
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 234
    .local v0, "connectionStream":Lio/netty/handler/codec/http2/Http2Stream;
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController()Lio/netty/handler/codec/http2/Http2FlowController;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2LocalFlowController;

    .line 235
    .local v1, "localFlowController":Lio/netty/handler/codec/http2/Http2LocalFlowController;
    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->initialFlowControlWindowSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v0}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->initialWindowSize(Lio/netty/handler/codec/http2/Http2Stream;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 237
    .local v2, "delta":I
    if-lez v2, :cond_0

    .line 239
    shl-int/lit8 v3, v2, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v1, v0, v3}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->incrementWindowSize(Lio/netty/handler/codec/http2/Http2Stream;I)V

    .line 240
    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {p0, v3}, Lio/netty/handler/codec/http2/Http2FrameCodec;->flush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 243
    .end local v0    # "connectionStream":Lio/netty/handler/codec/http2/Http2Stream;
    .end local v1    # "localFlowController":Lio/netty/handler/codec/http2/Http2LocalFlowController;
    .end local v2    # "delta":I
    :cond_0
    return-void
.end method

.method private writeGoAwayFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2GoAwayFrame;Lio/netty/channel/ChannelPromise;)V
    .locals 10
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "frame"    # Lio/netty/handler/codec/http2/Http2GoAwayFrame;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 386
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2GoAwayFrame;->lastStreamId()I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    .line 391
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->lastStreamCreated()I

    move-result v0

    .line 392
    .local v0, "lastStreamCreated":I
    int-to-long v1, v0

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2GoAwayFrame;->extraStreamIds()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 394
    .local v1, "lastStreamId":J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 395
    const-wide/32 v1, 0x7fffffff

    .line 397
    :cond_0
    long-to-int v5, v1

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2GoAwayFrame;->errorCode()J

    move-result-wide v6

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2GoAwayFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    move-object v9, p3

    invoke-virtual/range {v3 .. v9}, Lio/netty/handler/codec/http2/Http2FrameCodec;->goAway(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 398
    return-void

    .line 387
    .end local v0    # "lastStreamCreated":I
    .end local v1    # "lastStreamId":J
    :cond_1
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2GoAwayFrame;->release()Z

    .line 388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Last stream id must not be set on GOAWAY frame"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeHeadersFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2HeadersFrame;Lio/netty/channel/ChannelPromise;)V
    .locals 8
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "headersFrame"    # Lio/netty/handler/codec/http2/Http2HeadersFrame;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 403
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v0

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2CodecUtil;->isStreamIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v1

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v3

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->headers()Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v4

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->padding()I

    move-result v5

    .line 405
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->isEndStream()Z

    move-result v6

    .line 404
    move-object v2, p1

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 406
    :cond_0
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    invoke-direct {p0, p1, v0, p3}, Lio/netty/handler/codec/http2/Http2FrameCodec;->initializeNewStream(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Lio/netty/channel/ChannelPromise;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v0

    .line 409
    .local v0, "streamId":I
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v1

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->headers()Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v4

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->padding()I

    move-result v5

    .line 410
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->isEndStream()Z

    move-result v6

    .line 409
    move-object v2, p1

    move v3, v0

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 412
    invoke-interface {p3}, Lio/netty/channel/ChannelPromise;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 413
    iget v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->numBufferedStreams:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->numBufferedStreams:I

    .line 416
    new-instance v1, Lio/netty/handler/codec/http2/Http2FrameCodec$3;

    invoke-direct {v1, p0, v0}, Lio/netty/handler/codec/http2/Http2FrameCodec$3;-><init>(Lio/netty/handler/codec/http2/Http2FrameCodec;I)V

    invoke-interface {p3, v1}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 424
    :cond_1
    invoke-direct {p0, p3, v0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->handleHeaderFuture(Lio/netty/channel/ChannelFuture;I)V

    .line 427
    .end local v0    # "streamId":I
    :cond_2
    :goto_0
    return-void
.end method

.method private writePushPromise(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2PushPromiseFrame;Lio/netty/channel/ChannelPromise;)V
    .locals 8
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "pushPromiseFrame"    # Lio/netty/handler/codec/http2/Http2PushPromiseFrame;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 431
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2PushPromiseFrame;->pushStream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v0

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2CodecUtil;->isStreamIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v1

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2PushPromiseFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v3

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2PushPromiseFrame;->pushStream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v4

    .line 433
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2PushPromiseFrame;->http2Headers()Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v5

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2PushPromiseFrame;->padding()I

    move-result v6

    .line 432
    move-object v2, p1

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->writePushPromise(Lio/netty/channel/ChannelHandlerContext;IILio/netty/handler/codec/http2/Http2Headers;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 434
    :cond_0
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2PushPromiseFrame;->pushStream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    invoke-direct {p0, p1, v0, p3}, Lio/netty/handler/codec/http2/Http2FrameCodec;->initializeNewStream(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Lio/netty/channel/ChannelPromise;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2PushPromiseFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v0

    .line 436
    .local v0, "streamId":I
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v1

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2PushPromiseFrame;->pushStream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v4

    .line 437
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2PushPromiseFrame;->http2Headers()Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v5

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2PushPromiseFrame;->padding()I

    move-result v6

    .line 436
    move-object v2, p1

    move v3, v0

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->writePushPromise(Lio/netty/channel/ChannelHandlerContext;IILio/netty/handler/codec/http2/Http2Headers;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 439
    invoke-interface {p3}, Lio/netty/channel/ChannelPromise;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    invoke-direct {p0, p3, v0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->handleHeaderFuture(Lio/netty/channel/ChannelFuture;I)V

    goto :goto_0

    .line 442
    :cond_1
    iget v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->numBufferedStreams:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->numBufferedStreams:I

    .line 445
    new-instance v1, Lio/netty/handler/codec/http2/Http2FrameCodec$4;

    invoke-direct {v1, p0, v0}, Lio/netty/handler/codec/http2/Http2FrameCodec$4;-><init>(Lio/netty/handler/codec/http2/Http2FrameCodec;I)V

    invoke-interface {p3, v1}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 454
    .end local v0    # "streamId":I
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method final consumeBytes(II)Z
    .locals 3
    .param p1, "streamId"    # I
    .param p2, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 375
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 376
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->upgradeKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 377
    .local v1, "upgraded":Ljava/lang/Boolean;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    const/4 v2, 0x0

    return v2

    .line 382
    .end local v1    # "upgraded":Ljava/lang/Boolean;
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController()Lio/netty/handler/codec/http2/Http2FlowController;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2LocalFlowController;

    invoke-interface {v1, v0, p2}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z

    move-result v1

    return v1
.end method

.method final forEachActiveStream(Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V
    .locals 2
    .param p1, "streamVisitor"    # Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->numActiveStreams()I

    move-result v0

    if-lez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/http2/Http2FrameCodec$1;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec$1;-><init>(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/Http2Connection;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2StreamVisitor;)Lio/netty/handler/codec/http2/Http2Stream;

    .line 205
    :cond_0
    return-void

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 219
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 220
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->handlerAdded0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 223
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    .line 224
    .local v0, "connection":Lio/netty/handler/codec/http2/Http2Connection;
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->tryExpandConnectionFlowControlWindow(Lio/netty/handler/codec/http2/Http2Connection;)V

    .line 227
    :cond_0
    return-void
.end method

.method handlerAdded0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 247
    return-void
.end method

.method protected final isGracefulShutdownComplete()Z
    .locals 1

    .line 589
    invoke-super {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->isGracefulShutdownComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->numBufferedStreams:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method newStream()Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
    .locals 1

    .line 182
    new-instance v0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;-><init>()V

    return-object v0
.end method

.method numInitializingStreams()I
    .locals 1

    .line 213
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->frameStreamToInitializeMap:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v0}, Lio/netty/util/collection/IntObjectMap;->size()I

    move-result v0

    return v0
.end method

.method protected onConnectionError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "outbound"    # Z
    .param p3, "cause"    # Ljava/lang/Throwable;
    .param p4, "http2Ex"    # Lio/netty/handler/codec/http2/Http2Exception;

    .line 537
    if-nez p2, :cond_0

    .line 542
    invoke-interface {p1, p3}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 544
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onConnectionError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception;)V

    .line 545
    return-void
.end method

.method onHttp2Frame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Frame;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "frame"    # Lio/netty/handler/codec/http2/Http2Frame;

    .line 712
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 713
    return-void
.end method

.method onHttp2FrameStreamException(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameStreamException;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Lio/netty/handler/codec/http2/Http2FrameStreamException;

    .line 716
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 717
    return-void
.end method

.method onHttp2StreamStateChanged(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "stream"    # Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    .line 708
    iget-object v0, p2, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->stateChanged:Lio/netty/handler/codec/http2/Http2FrameStreamEvent;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 709
    return-void
.end method

.method protected final onStreamError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$StreamException;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "outbound"    # Z
    .param p3, "cause"    # Ljava/lang/Throwable;
    .param p4, "streamException"    # Lio/netty/handler/codec/http2/Http2Exception$StreamException;

    .line 554
    invoke-virtual {p4}, Lio/netty/handler/codec/http2/Http2Exception$StreamException;->streamId()I

    move-result v0

    .line 555
    .local v0, "streamId":I
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v1

    .line 556
    .local v1, "connectionStream":Lio/netty/handler/codec/http2/Http2Stream;
    if-nez v1, :cond_0

    .line 557
    invoke-static {p1, p3, p4}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2UnknownStreamError(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$StreamException;)V

    .line 559
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onStreamError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$StreamException;)V

    .line 560
    return-void

    .line 563
    :cond_0
    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->streamKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {v1, v2}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/http2/Http2FrameStream;

    .line 564
    .local v2, "stream":Lio/netty/handler/codec/http2/Http2FrameStream;
    if-nez v2, :cond_1

    .line 565
    sget-object v3, Lio/netty/handler/codec/http2/Http2FrameCodec;->LOG:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Stream exception thrown without stream object attached."

    invoke-interface {v3, v4, p3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 567
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onStreamError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$StreamException;)V

    .line 568
    return-void

    .line 571
    :cond_1
    if-nez p2, :cond_2

    .line 573
    new-instance v3, Lio/netty/handler/codec/http2/Http2FrameStreamException;

    invoke-virtual {p4}, Lio/netty/handler/codec/http2/Http2Exception$StreamException;->error()Lio/netty/handler/codec/http2/Http2Error;

    move-result-object v4

    invoke-direct {v3, v2, v4, p3}, Lio/netty/handler/codec/http2/Http2FrameStreamException;-><init>(Lio/netty/handler/codec/http2/Http2FrameStream;Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1, v3}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2FrameStreamException(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameStreamException;)V

    .line 575
    :cond_2
    return-void
.end method

.method onUserEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 295
    return-void
.end method

.method public final userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 255
    sget-object v0, Lio/netty/handler/codec/http2/Http2ConnectionPrefaceAndSettingsFrameWrittenEvent;->INSTANCE:Lio/netty/handler/codec/http2/Http2ConnectionPrefaceAndSettingsFrameWrittenEvent;

    if-ne p2, v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->tryExpandConnectionFlowControlWindow(Lio/netty/handler/codec/http2/Http2Connection;)V

    .line 262
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/http2/Http2FrameCodec$2;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameCodec$2;-><init>(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 268
    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;

    if-eqz v0, :cond_2

    .line 269
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;

    .line 271
    .local v0, "upgrade":Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;
    :try_start_0
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;->retain()Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onUpgradeEvent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;)V

    .line 272
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v1

    .line 273
    .local v1, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->streamKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {v1, v3}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 277
    invoke-direct {p0, v1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onStreamActive0(Lio/netty/handler/codec/http2/Http2Stream;)V

    .line 279
    :cond_1
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;->upgradeRequest()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    .line 280
    invoke-virtual {v4}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v4

    .line 279
    invoke-virtual {v3, v4, v2}, Lio/netty/handler/codec/http/HttpHeaders;->setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;

    .line 281
    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2FrameCodec;->upgradeKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    nop

    .line 283
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v2

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->decoder()Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2ConnectionDecoder;->frameListener()Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;->upgradeRequest()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/handler/codec/http/FullHttpRequest;->retain()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v4

    .line 282
    invoke-static {p1, v2, v3, v4}, Lio/netty/handler/codec/http2/InboundHttpToHttp2Adapter;->handle(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2FrameListener;Lio/netty/handler/codec/http/FullHttpMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    .end local v1    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;->release()Z

    .line 286
    nop

    .line 287
    .end local v0    # "upgrade":Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;
    goto :goto_0

    .line 285
    .restart local v0    # "upgrade":Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;->release()Z

    .line 286
    throw v1

    .line 288
    .end local v0    # "upgrade":Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeEvent;
    :cond_2
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onUserEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 289
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 291
    :goto_0
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 10
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 303
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2DataFrame;

    if-eqz v0, :cond_0

    .line 304
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2DataFrame;

    .line 305
    .local v0, "dataFrame":Lio/netty/handler/codec/http2/Http2DataFrame;
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v1

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2DataFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v3

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2DataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v4

    .line 306
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2DataFrame;->padding()I

    move-result v5

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2DataFrame;->isEndStream()Z

    move-result v6

    .line 305
    move-object v2, p1

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 307
    .end local v0    # "dataFrame":Lio/netty/handler/codec/http2/Http2DataFrame;
    goto/16 :goto_3

    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2HeadersFrame;

    if-eqz v0, :cond_1

    .line 308
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2HeadersFrame;

    invoke-direct {p0, p1, v0, p3}, Lio/netty/handler/codec/http2/Http2FrameCodec;->writeHeadersFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2HeadersFrame;Lio/netty/channel/ChannelPromise;)V

    goto/16 :goto_3

    .line 309
    :cond_1
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2WindowUpdateFrame;

    if-eqz v0, :cond_3

    .line 310
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2WindowUpdateFrame;

    .line 311
    .local v0, "frame":Lio/netty/handler/codec/http2/Http2WindowUpdateFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2WindowUpdateFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v1

    .line 315
    .local v1, "frameStream":Lio/netty/handler/codec/http2/Http2FrameStream;
    if-nez v1, :cond_2

    .line 316
    :try_start_0
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2WindowUpdateFrame;->windowSizeIncrement()I

    move-result v2

    invoke-direct {p0, v2}, Lio/netty/handler/codec/http2/Http2FrameCodec;->increaseInitialConnectionWindow(I)V

    goto :goto_0

    .line 318
    :cond_2
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v2

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2WindowUpdateFrame;->windowSizeIncrement()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lio/netty/handler/codec/http2/Http2FrameCodec;->consumeBytes(II)Z

    .line 320
    :goto_0
    invoke-interface {p3}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    goto :goto_1

    .line 321
    :catchall_0
    move-exception v2

    .line 322
    .local v2, "t":Ljava/lang/Throwable;
    invoke-interface {p3, v2}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 324
    .end local v0    # "frame":Lio/netty/handler/codec/http2/Http2WindowUpdateFrame;
    .end local v1    # "frameStream":Lio/netty/handler/codec/http2/Http2FrameStream;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto/16 :goto_3

    :cond_3
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2ResetFrame;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 325
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2ResetFrame;

    .line 326
    .local v0, "rstFrame":Lio/netty/handler/codec/http2/Http2ResetFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ResetFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v2

    .line 329
    .local v2, "id":I
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v3

    invoke-interface {v3, v2}, Lio/netty/handler/codec/http2/Http2Connection;->streamMayHaveExisted(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 330
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v4

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ResetFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v6

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ResetFrame;->errorCode()J

    move-result-wide v7

    move-object v5, p1

    move-object v9, p3

    invoke-interface/range {v4 .. v9}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->writeRstStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_2

    .line 332
    :cond_4
    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 333
    nop

    .line 334
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ResetFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v3

    sget-object v4, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array v1, v1, [Ljava/lang/Object;

    .line 333
    const-string v5, "Stream never existed"

    invoke-static {v3, v4, v5, v1}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    invoke-interface {p3, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 336
    .end local v0    # "rstFrame":Lio/netty/handler/codec/http2/Http2ResetFrame;
    .end local v2    # "id":I
    :goto_2
    goto/16 :goto_3

    :cond_5
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2PingFrame;

    if-eqz v0, :cond_6

    .line 337
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2PingFrame;

    .line 338
    .local v0, "frame":Lio/netty/handler/codec/http2/Http2PingFrame;
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v1

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2PingFrame;->ack()Z

    move-result v3

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2PingFrame;->content()J

    move-result-wide v4

    move-object v2, p1

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->writePing(Lio/netty/channel/ChannelHandlerContext;ZJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 339
    .end local v0    # "frame":Lio/netty/handler/codec/http2/Http2PingFrame;
    goto/16 :goto_3

    :cond_6
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2SettingsFrame;

    if-eqz v0, :cond_7

    .line 340
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lio/netty/handler/codec/http2/Http2SettingsFrame;

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2SettingsFrame;->settings()Lio/netty/handler/codec/http2/Http2Settings;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->writeSettings(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto/16 :goto_3

    .line 341
    :cond_7
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2SettingsAckFrame;

    if-eqz v0, :cond_8

    .line 344
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->writeSettingsAck(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_3

    .line 345
    :cond_8
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    if-eqz v0, :cond_9

    .line 346
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    invoke-direct {p0, p1, v0, p3}, Lio/netty/handler/codec/http2/Http2FrameCodec;->writeGoAwayFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2GoAwayFrame;Lio/netty/channel/ChannelPromise;)V

    goto :goto_3

    .line 347
    :cond_9
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2PushPromiseFrame;

    if-eqz v0, :cond_a

    .line 348
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2PushPromiseFrame;

    .line 349
    .local v0, "pushPromiseFrame":Lio/netty/handler/codec/http2/Http2PushPromiseFrame;
    invoke-direct {p0, p1, v0, p3}, Lio/netty/handler/codec/http2/Http2FrameCodec;->writePushPromise(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2PushPromiseFrame;Lio/netty/channel/ChannelPromise;)V

    .line 350
    .end local v0    # "pushPromiseFrame":Lio/netty/handler/codec/http2/Http2PushPromiseFrame;
    goto :goto_3

    :cond_a
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2PriorityFrame;

    if-eqz v0, :cond_b

    .line 351
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2PriorityFrame;

    .line 352
    .local v0, "priorityFrame":Lio/netty/handler/codec/http2/Http2PriorityFrame;
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v1

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2PriorityFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v3

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2PriorityFrame;->streamDependency()I

    move-result v4

    .line 353
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2PriorityFrame;->weight()S

    move-result v5

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2PriorityFrame;->exclusive()Z

    move-result v6

    .line 352
    move-object v2, p1

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->writePriority(Lio/netty/channel/ChannelHandlerContext;IISZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 354
    .end local v0    # "priorityFrame":Lio/netty/handler/codec/http2/Http2PriorityFrame;
    goto :goto_3

    :cond_b
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2UnknownFrame;

    if-eqz v0, :cond_c

    .line 355
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2UnknownFrame;

    .line 356
    .local v0, "unknownFrame":Lio/netty/handler/codec/http2/Http2UnknownFrame;
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v1

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2UnknownFrame;->frameType()B

    move-result v3

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2UnknownFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v4

    .line 357
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2UnknownFrame;->flags()Lio/netty/handler/codec/http2/Http2Flags;

    move-result-object v5

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2UnknownFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v6

    .line 356
    move-object v2, p1

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->writeFrame(Lio/netty/channel/ChannelHandlerContext;BILio/netty/handler/codec/http2/Http2Flags;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 358
    .end local v0    # "unknownFrame":Lio/netty/handler/codec/http2/Http2UnknownFrame;
    goto :goto_3

    :cond_c
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2Frame;

    if-nez v0, :cond_d

    .line 359
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 364
    :goto_3
    return-void

    .line 361
    :cond_d
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 362
    new-instance v0, Lio/netty/handler/codec/UnsupportedMessageTypeException;

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v0, p2, v1}, Lio/netty/handler/codec/UnsupportedMessageTypeException;-><init>(Ljava/lang/Object;[Ljava/lang/Class;)V

    throw v0
.end method
