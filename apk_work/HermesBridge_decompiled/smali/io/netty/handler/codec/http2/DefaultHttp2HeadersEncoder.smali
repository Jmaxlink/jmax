.class public Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;
.super Ljava/lang/Object;
.source "DefaultHttp2HeadersEncoder.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2HeadersEncoder;
.implements Lio/netty/handler/codec/http2/Http2HeadersEncoder$Configuration;


# instance fields
.field private final hpackEncoder:Lio/netty/handler/codec/http2/HpackEncoder;

.field private final sensitivityDetector:Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

.field private tableSizeChangeOutput:Lio/netty/buffer/ByteBuf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    sget-object v0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;->NEVER_SENSITIVE:Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;-><init>(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)V
    .locals 1
    .param p1, "sensitivityDetector"    # Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    .line 37
    new-instance v0, Lio/netty/handler/codec/http2/HpackEncoder;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/HpackEncoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;-><init>(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;Lio/netty/handler/codec/http2/HpackEncoder;)V

    .line 38
    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;Lio/netty/handler/codec/http2/HpackEncoder;)V
    .locals 1
    .param p1, "sensitivityDetector"    # Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;
    .param p2, "hpackEncoder"    # Lio/netty/handler/codec/http2/HpackEncoder;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "sensitiveDetector"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;->sensitivityDetector:Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    .line 61
    const-string v0, "hpackEncoder"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/HpackEncoder;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;->hpackEncoder:Lio/netty/handler/codec/http2/HpackEncoder;

    .line 62
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;Z)V
    .locals 1
    .param p1, "sensitivityDetector"    # Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;
    .param p2, "ignoreMaxHeaderListSize"    # Z

    .line 41
    new-instance v0, Lio/netty/handler/codec/http2/HpackEncoder;

    invoke-direct {v0, p2}, Lio/netty/handler/codec/http2/HpackEncoder;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;-><init>(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;Lio/netty/handler/codec/http2/HpackEncoder;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;ZI)V
    .locals 1
    .param p1, "sensitivityDetector"    # Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;
    .param p2, "ignoreMaxHeaderListSize"    # Z
    .param p3, "dynamicTableArraySizeHint"    # I

    .line 46
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;-><init>(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;ZII)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;ZII)V
    .locals 1
    .param p1, "sensitivityDetector"    # Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;
    .param p2, "ignoreMaxHeaderListSize"    # Z
    .param p3, "dynamicTableArraySizeHint"    # I
    .param p4, "huffCodeThreshold"    # I

    .line 51
    new-instance v0, Lio/netty/handler/codec/http2/HpackEncoder;

    invoke-direct {v0, p2, p3, p4}, Lio/netty/handler/codec/http2/HpackEncoder;-><init>(ZII)V

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;-><init>(Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;Lio/netty/handler/codec/http2/HpackEncoder;)V

    .line 53
    return-void
.end method


# virtual methods
.method public configuration()Lio/netty/handler/codec/http2/Http2HeadersEncoder$Configuration;
    .locals 0

    .line 107
    return-object p0
.end method

.method public encodeHeaders(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBuf;)V
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p3, "buffer"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;->tableSizeChangeOutput:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;->tableSizeChangeOutput:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;->tableSizeChangeOutput:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p3, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 71
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;->tableSizeChangeOutput:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    .line 74
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;->hpackEncoder:Lio/netty/handler/codec/http2/HpackEncoder;

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;->sensitivityDetector:Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    invoke-virtual {v0, p1, p3, p2, v1}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeHeaders(ILio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    nop

    .line 80
    return-void

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed encoding headers block: %s"

    invoke-static {v1, v0, v3, v2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    throw v1

    .line 75
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lio/netty/handler/codec/http2/Http2Exception;
    throw v0
.end method

.method public maxHeaderListSize()J
    .locals 2

    .line 102
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;->hpackEncoder:Lio/netty/handler/codec/http2/HpackEncoder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackEncoder;->getMaxHeaderListSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public maxHeaderListSize(J)V
    .locals 1
    .param p1, "max"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;->hpackEncoder:Lio/netty/handler/codec/http2/HpackEncoder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http2/HpackEncoder;->setMaxHeaderListSize(J)V

    .line 98
    return-void
.end method

.method public maxHeaderTableSize()J
    .locals 2

    .line 92
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;->hpackEncoder:Lio/netty/handler/codec/http2/HpackEncoder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackEncoder;->getMaxHeaderTableSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public maxHeaderTableSize(J)V
    .locals 2
    .param p1, "max"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;->tableSizeChangeOutput:Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lio/netty/buffer/Unpooled;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;->tableSizeChangeOutput:Lio/netty/buffer/ByteBuf;

    .line 87
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;->hpackEncoder:Lio/netty/handler/codec/http2/HpackEncoder;

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersEncoder;->tableSizeChangeOutput:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, v1, p1, p2}, Lio/netty/handler/codec/http2/HpackEncoder;->setMaxHeaderTableSize(Lio/netty/buffer/ByteBuf;J)V

    .line 88
    return-void
.end method
