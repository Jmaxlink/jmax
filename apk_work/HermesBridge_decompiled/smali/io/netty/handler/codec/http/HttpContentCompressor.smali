.class public Lio/netty/handler/codec/http/HttpContentCompressor;
.super Lio/netty/handler/codec/http/HttpContentEncoder;
.source "HttpContentCompressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpContentCompressor$SnappyEncoderFactory;,
        Lio/netty/handler/codec/http/HttpContentCompressor$ZstdEncoderFactory;,
        Lio/netty/handler/codec/http/HttpContentCompressor$BrEncoderFactory;,
        Lio/netty/handler/codec/http/HttpContentCompressor$DeflateEncoderFactory;,
        Lio/netty/handler/codec/http/HttpContentCompressor$GzipEncoderFactory;
    }
.end annotation


# instance fields
.field private final brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

.field private final compressionLevel:I

.field private final contentSizeThreshold:I

.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

.field private final factories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/netty/handler/codec/http/CompressionEncoderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final gzipOptions:Lio/netty/handler/codec/compression/GzipOptions;

.field private final memLevel:I

.field private final snappyOptions:Lio/netty/handler/codec/compression/SnappyOptions;

.field private final supportsCompressionOptions:Z

.field private final windowBits:I

.field private final zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/HttpContentCompressor;-><init>(I)V

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "compressionLevel"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-direct {p0, p1, v2, v0, v1}, Lio/netty/handler/codec/http/HttpContentCompressor;-><init>(IIII)V

    .line 85
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "compressionLevel"    # I
    .param p2, "windowBits"    # I
    .param p3, "memLevel"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/HttpContentCompressor;-><init>(IIII)V

    .line 109
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4
    .param p1, "compressionLevel"    # I
    .param p2, "windowBits"    # I
    .param p3, "memLevel"    # I
    .param p4, "contentSizeThreshold"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpContentEncoder;-><init>()V

    .line 136
    const-string v0, "compressionLevel"

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-static {p1, v1, v2, v0}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->compressionLevel:I

    .line 137
    const/16 v0, 0xf

    const-string v3, "windowBits"

    invoke-static {p2, v2, v0, v3}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->windowBits:I

    .line 138
    const/4 v0, 0x1

    const-string v3, "memLevel"

    invoke-static {p3, v0, v2, v3}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->memLevel:I

    .line 139
    const-string v0, "contentSizeThreshold"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->contentSizeThreshold:I

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

    .line 141
    iput-object v0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->gzipOptions:Lio/netty/handler/codec/compression/GzipOptions;

    .line 142
    iput-object v0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    .line 143
    iput-object v0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    .line 144
    iput-object v0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->snappyOptions:Lio/netty/handler/codec/compression/SnappyOptions;

    .line 145
    iput-object v0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->factories:Ljava/util/Map;

    .line 146
    iput-boolean v1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->supportsCompressionOptions:Z

    .line 147
    return-void
.end method

.method public varargs constructor <init>(I[Lio/netty/handler/codec/compression/CompressionOptions;)V
    .locals 10
    .param p1, "contentSizeThreshold"    # I
    .param p2, "compressionOptions"    # [Lio/netty/handler/codec/compression/CompressionOptions;

    .line 171
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpContentEncoder;-><init>()V

    .line 172
    const-string v0, "contentSizeThreshold"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->contentSizeThreshold:I

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "brotliOptions":Lio/netty/handler/codec/compression/BrotliOptions;
    const/4 v1, 0x0

    .line 175
    .local v1, "gzipOptions":Lio/netty/handler/codec/compression/GzipOptions;
    const/4 v2, 0x0

    .line 176
    .local v2, "deflateOptions":Lio/netty/handler/codec/compression/DeflateOptions;
    const/4 v3, 0x0

    .line 177
    .local v3, "zstdOptions":Lio/netty/handler/codec/compression/ZstdOptions;
    const/4 v4, 0x0

    .line 178
    .local v4, "snappyOptions":Lio/netty/handler/codec/compression/SnappyOptions;
    const/4 v5, 0x0

    if-eqz p2, :cond_6

    array-length v6, p2

    if-nez v6, :cond_0

    goto :goto_2

    .line 185
    :cond_0
    const-string v6, "compressionOptions"

    invoke-static {v6, p2}, Lio/netty/util/internal/ObjectUtil;->deepCheckNotNull(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 186
    array-length v6, p2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_9

    aget-object v8, p2, v7

    .line 193
    .local v8, "compressionOption":Lio/netty/handler/codec/compression/CompressionOptions;
    invoke-static {}, Lio/netty/handler/codec/compression/Brotli;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_1

    instance-of v9, v8, Lio/netty/handler/codec/compression/BrotliOptions;

    if-eqz v9, :cond_1

    .line 194
    move-object v0, v8

    check-cast v0, Lio/netty/handler/codec/compression/BrotliOptions;

    goto :goto_1

    .line 195
    :cond_1
    instance-of v9, v8, Lio/netty/handler/codec/compression/GzipOptions;

    if-eqz v9, :cond_2

    .line 196
    move-object v1, v8

    check-cast v1, Lio/netty/handler/codec/compression/GzipOptions;

    goto :goto_1

    .line 197
    :cond_2
    instance-of v9, v8, Lio/netty/handler/codec/compression/DeflateOptions;

    if-eqz v9, :cond_3

    .line 198
    move-object v2, v8

    check-cast v2, Lio/netty/handler/codec/compression/DeflateOptions;

    goto :goto_1

    .line 199
    :cond_3
    instance-of v9, v8, Lio/netty/handler/codec/compression/ZstdOptions;

    if-eqz v9, :cond_4

    .line 200
    move-object v3, v8

    check-cast v3, Lio/netty/handler/codec/compression/ZstdOptions;

    goto :goto_1

    .line 201
    :cond_4
    instance-of v9, v8, Lio/netty/handler/codec/compression/SnappyOptions;

    if-eqz v9, :cond_5

    .line 202
    move-object v4, v8

    check-cast v4, Lio/netty/handler/codec/compression/SnappyOptions;

    .line 186
    .end local v8    # "compressionOption":Lio/netty/handler/codec/compression/CompressionOptions;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 204
    .restart local v8    # "compressionOption":Lio/netty/handler/codec/compression/CompressionOptions;
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Lio/netty/handler/codec/compression/CompressionOptions;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 179
    .end local v8    # "compressionOption":Lio/netty/handler/codec/compression/CompressionOptions;
    :cond_6
    :goto_2
    invoke-static {}, Lio/netty/handler/codec/compression/Brotli;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->brotli()Lio/netty/handler/codec/compression/BrotliOptions;

    move-result-object v6

    goto :goto_3

    :cond_7
    move-object v6, v5

    :goto_3
    move-object v0, v6

    .line 180
    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->gzip()Lio/netty/handler/codec/compression/GzipOptions;

    move-result-object v1

    .line 181
    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->deflate()Lio/netty/handler/codec/compression/DeflateOptions;

    move-result-object v2

    .line 182
    invoke-static {}, Lio/netty/handler/codec/compression/Zstd;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->zstd()Lio/netty/handler/codec/compression/ZstdOptions;

    move-result-object v6

    goto :goto_4

    :cond_8
    move-object v6, v5

    :goto_4
    move-object v3, v6

    .line 183
    invoke-static {}, Lio/netty/handler/codec/compression/StandardCompressionOptions;->snappy()Lio/netty/handler/codec/compression/SnappyOptions;

    move-result-object v4

    .line 210
    :cond_9
    iput-object v1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->gzipOptions:Lio/netty/handler/codec/compression/GzipOptions;

    .line 211
    iput-object v2, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    .line 212
    iput-object v0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

    .line 213
    iput-object v3, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    .line 214
    iput-object v4, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->snappyOptions:Lio/netty/handler/codec/compression/SnappyOptions;

    .line 216
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->factories:Ljava/util/Map;

    .line 218
    iget-object v6, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->gzipOptions:Lio/netty/handler/codec/compression/GzipOptions;

    if-eqz v6, :cond_a

    .line 219
    iget-object v6, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->factories:Ljava/util/Map;

    new-instance v7, Lio/netty/handler/codec/http/HttpContentCompressor$GzipEncoderFactory;

    invoke-direct {v7, p0, v5}, Lio/netty/handler/codec/http/HttpContentCompressor$GzipEncoderFactory;-><init>(Lio/netty/handler/codec/http/HttpContentCompressor;Lio/netty/handler/codec/http/HttpContentCompressor$1;)V

    const-string v8, "gzip"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_a
    iget-object v6, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    if-eqz v6, :cond_b

    .line 222
    iget-object v6, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->factories:Ljava/util/Map;

    new-instance v7, Lio/netty/handler/codec/http/HttpContentCompressor$DeflateEncoderFactory;

    invoke-direct {v7, p0, v5}, Lio/netty/handler/codec/http/HttpContentCompressor$DeflateEncoderFactory;-><init>(Lio/netty/handler/codec/http/HttpContentCompressor;Lio/netty/handler/codec/http/HttpContentCompressor$1;)V

    const-string v8, "deflate"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_b
    invoke-static {}, Lio/netty/handler/codec/compression/Brotli;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

    if-eqz v6, :cond_c

    .line 225
    iget-object v6, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->factories:Ljava/util/Map;

    new-instance v7, Lio/netty/handler/codec/http/HttpContentCompressor$BrEncoderFactory;

    invoke-direct {v7, p0, v5}, Lio/netty/handler/codec/http/HttpContentCompressor$BrEncoderFactory;-><init>(Lio/netty/handler/codec/http/HttpContentCompressor;Lio/netty/handler/codec/http/HttpContentCompressor$1;)V

    const-string v8, "br"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_c
    iget-object v6, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    if-eqz v6, :cond_d

    .line 228
    iget-object v6, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->factories:Ljava/util/Map;

    new-instance v7, Lio/netty/handler/codec/http/HttpContentCompressor$ZstdEncoderFactory;

    invoke-direct {v7, p0, v5}, Lio/netty/handler/codec/http/HttpContentCompressor$ZstdEncoderFactory;-><init>(Lio/netty/handler/codec/http/HttpContentCompressor;Lio/netty/handler/codec/http/HttpContentCompressor$1;)V

    const-string v8, "zstd"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_d
    iget-object v6, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->snappyOptions:Lio/netty/handler/codec/compression/SnappyOptions;

    if-eqz v6, :cond_e

    .line 231
    iget-object v6, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->factories:Ljava/util/Map;

    new-instance v7, Lio/netty/handler/codec/http/HttpContentCompressor$SnappyEncoderFactory;

    invoke-direct {v7, v5}, Lio/netty/handler/codec/http/HttpContentCompressor$SnappyEncoderFactory;-><init>(Lio/netty/handler/codec/http/HttpContentCompressor$1;)V

    const-string v5, "snappy"

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_e
    const/4 v5, -0x1

    iput v5, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->compressionLevel:I

    .line 235
    iput v5, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->windowBits:I

    .line 236
    iput v5, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->memLevel:I

    .line 237
    const/4 v5, 0x1

    iput-boolean v5, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->supportsCompressionOptions:Z

    .line 238
    return-void
.end method

.method public varargs constructor <init>([Lio/netty/handler/codec/compression/CompressionOptions;)V
    .locals 1
    .param p1, "compressionOptions"    # [Lio/netty/handler/codec/compression/CompressionOptions;

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/http/HttpContentCompressor;-><init>(I[Lio/netty/handler/codec/compression/CompressionOptions;)V

    .line 158
    return-void
.end method

.method static synthetic access$500(Lio/netty/handler/codec/http/HttpContentCompressor;)Lio/netty/handler/codec/compression/GzipOptions;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http/HttpContentCompressor;

    .line 49
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->gzipOptions:Lio/netty/handler/codec/compression/GzipOptions;

    return-object v0
.end method

.method static synthetic access$600(Lio/netty/handler/codec/http/HttpContentCompressor;)Lio/netty/handler/codec/compression/DeflateOptions;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http/HttpContentCompressor;

    .line 49
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    return-object v0
.end method

.method static synthetic access$700(Lio/netty/handler/codec/http/HttpContentCompressor;)Lio/netty/handler/codec/compression/BrotliOptions;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http/HttpContentCompressor;

    .line 49
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

    return-object v0
.end method

.method static synthetic access$800(Lio/netty/handler/codec/http/HttpContentCompressor;)Lio/netty/handler/codec/compression/ZstdOptions;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http/HttpContentCompressor;

    .line 49
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    return-object v0
.end method


# virtual methods
.method protected beginEncode(Lio/netty/handler/codec/http/HttpResponse;Ljava/lang/String;)Lio/netty/handler/codec/http/HttpContentEncoder$Result;
    .locals 13
    .param p1, "httpResponse"    # Lio/netty/handler/codec/http/HttpResponse;
    .param p2, "acceptEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 247
    iget v0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->contentSizeThreshold:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 248
    instance-of v0, p1, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/HttpContent;

    .line 249
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v2, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->contentSizeThreshold:I

    if-ge v0, v2, :cond_0

    .line 250
    return-object v1

    .line 254
    :cond_0
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v2}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "contentEncoding":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 258
    return-object v1

    .line 261
    :cond_1
    iget-boolean v2, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->supportsCompressionOptions:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 262
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http/HttpContentCompressor;->determineEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "targetContentEncoding":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 264
    return-object v1

    .line 267
    :cond_2
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->factories:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http/CompressionEncoderFactory;

    .line 269
    .local v1, "encoderFactory":Lio/netty/handler/codec/http/CompressionEncoderFactory;
    if-eqz v1, :cond_3

    .line 273
    new-instance v5, Lio/netty/handler/codec/http/HttpContentEncoder$Result;

    new-instance v6, Lio/netty/channel/embedded/EmbeddedChannel;

    iget-object v7, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 274
    invoke-interface {v7}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v7

    invoke-interface {v7}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object v7

    iget-object v8, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v8}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v8

    invoke-interface {v8}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v8

    invoke-virtual {v8}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v8

    iget-object v9, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 275
    invoke-interface {v9}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v9

    invoke-interface {v9}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v9

    new-array v4, v4, [Lio/netty/channel/ChannelHandler;

    invoke-interface {v1}, Lio/netty/handler/codec/http/CompressionEncoderFactory;->createEncoder()Lio/netty/handler/codec/MessageToByteEncoder;

    move-result-object v10

    aput-object v10, v4, v3

    invoke-direct {v6, v7, v8, v9, v4}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    invoke-direct {v5, v2, v6}, Lio/netty/handler/codec/http/HttpContentEncoder$Result;-><init>(Ljava/lang/String;Lio/netty/channel/embedded/EmbeddedChannel;)V

    .line 273
    return-object v5

    .line 270
    :cond_3
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    throw v3

    .line 277
    .end local v1    # "encoderFactory":Lio/netty/handler/codec/http/CompressionEncoderFactory;
    .end local v2    # "targetContentEncoding":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http/HttpContentCompressor;->determineWrapper(Ljava/lang/String;)Lio/netty/handler/codec/compression/ZlibWrapper;

    move-result-object v2

    .line 278
    .local v2, "wrapper":Lio/netty/handler/codec/compression/ZlibWrapper;
    if-nez v2, :cond_5

    .line 279
    return-object v1

    .line 283
    :cond_5
    sget-object v1, Lio/netty/handler/codec/http/HttpContentCompressor$1;->$SwitchMap$io$netty$handler$codec$compression$ZlibWrapper:[I

    invoke-virtual {v2}, Lio/netty/handler/codec/compression/ZlibWrapper;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    .line 291
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    throw v1

    .line 288
    :pswitch_0
    const-string v1, "deflate"

    .line 289
    .local v1, "targetContentEncoding":Ljava/lang/String;
    goto :goto_0

    .line 285
    .end local v1    # "targetContentEncoding":Ljava/lang/String;
    :pswitch_1
    const-string v1, "gzip"

    .line 286
    .restart local v1    # "targetContentEncoding":Ljava/lang/String;
    nop

    .line 294
    :goto_0
    new-instance v5, Lio/netty/handler/codec/http/HttpContentEncoder$Result;

    new-instance v6, Lio/netty/channel/embedded/EmbeddedChannel;

    iget-object v7, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 296
    invoke-interface {v7}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v7

    invoke-interface {v7}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object v7

    iget-object v8, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v8}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v8

    invoke-interface {v8}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v8

    invoke-virtual {v8}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v8

    iget-object v9, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 297
    invoke-interface {v9}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v9

    invoke-interface {v9}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v9

    new-array v4, v4, [Lio/netty/channel/ChannelHandler;

    iget v10, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->compressionLevel:I

    iget v11, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->windowBits:I

    iget v12, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->memLevel:I

    invoke-static {v2, v10, v11, v12}, Lio/netty/handler/codec/compression/ZlibCodecFactory;->newZlibEncoder(Lio/netty/handler/codec/compression/ZlibWrapper;III)Lio/netty/handler/codec/compression/ZlibEncoder;

    move-result-object v10

    aput-object v10, v4, v3

    invoke-direct {v6, v7, v8, v9, v4}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    invoke-direct {v5, v1, v6}, Lio/netty/handler/codec/http/HttpContentEncoder$Result;-><init>(Ljava/lang/String;Lio/netty/channel/embedded/EmbeddedChannel;)V

    .line 294
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected determineEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "acceptEncoding"    # Ljava/lang/String;

    .line 304
    move-object/from16 v1, p0

    const/high16 v0, -0x40800000    # -1.0f

    .line 305
    .local v0, "starQ":F
    const/high16 v2, -0x40800000    # -1.0f

    .line 306
    .local v2, "brQ":F
    const/high16 v3, -0x40800000    # -1.0f

    .line 307
    .local v3, "zstdQ":F
    const/high16 v4, -0x40800000    # -1.0f

    .line 308
    .local v4, "snappyQ":F
    const/high16 v5, -0x40800000    # -1.0f

    .line 309
    .local v5, "gzipQ":F
    const/high16 v6, -0x40800000    # -1.0f

    .line 310
    .local v6, "deflateQ":F
    const-string v7, ","

    move-object/from16 v8, p1

    invoke-virtual {v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v9, v7

    const/4 v10, 0x0

    move v11, v10

    move v10, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .end local v0    # "starQ":F
    .local v2, "starQ":F
    .local v3, "brQ":F
    .local v4, "zstdQ":F
    .local v5, "snappyQ":F
    .local v6, "gzipQ":F
    .local v10, "deflateQ":F
    :goto_0
    const-string v12, "deflate"

    const-string v13, "gzip"

    const-string v14, "snappy"

    const-string v15, "zstd"

    const-string v8, "br"

    if-ge v11, v9, :cond_7

    move/from16 v16, v9

    aget-object v9, v7, v11

    .line 311
    .local v9, "encoding":Ljava/lang/String;
    const/high16 v17, 0x3f800000    # 1.0f

    .line 312
    .local v17, "q":F
    const/16 v0, 0x3d

    move-object/from16 v18, v7

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 313
    .local v7, "equalsPos":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    .line 315
    add-int/lit8 v0, v7, 0x1

    :try_start_0
    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v17, v0

    .line 319
    goto :goto_1

    .line 316
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/16 v17, 0x0

    .line 321
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_1
    const-string v0, "*"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    move/from16 v0, v17

    move v2, v0

    .end local v2    # "starQ":F
    .local v0, "starQ":F
    goto :goto_2

    .line 323
    .end local v0    # "starQ":F
    .restart local v2    # "starQ":F
    :cond_1
    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    cmpl-float v0, v17, v3

    if-lez v0, :cond_2

    .line 324
    move/from16 v0, v17

    move v3, v0

    .end local v3    # "brQ":F
    .local v0, "brQ":F
    goto :goto_2

    .line 325
    .end local v0    # "brQ":F
    .restart local v3    # "brQ":F
    :cond_2
    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    cmpl-float v0, v17, v4

    if-lez v0, :cond_3

    .line 326
    move/from16 v0, v17

    move v4, v0

    .end local v4    # "zstdQ":F
    .local v0, "zstdQ":F
    goto :goto_2

    .line 327
    .end local v0    # "zstdQ":F
    .restart local v4    # "zstdQ":F
    :cond_3
    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    cmpl-float v0, v17, v5

    if-lez v0, :cond_4

    .line 328
    move/from16 v0, v17

    move v5, v0

    .end local v5    # "snappyQ":F
    .local v0, "snappyQ":F
    goto :goto_2

    .line 329
    .end local v0    # "snappyQ":F
    .restart local v5    # "snappyQ":F
    :cond_4
    invoke-virtual {v9, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    cmpl-float v0, v17, v6

    if-lez v0, :cond_5

    .line 330
    move/from16 v0, v17

    move v6, v0

    .end local v6    # "gzipQ":F
    .local v0, "gzipQ":F
    goto :goto_2

    .line 331
    .end local v0    # "gzipQ":F
    .restart local v6    # "gzipQ":F
    :cond_5
    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    cmpl-float v0, v17, v10

    if-lez v0, :cond_6

    .line 332
    move/from16 v0, v17

    move v10, v0

    .line 310
    .end local v7    # "equalsPos":I
    .end local v9    # "encoding":Ljava/lang/String;
    .end local v17    # "q":F
    :cond_6
    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, p1

    move/from16 v9, v16

    move-object/from16 v7, v18

    goto/16 :goto_0

    .line 335
    :cond_7
    const/4 v0, 0x0

    cmpl-float v7, v3, v0

    const/high16 v9, -0x40800000    # -1.0f

    if-gtz v7, :cond_8

    cmpl-float v7, v4, v0

    if-gtz v7, :cond_8

    cmpl-float v7, v5, v0

    if-gtz v7, :cond_8

    cmpl-float v7, v6, v0

    if-gtz v7, :cond_8

    cmpl-float v7, v10, v0

    if-lez v7, :cond_d

    .line 336
    :cond_8
    cmpl-float v7, v3, v9

    if-eqz v7, :cond_9

    cmpl-float v7, v3, v4

    if-ltz v7, :cond_9

    iget-object v7, v1, Lio/netty/handler/codec/http/HttpContentCompressor;->brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

    if-eqz v7, :cond_9

    .line 337
    return-object v8

    .line 338
    :cond_9
    cmpl-float v7, v4, v9

    if-eqz v7, :cond_a

    cmpl-float v7, v4, v5

    if-ltz v7, :cond_a

    iget-object v7, v1, Lio/netty/handler/codec/http/HttpContentCompressor;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    if-eqz v7, :cond_a

    .line 339
    return-object v15

    .line 340
    :cond_a
    cmpl-float v7, v5, v9

    if-eqz v7, :cond_b

    cmpl-float v7, v5, v6

    if-ltz v7, :cond_b

    iget-object v7, v1, Lio/netty/handler/codec/http/HttpContentCompressor;->snappyOptions:Lio/netty/handler/codec/compression/SnappyOptions;

    if-eqz v7, :cond_b

    .line 341
    return-object v14

    .line 342
    :cond_b
    cmpl-float v7, v6, v9

    if-eqz v7, :cond_c

    cmpl-float v7, v6, v10

    if-ltz v7, :cond_c

    iget-object v7, v1, Lio/netty/handler/codec/http/HttpContentCompressor;->gzipOptions:Lio/netty/handler/codec/compression/GzipOptions;

    if-eqz v7, :cond_c

    .line 343
    return-object v13

    .line 344
    :cond_c
    cmpl-float v7, v10, v9

    if-eqz v7, :cond_d

    iget-object v7, v1, Lio/netty/handler/codec/http/HttpContentCompressor;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    if-eqz v7, :cond_d

    .line 345
    return-object v12

    .line 348
    :cond_d
    cmpl-float v0, v2, v0

    if-lez v0, :cond_12

    .line 349
    cmpl-float v0, v3, v9

    if-nez v0, :cond_e

    iget-object v0, v1, Lio/netty/handler/codec/http/HttpContentCompressor;->brotliOptions:Lio/netty/handler/codec/compression/BrotliOptions;

    if-eqz v0, :cond_e

    .line 350
    return-object v8

    .line 352
    :cond_e
    cmpl-float v0, v4, v9

    if-nez v0, :cond_f

    iget-object v0, v1, Lio/netty/handler/codec/http/HttpContentCompressor;->zstdOptions:Lio/netty/handler/codec/compression/ZstdOptions;

    if-eqz v0, :cond_f

    .line 353
    return-object v15

    .line 355
    :cond_f
    cmpl-float v0, v5, v9

    if-nez v0, :cond_10

    iget-object v0, v1, Lio/netty/handler/codec/http/HttpContentCompressor;->snappyOptions:Lio/netty/handler/codec/compression/SnappyOptions;

    if-eqz v0, :cond_10

    .line 356
    return-object v14

    .line 358
    :cond_10
    cmpl-float v0, v6, v9

    if-nez v0, :cond_11

    iget-object v0, v1, Lio/netty/handler/codec/http/HttpContentCompressor;->gzipOptions:Lio/netty/handler/codec/compression/GzipOptions;

    if-eqz v0, :cond_11

    .line 359
    return-object v13

    .line 361
    :cond_11
    cmpl-float v0, v10, v9

    if-nez v0, :cond_12

    iget-object v0, v1, Lio/netty/handler/codec/http/HttpContentCompressor;->deflateOptions:Lio/netty/handler/codec/compression/DeflateOptions;

    if-eqz v0, :cond_12

    .line 362
    return-object v12

    .line 365
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method protected determineWrapper(Ljava/lang/String;)Lio/netty/handler/codec/compression/ZlibWrapper;
    .locals 10
    .param p1, "acceptEncoding"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 371
    const/high16 v0, -0x40800000    # -1.0f

    .line 372
    .local v0, "starQ":F
    const/high16 v1, -0x40800000    # -1.0f

    .line 373
    .local v1, "gzipQ":F
    const/high16 v2, -0x40800000    # -1.0f

    .line 374
    .local v2, "deflateQ":F
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 375
    .local v6, "encoding":Ljava/lang/String;
    const/high16 v7, 0x3f800000    # 1.0f

    .line 376
    .local v7, "q":F
    const/16 v8, 0x3d

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 377
    .local v8, "equalsPos":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 379
    add-int/lit8 v9, v8, 0x1

    :try_start_0
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v9

    .line 383
    goto :goto_1

    .line 380
    :catch_0
    move-exception v9

    .line 382
    .local v9, "e":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    .line 385
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_1
    const-string v9, "*"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 386
    move v0, v7

    goto :goto_2

    .line 387
    :cond_1
    const-string v9, "gzip"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    cmpl-float v9, v7, v1

    if-lez v9, :cond_2

    .line 388
    move v1, v7

    goto :goto_2

    .line 389
    :cond_2
    const-string v9, "deflate"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    cmpl-float v9, v7, v2

    if-lez v9, :cond_3

    .line 390
    move v2, v7

    .line 374
    .end local v6    # "encoding":Ljava/lang/String;
    .end local v7    # "q":F
    .end local v8    # "equalsPos":I
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 393
    :cond_4
    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-gtz v4, :cond_8

    cmpl-float v4, v2, v3

    if-lez v4, :cond_5

    goto :goto_3

    .line 400
    :cond_5
    cmpl-float v3, v0, v3

    if-lez v3, :cond_7

    .line 401
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v1, v3

    if-nez v4, :cond_6

    .line 402
    sget-object v3, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    return-object v3

    .line 404
    :cond_6
    cmpl-float v3, v2, v3

    if-nez v3, :cond_7

    .line 405
    sget-object v3, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    return-object v3

    .line 408
    :cond_7
    const/4 v3, 0x0

    return-object v3

    .line 394
    :cond_8
    :goto_3
    cmpl-float v3, v1, v2

    if-ltz v3, :cond_9

    .line 395
    sget-object v3, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    return-object v3

    .line 397
    :cond_9
    sget-object v3, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    return-object v3
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 243
    return-void
.end method
