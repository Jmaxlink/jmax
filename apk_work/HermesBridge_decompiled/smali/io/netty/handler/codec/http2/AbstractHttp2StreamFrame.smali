.class public abstract Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;
.super Ljava/lang/Object;
.source "AbstractHttp2StreamFrame.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2StreamFrame;


# instance fields
.field private stream:Lio/netty/handler/codec/http2/Http2FrameStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 44
    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2StreamFrame;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 45
    return v1

    .line 47
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http2/Http2StreamFrame;

    .line 48
    .local v0, "other":Lio/netty/handler/codec/http2/Http2StreamFrame;
    iget-object v2, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->stream:Lio/netty/handler/codec/http2/Http2FrameStream;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->stream:Lio/netty/handler/codec/http2/Http2FrameStream;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->stream:Lio/netty/handler/codec/http2/Http2FrameStream;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 53
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->stream:Lio/netty/handler/codec/http2/Http2FrameStream;

    .line 54
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2FrameStream;
    if-nez v0, :cond_0

    .line 55
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    return v1

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    return v1
.end method

.method public stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;
    .locals 0
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2FrameStream;

    .line 30
    iput-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->stream:Lio/netty/handler/codec/http2/Http2FrameStream;

    .line 31
    return-object p0
.end method

.method public stream()Lio/netty/handler/codec/http2/Http2FrameStream;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->stream:Lio/netty/handler/codec/http2/Http2FrameStream;

    return-object v0
.end method

.method public bridge synthetic stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2StreamFrame;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;

    move-result-object p1

    return-object p1
.end method
