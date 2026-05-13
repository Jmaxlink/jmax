.class public final Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;
.super Ljava/lang/Object;
.source "DefaultHttp2PushPromiseFrame.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2PushPromiseFrame;


# instance fields
.field private final http2Headers:Lio/netty/handler/codec/http2/Http2Headers;

.field private final padding:I

.field private final promisedStreamId:I

.field private pushStreamFrame:Lio/netty/handler/codec/http2/Http2FrameStream;

.field private streamFrame:Lio/netty/handler/codec/http2/Http2FrameStream;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Headers;)V
    .locals 1
    .param p1, "http2Headers"    # Lio/netty/handler/codec/http2/Http2Headers;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;-><init>(Lio/netty/handler/codec/http2/Http2Headers;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Headers;I)V
    .locals 1
    .param p1, "http2Headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p2, "padding"    # I

    .line 37
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;-><init>(Lio/netty/handler/codec/http2/Http2Headers;II)V

    .line 38
    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http2/Http2Headers;II)V
    .locals 0
    .param p1, "http2Headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p2, "padding"    # I
    .param p3, "promisedStreamId"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->http2Headers:Lio/netty/handler/codec/http2/Http2Headers;

    .line 42
    iput p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->padding:I

    .line 43
    iput p3, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->promisedStreamId:I

    .line 44
    return-void
.end method


# virtual methods
.method public http2Headers()Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1

    .line 59
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->http2Headers:Lio/netty/handler/codec/http2/Http2Headers;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "PUSH_PROMISE_FRAME"

    return-object v0
.end method

.method public padding()I
    .locals 1

    .line 64
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->padding:I

    return v0
.end method

.method public promisedStreamId()I
    .locals 1

    .line 69
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->pushStreamFrame:Lio/netty/handler/codec/http2/Http2FrameStream;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->pushStreamFrame:Lio/netty/handler/codec/http2/Http2FrameStream;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v0

    return v0

    .line 72
    :cond_0
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->promisedStreamId:I

    return v0
.end method

.method public pushStream()Lio/netty/handler/codec/http2/Http2FrameStream;
    .locals 1

    .line 54
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->pushStreamFrame:Lio/netty/handler/codec/http2/Http2FrameStream;

    return-object v0
.end method

.method public pushStream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2StreamFrame;
    .locals 0
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2FrameStream;

    .line 48
    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->pushStreamFrame:Lio/netty/handler/codec/http2/Http2FrameStream;

    .line 49
    return-object p0
.end method

.method public stream()Lio/netty/handler/codec/http2/Http2FrameStream;
    .locals 1

    .line 84
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->streamFrame:Lio/netty/handler/codec/http2/Http2FrameStream;

    return-object v0
.end method

.method public stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2PushPromiseFrame;
    .locals 0
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2FrameStream;

    .line 78
    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->streamFrame:Lio/netty/handler/codec/http2/Http2FrameStream;

    .line 79
    return-object p0
.end method

.method public bridge synthetic stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2StreamFrame;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2PushPromiseFrame;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultHttp2PushPromiseFrame{pushStreamFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->pushStreamFrame:Lio/netty/handler/codec/http2/Http2FrameStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", http2Headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->http2Headers:Lio/netty/handler/codec/http2/Http2Headers;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streamFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->streamFrame:Lio/netty/handler/codec/http2/Http2FrameStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", padding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->padding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
