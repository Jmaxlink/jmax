.class public Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;
.super Lio/netty/handler/codec/http2/Http2EventAdapter;
.source "InboundHttp2ToHttpAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;
    }
.end annotation


# static fields
.field private static final DEFAULT_SEND_DETECTOR:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;


# instance fields
.field protected final connection:Lio/netty/handler/codec/http2/Http2Connection;

.field private final maxContentLength:I

.field private final messageKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

.field private final propagateSettings:Z

.field private final sendDetector:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;

.field protected final validateHttpHeaders:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->DEFAULT_SEND_DETECTOR:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;

    return-void
.end method

.method protected constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;IZZ)V
    .locals 1
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;
    .param p2, "maxContentLength"    # I
    .param p3, "validateHttpHeaders"    # Z
    .param p4, "propagateSettings"    # Z

    .line 74
    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2EventAdapter;-><init>()V

    .line 75
    const-string v0, "connection"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Connection;

    iput-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    .line 76
    const-string v0, "maxContentLength"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->maxContentLength:I

    .line 77
    iput-boolean p3, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->validateHttpHeaders:Z

    .line 78
    iput-boolean p4, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->propagateSettings:Z

    .line 79
    sget-object v0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->DEFAULT_SEND_DETECTOR:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;

    iput-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->sendDetector:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;

    .line 80
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->messageKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    .line 81
    return-void
.end method

.method private processHeadersEnd(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;Z)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p3, "msg"    # Lio/netty/handler/codec/http/FullHttpMessage;
    .param p4, "endOfStream"    # Z

    .line 218
    if-eqz p4, :cond_1

    .line 220
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->getMessage(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v0

    if-eq v0, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p3, v0, p2}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpMessage;ZLio/netty/handler/codec/http2/Http2Stream;)V

    goto :goto_1

    .line 222
    :cond_1
    invoke-virtual {p0, p2, p3}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->putMessage(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;)V

    .line 224
    :goto_1
    return-void
.end method


# virtual methods
.method protected fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpMessage;ZLio/netty/handler/codec/http2/Http2Stream;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/handler/codec/http/FullHttpMessage;
    .param p3, "release"    # Z
    .param p4, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 131
    invoke-virtual {p0, p4, p3}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->removeMessage(Lio/netty/handler/codec/http2/Http2Stream;Z)V

    .line 132
    invoke-interface {p2}, Lio/netty/handler/codec/http/FullHttpMessage;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2, v0, v1}, Lio/netty/handler/codec/http/HttpUtil;->setContentLength(Lio/netty/handler/codec/http/HttpMessage;J)V

    .line 133
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 134
    return-void
.end method

.method protected final getMessage(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 101
    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->messageKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/FullHttpMessage;

    return-object v0
.end method

.method protected newMessage(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZLio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p2, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p3, "validateHttpHeaders"    # Z
    .param p4, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v0

    invoke-static {v0, p2, p4, p3}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toFullHttpRequest(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBufAllocator;Z)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_0
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v0

    invoke-static {v0, p2, p4, p3}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toFullHttpResponse(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBufAllocator;Z)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0
.end method

.method public onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I
    .locals 7
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

    .line 229
    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 230
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->getMessage(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v1

    .line 231
    .local v1, "msg":Lio/netty/handler/codec/http/FullHttpMessage;
    if-eqz v1, :cond_2

    .line 235
    invoke-interface {v1}, Lio/netty/handler/codec/http/FullHttpMessage;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 236
    .local v2, "content":Lio/netty/buffer/ByteBuf;
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    .line 237
    .local v3, "dataReadableBytes":I
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    iget v5, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->maxContentLength:I

    sub-int/2addr v5, v3

    if-gt v4, v5, :cond_1

    .line 242
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {v2, p3, v4, v3}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 244
    if-eqz p5, :cond_0

    .line 245
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v1, v4, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpMessage;ZLio/netty/handler/codec/http2/Http2Stream;)V

    .line 249
    :cond_0
    add-int v4, v3, p4

    return v4

    .line 238
    :cond_1
    sget-object v4, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    iget v5, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->maxContentLength:I

    .line 239
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 238
    const-string v6, "Content length exceeded max of %d for stream id %d"

    invoke-static {v4, v6, v5}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v4

    throw v4

    .line 232
    .end local v2    # "content":Lio/netty/buffer/ByteBuf;
    .end local v3    # "dataReadableBytes":I
    :cond_2
    sget-object v2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Data Frame received for unknown stream id %d"

    invoke-static {v2, v4, v3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v2

    throw v2
.end method

.method public onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V
    .locals 11
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

    .line 266
    move-object v7, p0

    move v8, p4

    iget-object v0, v7, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    move v9, p2

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v10

    .line 267
    .local v10, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v10

    move-object v3, p3

    move/from16 v4, p8

    invoke-virtual/range {v0 .. v6}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->processHeadersBegin(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZZ)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v0

    .line 268
    .local v0, "msg":Lio/netty/handler/codec/http/FullHttpMessage;
    if-eqz v0, :cond_1

    .line 271
    if-eqz v8, :cond_0

    .line 272
    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_DEPENDENCY_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v2

    invoke-virtual {v1, v2, p4}, Lio/netty/handler/codec/http/HttpHeaders;->setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;

    .line 275
    :cond_0
    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_WEIGHT:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v2

    move/from16 v3, p5

    invoke-virtual {v1, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->setShort(Ljava/lang/CharSequence;S)Lio/netty/handler/codec/http/HttpHeaders;

    .line 277
    move-object v1, p1

    move/from16 v2, p8

    invoke-direct {p0, p1, v10, v0, v2}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->processHeadersEnd(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;Z)V

    goto :goto_0

    .line 268
    :cond_1
    move-object v1, p1

    move/from16 v3, p5

    move/from16 v2, p8

    .line 279
    :goto_0
    return-void
.end method

.method public onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZ)V
    .locals 8
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

    .line 255
    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 256
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p3

    move v5, p5

    invoke-virtual/range {v1 .. v7}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->processHeadersBegin(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZZ)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v1

    .line 257
    .local v1, "msg":Lio/netty/handler/codec/http/FullHttpMessage;
    if-eqz v1, :cond_0

    .line 258
    invoke-direct {p0, p1, v0, v1, p5}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->processHeadersEnd(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;Z)V

    .line 260
    :cond_0
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

    .line 296
    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0, p3}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 297
    .local v0, "promisedStream":Lio/netty/handler/codec/http2/Http2Stream;
    invoke-interface {p4}, Lio/netty/handler/codec/http2/Http2Headers;->status()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    .line 303
    sget-object v1, Lio/netty/handler/codec/http/HttpResponseStatus;->OK:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->codeAsText()Lio/netty/util/AsciiString;

    move-result-object v1

    invoke-interface {p4, v1}, Lio/netty/handler/codec/http2/Http2Headers;->status(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    .line 305
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p4

    invoke-virtual/range {v1 .. v7}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->processHeadersBegin(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZZ)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v1

    .line 306
    .local v1, "msg":Lio/netty/handler/codec/http/FullHttpMessage;
    if-eqz v1, :cond_1

    .line 311
    invoke-interface {v1}, Lio/netty/handler/codec/http/FullHttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    sget-object v3, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_PROMISE_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v3}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lio/netty/handler/codec/http/HttpHeaders;->setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;

    .line 312
    invoke-interface {v1}, Lio/netty/handler/codec/http/FullHttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    sget-object v3, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_WEIGHT:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v3}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Lio/netty/handler/codec/http/HttpHeaders;->setShort(Ljava/lang/CharSequence;S)Lio/netty/handler/codec/http/HttpHeaders;

    .line 315
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->processHeadersEnd(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;Z)V

    .line 316
    return-void

    .line 307
    :cond_1
    sget-object v2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 308
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 307
    const-string v4, "Push Promise Frame received for pre-existing stream id %d"

    invoke-static {v2, v4, v3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v2

    throw v2
.end method

.method public onRstStreamRead(Lio/netty/channel/ChannelHandlerContext;IJ)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "errorCode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 284
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->getMessage(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v1

    .line 285
    .local v1, "msg":Lio/netty/handler/codec/http/FullHttpMessage;
    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->onRstStreamRead(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;)V

    .line 288
    :cond_0
    invoke-static {p3, p4}, Lio/netty/handler/codec/http2/Http2Error;->valueOf(J)Lio/netty/handler/codec/http2/Http2Error;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "HTTP/2 to HTTP layer caught stream reset"

    invoke-static {p2, v2, v4, v3}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 290
    return-void
.end method

.method protected onRstStreamRead(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;)V
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p2, "msg"    # Lio/netty/handler/codec/http/FullHttpMessage;

    .line 330
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->removeMessage(Lio/netty/handler/codec/http2/Http2Stream;Z)V

    .line 331
    return-void
.end method

.method public onSettingsRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "settings"    # Lio/netty/handler/codec/http2/Http2Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 320
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->propagateSettings:Z

    if-eqz v0, :cond_0

    .line 322
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 324
    :cond_0
    return-void
.end method

.method public onStreamRemoved(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->removeMessage(Lio/netty/handler/codec/http2/Http2Stream;Z)V

    .line 119
    return-void
.end method

.method protected processHeadersBegin(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZZ)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p3, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "endOfStream"    # Z
    .param p5, "allowAppend"    # Z
    .param p6, "appendToTrailer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 184
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->getMessage(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v0

    .line 185
    .local v0, "msg":Lio/netty/handler/codec/http/FullHttpMessage;
    const/4 v1, 0x1

    .line 186
    .local v1, "release":Z
    if-nez v0, :cond_0

    .line 187
    iget-boolean v2, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->validateHttpHeaders:Z

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v3

    invoke-virtual {p0, p2, p3, v2, v3}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->newMessage(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZLio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_0
    if-eqz p5, :cond_1

    .line 189
    const/4 v1, 0x0

    .line 190
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v2

    invoke-static {v2, p3, v0, p6}, Lio/netty/handler/codec/http2/HttpConversionUtil;->addHttp2ToHttpHeaders(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http/FullHttpMessage;Z)V

    goto :goto_0

    .line 192
    :cond_1
    const/4 v1, 0x0

    .line 193
    const/4 v0, 0x0

    .line 196
    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->sendDetector:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;

    invoke-interface {v2, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;->mustSendImmediately(Lio/netty/handler/codec/http/FullHttpMessage;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    if-eqz p4, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->sendDetector:Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter$ImmediateSendDetector;->copyIfNeeded(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/http/FullHttpMessage;)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v2

    .line 200
    .local v2, "copy":Lio/netty/handler/codec/http/FullHttpMessage;
    :goto_1
    invoke-virtual {p0, p1, v0, v1, p2}, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpMessage;ZLio/netty/handler/codec/http2/Http2Stream;)V

    .line 201
    return-object v2

    .line 204
    .end local v2    # "copy":Lio/netty/handler/codec/http/FullHttpMessage;
    :cond_3
    return-object v0
.end method

.method protected final putMessage(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http/FullHttpMessage;)V
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p2, "message"    # Lio/netty/handler/codec/http/FullHttpMessage;

    .line 110
    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->messageKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1, v0, p2}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/FullHttpMessage;

    .line 111
    .local v0, "previous":Lio/netty/handler/codec/http/FullHttpMessage;
    if-eq v0, p2, :cond_0

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpMessage;->release()Z

    .line 114
    :cond_0
    return-void
.end method

.method protected final removeMessage(Lio/netty/handler/codec/http2/Http2Stream;Z)V
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p2, "release"    # Z

    .line 89
    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;->messageKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->removeProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/FullHttpMessage;

    .line 90
    .local v0, "msg":Lio/netty/handler/codec/http/FullHttpMessage;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpMessage;->release()Z

    .line 93
    :cond_0
    return-void
.end method
