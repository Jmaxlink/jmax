.class final Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;
.super Ljava/lang/Object;
.source "DefaultHttp2ConnectionDecoder.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2FrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameReadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;


# direct methods
.method private constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;
    .param p2, "x1"    # Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$1;

    .line 257
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)V

    return-void
.end method

.method private applyLocalSettings(Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 12
    .param p1, "settings"    # Lio/netty/handler/codec/http2/Http2Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 491
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->pushEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 492
    .local v0, "pushEnabled":Ljava/lang/Boolean;
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$900(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameReader;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2FrameReader;->configuration()Lio/netty/handler/codec/http2/Http2FrameReader$Configuration;

    move-result-object v1

    .line 493
    .local v1, "config":Lio/netty/handler/codec/http2/Http2FrameReader$Configuration;
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2FrameReader$Configuration;->headersConfiguration()Lio/netty/handler/codec/http2/Http2HeadersDecoder$Configuration;

    move-result-object v2

    .line 494
    .local v2, "headerConfig":Lio/netty/handler/codec/http2/Http2HeadersDecoder$Configuration;
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2FrameReader$Configuration;->frameSizePolicy()Lio/netty/handler/codec/http2/Http2FrameSizePolicy;

    move-result-object v3

    .line 495
    .local v3, "frameSizePolicy":Lio/netty/handler/codec/http2/Http2FrameSizePolicy;
    if-eqz v0, :cond_1

    .line 496
    iget-object v4, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v4}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v4

    if-nez v4, :cond_0

    .line 499
    iget-object v4, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v4}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v4, v5}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->allowPushTo(Z)V

    goto :goto_0

    .line 497
    :cond_0
    sget-object v4, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Server sending SETTINGS frame with ENABLE_PUSH specified"

    invoke-static {v4, v6, v5}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v4

    throw v4

    .line 502
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->maxConcurrentStreams()Ljava/lang/Long;

    move-result-object v4

    .line 503
    .local v4, "maxConcurrentStreams":Ljava/lang/Long;
    if-eqz v4, :cond_2

    .line 504
    iget-object v5, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v5}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/32 v8, 0x7fffffff

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-interface {v5, v6}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->maxActiveStreams(I)V

    .line 507
    :cond_2
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->headerTableSize()Ljava/lang/Long;

    move-result-object v5

    .line 508
    .local v5, "headerTableSize":Ljava/lang/Long;
    if-eqz v5, :cond_3

    .line 509
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v2, v6, v7}, Lio/netty/handler/codec/http2/Http2HeadersDecoder$Configuration;->maxHeaderTableSize(J)V

    .line 512
    :cond_3
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->maxHeaderListSize()Ljava/lang/Long;

    move-result-object v6

    .line 513
    .local v6, "maxHeaderListSize":Ljava/lang/Long;
    if-eqz v6, :cond_4

    .line 514
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v9, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->calculateMaxHeaderListSizeGoAway(J)J

    move-result-wide v9

    invoke-interface {v2, v7, v8, v9, v10}, Lio/netty/handler/codec/http2/Http2HeadersDecoder$Configuration;->maxHeaderListSize(JJ)V

    .line 517
    :cond_4
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->maxFrameSize()Ljava/lang/Integer;

    move-result-object v7

    .line 518
    .local v7, "maxFrameSize":Ljava/lang/Integer;
    if-eqz v7, :cond_5

    .line 519
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v3, v8}, Lio/netty/handler/codec/http2/Http2FrameSizePolicy;->maxFrameSize(I)V

    .line 522
    :cond_5
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->initialWindowSize()Ljava/lang/Integer;

    move-result-object v8

    .line 523
    .local v8, "initialWindowSize":Ljava/lang/Integer;
    if-eqz v8, :cond_6

    .line 524
    iget-object v9, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-virtual {v9}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->flowController()Lio/netty/handler/codec/http2/Http2LocalFlowController;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->initialWindowSize(I)V

    .line 526
    :cond_6
    return-void
.end method

.method private shouldIgnoreHeadersOrDataFrame(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Stream;ZLjava/lang/String;)Z
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p4, "endOfStream"    # Z
    .param p5, "frameName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 640
    const/4 v0, 0x1

    if-nez p3, :cond_1

    .line 641
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->streamCreatedAfterGoAwaySent(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$1300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    .line 643
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, p5, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 642
    const-string v3, "{} ignoring {} frame for stream {}. Stream sent after GOAWAY sent"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    return v0

    .line 649
    :cond_0
    invoke-direct {p0, p2, p4, p5}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->verifyStreamMayHaveExisted(IZLjava/lang/String;)V

    .line 654
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    .line 655
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p5, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 654
    const-string v2, "Received %s frame for an unknown stream %d"

    invoke-static {p2, v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 657
    :cond_1
    invoke-interface {p3}, Lio/netty/handler/codec/http2/Http2Stream;->isResetSent()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->streamCreatedAfterGoAwaySent(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 672
    :cond_2
    return v2

    .line 663
    :cond_3
    :goto_0
    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$1300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 664
    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$1300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object p5, v3, v0

    .line 665
    invoke-interface {p3}, Lio/netty/handler/codec/http2/Http2Stream;->isResetSent()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "RST_STREAM sent."

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stream created after GOAWAY sent. Last known stream by peer "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 667
    invoke-static {v4}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->lastStreamKnownByPeer()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 v4, 0x2

    aput-object v2, v3, v4

    .line 664
    const-string v2, "{} ignoring {} frame for stream {}"

    invoke-interface {v1, v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    :cond_5
    return v0
.end method

.method private streamCreatedAfterGoAwaySent(I)Z
    .locals 2
    .param p1, "streamId"    # I

    .line 688
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    .line 689
    .local v0, "remote":Lio/netty/handler/codec/http2/Http2Connection$Endpoint;, "Lio/netty/handler/codec/http2/Http2Connection$Endpoint<*>;"
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->goAwaySent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->isValidStreamId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->lastStreamKnownByPeer()I

    move-result v1

    if-le p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 689
    :goto_0
    return v1
.end method

.method private verifyStreamMayHaveExisted(IZLjava/lang/String;)V
    .locals 3
    .param p1, "streamId"    # I
    .param p2, "endOfStream"    # Z
    .param p3, "frameName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 695
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2Connection;->streamMayHaveExisted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    return-void

    .line 696
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 698
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, p3, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 696
    const-string v2, "Stream %d does not exist for inbound frame %s, endOfStream = %b"

    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I
    .locals 19
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "data"    # Lio/netty/buffer/ByteBuf;
    .param p4, "padding"    # I
    .param p5, "endOfStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 261
    move-object/from16 v7, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    iget-object v0, v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, v8}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v12

    .line 262
    .local v12, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    iget-object v0, v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->flowController()Lio/netty/handler/codec/http2/Http2LocalFlowController;

    move-result-object v13

    .line 263
    .local v13, "flowController":Lio/netty/handler/codec/http2/Http2LocalFlowController;
    invoke-virtual/range {p3 .. p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v14

    .line 264
    .local v14, "readable":I
    add-int v15, v14, v10

    .line 268
    .local v15, "bytesToReturn":I
    :try_start_0
    const-string v6, "DATA"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v12

    move/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->shouldIgnoreHeadersOrDataFrame(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Stream;ZLjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move/from16 v16, v0

    .line 277
    .local v16, "shouldIgnore":Z
    nop

    .line 279
    if-eqz v16, :cond_0

    .line 282
    invoke-interface {v13, v12, v9, v10, v11}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->receiveFlowControlledFrame(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/buffer/ByteBuf;IZ)V

    .line 283
    invoke-interface {v13, v12, v15}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z

    .line 286
    const-string v0, "DATA"

    invoke-direct {v7, v8, v11, v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->verifyStreamMayHaveExisted(IZLjava/lang/String;)V

    .line 289
    return v15

    .line 291
    :cond_0
    const/4 v0, 0x0

    .line 292
    .local v0, "error":Lio/netty/handler/codec/http2/Http2Exception;
    sget-object v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$1;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2Stream$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "Stream %d in unexpected state: %s"

    packed-switch v1, :pswitch_data_0

    .line 302
    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v1

    sget-object v3, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 303
    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 302
    invoke-static {v1, v3, v2, v4}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_0

    .line 298
    :pswitch_0
    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v1

    sget-object v3, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    .line 299
    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 298
    invoke-static {v1, v3, v2, v4}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    .line 300
    move-object/from16 v17, v0

    goto :goto_0

    .line 295
    :pswitch_1
    move-object/from16 v17, v0

    .line 307
    .end local v0    # "error":Lio/netty/handler/codec/http2/Http2Exception;
    .local v17, "error":Lio/netty/handler/codec/http2/Http2Exception;
    :goto_0
    iget-object v0, v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0, v12}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$200(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Stream;)I

    move-result v1

    .line 309
    .local v1, "unconsumedBytes":I
    :try_start_1
    invoke-interface {v13, v12, v9, v10, v11}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->receiveFlowControlledFrame(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/buffer/ByteBuf;IZ)V

    .line 311
    iget-object v0, v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0, v12}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$200(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Stream;)I

    move-result v0
    :try_end_1
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v18, v0

    .line 314
    .end local v1    # "unconsumedBytes":I
    .local v18, "unconsumedBytes":I
    if-nez v17, :cond_2

    .line 318
    :try_start_2
    iget-object v0, v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0, v12, v14, v11}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$300(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Stream;IZ)V

    .line 322
    iget-object v0, v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2FrameListener;->onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I

    move-result v0

    move v15, v0

    .line 324
    if-eqz v11, :cond_1

    .line 325
    iget-object v0, v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$500(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2LifecycleManager;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->newSucceededFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->closeStreamRemote(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V
    :try_end_2
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    :cond_1
    nop

    .line 345
    invoke-interface {v13, v12, v15}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z

    .line 328
    return v15

    .line 345
    :catchall_0
    move-exception v0

    move/from16 v1, v18

    goto :goto_3

    .line 336
    :catch_0
    move-exception v0

    move/from16 v1, v18

    goto :goto_1

    .line 329
    :catch_1
    move-exception v0

    move/from16 v1, v18

    goto :goto_2

    .line 315
    :cond_2
    nop

    .end local v12    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .end local v13    # "flowController":Lio/netty/handler/codec/http2/Http2LocalFlowController;
    .end local v14    # "readable":I
    .end local v15    # "bytesToReturn":I
    .end local v16    # "shouldIgnore":Z
    .end local v18    # "unconsumedBytes":I
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "streamId":I
    .end local p3    # "data":Lio/netty/buffer/ByteBuf;
    .end local p4    # "padding":I
    .end local p5    # "endOfStream":Z
    :try_start_3
    throw v17
    :try_end_3
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    .restart local v1    # "unconsumedBytes":I
    .restart local v12    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .restart local v13    # "flowController":Lio/netty/handler/codec/http2/Http2LocalFlowController;
    .restart local v14    # "readable":I
    .restart local v15    # "bytesToReturn":I
    .restart local v16    # "shouldIgnore":Z
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "streamId":I
    .restart local p3    # "data":Lio/netty/buffer/ByteBuf;
    .restart local p4    # "padding":I
    .restart local p5    # "endOfStream":Z
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 336
    :catch_2
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    :try_start_4
    iget-object v2, v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v2, v12}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$200(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Stream;)I

    move-result v2

    sub-int v2, v1, v2

    .line 341
    .local v2, "delta":I
    sub-int/2addr v15, v2

    .line 342
    nop

    .end local v1    # "unconsumedBytes":I
    .end local v12    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .end local v13    # "flowController":Lio/netty/handler/codec/http2/Http2LocalFlowController;
    .end local v14    # "readable":I
    .end local v15    # "bytesToReturn":I
    .end local v16    # "shouldIgnore":Z
    .end local v17    # "error":Lio/netty/handler/codec/http2/Http2Exception;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "streamId":I
    .end local p3    # "data":Lio/netty/buffer/ByteBuf;
    .end local p4    # "padding":I
    .end local p5    # "endOfStream":Z
    throw v0

    .line 329
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "delta":I
    .restart local v1    # "unconsumedBytes":I
    .restart local v12    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .restart local v13    # "flowController":Lio/netty/handler/codec/http2/Http2LocalFlowController;
    .restart local v14    # "readable":I
    .restart local v15    # "bytesToReturn":I
    .restart local v16    # "shouldIgnore":Z
    .restart local v17    # "error":Lio/netty/handler/codec/http2/Http2Exception;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "streamId":I
    .restart local p3    # "data":Lio/netty/buffer/ByteBuf;
    .restart local p4    # "padding":I
    .restart local p5    # "endOfStream":Z
    :catch_3
    move-exception v0

    .line 333
    .local v0, "e":Lio/netty/handler/codec/http2/Http2Exception;
    :goto_2
    iget-object v2, v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v2, v12}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$200(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Stream;)I

    move-result v2

    sub-int v2, v1, v2

    .line 334
    .restart local v2    # "delta":I
    sub-int/2addr v15, v2

    .line 335
    nop

    .end local v1    # "unconsumedBytes":I
    .end local v12    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .end local v13    # "flowController":Lio/netty/handler/codec/http2/Http2LocalFlowController;
    .end local v14    # "readable":I
    .end local v15    # "bytesToReturn":I
    .end local v16    # "shouldIgnore":Z
    .end local v17    # "error":Lio/netty/handler/codec/http2/Http2Exception;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "streamId":I
    .end local p3    # "data":Lio/netty/buffer/ByteBuf;
    .end local p4    # "padding":I
    .end local p5    # "endOfStream":Z
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 345
    .end local v0    # "e":Lio/netty/handler/codec/http2/Http2Exception;
    .end local v2    # "delta":I
    .restart local v1    # "unconsumedBytes":I
    .restart local v12    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .restart local v13    # "flowController":Lio/netty/handler/codec/http2/Http2LocalFlowController;
    .restart local v14    # "readable":I
    .restart local v15    # "bytesToReturn":I
    .restart local v16    # "shouldIgnore":Z
    .restart local v17    # "error":Lio/netty/handler/codec/http2/Http2Exception;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "streamId":I
    .restart local p3    # "data":Lio/netty/buffer/ByteBuf;
    .restart local p4    # "padding":I
    .restart local p5    # "endOfStream":Z
    :goto_3
    invoke-interface {v13, v12, v15}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z

    .line 346
    throw v0

    .line 275
    .end local v1    # "unconsumedBytes":I
    .end local v16    # "shouldIgnore":Z
    .end local v17    # "error":Lio/netty/handler/codec/http2/Http2Exception;
    :catchall_2
    move-exception v0

    .line 276
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Unhandled error on data stream id %d"

    invoke-static {v1, v0, v3, v2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    throw v1

    .line 269
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_4
    move-exception v0

    .line 272
    .local v0, "e":Lio/netty/handler/codec/http2/Http2Exception;
    invoke-interface {v13, v12, v9, v10, v11}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->receiveFlowControlledFrame(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/buffer/ByteBuf;IZ)V

    .line 273
    invoke-interface {v13, v12, v15}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z

    .line 274
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onGoAwayRead(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "lastStreamId"    # I
    .param p3, "errorCode"    # J
    .param p5, "debugData"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->onGoAwayRead0(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;)V

    .line 610
    return-void
.end method

.method public onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V
    .locals 19
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "streamDependency"    # I
    .param p5, "weight"    # S
    .param p6, "exclusive"    # Z
    .param p7, "padding"    # I
    .param p8, "endOfStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 358
    move-object/from16 v7, p0

    move/from16 v15, p2

    move-object/from16 v14, p3

    move/from16 v13, p8

    iget-object v0, v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, v15}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 359
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    const/4 v1, 0x0

    .line 360
    .local v1, "allowHalfClosedRemote":Z
    const/4 v2, 0x0

    .line 361
    .local v2, "isTrailers":Z
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v0, :cond_1

    iget-object v3, v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v3}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v3

    invoke-interface {v3, v15}, Lio/netty/handler/codec/http2/Http2Connection;->streamMayHaveExisted(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 362
    iget-object v3, v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v3}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v3

    invoke-interface {v3, v15, v13}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->createStream(IZ)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 364
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_REMOTE:Lio/netty/handler/codec/http2/Http2Stream$State;

    if-ne v3, v4, :cond_0

    move v3, v8

    goto :goto_0

    :cond_0
    move v3, v9

    :goto_0
    move v1, v3

    move-object v12, v0

    move/from16 v17, v1

    move/from16 v18, v2

    goto :goto_1

    .line 365
    :cond_1
    if-eqz v0, :cond_2

    .line 366
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->isHeadersReceived()Z

    move-result v2

    move-object v12, v0

    move/from16 v17, v1

    move/from16 v18, v2

    goto :goto_1

    .line 365
    :cond_2
    move-object v12, v0

    move/from16 v17, v1

    move/from16 v18, v2

    .line 369
    .end local v0    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .end local v1    # "allowHalfClosedRemote":Z
    .end local v2    # "isTrailers":Z
    .local v12, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .local v17, "allowHalfClosedRemote":Z
    .local v18, "isTrailers":Z
    :goto_1
    const-string v6, "HEADERS"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v12

    move/from16 v5, p8

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->shouldIgnoreHeadersOrDataFrame(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Stream;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 370
    return-void

    .line 373
    :cond_3
    iget-object v0, v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v0

    if-nez v0, :cond_4

    .line 374
    invoke-interface/range {p3 .. p3}, Lio/netty/handler/codec/http2/Http2Headers;->status()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpStatusClass;->valueOf(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpStatusClass;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpStatusClass;->INFORMATIONAL:Lio/netty/handler/codec/http/HttpStatusClass;

    if-ne v0, v1, :cond_4

    move v0, v8

    goto :goto_2

    :cond_4
    move v0, v9

    :goto_2
    move v1, v0

    .line 375
    .local v1, "isInformational":Z
    if-nez v1, :cond_5

    if-nez v13, :cond_6

    :cond_5
    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->isHeadersReceived()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_6
    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->isTrailersReceived()Z

    move-result v0

    if-nez v0, :cond_e

    .line 381
    sget-object v0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$1;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2Stream$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const-string v2, "Stream %d in unexpected state: %s"

    packed-switch v0, :pswitch_data_0

    .line 400
    move-object v6, v12

    .end local v12    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .local v6, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    invoke-interface {v6}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 401
    invoke-interface {v6}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    .line 400
    invoke-static {v0, v2, v9}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 383
    .end local v6    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .restart local v12    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    :pswitch_0
    invoke-interface {v12, v13}, Lio/netty/handler/codec/http2/Http2Stream;->open(Z)Lio/netty/handler/codec/http2/Http2Stream;

    .line 384
    goto :goto_3

    .line 396
    :pswitch_1
    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v0

    sget-object v3, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    .line 397
    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 396
    invoke-static {v0, v3, v2, v4}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 390
    :pswitch_2
    if-eqz v17, :cond_7

    goto :goto_3

    .line 391
    :cond_7
    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v0

    sget-object v3, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    .line 392
    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 391
    invoke-static {v0, v3, v2, v4}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 388
    :pswitch_3
    nop

    .line 404
    :goto_3
    if-nez v18, :cond_9

    .line 406
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-interface {v14, v0}, Lio/netty/handler/codec/http2/Http2Headers;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 407
    .local v2, "contentLength":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/CharSequence;>;"
    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 409
    :try_start_0
    invoke-static {v2, v9, v8}, Lio/netty/handler/codec/http/HttpUtil;->normalizeAndGetContentLength(Ljava/util/List;ZZ)J

    move-result-wide v3

    .line 410
    .local v3, "cLength":J
    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_8

    .line 411
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-interface {v14, v0, v3, v4}, Lio/netty/handler/codec/http2/Http2Headers;->setLong(Ljava/lang/Object;J)Lio/netty/handler/codec/Headers;

    .line 412
    iget-object v0, v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$600(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    new-instance v5, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;

    invoke-direct {v5, v3, v4}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;-><init>(J)V

    invoke-interface {v12, v0, v5}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v3    # "cLength":J
    :cond_8
    goto :goto_5

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v3

    sget-object v4, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v5, "Multiple content-length headers received"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v5, v6}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v3

    throw v3

    .line 419
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "contentLength":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/CharSequence;>;"
    :cond_9
    iget-object v0, v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$700(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface/range {p3 .. p3}, Lio/netty/handler/codec/http2/Http2Headers;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 422
    nop

    .line 423
    invoke-interface/range {p3 .. p3}, Lio/netty/handler/codec/http2/Http2Headers;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 424
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 425
    .local v2, "name":Ljava/lang/CharSequence;
    invoke-static {v2}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->hasPseudoHeaderFormat(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 429
    .end local v2    # "name":Ljava/lang/CharSequence;
    goto :goto_4

    .line 426
    .restart local v2    # "name":Ljava/lang/CharSequence;
    :cond_a
    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v3

    sget-object v4, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v5, "Found invalid Pseudo-Header in trailers: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v3

    throw v3

    .line 419
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;>;"
    .end local v2    # "name":Ljava/lang/CharSequence;
    :cond_b
    :goto_5
    nop

    .line 432
    :cond_c
    invoke-interface {v12, v1}, Lio/netty/handler/codec/http2/Http2Stream;->headersReceived(Z)Lio/netty/handler/codec/http2/Http2Stream;

    .line 433
    iget-object v0, v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0, v12, v9, v13}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$300(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Stream;IZ)V

    .line 434
    iget-object v0, v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$800(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    move-result-object v0

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-interface {v0, v15, v3, v4, v5}, Lio/netty/handler/codec/http2/Http2RemoteFlowController;->updateDependencyTree(IISZ)V

    .line 435
    iget-object v0, v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v8

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object v6, v12

    .end local v12    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .restart local v6    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move v2, v15

    move/from16 v15, p7

    move/from16 v16, p8

    invoke-interface/range {v8 .. v16}, Lio/netty/handler/codec/http2/Http2FrameListener;->onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V

    .line 438
    if-eqz p8, :cond_d

    .line 439
    iget-object v0, v7, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$500(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2LifecycleManager;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->newSucceededFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->closeStreamRemote(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V

    .line 441
    :cond_d
    return-void

    .line 375
    .end local v6    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .restart local v12    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    :cond_e
    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v12

    move v8, v15

    .line 376
    .end local v12    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .restart local v6    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 378
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v6}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v10

    filled-new-array {v2, v9, v10}, [Ljava/lang/Object;

    move-result-object v2

    .line 376
    const-string v9, "Stream %d received too many headers EOS: %s state: %s"

    invoke-static {v8, v0, v9, v2}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZ)V
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "padding"    # I
    .param p5, "endOfStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 352
    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V

    .line 353
    return-void
.end method

.method public onPingAckRead(Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "data"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2FrameListener;->onPingAckRead(Lio/netty/channel/ChannelHandlerContext;J)V

    .line 556
    return-void
.end method

.method public onPingRead(Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "data"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$1100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$800(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v6

    move-object v2, p1

    move-wide v4, p2

    invoke-interface/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->writePing(Lio/netty/channel/ChannelHandlerContext;ZJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 550
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2FrameListener;->onPingRead(Lio/netty/channel/ChannelHandlerContext;J)V

    .line 551
    return-void
.end method

.method public onPriorityRead(Lio/netty/channel/ChannelHandlerContext;IISZ)V
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "streamDependency"    # I
    .param p4, "weight"    # S
    .param p5, "exclusive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$800(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4, p5}, Lio/netty/handler/codec/http2/Http2RemoteFlowController;->updateDependencyTree(IISZ)V

    .line 448
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2FrameListener;->onPriorityRead(Lio/netty/channel/ChannelHandlerContext;IISZ)V

    .line 449
    return-void
.end method

.method public onPushPromiseRead(Lio/netty/channel/ChannelHandlerContext;IILio/netty/handler/codec/http2/Http2Headers;I)V
    .locals 8
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "promisedStreamId"    # I
    .param p4, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p5, "padding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v0

    if-nez v0, :cond_4

    .line 566
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 568
    .local v0, "parentStream":Lio/netty/handler/codec/http2/Http2Stream;
    const/4 v5, 0x0

    const-string v6, "PUSH_PROMISE"

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->shouldIgnoreHeadersOrDataFrame(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Stream;ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    return-void

    .line 572
    :cond_0
    sget-object v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$1;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2Stream$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 579
    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 581
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 579
    const-string v3, "Stream %d in unexpected state for receiving push promise: %s"

    invoke-static {v1, v3, v2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    throw v1

    .line 576
    :pswitch_0
    nop

    .line 584
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$1200(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;->isAuthoritative(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 589
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$1200(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;

    move-result-object v1

    invoke-interface {v1, p4}, Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;->isCacheable(Lio/netty/handler/codec/http2/Http2Headers;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 594
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$1200(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;

    move-result-object v1

    invoke-interface {v1, p4}, Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;->isSafe(Lio/netty/handler/codec/http2/Http2Headers;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->reservePushStream(ILio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/Http2Stream;

    .line 603
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lio/netty/handler/codec/http2/Http2FrameListener;->onPushPromiseRead(Lio/netty/channel/ChannelHandlerContext;IILio/netty/handler/codec/http2/Http2Headers;I)V

    .line 604
    return-void

    .line 595
    :cond_1
    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 597
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 595
    const-string v3, "Promised request on stream %d for promised stream %d is not known to be safe"

    invoke-static {p3, v1, v3, v2}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    throw v1

    .line 590
    :cond_2
    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 592
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 590
    const-string v3, "Promised request on stream %d for promised stream %d is not known to be cacheable"

    invoke-static {p3, v1, v3, v2}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    throw v1

    .line 585
    :cond_3
    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 587
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 585
    const-string v3, "Promised request on stream %d for promised stream %d is not authoritative"

    invoke-static {p3, v1, v3, v2}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    throw v1

    .line 563
    .end local v0    # "parentStream":Lio/netty/handler/codec/http2/Http2Stream;
    :cond_4
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "A client cannot push."

    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onRstStreamRead(Lio/netty/channel/ChannelHandlerContext;IJ)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "errorCode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 454
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    if-nez v0, :cond_0

    .line 455
    const/4 v1, 0x0

    const-string v2, "RST_STREAM"

    invoke-direct {p0, p2, v1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->verifyStreamMayHaveExisted(IZLjava/lang/String;)V

    .line 456
    return-void

    .line 459
    :cond_0
    sget-object v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$1;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2Stream$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 468
    :pswitch_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/Http2FrameListener;->onRstStreamRead(Lio/netty/channel/ChannelHandlerContext;IJ)V

    .line 470
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$500(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2LifecycleManager;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newSucceededFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->closeStream(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V

    .line 471
    return-void

    .line 461
    :pswitch_1
    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "RST_STREAM received for IDLE stream %d"

    invoke-static {v1, v3, v2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    throw v1

    .line 463
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSettingsAckRead(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$800(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->pollSentSettings()Lio/netty/handler/codec/http2/Http2Settings;

    move-result-object v0

    .line 478
    .local v0, "settings":Lio/netty/handler/codec/http2/Http2Settings;
    if-eqz v0, :cond_0

    .line 479
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->applyLocalSettings(Lio/netty/handler/codec/http2/Http2Settings;)V

    .line 482
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/netty/handler/codec/http2/Http2FrameListener;->onSettingsAckRead(Lio/netty/channel/ChannelHandlerContext;)V

    .line 483
    return-void
.end method

.method public onSettingsRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "settings"    # Lio/netty/handler/codec/http2/Http2Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$1000(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2SettingsReceivedConsumer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$800(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->writeSettingsAck(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 536
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$800(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->remoteSettings(Lio/netty/handler/codec/http2/Http2Settings;)V

    goto :goto_0

    .line 538
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$1000(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2SettingsReceivedConsumer;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2SettingsReceivedConsumer;->consumeReceivedSettings(Lio/netty/handler/codec/http2/Http2Settings;)V

    .line 541
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameListener;->onSettingsRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;)V

    .line 542
    return-void
.end method

.method public onUnknownFrame(Lio/netty/channel/ChannelHandlerContext;BILio/netty/handler/codec/http2/Http2Flags;Lio/netty/buffer/ByteBuf;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "frameType"    # B
    .param p3, "streamId"    # I
    .param p4, "flags"    # Lio/netty/handler/codec/http2/Http2Flags;
    .param p5, "payload"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->onUnknownFrame0(Lio/netty/channel/ChannelHandlerContext;BILio/netty/handler/codec/http2/Http2Flags;Lio/netty/buffer/ByteBuf;)V

    .line 632
    return-void
.end method

.method public onWindowUpdateRead(Lio/netty/channel/ChannelHandlerContext;II)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "windowSizeIncrement"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 615
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 616
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http2/Http2Stream$State;->CLOSED:Lio/netty/handler/codec/http2/Http2Stream$State;

    if-eq v1, v2, :cond_1

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->streamCreatedAfterGoAwaySent(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 623
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$800(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Lio/netty/handler/codec/http2/Http2RemoteFlowController;->incrementWindowSize(Lio/netty/handler/codec/http2/Http2Stream;I)V

    .line 625
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;)Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2FrameListener;->onWindowUpdateRead(Lio/netty/channel/ChannelHandlerContext;II)V

    .line 626
    return-void

    .line 618
    :cond_1
    :goto_0
    const/4 v1, 0x0

    const-string v2, "WINDOW_UPDATE"

    invoke-direct {p0, p2, v1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$FrameReadListener;->verifyStreamMayHaveExisted(IZLjava/lang/String;)V

    .line 619
    return-void
.end method
