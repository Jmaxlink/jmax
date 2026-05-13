.class public final Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;
.super Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;
.source "DefaultHttp2HeadersFrame.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2HeadersFrame;


# instance fields
.field private final endStream:Z

.field private final headers:Lio/netty/handler/codec/http2/Http2Headers;

.field private final padding:I


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Headers;)V
    .locals 1
    .param p1, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;-><init>(Lio/netty/handler/codec/http2/Http2Headers;Z)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Headers;Z)V
    .locals 1
    .param p1, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p2, "endStream"    # Z

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;-><init>(Lio/netty/handler/codec/http2/Http2Headers;ZI)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Headers;ZI)V
    .locals 1
    .param p1, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p2, "endStream"    # Z
    .param p3, "padding"    # I

    .line 59
    invoke-direct {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;-><init>()V

    .line 60
    const-string v0, "headers"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Headers;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    .line 61
    iput-boolean p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->endStream:Z

    .line 62
    invoke-static {p3}, Lio/netty/handler/codec/http2/Http2CodecUtil;->verifyPadding(I)V

    .line 63
    iput p3, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->padding:I

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 100
    instance-of v0, p1, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 101
    return v1

    .line 103
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;

    .line 104
    .local v0, "other":Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;
    invoke-super {p0, v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    iget-object v3, v0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->endStream:Z

    iget-boolean v3, v0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->endStream:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->padding:I

    iget v3, v0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->padding:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 110
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->hashCode()I

    move-result v0

    .line 111
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 112
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->endStream:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 113
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->padding:I

    add-int/2addr v1, v2

    .line 114
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    return v1
.end method

.method public headers()Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1

    .line 79
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    return-object v0
.end method

.method public isEndStream()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->endStream:Z

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "HEADERS"

    return-object v0
.end method

.method public padding()I
    .locals 1

    .line 89
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->padding:I

    return v0
.end method

.method public bridge synthetic stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;

    move-result-object p1

    return-object p1
.end method

.method public stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;
    .locals 0
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2FrameStream;

    .line 68
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;

    .line 69
    return-object p0
.end method

.method public bridge synthetic stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2StreamFrame;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->endStream:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", padding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->padding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
