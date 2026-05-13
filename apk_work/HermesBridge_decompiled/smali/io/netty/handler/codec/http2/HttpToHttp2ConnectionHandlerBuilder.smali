.class public final Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;
.super Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
.source "HttpToHttp2ConnectionHandlerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder<",
        "Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;",
        "Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private httpScheme:Lio/netty/handler/codec/http/HttpScheme;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lio/netty/handler/codec/http2/Http2ConnectionHandler;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->build()Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;

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
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->build(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;

    move-result-object p1

    return-object p1
.end method

.method public build()Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;
    .locals 1

    .line 114
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->build()Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;

    return-object v0
.end method

.method protected build(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;
    .locals 9
    .param p1, "decoder"    # Lio/netty/handler/codec/http2/Http2ConnectionDecoder;
    .param p2, "encoder"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .param p3, "initialSettings"    # Lio/netty/handler/codec/http2/Http2Settings;

    .line 120
    new-instance v8, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->isValidateHeaders()Z

    move-result v4

    .line 121
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->decoupleCloseAndGoAway()Z

    move-result v5

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->flushPreface()Z

    move-result v6

    iget-object v7, p0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->httpScheme:Lio/netty/handler/codec/http/HttpScheme;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;ZZZLio/netty/handler/codec/http/HttpScheme;)V

    .line 120
    return-object v8
.end method

.method public bridge synthetic codec(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->codec(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public codec(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "decoder"    # Lio/netty/handler/codec/http2/Http2ConnectionDecoder;
    .param p2, "encoder"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    .line 65
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->codec(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    return-object v0
.end method

.method public bridge synthetic connection(Lio/netty/handler/codec/http2/Http2Connection;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->connection(Lio/netty/handler/codec/http2/Http2Connection;)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public connection(Lio/netty/handler/codec/http2/Http2Connection;)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;

    .line 59
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->connection(Lio/netty/handler/codec/http2/Http2Connection;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    return-object v0
.end method

.method public bridge synthetic decoupleCloseAndGoAway(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->decoupleCloseAndGoAway(Z)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public decoupleCloseAndGoAway(Z)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "decoupleCloseAndGoAway"    # Z

    .line 93
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->decoupleCloseAndGoAway(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    return-object v0
.end method

.method public bridge synthetic encoderEnforceMaxConcurrentStreams(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->encoderEnforceMaxConcurrentStreams(Z)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public encoderEnforceMaxConcurrentStreams(Z)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "encoderEnforceMaxConcurrentStreams"    # Z

    .line 76
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->encoderEnforceMaxConcurrentStreams(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    return-object v0
.end method

.method public bridge synthetic flushPreface(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->flushPreface(Z)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public flushPreface(Z)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "flushPreface"    # Z

    .line 98
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->flushPreface(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    return-object v0
.end method

.method public bridge synthetic frameListener(Lio/netty/handler/codec/http2/Http2FrameListener;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->frameListener(Lio/netty/handler/codec/http2/Http2FrameListener;)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public frameListener(Lio/netty/handler/codec/http2/Http2FrameListener;)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "frameListener"    # Lio/netty/handler/codec/http2/Http2FrameListener;

    .line 44
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->frameListener(Lio/netty/handler/codec/http2/Http2FrameListener;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    return-object v0
.end method

.method public bridge synthetic frameLogger(Lio/netty/handler/codec/http2/Http2FrameLogger;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->frameLogger(Lio/netty/handler/codec/http2/Http2FrameLogger;)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public frameLogger(Lio/netty/handler/codec/http2/Http2FrameLogger;)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "frameLogger"    # Lio/netty/handler/codec/http2/Http2FrameLogger;

    .line 70
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->frameLogger(Lio/netty/handler/codec/http2/Http2FrameLogger;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    return-object v0
.end method

.method public bridge synthetic gracefulShutdownTimeoutMillis(J)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->gracefulShutdownTimeoutMillis(J)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public gracefulShutdownTimeoutMillis(J)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "gracefulShutdownTimeoutMillis"    # J

    .line 49
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->gracefulShutdownTimeoutMillis(J)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    return-object v0
.end method

.method public bridge synthetic headerSensitivityDetector(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->headerSensitivityDetector(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public headerSensitivityDetector(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "headerSensitivityDetector"    # Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    .line 82
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->headerSensitivityDetector(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    return-object v0
.end method

.method public httpScheme(Lio/netty/handler/codec/http/HttpScheme;)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "httpScheme"    # Lio/netty/handler/codec/http/HttpScheme;

    .line 108
    iput-object p1, p0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->httpScheme:Lio/netty/handler/codec/http/HttpScheme;

    .line 109
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->self()Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    return-object v0
.end method

.method public bridge synthetic initialHuffmanDecodeCapacity(I)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->initialHuffmanDecodeCapacity(I)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public initialHuffmanDecodeCapacity(I)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "initialHuffmanDecodeCapacity"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->initialHuffmanDecodeCapacity(I)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    return-object v0
.end method

.method public bridge synthetic initialSettings(Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->initialSettings(Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public initialSettings(Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "settings"    # Lio/netty/handler/codec/http2/Http2Settings;

    .line 39
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->initialSettings(Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    return-object v0
.end method

.method public bridge synthetic server(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->server(Z)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public server(Z)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "isServer"    # Z

    .line 54
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->server(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    return-object v0
.end method

.method public bridge synthetic validateHeaders(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;->validateHeaders(Z)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public validateHeaders(Z)Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;
    .locals 1
    .param p1, "validateHeaders"    # Z

    .line 34
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;->validateHeaders(Z)Lio/netty/handler/codec/http2/AbstractHttp2ConnectionHandlerBuilder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandlerBuilder;

    return-object v0
.end method
