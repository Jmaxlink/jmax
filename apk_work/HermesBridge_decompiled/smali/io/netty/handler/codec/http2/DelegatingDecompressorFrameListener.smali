.class public Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;
.super Lio/netty/handler/codec/http2/Http2FrameListenerDecorator;
.source "DelegatingDecompressorFrameListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;,
        Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$ConsumedBytesConverter;
    }
.end annotation


# instance fields
.field private final connection:Lio/netty/handler/codec/http2/Http2Connection;

.field private flowControllerInitialized:Z

.field private final propertyKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

.field private final strict:Z


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2FrameListener;)V
    .locals 1
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;
    .param p2, "listener"    # Lio/netty/handler/codec/http2/Http2FrameListener;

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;-><init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2FrameListener;Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2FrameListener;Z)V
    .locals 1
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;
    .param p2, "listener"    # Lio/netty/handler/codec/http2/Http2FrameListener;
    .param p3, "strict"    # Z

    .line 61
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/Http2FrameListenerDecorator;-><init>(Lio/netty/handler/codec/http2/Http2FrameListener;)V

    .line 62
    iput-object p1, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    .line 63
    iput-boolean p3, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->strict:Z

    .line 65
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->propertyKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    .line 66
    new-instance v0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$1;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$1;-><init>(Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;)V

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Connection;->addListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;

    .line 48
    invoke-static {p0}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->cleanup(Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;)V

    return-void
.end method

.method private static cleanup(Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;)V
    .locals 1
    .param p0, "decompressor"    # Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;

    .line 272
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;->decompressor()Lio/netty/channel/embedded/EmbeddedChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->finishAndReleaseAll()Z

    .line 273
    return-void
.end method

.method private initDecompressor(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;Z)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "endOfStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 221
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    if-nez v0, :cond_0

    .line 222
    return-void

    .line 225
    :cond_0
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->decompressor(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;

    move-result-object v1

    .line 226
    .local v1, "decompressor":Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;
    if-nez v1, :cond_3

    if-nez p4, :cond_3

    .line 228
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_ENCODING:Lio/netty/util/AsciiString;

    invoke-interface {p3, v2}, Lio/netty/handler/codec/http2/Http2Headers;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 229
    .local v2, "contentEncoding":Ljava/lang/CharSequence;
    if-nez v2, :cond_1

    .line 230
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderValues;->IDENTITY:Lio/netty/util/AsciiString;

    .line 232
    :cond_1
    invoke-virtual {p0, p1, v2}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->newContentDecompressor(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/CharSequence;)Lio/netty/channel/embedded/EmbeddedChannel;

    move-result-object v3

    .line 233
    .local v3, "channel":Lio/netty/channel/embedded/EmbeddedChannel;
    if-eqz v3, :cond_3

    .line 234
    new-instance v4, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;

    invoke-direct {v4, v3}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;-><init>(Lio/netty/channel/embedded/EmbeddedChannel;)V

    move-object v1, v4

    .line 235
    iget-object v4, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->propertyKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {v0, v4, v1}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {p0, v2}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->getTargetContentEncoding(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 239
    .local v4, "targetContentEncoding":Ljava/lang/CharSequence;
    sget-object v5, Lio/netty/handler/codec/http/HttpHeaderValues;->IDENTITY:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v4}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 240
    sget-object v5, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_ENCODING:Lio/netty/util/AsciiString;

    invoke-interface {p3, v5}, Lio/netty/handler/codec/http2/Http2Headers;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_2
    sget-object v5, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_ENCODING:Lio/netty/util/AsciiString;

    invoke-interface {p3, v5, v4}, Lio/netty/handler/codec/http2/Http2Headers;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 247
    .end local v2    # "contentEncoding":Ljava/lang/CharSequence;
    .end local v3    # "channel":Lio/netty/channel/embedded/EmbeddedChannel;
    .end local v4    # "targetContentEncoding":Ljava/lang/CharSequence;
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 251
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-interface {p3, v2}, Lio/netty/handler/codec/http2/Http2Headers;->remove(Ljava/lang/Object;)Z

    .line 255
    iget-boolean v2, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->flowControllerInitialized:Z

    if-nez v2, :cond_4

    .line 256
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->flowControllerInitialized:Z

    .line 257
    iget-object v2, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v2

    new-instance v3, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$ConsumedBytesConverter;

    iget-object v4, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v4}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController()Lio/netty/handler/codec/http2/Http2FlowController;

    move-result-object v4

    check-cast v4, Lio/netty/handler/codec/http2/Http2LocalFlowController;

    invoke-direct {v3, p0, v4}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$ConsumedBytesConverter;-><init>(Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;Lio/netty/handler/codec/http2/Http2LocalFlowController;)V

    invoke-interface {v2, v3}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController(Lio/netty/handler/codec/http2/Http2FlowController;)V

    .line 260
    :cond_4
    return-void
.end method

.method private static nextReadableBuf(Lio/netty/channel/embedded/EmbeddedChannel;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "decompressor"    # Lio/netty/channel/embedded/EmbeddedChannel;

    .line 284
    nop

    :goto_0
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->readInbound()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 285
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    if-nez v0, :cond_0

    .line 286
    const/4 v1, 0x0

    return-object v1

    .line 288
    :cond_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 290
    goto :goto_0

    .line 292
    :cond_1
    return-object v0
.end method


# virtual methods
.method decompressor(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 263
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->propertyKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;

    :goto_0
    return-object v0
.end method

.method protected getTargetContentEncoding(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "contentEncoding"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 205
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->IDENTITY:Lio/netty/util/AsciiString;

    return-object v0
.end method

.method protected newContentDecompressor(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/CharSequence;)Lio/netty/channel/embedded/EmbeddedChannel;
    .locals 8
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "contentEncoding"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 173
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->GZIP:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->X_GZIP:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 177
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->DEFLATE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->X_DEFLATE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 183
    :cond_1
    invoke-static {}, Lio/netty/handler/codec/compression/Brotli;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->BR:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    new-instance v0, Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object v3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v4

    .line 185
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v5

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    new-instance v6, Lio/netty/handler/codec/compression/BrotliDecoder;

    invoke-direct {v6}, Lio/netty/handler/codec/compression/BrotliDecoder;-><init>()V

    aput-object v6, v2, v1

    invoke-direct {v0, v3, v4, v5, v2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    .line 184
    return-object v0

    .line 187
    :cond_2
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->SNAPPY:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    new-instance v0, Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object v3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v4

    .line 189
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v5

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    new-instance v6, Lio/netty/handler/codec/compression/SnappyFrameDecoder;

    invoke-direct {v6}, Lio/netty/handler/codec/compression/SnappyFrameDecoder;-><init>()V

    aput-object v6, v2, v1

    invoke-direct {v0, v3, v4, v5, v2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    .line 188
    return-object v0

    .line 192
    :cond_3
    const/4 v0, 0x0

    return-object v0

    .line 178
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->strict:Z

    if-eqz v0, :cond_5

    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    goto :goto_1

    :cond_5
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB_OR_NONE:Lio/netty/handler/codec/compression/ZlibWrapper;

    .line 180
    .local v0, "wrapper":Lio/netty/handler/codec/compression/ZlibWrapper;
    :goto_1
    new-instance v3, Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object v4

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v5

    .line 181
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v6

    invoke-interface {v6}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v6

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    invoke-static {v0}, Lio/netty/handler/codec/compression/ZlibCodecFactory;->newZlibDecoder(Lio/netty/handler/codec/compression/ZlibWrapper;)Lio/netty/handler/codec/compression/ZlibDecoder;

    move-result-object v7

    aput-object v7, v2, v1

    invoke-direct {v3, v4, v5, v6, v2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    .line 180
    return-object v3

    .line 174
    .end local v0    # "wrapper":Lio/netty/handler/codec/compression/ZlibWrapper;
    :cond_6
    :goto_2
    new-instance v0, Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object v3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v4

    .line 175
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v5

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    sget-object v6, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    invoke-static {v6}, Lio/netty/handler/codec/compression/ZlibCodecFactory;->newZlibDecoder(Lio/netty/handler/codec/compression/ZlibWrapper;)Lio/netty/handler/codec/compression/ZlibDecoder;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-direct {v0, v3, v4, v5, v2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    .line 174
    return-object v0
.end method

.method public onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I
    .locals 18
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

    .line 80
    move-object/from16 v1, p0

    move/from16 v8, p4

    iget-object v0, v1, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    move/from16 v9, p2

    invoke-interface {v0, v9}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v10

    .line 81
    .local v10, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    invoke-virtual {v1, v10}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->decompressor(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;

    move-result-object v11

    .line 82
    .local v11, "decompressor":Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;
    if-nez v11, :cond_0

    .line 84
    iget-object v2, v1, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->listener:Lio/netty/handler/codec/http2/Http2FrameListener;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lio/netty/handler/codec/http2/Http2FrameListener;->onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I

    move-result v0

    return v0

    .line 87
    :cond_0
    invoke-virtual {v11}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;->decompressor()Lio/netty/channel/embedded/EmbeddedChannel;

    move-result-object v12

    .line 88
    .local v12, "channel":Lio/netty/channel/embedded/EmbeddedChannel;
    invoke-virtual/range {p3 .. p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    add-int v13, v0, v8

    .line 89
    .local v13, "compressedBytes":I
    invoke-virtual {v11, v13}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;->incrementCompressedBytes(I)V

    .line 92
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    const/4 v14, 0x0

    aput-object v3, v2, v14

    invoke-virtual {v12, v2}, Lio/netty/channel/embedded/EmbeddedChannel;->writeInbound([Ljava/lang/Object;)Z

    .line 93
    invoke-static {v12}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->nextReadableBuf(Lio/netty/channel/embedded/EmbeddedChannel;)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 94
    .local v2, "buf":Lio/netty/buffer/ByteBuf;
    if-nez v2, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {v12}, Lio/netty/channel/embedded/EmbeddedChannel;->finish()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    invoke-static {v12}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->nextReadableBuf(Lio/netty/channel/embedded/EmbeddedChannel;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    move-object v2, v3

    move-object v15, v2

    goto :goto_0

    .line 97
    :cond_1
    move-object v15, v2

    .end local v2    # "buf":Lio/netty/buffer/ByteBuf;
    .local v15, "buf":Lio/netty/buffer/ByteBuf;
    :goto_0
    if-nez v15, :cond_3

    .line 98
    if-eqz p5, :cond_2

    .line 99
    iget-object v2, v1, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->listener:Lio/netty/handler/codec/http2/Http2FrameListener;

    sget-object v5, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    const/4 v7, 0x1

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p4

    invoke-interface/range {v2 .. v7}, Lio/netty/handler/codec/http2/Http2FrameListener;->onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I

    .line 105
    :cond_2
    invoke-virtual {v11, v13}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;->incrementDecompressedBytes(I)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 106
    return v13

    .line 109
    :cond_3
    :try_start_1
    iget-object v2, v1, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController()Lio/netty/handler/codec/http2/Http2FlowController;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/http2/Http2LocalFlowController;

    move-object v7, v2

    .line 110
    .local v7, "flowController":Lio/netty/handler/codec/http2/Http2LocalFlowController;
    invoke-virtual {v11, v8}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;->incrementDecompressedBytes(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    .end local p4    # "padding":I
    .local v8, "padding":I
    :goto_1
    :try_start_2
    invoke-static {v12}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->nextReadableBuf(Lio/netty/channel/embedded/EmbeddedChannel;)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 113
    .local v2, "nextBuf":Lio/netty/buffer/ByteBuf;
    if-nez v2, :cond_4

    if-eqz p5, :cond_4

    move v3, v0

    goto :goto_2

    :cond_4
    move v3, v14

    .line 114
    .local v3, "decompressedEndOfStream":Z
    :goto_2
    if-eqz v3, :cond_6

    invoke-virtual {v12}, Lio/netty/channel/embedded/EmbeddedChannel;->finish()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 115
    invoke-static {v12}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->nextReadableBuf(Lio/netty/channel/embedded/EmbeddedChannel;)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    move-object v2, v4

    .line 116
    if-nez v2, :cond_5

    move v4, v0

    goto :goto_3

    :cond_5
    move v4, v14

    :goto_3
    move v3, v4

    move-object/from16 v16, v2

    move/from16 v17, v3

    goto :goto_4

    .line 119
    :cond_6
    move-object/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "nextBuf":Lio/netty/buffer/ByteBuf;
    .end local v3    # "decompressedEndOfStream":Z
    .local v16, "nextBuf":Lio/netty/buffer/ByteBuf;
    .local v17, "decompressedEndOfStream":Z
    :goto_4
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-virtual {v11, v2}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;->incrementDecompressedBytes(I)V

    .line 123
    iget-object v2, v1, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->listener:Lio/netty/handler/codec/http2/Http2FrameListener;

    .line 124
    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v15

    move v6, v8

    move-object v0, v7

    .end local v7    # "flowController":Lio/netty/handler/codec/http2/Http2LocalFlowController;
    .local v0, "flowController":Lio/netty/handler/codec/http2/Http2LocalFlowController;
    move/from16 v7, v17

    invoke-interface/range {v2 .. v7}, Lio/netty/handler/codec/http2/Http2FrameListener;->onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I

    move-result v2

    .line 123
    invoke-interface {v0, v10, v2}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    if-nez v16, :cond_7

    .line 126
    nop

    .line 136
    .end local v16    # "nextBuf":Lio/netty/buffer/ByteBuf;
    .end local v17    # "decompressedEndOfStream":Z
    nop

    .line 138
    :try_start_3
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_3
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 136
    return v14

    .line 129
    .restart local v16    # "nextBuf":Lio/netty/buffer/ByteBuf;
    .restart local v17    # "decompressedEndOfStream":Z
    :cond_7
    const/4 v8, 0x0

    .line 130
    :try_start_4
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 131
    move-object/from16 v15, v16

    .line 132
    .end local v16    # "nextBuf":Lio/netty/buffer/ByteBuf;
    .end local v17    # "decompressedEndOfStream":Z
    move-object v7, v0

    const/4 v0, 0x1

    goto :goto_1

    .line 138
    .end local v0    # "flowController":Lio/netty/handler/codec/http2/Http2LocalFlowController;
    :catchall_0
    move-exception v0

    goto :goto_5

    .end local v8    # "padding":I
    .restart local p4    # "padding":I
    :catchall_1
    move-exception v0

    .end local p4    # "padding":I
    .restart local v8    # "padding":I
    :goto_5
    :try_start_5
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 139
    nop

    .end local v8    # "padding":I
    .end local v10    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .end local v11    # "decompressor":Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;
    .end local v12    # "channel":Lio/netty/channel/embedded/EmbeddedChannel;
    .end local v13    # "compressedBytes":I
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "streamId":I
    .end local p3    # "data":Lio/netty/buffer/ByteBuf;
    .end local p5    # "endOfStream":Z
    throw v0
    :try_end_5
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 142
    .end local v15    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local v8    # "padding":I
    .restart local v10    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .restart local v11    # "decompressor":Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;
    .restart local v12    # "channel":Lio/netty/channel/embedded/EmbeddedChannel;
    .restart local v13    # "compressedBytes":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "streamId":I
    .restart local p3    # "data":Lio/netty/buffer/ByteBuf;
    .restart local p5    # "endOfStream":Z
    :catchall_2
    move-exception v0

    goto :goto_6

    .line 140
    :catch_0
    move-exception v0

    goto :goto_7

    .line 142
    .end local v8    # "padding":I
    .restart local p4    # "padding":I
    :catchall_3
    move-exception v0

    .line 143
    .end local p4    # "padding":I
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v8    # "padding":I
    :goto_6
    invoke-interface {v10}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v2

    sget-object v3, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 144
    invoke-interface {v10}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 143
    const-string v5, "Decompressor error detected while delegating data read on streamId %d"

    invoke-static {v2, v3, v0, v5, v4}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v2

    throw v2

    .line 140
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v8    # "padding":I
    .restart local p4    # "padding":I
    :catch_1
    move-exception v0

    .line 141
    .end local p4    # "padding":I
    .local v0, "e":Lio/netty/handler/codec/http2/Http2Exception;
    .restart local v8    # "padding":I
    :goto_7
    throw v0
.end method

.method public onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V
    .locals 14
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "streamDependency"    # I
    .param p5, "weight"    # S
    .param p6, "exclusive"    # Z
    .param p7, "padding"    # I
    .param p8, "endStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 158
    move-object v0, p0

    move-object v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p8

    invoke-direct {p0, p1, v11, v12, v13}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->initDecompressor(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;Z)V

    .line 159
    iget-object v1, v0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->listener:Lio/netty/handler/codec/http2/Http2FrameListener;

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lio/netty/handler/codec/http2/Http2FrameListener;->onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V

    .line 160
    return-void
.end method

.method public onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZ)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "padding"    # I
    .param p5, "endStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1, p2, p3, p5}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->initDecompressor(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;Z)V

    .line 152
    iget-object v0, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->listener:Lio/netty/handler/codec/http2/Http2FrameListener;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lio/netty/handler/codec/http2/Http2FrameListener;->onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZ)V

    .line 153
    return-void
.end method
