.class public Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;
.super Lio/netty/handler/codec/http2/Http2ConnectionHandler;
.source "HttpToHttp2ConnectionHandler.java"


# instance fields
.field private currentStreamId:I

.field private httpScheme:Lio/netty/handler/codec/http/HttpScheme;

.field private final validateHeaders:Z


# direct methods
.method protected constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;Z)V
    .locals 0
    .param p1, "decoder"    # Lio/netty/handler/codec/http2/Http2ConnectionDecoder;
    .param p2, "encoder"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .param p3, "initialSettings"    # Lio/netty/handler/codec/http2/Http2Settings;
    .param p4, "validateHeaders"    # Z

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;)V

    .line 47
    iput-boolean p4, p0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->validateHeaders:Z

    .line 48
    return-void
.end method

.method protected constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;ZZ)V
    .locals 7
    .param p1, "decoder"    # Lio/netty/handler/codec/http2/Http2ConnectionDecoder;
    .param p2, "encoder"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .param p3, "initialSettings"    # Lio/netty/handler/codec/http2/Http2Settings;
    .param p4, "validateHeaders"    # Z
    .param p5, "decoupleCloseAndGoAway"    # Z

    .line 53
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;ZZLio/netty/handler/codec/http/HttpScheme;)V

    .line 54
    return-void
.end method

.method protected constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;ZZLio/netty/handler/codec/http/HttpScheme;)V
    .locals 0
    .param p1, "decoder"    # Lio/netty/handler/codec/http2/Http2ConnectionDecoder;
    .param p2, "encoder"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .param p3, "initialSettings"    # Lio/netty/handler/codec/http2/Http2Settings;
    .param p4, "validateHeaders"    # Z
    .param p5, "decoupleCloseAndGoAway"    # Z
    .param p6, "httpScheme"    # Lio/netty/handler/codec/http/HttpScheme;

    .line 59
    invoke-direct {p0, p1, p2, p3, p5}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;Z)V

    .line 60
    iput-boolean p4, p0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->validateHeaders:Z

    .line 61
    iput-object p6, p0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->httpScheme:Lio/netty/handler/codec/http/HttpScheme;

    .line 62
    return-void
.end method

.method protected constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;ZZZLio/netty/handler/codec/http/HttpScheme;)V
    .locals 6
    .param p1, "decoder"    # Lio/netty/handler/codec/http2/Http2ConnectionDecoder;
    .param p2, "encoder"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .param p3, "initialSettings"    # Lio/netty/handler/codec/http2/Http2Settings;
    .param p4, "validateHeaders"    # Z
    .param p5, "decoupleCloseAndGoAway"    # Z
    .param p6, "flushPreface"    # Z
    .param p7, "httpScheme"    # Lio/netty/handler/codec/http/HttpScheme;

    .line 68
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;ZZ)V

    .line 69
    iput-boolean p4, p0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->validateHeaders:Z

    .line 70
    iput-object p7, p0, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->httpScheme:Lio/netty/handler/codec/http/HttpScheme;

    .line 71
    return-void
.end method

.method private getStreamId(Lio/netty/handler/codec/http/HttpHeaders;)I
    .locals 2
    .param p1, "httpHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    sget-object v0, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->incrementAndGetNextStreamId()I

    move-result v1

    .line 81
    invoke-virtual {p1, v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->getInt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method private static writeHeaders(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;ILio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http2/Http2Headers;ZLio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;)V
    .locals 13
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p1, "encoder"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .param p2, "streamId"    # I
    .param p3, "headers"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p4, "http2Headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p5, "endStream"    # Z
    .param p6, "promiseAggregator"    # Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;

    .line 159
    move-object/from16 v0, p3

    sget-object v1, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_DEPENDENCY_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    .line 160
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v1

    .line 159
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->getInt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 161
    .local v1, "dependencyId":I
    sget-object v2, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_WEIGHT:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    .line 162
    invoke-virtual {v2}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v2

    .line 161
    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->getShort(Ljava/lang/CharSequence;S)S

    move-result v2

    .line 163
    .local v2, "weight":S
    nop

    .line 164
    invoke-virtual/range {p6 .. p6}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v12

    .line 163
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    move-object v4, p0

    move v5, p2

    move-object/from16 v6, p4

    move v7, v1

    move v8, v2

    move/from16 v11, p5

    invoke-interface/range {v3 .. v12}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 165
    return-void
.end method


# virtual methods
.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 25
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 91
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    instance-of v0, v2, Lio/netty/handler/codec/http/HttpMessage;

    if-nez v0, :cond_0

    instance-of v0, v2, Lio/netty/handler/codec/http/HttpContent;

    if-nez v0, :cond_0

    .line 92
    invoke-interface/range {p1 .. p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 93
    return-void

    .line 96
    :cond_0
    const/4 v3, 0x1

    .line 97
    .local v3, "release":Z
    new-instance v0, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;

    .line 98
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v5

    move-object/from16 v6, p3

    invoke-direct {v0, v6, v4, v5}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;-><init>(Lio/netty/channel/ChannelPromise;Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    move-object v4, v0

    .line 100
    .local v4, "promiseAggregator":Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v8

    .line 101
    .local v8, "encoder":Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    const/4 v0, 0x0

    .line 102
    .local v0, "endStream":Z
    instance-of v7, v2, Lio/netty/handler/codec/http/HttpMessage;

    const/4 v14, 0x0

    if-eqz v7, :cond_3

    .line 103
    move-object v7, v2

    check-cast v7, Lio/netty/handler/codec/http/HttpMessage;

    move-object v15, v7

    .line 106
    .local v15, "httpMsg":Lio/netty/handler/codec/http/HttpMessage;
    invoke-interface {v15}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v7

    invoke-direct {v1, v7}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->getStreamId(Lio/netty/handler/codec/http/HttpHeaders;)I

    move-result v7

    iput v7, v1, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->currentStreamId:I

    .line 109
    iget-object v7, v1, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->httpScheme:Lio/netty/handler/codec/http/HttpScheme;

    if-eqz v7, :cond_1

    .line 110
    invoke-interface {v15}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v7

    sget-object v9, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->SCHEME:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v9}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v9

    invoke-virtual {v7, v9}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 111
    invoke-interface {v15}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v7

    sget-object v9, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->SCHEME:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v9}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v9

    iget-object v10, v1, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->httpScheme:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {v10}, Lio/netty/handler/codec/http/HttpScheme;->name()Lio/netty/util/AsciiString;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 115
    :cond_1
    iget-boolean v7, v1, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->validateHeaders:Z

    invoke-static {v15, v7}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttp2Headers(Lio/netty/handler/codec/http/HttpMessage;Z)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v11

    .line 116
    .local v11, "http2Headers":Lio/netty/handler/codec/http2/Http2Headers;
    instance-of v7, v2, Lio/netty/handler/codec/http/FullHttpMessage;

    if-eqz v7, :cond_2

    move-object v7, v2

    check-cast v7, Lio/netty/handler/codec/http/FullHttpMessage;

    invoke-interface {v7}, Lio/netty/handler/codec/http/FullHttpMessage;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v7

    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v7

    if-nez v7, :cond_2

    move v12, v5

    goto :goto_0

    :cond_2
    move v12, v14

    .line 117
    .end local v0    # "endStream":Z
    .local v12, "endStream":Z
    :goto_0
    iget v9, v1, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->currentStreamId:I

    invoke-interface {v15}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v10

    move-object/from16 v7, p1

    move-object v13, v4

    invoke-static/range {v7 .. v13}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;ILio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http2/Http2Headers;ZLio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;)V

    move v0, v12

    .line 121
    .end local v11    # "http2Headers":Lio/netty/handler/codec/http2/Http2Headers;
    .end local v12    # "endStream":Z
    .end local v15    # "httpMsg":Lio/netty/handler/codec/http/HttpMessage;
    .restart local v0    # "endStream":Z
    :cond_3
    if-nez v0, :cond_6

    instance-of v7, v2, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v7, :cond_6

    .line 122
    const/4 v7, 0x0

    .line 123
    .local v7, "isLastContent":Z
    sget-object v9, Lio/netty/handler/codec/http/EmptyHttpHeaders;->INSTANCE:Lio/netty/handler/codec/http/EmptyHttpHeaders;

    .line 124
    .local v9, "trailers":Lio/netty/handler/codec/http/HttpHeaders;
    sget-object v10, Lio/netty/handler/codec/http2/EmptyHttp2Headers;->INSTANCE:Lio/netty/handler/codec/http2/EmptyHttp2Headers;

    .line 125
    .local v10, "http2Trailers":Lio/netty/handler/codec/http2/Http2Headers;
    instance-of v11, v2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v11, :cond_4

    .line 126
    const/4 v7, 0x1

    .line 129
    move-object v11, v2

    check-cast v11, Lio/netty/handler/codec/http/LastHttpContent;

    .line 130
    .local v11, "lastContent":Lio/netty/handler/codec/http/LastHttpContent;
    invoke-interface {v11}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v12

    move-object v9, v12

    .line 131
    iget-boolean v12, v1, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->validateHeaders:Z

    invoke-static {v9, v12}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttp2Headers(Lio/netty/handler/codec/http/HttpHeaders;Z)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v12

    move-object v10, v12

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    goto :goto_1

    .line 125
    .end local v11    # "lastContent":Lio/netty/handler/codec/http/LastHttpContent;
    :cond_4
    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .line 135
    .end local v9    # "trailers":Lio/netty/handler/codec/http/HttpHeaders;
    .end local v10    # "http2Trailers":Lio/netty/handler/codec/http2/Http2Headers;
    .local v16, "trailers":Lio/netty/handler/codec/http/HttpHeaders;
    .local v17, "http2Trailers":Lio/netty/handler/codec/http2/Http2Headers;
    :goto_1
    move-object v9, v2

    check-cast v9, Lio/netty/handler/codec/http/HttpContent;

    invoke-interface {v9}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v21

    .line 136
    .local v21, "content":Lio/netty/buffer/ByteBuf;
    if-eqz v7, :cond_5

    invoke-virtual/range {v16 .. v16}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    move/from16 v23, v5

    goto :goto_2

    :cond_5
    move/from16 v23, v14

    .line 137
    .end local v0    # "endStream":Z
    .local v23, "endStream":Z
    :goto_2
    iget v0, v1, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->currentStreamId:I

    invoke-virtual {v4}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v24

    const/16 v22, 0x0

    move-object/from16 v18, v8

    move-object/from16 v19, p1

    move/from16 v20, v0

    invoke-interface/range {v18 .. v24}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 138
    const/4 v3, 0x0

    .line 140
    invoke-virtual/range {v16 .. v16}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 142
    iget v11, v1, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->currentStreamId:I

    const/4 v14, 0x1

    move-object/from16 v9, p1

    move-object v10, v8

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object v15, v4

    invoke-static/range {v9 .. v15}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;ILio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http2/Http2Headers;ZLio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v7    # "isLastContent":Z
    .end local v8    # "encoder":Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .end local v16    # "trailers":Lio/netty/handler/codec/http/HttpHeaders;
    .end local v17    # "http2Trailers":Lio/netty/handler/codec/http2/Http2Headers;
    .end local v21    # "content":Lio/netty/buffer/ByteBuf;
    .end local v23    # "endStream":Z
    :cond_6
    if-eqz v3, :cond_7

    .line 150
    invoke-static/range {p2 .. p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 152
    :cond_7
    invoke-virtual {v4}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->doneAllocatingPromises()Lio/netty/channel/ChannelPromise;

    .line 153
    move-object/from16 v7, p1

    goto :goto_3

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    .local v0, "t":Ljava/lang/Throwable;
    move-object/from16 v7, p1

    :try_start_1
    invoke-virtual {v1, v7, v5, v0}, Lio/netty/handler/codec/http2/HttpToHttp2ConnectionHandler;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    .line 147
    invoke-virtual {v4, v0}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    nop

    .end local v0    # "t":Ljava/lang/Throwable;
    if-eqz v3, :cond_8

    .line 150
    invoke-static/range {p2 .. p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 152
    :cond_8
    invoke-virtual {v4}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->doneAllocatingPromises()Lio/netty/channel/ChannelPromise;

    .line 153
    nop

    .line 154
    :goto_3
    return-void

    .line 149
    :catchall_1
    move-exception v0

    if-eqz v3, :cond_9

    .line 150
    invoke-static/range {p2 .. p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 152
    :cond_9
    invoke-virtual {v4}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->doneAllocatingPromises()Lio/netty/channel/ChannelPromise;

    .line 153
    throw v0
.end method
