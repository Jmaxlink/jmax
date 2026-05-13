.class public abstract Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
.super Ljava/lang/Object;
.source "AbstractHttp2ConnectionHandlerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/netty/handler/codec/http2/Http2ConnectionHandler;",
        "B:",
        "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<",
        "TT;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_HEADER_SENSITIVITY_DETECTOR:Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

.field private static final DEFAULT_MAX_RST_FRAMES_PER_CONNECTION_FOR_SERVER:I = 0xc8


# instance fields
.field private autoAckPingFrame:Z

.field private autoAckSettingsFrame:Z

.field private connection:Lio/netty/handler/codec/http2/Http2Connection;

.field private decoder:Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

.field private decoupleCloseAndGoAway:Z

.field private encoder:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

.field private encoderEnforceMaxConcurrentStreams:Ljava/lang/Boolean;

.field private encoderIgnoreMaxHeaderListSize:Ljava/lang/Boolean;

.field private flushPreface:Z

.field private frameListener:Lio/netty/handler/codec/http2/Http2FrameListener;

.field private frameLogger:Lio/netty/handler/codec/http2/Http2FrameLogger;

.field private gracefulShutdownTimeoutMillis:J

.field private headerSensitivityDetector:Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

.field private initialSettings:Lio/netty/handler/codec/http2/Http2Settings;

.field private isServer:Ljava/lang/Boolean;

.field private maxConsecutiveEmptyFrames:I

.field private maxQueuedControlFrames:I

.field private maxReservedStreams:Ljava/lang/Integer;

.field private maxRstFramesPerWindow:Ljava/lang/Integer;

.field private promisedRequestVerifier:Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;

.field private secondsPerWindow:I

.field private validateHeaders:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    nop

    .line 78
    sget-object v0, Lio/netty/handler/codec/http2/Http2HeadersEncoder;->NEVER_SENSITIVE:Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    sput-object v0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->DEFAULT_HEADER_SENSITIVITY_DETECTOR:Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 75
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Lio/netty/handler/codec/http2/Http2Settings;->defaultSettings()Lio/netty/handler/codec/http2/Http2Settings;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->initialSettings:Lio/netty/handler/codec/http2/Http2Settings;

    .line 85
    sget-wide v0, Lio/netty/handler/codec/http2/Http2CodecUtil;->DEFAULT_GRACEFUL_SHUTDOWN_TIMEOUT_MILLIS:J

    iput-wide v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->gracefulShutdownTimeoutMillis:J

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->flushPreface:Z

    .line 109
    sget-object v1, Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;->ALWAYS_VERIFY:Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;

    iput-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->promisedRequestVerifier:Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;

    .line 110
    iput-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->autoAckSettingsFrame:Z

    .line 111
    iput-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->autoAckPingFrame:Z

    .line 112
    const/16 v0, 0x2710

    iput v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxQueuedControlFrames:I

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxConsecutiveEmptyFrames:I

    .line 115
    const/16 v0, 0x1e

    iput v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->secondsPerWindow:I

    return-void
.end method

.method private buildFromCodec(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)Lio/netty/handler/codec/http2/Http2ConnectionHandler;
    .locals 5
    .param p1, "decoder"    # Lio/netty/handler/codec/http2/Http2ConnectionDecoder;
    .param p2, "encoder"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http2/Http2ConnectionDecoder;",
            "Lio/netty/handler/codec/http2/Http2ConnectionEncoder;",
            ")TT;"
        }
    .end annotation

    .line 593
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->decoderEnforceMaxConsecutiveEmptyDataFrames()I

    move-result v0

    .line 594
    .local v0, "maxConsecutiveEmptyDataFrames":I
    if-lez v0, :cond_0

    .line 595
    new-instance v1, Lio/netty/handler/codec/http2/Http2EmptyDataFrameConnectionDecoder;

    invoke-direct {v1, p1, v0}, Lio/netty/handler/codec/http2/Http2EmptyDataFrameConnectionDecoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;I)V

    move-object p1, v1

    .line 598
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxRstFramesPerWindow:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 600
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->isServer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    const/16 v1, 0xc8

    .local v1, "maxRstFrames":I
    goto :goto_0

    .line 603
    .end local v1    # "maxRstFrames":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "maxRstFrames":I
    goto :goto_0

    .line 606
    .end local v1    # "maxRstFrames":I
    :cond_2
    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxRstFramesPerWindow:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 608
    .restart local v1    # "maxRstFrames":I
    :goto_0
    if-lez v1, :cond_3

    iget v2, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->secondsPerWindow:I

    if-lez v2, :cond_3

    .line 609
    new-instance v2, Lio/netty/handler/codec/http2/Http2MaxRstFrameDecoder;

    iget v3, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->secondsPerWindow:I

    invoke-direct {v2, p1, v1, v3}, Lio/netty/handler/codec/http2/Http2MaxRstFrameDecoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;II)V

    move-object p1, v2

    .line 614
    :cond_3
    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->initialSettings:Lio/netty/handler/codec/http2/Http2Settings;

    invoke-virtual {p0, p1, p2, v2}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->build(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    .local v2, "handler":Lio/netty/handler/codec/http2/Http2ConnectionHandler;, "TT;"
    nop

    .line 622
    iget-wide v3, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->gracefulShutdownTimeoutMillis:J

    invoke-virtual {v2, v3, v4}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->gracefulShutdownTimeoutMillis(J)V

    .line 623
    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->decoder()Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2ConnectionDecoder;->frameListener()Lio/netty/handler/codec/http2/Http2FrameListener;

    move-result-object v3

    if-nez v3, :cond_4

    .line 624
    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->decoder()Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    move-result-object v3

    iget-object v4, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->frameListener:Lio/netty/handler/codec/http2/Http2FrameListener;

    invoke-interface {v3, v4}, Lio/netty/handler/codec/http2/Http2ConnectionDecoder;->frameListener(Lio/netty/handler/codec/http2/Http2FrameListener;)V

    .line 626
    :cond_4
    return-object v2

    .line 615
    .end local v2    # "handler":Lio/netty/handler/codec/http2/Http2ConnectionHandler;, "TT;"
    :catchall_0
    move-exception v2

    .line 616
    .local v2, "t":Ljava/lang/Throwable;
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->close()V

    .line 617
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2ConnectionDecoder;->close()V

    .line 618
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "failed to build an Http2ConnectionHandler"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private buildFromConnection(Lio/netty/handler/codec/http2/Http2Connection;)Lio/netty/handler/codec/http2/Http2ConnectionHandler;
    .locals 14
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http2/Http2Connection;",
            ")TT;"
        }
    .end annotation

    .line 557
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->initialSettings:Lio/netty/handler/codec/http2/Http2Settings;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Settings;->maxHeaderListSize()Ljava/lang/Long;

    move-result-object v0

    .line 558
    .local v0, "maxHeaderListSize":Ljava/lang/Long;
    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;

    new-instance v2, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->isValidateHeaders()Z

    move-result v3

    if-nez v0, :cond_0

    const-wide/16 v4, 0x2000

    goto :goto_0

    .line 559
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_0
    const/4 v6, -0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;-><init>(ZJI)V

    invoke-direct {v1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;-><init>(Lio/netty/handler/codec/http2/Http2HeadersDecoder;)V

    .line 561
    .local v1, "reader":Lio/netty/handler/codec/http2/Http2FrameReader;
    iget-object v2, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoderIgnoreMaxHeaderListSize:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    new-instance v2, Lio/netty/handler/codec/http2/DefaultHttp2FrameWriter;

    .line 562
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->headerSensitivityDetector()Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/netty/handler/codec/http2/DefaultHttp2FrameWriter;-><init>(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lio/netty/handler/codec/http2/DefaultHttp2FrameWriter;

    .line 563
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->headerSensitivityDetector()Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    move-result-object v3

    iget-object v4, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoderIgnoreMaxHeaderListSize:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {v2, v3, v4}, Lio/netty/handler/codec/http2/DefaultHttp2FrameWriter;-><init>(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;Z)V

    :goto_1
    nop

    .line 565
    .local v2, "writer":Lio/netty/handler/codec/http2/Http2FrameWriter;
    iget-object v3, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->frameLogger:Lio/netty/handler/codec/http2/Http2FrameLogger;

    if-eqz v3, :cond_2

    .line 566
    new-instance v3, Lio/netty/handler/codec/http2/Http2InboundFrameLogger;

    iget-object v4, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->frameLogger:Lio/netty/handler/codec/http2/Http2FrameLogger;

    invoke-direct {v3, v1, v4}, Lio/netty/handler/codec/http2/Http2InboundFrameLogger;-><init>(Lio/netty/handler/codec/http2/Http2FrameReader;Lio/netty/handler/codec/http2/Http2FrameLogger;)V

    move-object v1, v3

    .line 567
    new-instance v3, Lio/netty/handler/codec/http2/Http2OutboundFrameLogger;

    iget-object v4, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->frameLogger:Lio/netty/handler/codec/http2/Http2FrameLogger;

    invoke-direct {v3, v2, v4}, Lio/netty/handler/codec/http2/Http2OutboundFrameLogger;-><init>(Lio/netty/handler/codec/http2/Http2FrameWriter;Lio/netty/handler/codec/http2/Http2FrameLogger;)V

    move-object v2, v3

    .line 570
    :cond_2
    new-instance v3, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;

    invoke-direct {v3, p1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;-><init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2FrameWriter;)V

    .line 571
    .local v3, "encoder":Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoderEnforceMaxConcurrentStreams()Z

    move-result v11

    .line 573
    .local v11, "encoderEnforceMaxConcurrentStreams":Z
    iget v4, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxQueuedControlFrames:I

    if-eqz v4, :cond_3

    .line 574
    new-instance v4, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;

    iget v5, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxQueuedControlFrames:I

    invoke-direct {v4, v3, v5}, Lio/netty/handler/codec/http2/Http2ControlFrameLimitEncoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;I)V

    move-object v3, v4

    .line 576
    :cond_3
    if-eqz v11, :cond_5

    .line 577
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v4

    if-nez v4, :cond_4

    .line 584
    new-instance v4, Lio/netty/handler/codec/http2/StreamBufferingEncoder;

    invoke-direct {v4, v3}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)V

    move-object v3, v4

    move-object v12, v3

    goto :goto_2

    .line 578
    :cond_4
    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->close()V

    .line 579
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2FrameReader;->close()V

    .line 580
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoderEnforceMaxConcurrentStreams: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not supported for server"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 576
    :cond_5
    move-object v12, v3

    .line 587
    .end local v3    # "encoder":Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .local v12, "encoder":Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    :goto_2
    new-instance v13, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 588
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->promisedRequestVerifier()Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;

    move-result-object v7

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->isAutoAckSettingsFrame()Z

    move-result v8

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->isAutoAckPingFrame()Z

    move-result v9

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->isValidateHeaders()Z

    move-result v10

    move-object v3, v13

    move-object v4, p1

    move-object v5, v12

    move-object v6, v1

    invoke-direct/range {v3 .. v10}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;-><init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2FrameReader;Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;ZZZ)V

    .line 589
    .local v3, "decoder":Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;
    invoke-direct {p0, v3, v12}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->buildFromCodec(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    move-result-object v4

    return-object v4
.end method

.method private static enforceConstraint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "rejectorName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 655
    if-nez p2, :cond_0

    .line 659
    return-void

    .line 656
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() cannot be called because "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() has been called already."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceNonCodecConstraints(Ljava/lang/String;)V
    .locals 2
    .param p1, "rejected"    # Ljava/lang/String;

    .line 650
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->decoder:Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    const-string v1, "server/connection"

    invoke-static {p1, v1, v0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceConstraint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 651
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoder:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    invoke-static {p1, v1, v0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceConstraint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 652
    return-void
.end method


# virtual methods
.method protected autoAckPingFrame(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "autoAckPingFrame"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 478
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    const-string v0, "autoAckPingFrame"

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceNonCodecConstraints(Ljava/lang/String;)V

    .line 479
    iput-boolean p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->autoAckPingFrame:Z

    .line 480
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected autoAckSettingsFrame(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "autoAckSettings"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 460
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    const-string v0, "autoAckSettingsFrame"

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceNonCodecConstraints(Ljava/lang/String;)V

    .line 461
    iput-boolean p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->autoAckSettingsFrame:Z

    .line 462
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lio/netty/handler/codec/http2/Http2ConnectionHandler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 543
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoder:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->decoder:Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->decoder:Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoder:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->buildFromCodec(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    move-result-object v0

    return-object v0

    .line 544
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 548
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    .line 549
    .local v0, "connection":Lio/netty/handler/codec/http2/Http2Connection;
    if-nez v0, :cond_2

    .line 550
    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->isServer()Z

    move-result v2

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxReservedStreams()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;-><init>(ZI)V

    move-object v0, v1

    .line 553
    :cond_2
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->buildFromConnection(Lio/netty/handler/codec/http2/Http2Connection;)Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    move-result-object v1

    return-object v1
.end method

.method protected abstract build(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/Http2ConnectionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http2/Http2ConnectionDecoder;",
            "Lio/netty/handler/codec/http2/Http2ConnectionEncoder;",
            "Lio/netty/handler/codec/http2/Http2Settings;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected codec(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 3
    .param p1, "decoder"    # Lio/netty/handler/codec/http2/Http2ConnectionDecoder;
    .param p2, "encoder"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http2/Http2ConnectionDecoder;",
            "Lio/netty/handler/codec/http2/Http2ConnectionEncoder;",
            ")TB;"
        }
    .end annotation

    .line 259
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    const-string v0, "server"

    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->isServer:Ljava/lang/Boolean;

    const-string v2, "codec"

    invoke-static {v2, v0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceConstraint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    const-string v0, "maxReservedStreams"

    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxReservedStreams:Ljava/lang/Integer;

    invoke-static {v2, v0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceConstraint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    const-string v0, "connection"

    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-static {v2, v0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceConstraint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    const-string v0, "frameLogger"

    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->frameLogger:Lio/netty/handler/codec/http2/Http2FrameLogger;

    invoke-static {v2, v0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceConstraint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    const-string v0, "validateHeaders"

    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->validateHeaders:Ljava/lang/Boolean;

    invoke-static {v2, v0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceConstraint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    const-string v0, "headerSensitivityDetector"

    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->headerSensitivityDetector:Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    invoke-static {v2, v0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceConstraint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    const-string v0, "encoderEnforceMaxConcurrentStreams"

    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoderEnforceMaxConcurrentStreams:Ljava/lang/Boolean;

    invoke-static {v2, v0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceConstraint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    const-string v0, "decoder"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 268
    const-string v0, "encoder"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 270
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2ConnectionDecoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 274
    iput-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->decoder:Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    .line 275
    iput-object p2, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoder:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    .line 277
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0

    .line 271
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified encoder and decoder have different connections."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected connection(Lio/netty/handler/codec/http2/Http2Connection;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 3
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http2/Http2Connection;",
            ")TB;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    const-string v0, "maxReservedStreams"

    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxReservedStreams:Ljava/lang/Integer;

    const-string v2, "connection"

    invoke-static {v2, v0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceConstraint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    const-string v0, "server"

    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->isServer:Ljava/lang/Boolean;

    invoke-static {v2, v0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceConstraint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->decoder:Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    const-string v1, "codec"

    invoke-static {v2, v1, v0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceConstraint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoder:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    invoke-static {v2, v1, v0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceConstraint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    invoke-static {p1, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Connection;

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    .line 234
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected connection()Lio/netty/handler/codec/http2/Http2Connection;
    .locals 1

    .line 220
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    return-object v0
.end method

.method protected decoder()Lio/netty/handler/codec/http2/Http2ConnectionDecoder;
    .locals 1

    .line 243
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->decoder:Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    return-object v0
.end method

.method protected decoderEnforceMaxConsecutiveEmptyDataFrames()I
    .locals 1

    .line 423
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxConsecutiveEmptyFrames:I

    return v0
.end method

.method protected decoderEnforceMaxConsecutiveEmptyDataFrames(I)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "maxConsecutiveEmptyFrames"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 434
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    const-string v0, "maxConsecutiveEmptyFrames"

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceNonCodecConstraints(Ljava/lang/String;)V

    .line 435
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxConsecutiveEmptyFrames:I

    .line 437
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected decoderEnforceMaxRstFramesPerWindow(II)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "maxRstFramesPerWindow"    # I
    .param p2, "secondsPerWindow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TB;"
        }
    .end annotation

    .line 448
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    const-string v0, "decoderEnforceMaxRstFramesPerWindow"

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceNonCodecConstraints(Ljava/lang/String;)V

    .line 449
    const-string v0, "maxRstFramesPerWindow"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxRstFramesPerWindow:Ljava/lang/Integer;

    .line 451
    const-string v0, "secondsPerWindow"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->secondsPerWindow:I

    .line 452
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected decoupleCloseAndGoAway(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "decoupleCloseAndGoAway"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 498
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iput-boolean p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->decoupleCloseAndGoAway:Z

    .line 499
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected decoupleCloseAndGoAway()Z
    .locals 1

    .line 506
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->decoupleCloseAndGoAway:Z

    return v0
.end method

.method protected encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .locals 1

    .line 252
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoder:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    return-object v0
.end method

.method protected encoderEnforceMaxConcurrentStreams(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "encoderEnforceMaxConcurrentStreams"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 329
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    const-string v0, "encoderEnforceMaxConcurrentStreams"

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceNonCodecConstraints(Ljava/lang/String;)V

    .line 330
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoderEnforceMaxConcurrentStreams:Ljava/lang/Boolean;

    .line 331
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected encoderEnforceMaxConcurrentStreams()Z
    .locals 1

    .line 321
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoderEnforceMaxConcurrentStreams:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoderEnforceMaxConcurrentStreams:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected encoderEnforceMaxQueuedControlFrames()I
    .locals 1

    .line 342
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxQueuedControlFrames:I

    return v0
.end method

.method protected encoderEnforceMaxQueuedControlFrames(I)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "maxQueuedControlFrames"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 353
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    const-string v0, "encoderEnforceMaxQueuedControlFrames"

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceNonCodecConstraints(Ljava/lang/String;)V

    .line 354
    const-string v0, "maxQueuedControlFrames"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxQueuedControlFrames:I

    .line 355
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected encoderIgnoreMaxHeaderListSize(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "ignoreMaxHeaderListSize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 382
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    const-string v0, "encoderIgnoreMaxHeaderListSize"

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceNonCodecConstraints(Ljava/lang/String;)V

    .line 383
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoderIgnoreMaxHeaderListSize:Ljava/lang/Boolean;

    .line 384
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected flushPreface(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "flushPreface"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 521
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iput-boolean p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->flushPreface:Z

    .line 522
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected flushPreface()Z
    .locals 1

    .line 536
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->flushPreface:Z

    return v0
.end method

.method protected frameListener(Lio/netty/handler/codec/http2/Http2FrameListener;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "frameListener"    # Lio/netty/handler/codec/http2/Http2FrameListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http2/Http2FrameListener;",
            ")TB;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    const-string v0, "frameListener"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameListener;

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->frameListener:Lio/netty/handler/codec/http2/Http2FrameListener;

    .line 147
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected frameListener()Lio/netty/handler/codec/http2/Http2FrameListener;
    .locals 1

    .line 138
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->frameListener:Lio/netty/handler/codec/http2/Http2FrameListener;

    return-object v0
.end method

.method protected frameLogger(Lio/netty/handler/codec/http2/Http2FrameLogger;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "frameLogger"    # Lio/netty/handler/codec/http2/Http2FrameLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http2/Http2FrameLogger;",
            ")TB;"
        }
    .end annotation

    .line 311
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    const-string v0, "frameLogger"

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceNonCodecConstraints(Ljava/lang/String;)V

    .line 312
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameLogger;

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->frameLogger:Lio/netty/handler/codec/http2/Http2FrameLogger;

    .line 313
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected frameLogger()Lio/netty/handler/codec/http2/Http2FrameLogger;
    .locals 1

    .line 304
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->frameLogger:Lio/netty/handler/codec/http2/Http2FrameLogger;

    return-object v0
.end method

.method protected gracefulShutdownTimeoutMillis()J
    .locals 2

    .line 155
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget-wide v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->gracefulShutdownTimeoutMillis:J

    return-wide v0
.end method

.method protected gracefulShutdownTimeoutMillis(J)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 3
    .param p1, "gracefulShutdownTimeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 166
    iput-wide p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->gracefulShutdownTimeoutMillis:J

    .line 167
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gracefulShutdownTimeoutMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: -1 for indefinite or >= 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected headerSensitivityDetector(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "headerSensitivityDetector"    # Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;",
            ")TB;"
        }
    .end annotation

    .line 369
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    const-string v0, "headerSensitivityDetector"

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceNonCodecConstraints(Ljava/lang/String;)V

    .line 370
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->headerSensitivityDetector:Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    .line 371
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected headerSensitivityDetector()Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;
    .locals 1

    .line 362
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->headerSensitivityDetector:Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->headerSensitivityDetector:Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->DEFAULT_HEADER_SENSITIVITY_DETECTOR:Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    :goto_0
    return-object v0
.end method

.method protected initialHuffmanDecodeCapacity(I)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "initialHuffmanDecodeCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 394
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected initialSettings(Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "settings"    # Lio/netty/handler/codec/http2/Http2Settings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http2/Http2Settings;",
            ")TB;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    const-string v0, "settings"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Settings;

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->initialSettings:Lio/netty/handler/codec/http2/Http2Settings;

    .line 129
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected initialSettings()Lio/netty/handler/codec/http2/Http2Settings;
    .locals 1

    .line 121
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->initialSettings:Lio/netty/handler/codec/http2/Http2Settings;

    return-object v0
.end method

.method protected isAutoAckPingFrame()Z
    .locals 1

    .line 488
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->autoAckPingFrame:Z

    return v0
.end method

.method protected isAutoAckSettingsFrame()Z
    .locals 1

    .line 470
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->autoAckSettingsFrame:Z

    return v0
.end method

.method protected isServer()Z
    .locals 1

    .line 175
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->isServer:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->isServer:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method protected isValidateHeaders()Z
    .locals 1

    .line 285
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->validateHeaders:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->validateHeaders:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method protected maxReservedStreams()I
    .locals 1

    .line 199
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxReservedStreams:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxReservedStreams:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    return v0
.end method

.method protected maxReservedStreams(I)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 3
    .param p1, "maxReservedStreams"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 206
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    const-string v0, "connection"

    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    const-string v2, "server"

    invoke-static {v2, v0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceConstraint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->decoder:Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    const-string v1, "codec"

    invoke-static {v2, v1, v0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceConstraint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoder:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    invoke-static {v2, v1, v0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceConstraint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    const-string v0, "maxReservedStreams"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxReservedStreams:Ljava/lang/Integer;

    .line 211
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected promisedRequestVerifier(Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "promisedRequestVerifier"    # Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;",
            ")TB;"
        }
    .end annotation

    .line 402
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    const-string v0, "promisedRequestVerifier"

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceNonCodecConstraints(Ljava/lang/String;)V

    .line 403
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->promisedRequestVerifier:Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;

    .line 404
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected promisedRequestVerifier()Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;
    .locals 1

    .line 412
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->promisedRequestVerifier:Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;

    return-object v0
.end method

.method protected final self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 646
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    return-object p0
.end method

.method protected server(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 3
    .param p1, "isServer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    const-string v0, "connection"

    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    const-string v2, "server"

    invoke-static {v2, v0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceConstraint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->decoder:Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    const-string v1, "codec"

    invoke-static {v2, v1, v0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceConstraint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoder:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    invoke-static {v2, v1, v0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceConstraint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->isServer:Ljava/lang/Boolean;

    .line 188
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected validateHeaders(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "validateHeaders"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 293
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;, "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<TT;TB;>;"
    const-string v0, "validateHeaders"

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->enforceNonCodecConstraints(Ljava/lang/String;)V

    .line 294
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->validateHeaders:Ljava/lang/Boolean;

    .line 295
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    return-object v0
.end method
