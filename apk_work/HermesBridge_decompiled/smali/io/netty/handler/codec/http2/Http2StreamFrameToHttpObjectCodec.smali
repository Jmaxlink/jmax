.class public Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;
.super Lio/netty/handler/codec/MessageToMessageCodec;
.source "Http2StreamFrameToHttpObjectCodec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageCodec<",
        "Lio/netty/handler/codec/http2/Http2StreamFrame;",
        "Lio/netty/handler/codec/http/HttpObject;",
        ">;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field private static final SCHEME_ATTR_KEY:Lio/netty/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/AttributeKey<",
            "Lio/netty/handler/codec/http/HttpScheme;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final isServer:Z

.field private final validateHeaders:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    const-class v0, Lio/netty/handler/codec/http/HttpScheme;

    .line 65
    const-string v1, "STREAMFRAMECODEC_SCHEME"

    invoke-static {v0, v1}, Lio/netty/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/AttributeKey;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->SCHEME_ATTR_KEY:Lio/netty/util/AttributeKey;

    .line 64
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isServer"    # Z

    .line 77
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;-><init>(ZZ)V

    .line 78
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "isServer"    # Z
    .param p2, "validateHeaders"    # Z

    .line 71
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageCodec;-><init>()V

    .line 72
    iput-boolean p1, p0, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->isServer:Z

    .line 73
    iput-boolean p2, p0, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->validateHeaders:Z

    .line 74
    return-void
.end method

.method private static connectionChannel(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/channel/Channel;
    .locals 2
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 252
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 253
    .local v0, "ch":Lio/netty/channel/Channel;
    instance-of v1, v0, Lio/netty/handler/codec/http2/Http2StreamChannel;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lio/netty/channel/Channel;->parent()Lio/netty/channel/Channel;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private static connectionScheme(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/codec/http/HttpScheme;
    .locals 2
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 242
    invoke-static {p0}, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->connectionSchemeAttribute(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpScheme;

    .line 243
    .local v0, "scheme":Lio/netty/handler/codec/http/HttpScheme;
    if-nez v0, :cond_0

    sget-object v1, Lio/netty/handler/codec/http/HttpScheme;->HTTP:Lio/netty/handler/codec/http/HttpScheme;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private static connectionSchemeAttribute(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/util/Attribute;
    .locals 2
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            ")",
            "Lio/netty/util/Attribute<",
            "Lio/netty/handler/codec/http/HttpScheme;",
            ">;"
        }
    .end annotation

    .line 247
    invoke-static {p0}, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->connectionChannel(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/channel/Channel;

    move-result-object v0

    .line 248
    .local v0, "ch":Lio/netty/channel/Channel;
    sget-object v1, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->SCHEME_ATTR_KEY:Lio/netty/util/AttributeKey;

    invoke-interface {v0, v1}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v1

    return-object v1
.end method

.method private encodeLastContent(Lio/netty/handler/codec/http/LastHttpContent;Ljava/util/List;)V
    .locals 5
    .param p1, "last"    # Lio/netty/handler/codec/http/LastHttpContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/LastHttpContent;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 131
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v0, p1, Lio/netty/handler/codec/http/FullHttpMessage;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    .local v0, "needFiller":Z
    :goto_0
    invoke-interface {p1}, Lio/netty/handler/codec/http/LastHttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    .line 133
    :cond_1
    new-instance v2, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    invoke-interface {p1}, Lio/netty/handler/codec/http/LastHttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-interface {p1}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v4

    invoke-direct {v2, v3, v4}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_2
    invoke-interface {p1}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 136
    invoke-interface {p1}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    iget-boolean v3, p0, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->validateHeaders:Z

    invoke-static {v2, v3}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttp2Headers(Lio/netty/handler/codec/http/HttpHeaders;Z)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v2

    .line 137
    .local v2, "headers":Lio/netty/handler/codec/http2/Http2Headers;
    new-instance v3, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;

    invoke-direct {v3, v2, v1}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;-><init>(Lio/netty/handler/codec/http2/Http2Headers;Z)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v2    # "headers":Lio/netty/handler/codec/http2/Http2Headers;
    :cond_3
    return-void
.end method

.method private static isContentAlwaysEmpty(Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "status"    # Ljava/lang/CharSequence;

    .line 277
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 278
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 279
    .local v0, "char0":C
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 280
    .local v3, "char1":C
    const/4 v4, 0x2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 281
    .local v4, "char2":C
    const/16 v5, 0x32

    if-eq v0, v5, :cond_0

    const/16 v5, 0x33

    if-ne v0, v5, :cond_1

    :cond_0
    const/16 v5, 0x30

    if-ne v3, v5, :cond_1

    const/16 v5, 0x34

    if-ne v4, v5, :cond_1

    move v2, v1

    :cond_1
    return v2

    .line 285
    .end local v0    # "char0":C
    .end local v3    # "char1":C
    .end local v4    # "char2":C
    :cond_2
    return v2
.end method

.method private static isInformationalResponseHeaderFrame(Ljava/lang/CharSequence;)Z
    .locals 8
    .param p0, "status"    # Ljava/lang/CharSequence;

    .line 261
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 262
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 263
    .local v0, "char0":C
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 264
    .local v3, "char1":C
    const/4 v4, 0x2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 265
    .local v4, "char2":C
    const/16 v5, 0x31

    if-ne v0, v5, :cond_0

    const/16 v6, 0x30

    if-lt v3, v6, :cond_0

    const/16 v7, 0x39

    if-gt v3, v7, :cond_0

    if-lt v4, v6, :cond_0

    if-gt v4, v7, :cond_0

    if-eq v4, v5, :cond_0

    move v2, v1

    :cond_0
    return v2

    .line 269
    .end local v0    # "char0":C
    .end local v3    # "char1":C
    .end local v4    # "char2":C
    :cond_1
    return v2
.end method

.method private newFullMessage(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 1
    .param p1, "id"    # I
    .param p2, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p3, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 215
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->isServer:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->validateHeaders:Z

    .line 216
    invoke-static {p1, p2, p3, v0}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toFullHttpRequest(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBufAllocator;Z)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->validateHeaders:Z

    .line 217
    invoke-static {p1, p2, p3, v0}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toFullHttpResponse(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBufAllocator;Z)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0
.end method

.method private newMessage(ILio/netty/handler/codec/http2/Http2Headers;)Lio/netty/handler/codec/http/HttpMessage;
    .locals 1
    .param p1, "id"    # I
    .param p2, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 207
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->isServer:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->validateHeaders:Z

    .line 208
    invoke-static {p1, p2, v0}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttpRequest(ILio/netty/handler/codec/http2/Http2Headers;Z)Lio/netty/handler/codec/http/HttpRequest;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->validateHeaders:Z

    .line 209
    invoke-static {p1, p2, v0}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttpResponse(ILio/netty/handler/codec/http2/Http2Headers;Z)Lio/netty/handler/codec/http/HttpResponse;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0
.end method

.method private toHttp2Headers(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpMessage;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 196
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->SCHEME:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    .line 198
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v1

    .line 199
    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->connectionScheme(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/codec/http/HttpScheme;

    move-result-object v2

    .line 197
    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 202
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->validateHeaders:Z

    invoke-static {p2, v0}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttp2Headers(Lio/netty/handler/codec/http/HttpMessage;Z)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acceptInboundMessage(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2HeadersFrame;

    if-nez v0, :cond_1

    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2DataFrame;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2StreamFrame;Ljava/util/List;)V
    .locals 12
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "frame"    # Lio/netty/handler/codec/http2/Http2StreamFrame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/handler/codec/http2/Http2StreamFrame;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2HeadersFrame;

    if-eqz v0, :cond_6

    .line 88
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2HeadersFrame;

    .line 89
    .local v0, "headersFrame":Lio/netty/handler/codec/http2/Http2HeadersFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->headers()Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v7

    .line 90
    .local v7, "headers":Lio/netty/handler/codec/http2/Http2Headers;
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v8

    .line 91
    .local v8, "stream":Lio/netty/handler/codec/http2/Http2FrameStream;
    if-nez v8, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v8}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v1

    :goto_0
    move v9, v1

    .line 93
    .local v9, "id":I
    invoke-interface {v7}, Lio/netty/handler/codec/http2/Http2Headers;->status()Ljava/lang/CharSequence;

    move-result-object v10

    .line 97
    .local v10, "status":Ljava/lang/CharSequence;
    if-eqz v10, :cond_1

    invoke-static {v10}, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->isInformationalResponseHeaderFrame(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-direct {p0, v9, v7, v1}, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->newFullMessage(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v1

    .line 99
    .local v1, "fullMsg":Lio/netty/handler/codec/http/FullHttpMessage;
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-void

    .line 103
    .end local v1    # "fullMsg":Lio/netty/handler/codec/http/FullHttpMessage;
    :cond_1
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->isEndStream()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    invoke-interface {v7}, Lio/netty/handler/codec/http2/Http2Headers;->method()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_2

    if-nez v10, :cond_2

    .line 105
    new-instance v1, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    sget-object v2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    iget-boolean v3, p0, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->validateHeaders:Z

    invoke-direct {v1, v2, v3}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    move-object v11, v1

    .line 106
    .local v11, "last":Lio/netty/handler/codec/http/LastHttpContent;
    invoke-interface {v11}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move v1, v9

    move-object v2, v7

    invoke-static/range {v1 .. v6}, Lio/netty/handler/codec/http2/HttpConversionUtil;->addHttp2ToHttpHeaders(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpVersion;ZZ)V

    .line 108
    invoke-interface {p3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v11    # "last":Lio/netty/handler/codec/http/LastHttpContent;
    goto :goto_1

    .line 110
    :cond_2
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-direct {p0, v9, v7, v1}, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->newFullMessage(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v1

    .line 111
    .local v1, "full":Lio/netty/handler/codec/http/FullHttpMessage;
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v1    # "full":Lio/netty/handler/codec/http/FullHttpMessage;
    goto :goto_1

    .line 114
    :cond_3
    invoke-direct {p0, v9, v7}, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->newMessage(ILio/netty/handler/codec/http2/Http2Headers;)Lio/netty/handler/codec/http/HttpMessage;

    move-result-object v1

    .line 115
    .local v1, "req":Lio/netty/handler/codec/http/HttpMessage;
    if-eqz v10, :cond_4

    invoke-static {v10}, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->isContentAlwaysEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    invoke-static {v1}, Lio/netty/handler/codec/http/HttpUtil;->isContentLengthSet(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 116
    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderValues;->CHUNKED:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v3, v4}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 118
    :cond_5
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    .end local v0    # "headersFrame":Lio/netty/handler/codec/http2/Http2HeadersFrame;
    .end local v1    # "req":Lio/netty/handler/codec/http/HttpMessage;
    .end local v7    # "headers":Lio/netty/handler/codec/http2/Http2Headers;
    .end local v8    # "stream":Lio/netty/handler/codec/http2/Http2FrameStream;
    .end local v9    # "id":I
    .end local v10    # "status":Ljava/lang/CharSequence;
    :cond_6
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2DataFrame;

    if-eqz v0, :cond_8

    .line 121
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2DataFrame;

    .line 122
    .local v0, "dataFrame":Lio/netty/handler/codec/http2/Http2DataFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2DataFrame;->isEndStream()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 123
    new-instance v1, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2DataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    iget-boolean v3, p0, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->validateHeaders:Z

    invoke-direct {v1, v2, v3}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 125
    :cond_7
    new-instance v1, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2DataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 120
    .end local v0    # "dataFrame":Lio/netty/handler/codec/http2/Http2DataFrame;
    :cond_8
    :goto_1
    nop

    .line 128
    :goto_2
    return-void
.end method

.method protected bridge synthetic decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    check-cast p2, Lio/netty/handler/codec/http2/Http2StreamFrame;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2StreamFrame;Ljava/util/List;)V

    return-void
.end method

.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;Ljava/util/List;)V
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "obj"    # Lio/netty/handler/codec/http/HttpObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/handler/codec/http/HttpObject;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 158
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpResponse;

    .line 159
    .local v0, "res":Lio/netty/handler/codec/http/HttpResponse;
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    .line 160
    .local v2, "status":Lio/netty/handler/codec/http/HttpResponseStatus;
    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v3

    .line 161
    .local v3, "code":I
    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpResponseStatus;->codeClass()Lio/netty/handler/codec/http/HttpStatusClass;

    move-result-object v4

    .line 164
    .local v4, "statusClass":Lio/netty/handler/codec/http/HttpStatusClass;
    sget-object v5, Lio/netty/handler/codec/http/HttpStatusClass;->INFORMATIONAL:Lio/netty/handler/codec/http/HttpStatusClass;

    if-ne v4, v5, :cond_1

    const/16 v5, 0x65

    if-eq v3, v5, :cond_1

    .line 165
    instance-of v5, v0, Lio/netty/handler/codec/http/FullHttpResponse;

    if-eqz v5, :cond_0

    .line 166
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->toHttp2Headers(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpMessage;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v5

    .line 167
    .local v5, "headers":Lio/netty/handler/codec/http2/Http2Headers;
    new-instance v6, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;

    invoke-direct {v6, v5, v1}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;-><init>(Lio/netty/handler/codec/http2/Http2Headers;Z)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-void

    .line 170
    .end local v5    # "headers":Lio/netty/handler/codec/http2/Http2Headers;
    :cond_0
    new-instance v1, Lio/netty/handler/codec/EncoderException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must be a FullHttpResponse"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    .end local v0    # "res":Lio/netty/handler/codec/http/HttpResponse;
    .end local v2    # "status":Lio/netty/handler/codec/http/HttpResponseStatus;
    .end local v3    # "code":I
    .end local v4    # "statusClass":Lio/netty/handler/codec/http/HttpStatusClass;
    :cond_1
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpMessage;

    if-eqz v0, :cond_4

    .line 176
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpMessage;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->toHttp2Headers(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpMessage;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v0

    .line 177
    .local v0, "headers":Lio/netty/handler/codec/http2/Http2Headers;
    const/4 v2, 0x0

    .line 178
    .local v2, "noMoreFrames":Z
    instance-of v3, p2, Lio/netty/handler/codec/http/FullHttpMessage;

    if-eqz v3, :cond_3

    .line 179
    move-object v3, p2

    check-cast v3, Lio/netty/handler/codec/http/FullHttpMessage;

    .line 180
    .local v3, "full":Lio/netty/handler/codec/http/FullHttpMessage;
    invoke-interface {v3}, Lio/netty/handler/codec/http/FullHttpMessage;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lio/netty/handler/codec/http/FullHttpMessage;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    move v2, v4

    .line 183
    .end local v3    # "full":Lio/netty/handler/codec/http/FullHttpMessage;
    :cond_3
    new-instance v3, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;

    invoke-direct {v3, v0, v2}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;-><init>(Lio/netty/handler/codec/http2/Http2Headers;Z)V

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v0    # "headers":Lio/netty/handler/codec/http2/Http2Headers;
    .end local v2    # "noMoreFrames":Z
    :cond_4
    instance-of v0, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v0, :cond_5

    .line 187
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/LastHttpContent;

    .line 188
    .local v0, "last":Lio/netty/handler/codec/http/LastHttpContent;
    invoke-direct {p0, v0, p3}, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->encodeLastContent(Lio/netty/handler/codec/http/LastHttpContent;Ljava/util/List;)V

    .end local v0    # "last":Lio/netty/handler/codec/http/LastHttpContent;
    goto :goto_1

    .line 189
    :cond_5
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v0, :cond_6

    .line 190
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpContent;

    .line 191
    .local v0, "cont":Lio/netty/handler/codec/http/HttpContent;
    new-instance v2, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 189
    .end local v0    # "cont":Lio/netty/handler/codec/http/HttpContent;
    :cond_6
    :goto_1
    nop

    .line 193
    :goto_2
    return-void
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    check-cast p2, Lio/netty/handler/codec/http/HttpObject;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;Ljava/util/List;)V

    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 222
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToMessageCodec;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 229
    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->connectionSchemeAttribute(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/util/Attribute;

    move-result-object v0

    .line 230
    .local v0, "schemeAttribute":Lio/netty/util/Attribute;, "Lio/netty/util/Attribute<Lio/netty/handler/codec/http/HttpScheme;>;"
    invoke-interface {v0}, Lio/netty/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 231
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->isSsl(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lio/netty/handler/codec/http/HttpScheme;->HTTPS:Lio/netty/handler/codec/http/HttpScheme;

    goto :goto_0

    :cond_0
    sget-object v1, Lio/netty/handler/codec/http/HttpScheme;->HTTP:Lio/netty/handler/codec/http/HttpScheme;

    .line 232
    .local v1, "scheme":Lio/netty/handler/codec/http/HttpScheme;
    :goto_0
    invoke-interface {v0, v1}, Lio/netty/util/Attribute;->set(Ljava/lang/Object;)V

    .line 234
    .end local v1    # "scheme":Lio/netty/handler/codec/http/HttpScheme;
    :cond_1
    return-void
.end method

.method protected isSsl(Lio/netty/channel/ChannelHandlerContext;)Z
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 237
    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2StreamFrameToHttpObjectCodec;->connectionChannel(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/channel/Channel;

    move-result-object v0

    .line 238
    .local v0, "connChannel":Lio/netty/channel/Channel;
    invoke-interface {v0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    const-class v2, Lio/netty/handler/ssl/SslHandler;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
