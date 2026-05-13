.class public Lio/netty/handler/codec/http2/InboundHttpToHttp2Adapter;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "InboundHttpToHttp2Adapter.java"


# instance fields
.field private final connection:Lio/netty/handler/codec/http2/Http2Connection;

.field private final listener:Lio/netty/handler/codec/http2/Http2FrameListener;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2FrameListener;)V
    .locals 0
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;
    .param p2, "listener"    # Lio/netty/handler/codec/http2/Http2FrameListener;

    .line 33
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lio/netty/handler/codec/http2/InboundHttpToHttp2Adapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    .line 35
    iput-object p2, p0, Lio/netty/handler/codec/http2/InboundHttpToHttp2Adapter;->listener:Lio/netty/handler/codec/http2/Http2FrameListener;

    .line 36
    return-void
.end method

.method private static getStreamId(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http/HttpHeaders;)I
    .locals 2
    .param p0, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;
    .param p1, "httpHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;

    .line 39
    sget-object v0, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v0

    .line 40
    invoke-interface {p0}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->incrementAndGetNextStreamId()I

    move-result v1

    .line 39
    invoke-virtual {p1, v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->getInt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method static handle(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2FrameListener;Lio/netty/handler/codec/http/FullHttpMessage;)V
    .locals 17
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;
    .param p2, "listener"    # Lio/netty/handler/codec/http2/Http2FrameListener;
    .param p3, "message"    # Lio/netty/handler/codec/http/FullHttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 58
    move-object/from16 v1, p1

    :try_start_0
    invoke-interface/range {p3 .. p3}, Lio/netty/handler/codec/http/FullHttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-static {v1, v0}, Lio/netty/handler/codec/http2/InboundHttpToHttp2Adapter;->getStreamId(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http/HttpHeaders;)I

    move-result v0

    .line 59
    .local v0, "streamId":I
    invoke-interface {v1, v0}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v2

    .line 60
    .local v2, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    const/4 v8, 0x0

    if-nez v2, :cond_0

    .line 61
    invoke-interface/range {p1 .. p1}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v3

    invoke-interface {v3, v0, v8}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->createStream(IZ)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v3

    move-object v2, v3

    move-object v12, v2

    goto :goto_0

    .line 60
    :cond_0
    move-object v12, v2

    .line 63
    .end local v2    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .local v12, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    :goto_0
    invoke-interface/range {p3 .. p3}, Lio/netty/handler/codec/http/FullHttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    sget-object v3, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->SCHEME:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v3}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http/HttpScheme;->HTTP:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {v4}, Lio/netty/handler/codec/http/HttpScheme;->name()Lio/netty/util/AsciiString;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    const/4 v13, 0x1

    move-object/from16 v14, p3

    :try_start_1
    invoke-static {v14, v13}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttp2Headers(Lio/netty/handler/codec/http/HttpMessage;Z)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v5

    .line 65
    .local v5, "messageHeaders":Lio/netty/handler/codec/http2/Http2Headers;
    invoke-interface/range {p3 .. p3}, Lio/netty/handler/codec/http/FullHttpMessage;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v2

    move v15, v2

    .line 66
    .local v15, "hasContent":Z
    invoke-interface/range {p3 .. p3}, Lio/netty/handler/codec/http/FullHttpMessage;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v13

    move/from16 v16, v2

    .line 67
    .local v16, "hasTrailers":Z
    if-nez v15, :cond_1

    if-nez v16, :cond_1

    move v7, v13

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    const/4 v6, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move v4, v0

    invoke-interface/range {v2 .. v7}, Lio/netty/handler/codec/http2/Http2FrameListener;->onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZ)V

    .line 69
    if-eqz v15, :cond_3

    .line 70
    invoke-interface/range {p3 .. p3}, Lio/netty/handler/codec/http/FullHttpMessage;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v9

    if-nez v16, :cond_2

    move v11, v13

    goto :goto_2

    :cond_2
    move v11, v8

    :goto_2
    const/4 v10, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p0

    move v8, v0

    invoke-interface/range {v6 .. v11}, Lio/netty/handler/codec/http2/Http2FrameListener;->onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I

    .line 72
    :cond_3
    if-eqz v16, :cond_4

    .line 73
    invoke-interface/range {p3 .. p3}, Lio/netty/handler/codec/http/FullHttpMessage;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    invoke-static {v2, v13}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttp2Headers(Lio/netty/handler/codec/http/HttpHeaders;Z)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v9

    .line 74
    .local v9, "headers":Lio/netty/handler/codec/http2/Http2Headers;
    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v6, p2

    move-object/from16 v7, p0

    move v8, v0

    invoke-interface/range {v6 .. v11}, Lio/netty/handler/codec/http2/Http2FrameListener;->onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZ)V

    .line 76
    .end local v9    # "headers":Lio/netty/handler/codec/http2/Http2Headers;
    :cond_4
    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->closeRemoteSide()Lio/netty/handler/codec/http2/Http2Stream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    nop

    .end local v0    # "streamId":I
    .end local v5    # "messageHeaders":Lio/netty/handler/codec/http2/Http2Headers;
    .end local v12    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .end local v15    # "hasContent":Z
    .end local v16    # "hasTrailers":Z
    invoke-interface/range {p3 .. p3}, Lio/netty/handler/codec/http/FullHttpMessage;->release()Z

    .line 79
    nop

    .line 80
    return-void

    .line 78
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v14, p3

    :goto_3
    invoke-interface/range {p3 .. p3}, Lio/netty/handler/codec/http/FullHttpMessage;->release()Z

    .line 79
    throw v0
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    instance-of v0, p2, Lio/netty/handler/codec/http/FullHttpMessage;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lio/netty/handler/codec/http2/InboundHttpToHttp2Adapter;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    iget-object v1, p0, Lio/netty/handler/codec/http2/InboundHttpToHttp2Adapter;->listener:Lio/netty/handler/codec/http2/Http2FrameListener;

    move-object v2, p2

    check-cast v2, Lio/netty/handler/codec/http/FullHttpMessage;

    invoke-static {p1, v0, v1, v2}, Lio/netty/handler/codec/http2/InboundHttpToHttp2Adapter;->handle(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2FrameListener;Lio/netty/handler/codec/http/FullHttpMessage;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 50
    :goto_0
    return-void
.end method
