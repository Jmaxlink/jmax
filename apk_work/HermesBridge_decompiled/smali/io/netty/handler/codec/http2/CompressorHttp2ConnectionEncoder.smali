.class public Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;
.super Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;
.source "CompressorHttp2ConnectionEncoder.java"


# static fields
.field public static final DEFAULT_COMPRESSION_LEVEL:I = 0x6

.field public static final DEFAULT_MEM_LEVEL:I = 0x8

.field public static final DEFAULT_WINDOW_BITS:I = 0xf


# instance fields
.field private brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

.field private compressionLevel:I

.field private deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

.field private gzipCompressionOptions:Lio/netty/handler/codec/compression/GzipOptions;

.field private memLevel:I

.field private final propertyKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

.field private snappyOptions:Lio/netty/handler/codec/compression/SnappyOptions;

.field private final supportsCompressionOptions:Z

.field private windowBits:I

.field private zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)V
    .locals 1
    .param p1, "delegate"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    .line 81
    invoke-static {}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->defaultCompressionOptions()[Lio/netty/handler/codec/compression/CompressionOptions;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;[Lio/netty/handler/codec/compression/CompressionOptions;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;III)V
    .locals 4
    .param p1, "delegate"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .param p2, "compressionLevel"    # I
    .param p3, "windowBits"    # I
    .param p4, "memLevel"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)V

    .line 103
    const-string v0, "compressionLevel"

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-static {p2, v1, v2, v0}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->compressionLevel:I

    .line 104
    const/16 v0, 0xf

    const-string v3, "windowBits"

    invoke-static {p3, v2, v0, v3}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->windowBits:I

    .line 105
    const/4 v0, 0x1

    const-string v3, "memLevel"

    invoke-static {p4, v0, v2, v3}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->memLevel:I

    .line 107
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->propertyKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    .line 108
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    new-instance v2, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder$1;

    invoke-direct {v2, p0}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder$1;-><init>(Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;)V

    invoke-interface {v0, v2}, Lio/netty/handler/codec/http2/Http2Connection;->addListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V

    .line 118
    iput-boolean v1, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->supportsCompressionOptions:Z

    .line 119
    return-void
.end method

.method public varargs constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;[Lio/netty/handler/codec/compression/CompressionOptions;)V
    .locals 4
    .param p1, "delegate"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .param p2, "compressionOptionsArgs"    # [Lio/netty/handler/codec/compression/CompressionOptions;

    .line 127
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)V

    .line 128
    const-string v0, "CompressionOptions"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    invoke-static {v0, p2}, Lio/netty/util/internal/ObjectUtil;->deepCheckNotNull(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 131
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p2, v1

    .line 138
    .local v2, "compressionOptions":Lio/netty/handler/codec/compression/CompressionOptions;
    invoke-static {}, Lio/netty/handler/codec/compression/Brotli;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lio/netty/handler/codec/compression/BrotliOptions;

    if-eqz v3, :cond_0

    .line 139
    move-object v3, v2

    check-cast v3, Lio/netty/handler/codec/compression/BrotliOptions;

    iput-object v3, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

    goto :goto_1

    .line 140
    :cond_0
    instance-of v3, v2, Lio/netty/handler/codec/compression/GzipOptions;

    if-eqz v3, :cond_1

    .line 141
    move-object v3, v2

    check-cast v3, Lio/netty/handler/codec/compression/GzipOptions;

    iput-object v3, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->gzipCompressionOptions:Lio/netty/handler/codec/compression/GzipOptions;

    goto :goto_1

    .line 142
    :cond_1
    instance-of v3, v2, Lio/netty/handler/codec/compression/DeflateOptions;

    if-eqz v3, :cond_2

    .line 143
    move-object v3, v2

    check-cast v3, Lio/netty/handler/codec/compression/DeflateOptions;

    iput-object v3, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    goto :goto_1

    .line 144
    :cond_2
    instance-of v3, v2, Lio/netty/handler/codec/compression/ZstdOptions;

    if-eqz v3, :cond_3

    .line 145
    move-object v3, v2

    check-cast v3, Lio/netty/handler/codec/compression/ZstdOptions;

    iput-object v3, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    goto :goto_1

    .line 146
    :cond_3
    instance-of v3, v2, Lio/netty/handler/codec/compression/SnappyOptions;

    if-eqz v3, :cond_4

    .line 147
    move-object v3, v2

    check-cast v3, Lio/netty/handler/codec/compression/SnappyOptions;

    iput-object v3, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->snappyOptions:Lio/netty/handler/codec/compression/SnappyOptions;

    .line 131
    .end local v2    # "compressionOptions":Lio/netty/handler/codec/compression/CompressionOptions;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .restart local v2    # "compressionOptions":Lio/netty/handler/codec/compression/CompressionOptions;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v3, Lio/netty/handler/codec/compression/CompressionOptions;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    .end local v2    # "compressionOptions":Lio/netty/handler/codec/compression/CompressionOptions;
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->supportsCompressionOptions:Z

    .line 156
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->propertyKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    .line 157
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder$2;

    invoke-direct {v1, p0}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder$2;-><init>(Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;)V

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/Http2Connection;->addListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V

    .line 166
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;

    .line 57
    iget-object v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->propertyKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    return-object v0
.end method

.method private bindCompressorToStream(Lio/netty/channel/embedded/EmbeddedChannel;I)V
    .locals 2
    .param p1, "compressor"    # Lio/netty/channel/embedded/EmbeddedChannel;
    .param p2, "streamId"    # I

    .line 385
    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 387
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    if-eqz v0, :cond_0

    .line 388
    iget-object v1, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->propertyKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {v0, v1, p1}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .end local v0    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    :cond_0
    return-void
.end method

.method private static defaultCompressionOptions()[Lio/netty/handler/codec/compression/CompressionOptions;
    .locals 6

    .line 85
    invoke-static {}, Lio/netty/handler/codec/compression/Brotli;->isAvailable()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x4

    new-array v0, v0, [Lio/netty/handler/codec/compression/CompressionOptions;

    .line 87
    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->brotli()Lio/netty/handler/codec/compression/BrotliOptions;

    move-result-object v5

    aput-object v5, v0, v3

    .line 88
    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->snappy()Lio/netty/handler/codec/compression/SnappyOptions;

    move-result-object v3

    aput-object v3, v0, v2

    .line 89
    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->gzip()Lio/netty/handler/codec/compression/GzipOptions;

    move-result-object v2

    aput-object v2, v0, v1

    .line 90
    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->deflate()Lio/netty/handler/codec/compression/DeflateOptions;

    move-result-object v1

    aput-object v1, v0, v4

    .line 86
    return-object v0

    .line 92
    :cond_0
    new-array v0, v4, [Lio/netty/handler/codec/compression/CompressionOptions;

    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->snappy()Lio/netty/handler/codec/compression/SnappyOptions;

    move-result-object v4

    aput-object v4, v0, v3

    .line 93
    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->gzip()Lio/netty/handler/codec/compression/GzipOptions;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->deflate()Lio/netty/handler/codec/compression/DeflateOptions;

    move-result-object v2

    aput-object v2, v0, v1

    .line 92
    return-object v0
.end method

.method private newCompressionChannel(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/compression/ZlibWrapper;)Lio/netty/channel/embedded/EmbeddedChannel;
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "wrapper"    # Lio/netty/handler/codec/compression/ZlibWrapper;

    .line 320
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->supportsCompressionOptions:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 321
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->gzipCompressionOptions:Lio/netty/handler/codec/compression/GzipOptions;

    if-eqz v0, :cond_0

    .line 322
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

    .line 323
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v5

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    iget-object v6, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->gzipCompressionOptions:Lio/netty/handler/codec/compression/GzipOptions;

    .line 324
    invoke-virtual {v6}, Lio/netty/handler/codec/compression/GzipOptions;->compressionLevel()I

    move-result v6

    iget-object v7, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->gzipCompressionOptions:Lio/netty/handler/codec/compression/GzipOptions;

    invoke-virtual {v7}, Lio/netty/handler/codec/compression/GzipOptions;->windowBits()I

    move-result v7

    iget-object v8, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->gzipCompressionOptions:Lio/netty/handler/codec/compression/GzipOptions;

    .line 325
    invoke-virtual {v8}, Lio/netty/handler/codec/compression/GzipOptions;->memLevel()I

    move-result v8

    .line 323
    invoke-static {p2, v6, v7, v8}, Lio/netty/handler/codec/compression/ZlibCodecFactory;->newZlibEncoder(Lio/netty/handler/codec/compression/ZlibWrapper;III)Lio/netty/handler/codec/compression/ZlibEncoder;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-direct {v0, v3, v4, v5, v2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    .line 322
    return-object v0

    .line 326
    :cond_0
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    if-eqz v0, :cond_1

    .line 327
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

    .line 328
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v5

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    iget-object v6, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    .line 329
    invoke-virtual {v6}, Lio/netty/handler/codec/compression/DeflateOptions;->compressionLevel()I

    move-result v6

    iget-object v7, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    invoke-virtual {v7}, Lio/netty/handler/codec/compression/DeflateOptions;->windowBits()I

    move-result v7

    iget-object v8, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    .line 330
    invoke-virtual {v8}, Lio/netty/handler/codec/compression/DeflateOptions;->memLevel()I

    move-result v8

    .line 328
    invoke-static {p2, v6, v7, v8}, Lio/netty/handler/codec/compression/ZlibCodecFactory;->newZlibEncoder(Lio/netty/handler/codec/compression/ZlibWrapper;III)Lio/netty/handler/codec/compression/ZlibEncoder;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-direct {v0, v3, v4, v5, v2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    .line 327
    return-object v0

    .line 332
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported ZlibWrapper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_2
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

    .line 336
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v5

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    iget v6, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->compressionLevel:I

    iget v7, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->windowBits:I

    iget v8, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->memLevel:I

    invoke-static {p2, v6, v7, v8}, Lio/netty/handler/codec/compression/ZlibCodecFactory;->newZlibEncoder(Lio/netty/handler/codec/compression/ZlibWrapper;III)Lio/netty/handler/codec/compression/ZlibEncoder;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-direct {v0, v3, v4, v5, v2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    .line 335
    return-object v0
.end method

.method private newCompressor(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;Z)Lio/netty/channel/embedded/EmbeddedChannel;
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p3, "endOfStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 353
    if-eqz p3, :cond_0

    .line 354
    const/4 v0, 0x0

    return-object v0

    .line 357
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_ENCODING:Lio/netty/util/AsciiString;

    invoke-interface {p2, v0}, Lio/netty/handler/codec/http2/Http2Headers;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 358
    .local v0, "encoding":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 359
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->IDENTITY:Lio/netty/util/AsciiString;

    .line 361
    :cond_1
    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->newContentCompressor(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/CharSequence;)Lio/netty/channel/embedded/EmbeddedChannel;

    move-result-object v1

    .line 362
    .local v1, "compressor":Lio/netty/channel/embedded/EmbeddedChannel;
    if-eqz v1, :cond_3

    .line 363
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->getTargetContentEncoding(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 364
    .local v2, "targetContentEncoding":Ljava/lang/CharSequence;
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderValues;->IDENTITY:Lio/netty/util/AsciiString;

    invoke-virtual {v3, v2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 365
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_ENCODING:Lio/netty/util/AsciiString;

    invoke-interface {p2, v3}, Lio/netty/handler/codec/http2/Http2Headers;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 367
    :cond_2
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_ENCODING:Lio/netty/util/AsciiString;

    invoke-interface {p2, v3, v2}, Lio/netty/handler/codec/http2/Http2Headers;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 373
    :goto_0
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-interface {p2, v3}, Lio/netty/handler/codec/http2/Http2Headers;->remove(Ljava/lang/Object;)Z

    .line 376
    .end local v2    # "targetContentEncoding":Ljava/lang/CharSequence;
    :cond_3
    return-object v1
.end method

.method private static nextReadableBuf(Lio/netty/channel/embedded/EmbeddedChannel;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "compressor"    # Lio/netty/channel/embedded/EmbeddedChannel;

    .line 412
    nop

    :goto_0
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->readOutbound()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 413
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    if-nez v0, :cond_0

    .line 414
    const/4 v1, 0x0

    return-object v1

    .line 416
    :cond_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 417
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 418
    goto :goto_0

    .line 420
    :cond_1
    return-object v0
.end method


# virtual methods
.method cleanup(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/embedded/EmbeddedChannel;)V
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p2, "compressor"    # Lio/netty/channel/embedded/EmbeddedChannel;

    .line 400
    invoke-virtual {p2}, Lio/netty/channel/embedded/EmbeddedChannel;->finishAndReleaseAll()Z

    .line 401
    iget-object v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->propertyKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->removeProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    .line 402
    return-void
.end method

.method protected getTargetContentEncoding(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "contentEncoding"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 311
    return-object p1
.end method

.method protected newContentCompressor(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/CharSequence;)Lio/netty/channel/embedded/EmbeddedChannel;
    .locals 10
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "contentEncoding"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 279
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->GZIP:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->X_GZIP:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 282
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->DEFLATE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->X_DEFLATE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 285
    :cond_1
    invoke-static {}, Lio/netty/handler/codec/compression/Brotli;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

    if-eqz v0, :cond_2

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->BR:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
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

    .line 287
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v5

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    new-instance v6, Lio/netty/handler/codec/compression/BrotliEncoder;

    iget-object v7, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

    invoke-virtual {v7}, Lio/netty/handler/codec/compression/BrotliOptions;->parameters()Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;

    move-result-object v7

    invoke-direct {v6, v7}, Lio/netty/handler/codec/compression/BrotliEncoder;-><init>(Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;)V

    aput-object v6, v2, v1

    invoke-direct {v0, v3, v4, v5, v2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    .line 286
    return-object v0

    .line 289
    :cond_2
    iget-object v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    if-eqz v0, :cond_3

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->ZSTD:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
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

    .line 291
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v5

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    new-instance v6, Lio/netty/handler/codec/compression/ZstdEncoder;

    iget-object v7, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    invoke-virtual {v7}, Lio/netty/handler/codec/compression/ZstdOptions;->compressionLevel()I

    move-result v7

    iget-object v8, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    .line 292
    invoke-virtual {v8}, Lio/netty/handler/codec/compression/ZstdOptions;->blockSize()I

    move-result v8

    iget-object v9, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    invoke-virtual {v9}, Lio/netty/handler/codec/compression/ZstdOptions;->maxEncodeSize()I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lio/netty/handler/codec/compression/ZstdEncoder;-><init>(III)V

    aput-object v6, v2, v1

    invoke-direct {v0, v3, v4, v5, v2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    .line 290
    return-object v0

    .line 294
    :cond_3
    iget-object v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->snappyOptions:Lio/netty/handler/codec/compression/SnappyOptions;

    if-eqz v0, :cond_4

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->SNAPPY:Lio/netty/util/AsciiString;

    invoke-virtual {v0, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 295
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

    .line 296
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v5

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    new-instance v6, Lio/netty/handler/codec/compression/SnappyFrameEncoder;

    invoke-direct {v6}, Lio/netty/handler/codec/compression/SnappyFrameEncoder;-><init>()V

    aput-object v6, v2, v1

    invoke-direct {v0, v3, v4, v5, v2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    .line 295
    return-object v0

    .line 299
    :cond_4
    const/4 v0, 0x0

    return-object v0

    .line 283
    :cond_5
    :goto_0
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->newCompressionChannel(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/compression/ZlibWrapper;)Lio/netty/channel/embedded/EmbeddedChannel;

    move-result-object v0

    return-object v0

    .line 280
    :cond_6
    :goto_1
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->newCompressionChannel(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/compression/ZlibWrapper;)Lio/netty/channel/embedded/EmbeddedChannel;

    move-result-object v0

    return-object v0
.end method

.method public writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 18
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "data"    # Lio/netty/buffer/ByteBuf;
    .param p4, "padding"    # I
    .param p5, "endOfStream"    # Z
    .param p6, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 171
    move-object/from16 v8, p0

    move-object/from16 v9, p6

    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    move/from16 v10, p2

    invoke-interface {v0, v10}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v11

    .line 172
    .local v11, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    if-nez v11, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v8, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->propertyKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {v11, v0}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/embedded/EmbeddedChannel;

    :goto_0
    move-object v12, v0

    .line 173
    .local v12, "channel":Lio/netty/channel/embedded/EmbeddedChannel;
    if-nez v12, :cond_1

    .line 175
    invoke-super/range {p0 .. p6}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 180
    :cond_1
    :try_start_0
    filled-new-array/range {p3 .. p3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->writeOutbound([Ljava/lang/Object;)Z

    .line 181
    invoke-static {v12}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->nextReadableBuf(Lio/netty/channel/embedded/EmbeddedChannel;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 182
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    if-nez v0, :cond_7

    .line 183
    if-eqz p5, :cond_5

    .line 184
    invoke-virtual {v12}, Lio/netty/channel/embedded/EmbeddedChannel;->finish()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    invoke-static {v12}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->nextReadableBuf(Lio/netty/channel/embedded/EmbeddedChannel;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    move-object v0, v1

    .line 187
    :cond_2
    if-nez v0, :cond_3

    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    move-object v4, v1

    goto :goto_1

    :cond_3
    move-object v4, v0

    :goto_1
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    invoke-super/range {v1 .. v7}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 218
    if-eqz p5, :cond_4

    .line 219
    invoke-virtual {v8, v11, v12}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->cleanup(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/embedded/EmbeddedChannel;)V

    .line 187
    :cond_4
    return-object v1

    .line 191
    :cond_5
    :try_start_1
    invoke-interface/range {p6 .. p6}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    nop

    .line 218
    if-eqz p5, :cond_6

    .line 219
    invoke-virtual {v8, v11, v12}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->cleanup(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/embedded/EmbeddedChannel;)V

    .line 192
    :cond_6
    return-object v9

    .line 195
    :cond_7
    :try_start_2
    new-instance v1, Lio/netty/util/concurrent/PromiseCombiner;

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/util/concurrent/PromiseCombiner;-><init>(Lio/netty/util/concurrent/EventExecutor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v13, v1

    move/from16 v14, p4

    .line 197
    .end local p4    # "padding":I
    .local v13, "combiner":Lio/netty/util/concurrent/PromiseCombiner;
    .local v14, "padding":I
    :goto_2
    :try_start_3
    invoke-static {v12}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->nextReadableBuf(Lio/netty/channel/embedded/EmbeddedChannel;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 198
    .local v1, "nextBuf":Lio/netty/buffer/ByteBuf;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_8

    if-eqz p5, :cond_8

    move v4, v2

    goto :goto_3

    :cond_8
    move v4, v3

    .line 199
    .local v4, "compressedEndOfStream":Z
    :goto_3
    if-eqz v4, :cond_a

    invoke-virtual {v12}, Lio/netty/channel/embedded/EmbeddedChannel;->finish()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 200
    invoke-static {v12}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->nextReadableBuf(Lio/netty/channel/embedded/EmbeddedChannel;)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    move-object v1, v5

    .line 201
    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    move v2, v3

    :goto_4
    move v4, v2

    move-object v15, v1

    move/from16 v16, v4

    goto :goto_5

    .line 204
    :cond_a
    move-object v15, v1

    move/from16 v16, v4

    .end local v1    # "nextBuf":Lio/netty/buffer/ByteBuf;
    .end local v4    # "compressedEndOfStream":Z
    .local v15, "nextBuf":Lio/netty/buffer/ByteBuf;
    .local v16, "compressedEndOfStream":Z
    :goto_5
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    move-object v7, v1

    .line 205
    .local v7, "bufPromise":Lio/netty/channel/ChannelPromise;
    invoke-virtual {v13, v7}, Lio/netty/util/concurrent/PromiseCombiner;->add(Lio/netty/util/concurrent/Promise;)V

    .line 206
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v0

    move v5, v14

    move/from16 v6, v16

    move-object/from16 v17, v7

    .end local v7    # "bufPromise":Lio/netty/channel/ChannelPromise;
    .local v17, "bufPromise":Lio/netty/channel/ChannelPromise;
    invoke-super/range {v1 .. v7}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 207
    if-nez v15, :cond_b

    .line 208
    nop

    .line 214
    .end local v15    # "nextBuf":Lio/netty/buffer/ByteBuf;
    .end local v16    # "compressedEndOfStream":Z
    .end local v17    # "bufPromise":Lio/netty/channel/ChannelPromise;
    invoke-virtual {v13, v9}, Lio/netty/util/concurrent/PromiseCombiner;->finish(Lio/netty/util/concurrent/Promise;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v13    # "combiner":Lio/netty/util/concurrent/PromiseCombiner;
    if-eqz p5, :cond_c

    .line 219
    :goto_6
    invoke-virtual {v8, v11, v12}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->cleanup(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/embedded/EmbeddedChannel;)V

    goto :goto_8

    .line 211
    .restart local v0    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local v13    # "combiner":Lio/netty/util/concurrent/PromiseCombiner;
    .restart local v15    # "nextBuf":Lio/netty/buffer/ByteBuf;
    .restart local v16    # "compressedEndOfStream":Z
    .restart local v17    # "bufPromise":Lio/netty/channel/ChannelPromise;
    :cond_b
    const/4 v14, 0x0

    .line 212
    move-object v0, v15

    .line 213
    .end local v15    # "nextBuf":Lio/netty/buffer/ByteBuf;
    .end local v16    # "compressedEndOfStream":Z
    .end local v17    # "bufPromise":Lio/netty/channel/ChannelPromise;
    goto :goto_2

    .line 215
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v13    # "combiner":Lio/netty/util/concurrent/PromiseCombiner;
    :catchall_0
    move-exception v0

    goto :goto_7

    .end local v14    # "padding":I
    .restart local p4    # "padding":I
    :catchall_1
    move-exception v0

    move/from16 v14, p4

    .line 216
    .end local p4    # "padding":I
    .local v0, "cause":Ljava/lang/Throwable;
    .restart local v14    # "padding":I
    :goto_7
    :try_start_4
    invoke-interface {v9, v0}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 218
    nop

    .end local v0    # "cause":Ljava/lang/Throwable;
    if-eqz p5, :cond_c

    .line 219
    goto :goto_6

    .line 222
    :cond_c
    :goto_8
    return-object v9

    .line 218
    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz p5, :cond_d

    .line 219
    invoke-virtual {v8, v11, v12}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->cleanup(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/embedded/EmbeddedChannel;)V

    .line 221
    :cond_d
    throw v1
.end method

.method public writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "streamDependency"    # I
    .param p5, "weight"    # S
    .param p6, "exclusive"    # Z
    .param p7, "padding"    # I
    .param p8, "endOfStream"    # Z
    .param p9, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 251
    :try_start_0
    invoke-direct {p0, p1, p3, p8}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->newCompressor(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;Z)Lio/netty/channel/embedded/EmbeddedChannel;

    move-result-object v0

    .line 254
    .local v0, "compressor":Lio/netty/channel/embedded/EmbeddedChannel;
    invoke-super/range {p0 .. p9}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    .line 258
    .local v1, "future":Lio/netty/channel/ChannelFuture;
    invoke-direct {p0, v0, p2}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->bindCompressorToStream(Lio/netty/channel/embedded/EmbeddedChannel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    return-object v1

    .line 261
    .end local v0    # "compressor":Lio/netty/channel/embedded/EmbeddedChannel;
    .end local v1    # "future":Lio/netty/channel/ChannelFuture;
    :catchall_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Throwable;
    invoke-interface {p9, v0}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 264
    .end local v0    # "e":Ljava/lang/Throwable;
    return-object p9
.end method

.method public writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "padding"    # I
    .param p5, "endStream"    # Z
    .param p6, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 230
    :try_start_0
    invoke-direct {p0, p1, p3, p5}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->newCompressor(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;Z)Lio/netty/channel/embedded/EmbeddedChannel;

    move-result-object v0

    .line 233
    .local v0, "compressor":Lio/netty/channel/embedded/EmbeddedChannel;
    invoke-super/range {p0 .. p6}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    .line 236
    .local v1, "future":Lio/netty/channel/ChannelFuture;
    invoke-direct {p0, v0, p2}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->bindCompressorToStream(Lio/netty/channel/embedded/EmbeddedChannel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    return-object v1

    .line 239
    .end local v0    # "compressor":Lio/netty/channel/embedded/EmbeddedChannel;
    .end local v1    # "future":Lio/netty/channel/ChannelFuture;
    :catchall_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Throwable;
    invoke-interface {p6, v0}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 242
    .end local v0    # "e":Ljava/lang/Throwable;
    return-object p6
.end method
