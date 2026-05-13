.class public Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
.super Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
.source "Http2FrameCodecBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<",
        "Lio/netty/handler/codec/http2/Http2FrameCodec;",
        "Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;-><init>()V

    .line 42
    return-void
.end method

.method constructor <init>(Z)V
    .locals 2
    .param p1, "server"    # Z

    .line 44
    invoke-direct {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->server(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    .line 47
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->gracefulShutdownTimeoutMillis(J)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    .line 48
    return-void
.end method

.method public static forClient()Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 2

    .line 54
    new-instance v0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;-><init>(Z)V

    return-object v0
.end method

.method public static forServer()Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 2

    .line 61
    new-instance v0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic autoAckPingFrame(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->autoAckPingFrame(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public autoAckPingFrame(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 1
    .param p1, "autoAckPingFrame"    # Z

    .line 174
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->autoAckPingFrame(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object v0
.end method

.method public bridge synthetic autoAckSettingsFrame(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->autoAckSettingsFrame(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public autoAckSettingsFrame(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 1
    .param p1, "autoAckSettings"    # Z

    .line 169
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->autoAckSettingsFrame(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object v0
.end method

.method public bridge synthetic build()Lio/netty/handler/codec/http2/Http2ConnectionHandler;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->build()Lio/netty/handler/codec/http2/Http2FrameCodec;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic build(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/Http2ConnectionHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->build(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/Http2FrameCodec;

    move-result-object p1

    return-object p1
.end method

.method public build()Lio/netty/handler/codec/http2/Http2FrameCodec;
    .locals 14

    .line 208
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    .line 209
    .local v0, "frameWriter":Lio/netty/handler/codec/http2/Http2FrameWriter;
    if-eqz v0, :cond_4

    .line 212
    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->isServer()Z

    move-result v2

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->maxReservedStreams()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;-><init>(ZI)V

    .line 213
    .local v1, "connection":Lio/netty/handler/codec/http2/DefaultHttp2Connection;
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->initialSettings()Lio/netty/handler/codec/http2/Http2Settings;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2Settings;->maxHeaderListSize()Ljava/lang/Long;

    move-result-object v2

    .line 214
    .local v2, "maxHeaderListSize":Ljava/lang/Long;
    new-instance v3, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;

    if-nez v2, :cond_0

    new-instance v4, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;

    .line 215
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->isValidateHeaders()Z

    move-result v5

    invoke-direct {v4, v5}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;-><init>(Z)V

    goto :goto_0

    :cond_0
    new-instance v4, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;

    .line 216
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->isValidateHeaders()Z

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;-><init>(ZJ)V

    :goto_0
    invoke-direct {v3, v4}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;-><init>(Lio/netty/handler/codec/http2/Http2HeadersDecoder;)V

    .line 218
    .local v3, "frameReader":Lio/netty/handler/codec/http2/Http2FrameReader;
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->frameLogger()Lio/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 219
    new-instance v4, Lio/netty/handler/codec/http2/Http2OutboundFrameLogger;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->frameLogger()Lio/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lio/netty/handler/codec/http2/Http2OutboundFrameLogger;-><init>(Lio/netty/handler/codec/http2/Http2FrameWriter;Lio/netty/handler/codec/http2/Http2FrameLogger;)V

    move-object v0, v4

    .line 220
    new-instance v4, Lio/netty/handler/codec/http2/Http2InboundFrameLogger;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->frameLogger()Lio/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lio/netty/handler/codec/http2/Http2InboundFrameLogger;-><init>(Lio/netty/handler/codec/http2/Http2FrameReader;Lio/netty/handler/codec/http2/Http2FrameLogger;)V

    move-object v3, v4

    .line 222
    :cond_1
    new-instance v4, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;

    invoke-direct {v4, v1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;-><init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2FrameWriter;)V

    .line 223
    .local v4, "encoder":Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->encoderEnforceMaxConcurrentStreams()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 224
    new-instance v5, Lio/netty/handler/codec/http2/StreamBufferingEncoder;

    invoke-direct {v5, v4}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)V

    move-object v4, v5

    move-object v12, v4

    goto :goto_1

    .line 223
    :cond_2
    move-object v12, v4

    .line 226
    .end local v4    # "encoder":Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .local v12, "encoder":Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    :goto_1
    new-instance v13, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    .line 227
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->promisedRequestVerifier()Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;

    move-result-object v8

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->isAutoAckSettingsFrame()Z

    move-result v9

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->isAutoAckPingFrame()Z

    move-result v10

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->isValidateHeaders()Z

    move-result v11

    move-object v4, v13

    move-object v5, v1

    move-object v6, v12

    move-object v7, v3

    invoke-direct/range {v4 .. v11}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;-><init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2FrameReader;Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;ZZZ)V

    .line 228
    .local v4, "decoder":Lio/netty/handler/codec/http2/Http2ConnectionDecoder;
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->decoderEnforceMaxConsecutiveEmptyDataFrames()I

    move-result v5

    .line 229
    .local v5, "maxConsecutiveEmptyDataFrames":I
    if-lez v5, :cond_3

    .line 230
    new-instance v6, Lio/netty/handler/codec/http2/Http2EmptyDataFrameConnectionDecoder;

    invoke-direct {v6, v4, v5}, Lio/netty/handler/codec/http2/Http2EmptyDataFrameConnectionDecoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;I)V

    move-object v4, v6

    .line 232
    :cond_3
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->initialSettings()Lio/netty/handler/codec/http2/Http2Settings;

    move-result-object v6

    invoke-virtual {p0, v4, v12, v6}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->build(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/Http2FrameCodec;

    move-result-object v6

    return-object v6

    .line 234
    .end local v1    # "connection":Lio/netty/handler/codec/http2/DefaultHttp2Connection;
    .end local v2    # "maxHeaderListSize":Ljava/lang/Long;
    .end local v3    # "frameReader":Lio/netty/handler/codec/http2/Http2FrameReader;
    .end local v4    # "decoder":Lio/netty/handler/codec/http2/Http2ConnectionDecoder;
    .end local v5    # "maxConsecutiveEmptyDataFrames":I
    .end local v12    # "encoder":Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    :cond_4
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->build()Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2FrameCodec;

    return-object v1
.end method

.method protected build(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/Http2FrameCodec;
    .locals 7
    .param p1, "decoder"    # Lio/netty/handler/codec/http2/Http2ConnectionDecoder;
    .param p2, "encoder"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .param p3, "initialSettings"    # Lio/netty/handler/codec/http2/Http2Settings;

    .line 240
    new-instance v6, Lio/netty/handler/codec/http2/Http2FrameCodec;

    .line 241
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->decoupleCloseAndGoAway()Z

    move-result v4

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->flushPreface()Z

    move-result v5

    move-object v0, v6

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/Http2FrameCodec;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Settings;ZZ)V

    .line 242
    .local v0, "codec":Lio/netty/handler/codec/http2/Http2FrameCodec;
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->gracefulShutdownTimeoutMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http2/Http2FrameCodec;->gracefulShutdownTimeoutMillis(J)V

    .line 243
    return-object v0
.end method

.method public decoderEnforceMaxConsecutiveEmptyDataFrames()I
    .locals 1

    .line 189
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->decoderEnforceMaxConsecutiveEmptyDataFrames()I

    move-result v0

    return v0
.end method

.method public bridge synthetic decoderEnforceMaxConsecutiveEmptyDataFrames(I)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->decoderEnforceMaxConsecutiveEmptyDataFrames(I)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public decoderEnforceMaxConsecutiveEmptyDataFrames(I)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 1
    .param p1, "maxConsecutiveEmptyFrames"    # I

    .line 194
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->decoderEnforceMaxConsecutiveEmptyDataFrames(I)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object v0
.end method

.method public bridge synthetic decoderEnforceMaxRstFramesPerWindow(II)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->decoderEnforceMaxRstFramesPerWindow(II)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public decoderEnforceMaxRstFramesPerWindow(II)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 1
    .param p1, "maxRstFramesPerWindow"    # I
    .param p2, "secondsPerWindow"    # I

    .line 200
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->decoderEnforceMaxRstFramesPerWindow(II)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object v0
.end method

.method public bridge synthetic decoupleCloseAndGoAway(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->decoupleCloseAndGoAway(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public decoupleCloseAndGoAway(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 1
    .param p1, "decoupleCloseAndGoAway"    # Z

    .line 179
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->decoupleCloseAndGoAway(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object v0
.end method

.method public bridge synthetic encoderEnforceMaxConcurrentStreams(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->encoderEnforceMaxConcurrentStreams(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public encoderEnforceMaxConcurrentStreams(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 1
    .param p1, "encoderEnforceMaxConcurrentStreams"    # Z

    .line 132
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoderEnforceMaxConcurrentStreams(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object v0
.end method

.method public encoderEnforceMaxConcurrentStreams()Z
    .locals 1

    .line 127
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoderEnforceMaxConcurrentStreams()Z

    move-result v0

    return v0
.end method

.method public encoderEnforceMaxQueuedControlFrames()I
    .locals 1

    .line 137
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoderEnforceMaxQueuedControlFrames()I

    move-result v0

    return v0
.end method

.method public bridge synthetic encoderEnforceMaxQueuedControlFrames(I)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->encoderEnforceMaxQueuedControlFrames(I)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public encoderEnforceMaxQueuedControlFrames(I)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 1
    .param p1, "maxQueuedControlFrames"    # I

    .line 142
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoderEnforceMaxQueuedControlFrames(I)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object v0
.end method

.method public bridge synthetic encoderIgnoreMaxHeaderListSize(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->encoderIgnoreMaxHeaderListSize(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public encoderIgnoreMaxHeaderListSize(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 1
    .param p1, "ignoreMaxHeaderListSize"    # Z

    .line 158
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoderIgnoreMaxHeaderListSize(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object v0
.end method

.method public bridge synthetic flushPreface(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->flushPreface(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public flushPreface(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 1
    .param p1, "flushPreface"    # Z

    .line 184
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->flushPreface(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object v0
.end method

.method public bridge synthetic frameLogger(Lio/netty/handler/codec/http2/Http2FrameLogger;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->frameLogger(Lio/netty/handler/codec/http2/Http2FrameLogger;)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public frameLogger(Lio/netty/handler/codec/http2/Http2FrameLogger;)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 1
    .param p1, "frameLogger"    # Lio/netty/handler/codec/http2/Http2FrameLogger;

    .line 122
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->frameLogger(Lio/netty/handler/codec/http2/Http2FrameLogger;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object v0
.end method

.method public frameLogger()Lio/netty/handler/codec/http2/Http2FrameLogger;
    .locals 1

    .line 117
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->frameLogger()Lio/netty/handler/codec/http2/Http2FrameLogger;

    move-result-object v0

    return-object v0
.end method

.method frameWriter(Lio/netty/handler/codec/http2/Http2FrameWriter;)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 1
    .param p1, "frameWriter"    # Lio/netty/handler/codec/http2/Http2FrameWriter;

    .line 66
    const-string v0, "frameWriter"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameWriter;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    .line 67
    return-object p0
.end method

.method public gracefulShutdownTimeoutMillis()J
    .locals 2

    .line 82
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->gracefulShutdownTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic gracefulShutdownTimeoutMillis(J)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->gracefulShutdownTimeoutMillis(J)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public gracefulShutdownTimeoutMillis(J)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 1
    .param p1, "gracefulShutdownTimeoutMillis"    # J

    .line 87
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->gracefulShutdownTimeoutMillis(J)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object v0
.end method

.method public bridge synthetic headerSensitivityDetector(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->headerSensitivityDetector(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public headerSensitivityDetector(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 1
    .param p1, "headerSensitivityDetector"    # Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    .line 153
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->headerSensitivityDetector(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object v0
.end method

.method public headerSensitivityDetector()Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;
    .locals 1

    .line 147
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->headerSensitivityDetector()Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic initialHuffmanDecodeCapacity(I)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->initialHuffmanDecodeCapacity(I)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public initialHuffmanDecodeCapacity(I)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 1
    .param p1, "initialHuffmanDecodeCapacity"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->initialHuffmanDecodeCapacity(I)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object v0
.end method

.method public bridge synthetic initialSettings(Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->initialSettings(Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public initialSettings(Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 1
    .param p1, "settings"    # Lio/netty/handler/codec/http2/Http2Settings;

    .line 77
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->initialSettings(Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object v0
.end method

.method public initialSettings()Lio/netty/handler/codec/http2/Http2Settings;
    .locals 1

    .line 72
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->initialSettings()Lio/netty/handler/codec/http2/Http2Settings;

    move-result-object v0

    return-object v0
.end method

.method public isServer()Z
    .locals 1

    .line 92
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->isServer()Z

    move-result v0

    return v0
.end method

.method public isValidateHeaders()Z
    .locals 1

    .line 107
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->isValidateHeaders()Z

    move-result v0

    return v0
.end method

.method public maxReservedStreams()I
    .locals 1

    .line 97
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxReservedStreams()I

    move-result v0

    return v0
.end method

.method public bridge synthetic maxReservedStreams(I)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->maxReservedStreams(I)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxReservedStreams(I)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 1
    .param p1, "maxReservedStreams"    # I

    .line 102
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->maxReservedStreams(I)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object v0
.end method

.method public bridge synthetic validateHeaders(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;->validateHeaders(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    move-result-object p1

    return-object p1
.end method

.method public validateHeaders(Z)Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;
    .locals 1
    .param p1, "validateHeaders"    # Z

    .line 112
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->validateHeaders(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodecBuilder;

    return-object v0
.end method
