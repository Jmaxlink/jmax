.class public Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;
.super Ljava/lang/Object;
.source "DefaultHttp2HeadersDecoder.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2HeadersDecoder;
.implements Lio/netty/handler/codec/http2/Http2HeadersDecoder$Configuration;


# static fields
.field private static final HEADERS_COUNT_WEIGHT_HISTORICAL:F = 0.8f

.field private static final HEADERS_COUNT_WEIGHT_NEW:F = 0.2f


# instance fields
.field private headerArraySizeAccumulator:F

.field private final hpackDecoder:Lio/netty/handler/codec/http2/HpackDecoder;

.field private maxHeaderListSizeGoAway:J

.field private final validateHeaderValues:Z

.field private final validateHeaders:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;-><init>(Z)V

    .line 45
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "validateHeaders"    # Z

    .line 52
    const-wide/16 v0, 0x2000

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;-><init>(ZJ)V

    .line 53
    return-void
.end method

.method public constructor <init>(ZJ)V
    .locals 2
    .param p1, "validateHeaders"    # Z
    .param p2, "maxHeaderListSize"    # J

    .line 76
    new-instance v0, Lio/netty/handler/codec/http2/HpackDecoder;

    invoke-direct {v0, p2, p3}, Lio/netty/handler/codec/http2/HpackDecoder;-><init>(J)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;-><init>(ZZLio/netty/handler/codec/http2/HpackDecoder;)V

    .line 77
    return-void
.end method

.method public constructor <init>(ZJI)V
    .locals 2
    .param p1, "validateHeaders"    # Z
    .param p2, "maxHeaderListSize"    # J
    .param p4, "initialHuffmanDecodeCapacity"    # I
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param

    .line 106
    new-instance v0, Lio/netty/handler/codec/http2/HpackDecoder;

    invoke-direct {v0, p2, p3}, Lio/netty/handler/codec/http2/HpackDecoder;-><init>(J)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;-><init>(ZZLio/netty/handler/codec/http2/HpackDecoder;)V

    .line 107
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2
    .param p1, "validateHeaders"    # Z
    .param p2, "validateHeaderValues"    # Z

    .line 64
    const-wide/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;-><init>(ZZJ)V

    .line 65
    return-void
.end method

.method public constructor <init>(ZZJ)V
    .locals 1
    .param p1, "validateHeaders"    # Z
    .param p2, "validateHeaderValues"    # Z
    .param p3, "maxHeaderListSize"    # J

    .line 91
    new-instance v0, Lio/netty/handler/codec/http2/HpackDecoder;

    invoke-direct {v0, p3, p4}, Lio/netty/handler/codec/http2/HpackDecoder;-><init>(J)V

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;-><init>(ZZLio/netty/handler/codec/http2/HpackDecoder;)V

    .line 92
    return-void
.end method

.method constructor <init>(ZZLio/netty/handler/codec/http2/HpackDecoder;)V
    .locals 2
    .param p1, "validateHeaders"    # Z
    .param p2, "validateHeaderValues"    # Z
    .param p3, "hpackDecoder"    # Lio/netty/handler/codec/http2/HpackDecoder;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->headerArraySizeAccumulator:F

    .line 114
    const-string v0, "hpackDecoder"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/HpackDecoder;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->hpackDecoder:Lio/netty/handler/codec/http2/HpackDecoder;

    .line 115
    iput-boolean p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->validateHeaders:Z

    .line 116
    iput-boolean p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->validateHeaderValues:Z

    .line 117
    nop

    .line 118
    invoke-virtual {p3}, Lio/netty/handler/codec/http2/HpackDecoder;->getMaxHeaderListSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/Http2CodecUtil;->calculateMaxHeaderListSizeGoAway(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->maxHeaderListSizeGoAway:J

    .line 119
    return-void
.end method


# virtual methods
.method public configuration()Lio/netty/handler/codec/http2/Http2HeadersDecoder$Configuration;
    .locals 0

    .line 153
    return-object p0
.end method

.method public decodeHeaders(ILio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "headerBlock"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->newHeaders()Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v0

    .line 160
    .local v0, "headers":Lio/netty/handler/codec/http2/Http2Headers;
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->hpackDecoder:Lio/netty/handler/codec/http2/HpackDecoder;

    iget-boolean v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->validateHeaders:Z

    invoke-virtual {v1, p1, p2, v0, v2}, Lio/netty/handler/codec/http2/HpackDecoder;->decode(ILio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2Headers;Z)V

    .line 161
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Headers;->size()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    iget v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->headerArraySizeAccumulator:F

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->headerArraySizeAccumulator:F
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    return-object v0

    .line 166
    .end local v0    # "headers":Lio/netty/handler/codec/http2/Http2Headers;
    :catchall_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error decoding headers: %s"

    invoke-static {v1, v0, v3, v2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    throw v1

    .line 164
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Lio/netty/handler/codec/http2/Http2Exception;
    throw v0
.end method

.method public maxHeaderListSize()J
    .locals 2

    .line 143
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->hpackDecoder:Lio/netty/handler/codec/http2/HpackDecoder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackDecoder;->getMaxHeaderListSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public maxHeaderListSize(JJ)V
    .locals 3
    .param p1, "max"    # J
    .param p3, "goAwayMax"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 133
    cmp-long v0, p3, p1

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 137
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->hpackDecoder:Lio/netty/handler/codec/http2/HpackDecoder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http2/HpackDecoder;->setMaxHeaderListSize(J)V

    .line 138
    iput-wide p3, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->maxHeaderListSizeGoAway:J

    .line 139
    return-void

    .line 134
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 135
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 134
    const-string v2, "Header List Size GO_AWAY %d must be non-negative and >= %d"

    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method public maxHeaderListSizeGoAway()J
    .locals 2

    .line 148
    iget-wide v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->maxHeaderListSizeGoAway:J

    return-wide v0
.end method

.method public maxHeaderTableSize()J
    .locals 2

    .line 128
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->hpackDecoder:Lio/netty/handler/codec/http2/HpackDecoder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackDecoder;->getMaxHeaderTableSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public maxHeaderTableSize(J)V
    .locals 1
    .param p1, "max"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->hpackDecoder:Lio/netty/handler/codec/http2/HpackDecoder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http2/HpackDecoder;->setMaxHeaderTableSize(J)V

    .line 124
    return-void
.end method

.method protected newHeaders()Lio/netty/handler/codec/http2/Http2Headers;
    .locals 4

    .line 211
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    iget-boolean v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->validateHeaders:Z

    iget-boolean v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->validateHeaderValues:Z

    iget v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->headerArraySizeAccumulator:F

    float-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;-><init>(ZZI)V

    return-object v0
.end method

.method protected final numberOfHeadersGuess()I
    .locals 1

    .line 179
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->headerArraySizeAccumulator:F

    float-to-int v0, v0

    return v0
.end method

.method protected validateHeaderValues()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->validateHeaderValues:Z

    return v0
.end method

.method protected final validateHeaders()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersDecoder;->validateHeaders:Z

    return v0
.end method
