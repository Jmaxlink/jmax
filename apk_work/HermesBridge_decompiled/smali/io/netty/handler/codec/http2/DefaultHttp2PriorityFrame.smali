.class public final Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;
.super Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;
.source "DefaultHttp2PriorityFrame.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2PriorityFrame;


# instance fields
.field private final exclusive:Z

.field private final streamDependency:I

.field private final weight:S


# direct methods
.method public constructor <init>(ISZ)V
    .locals 0
    .param p1, "streamDependency"    # I
    .param p2, "weight"    # S
    .param p3, "exclusive"    # Z

    .line 30
    invoke-direct {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;-><init>()V

    .line 31
    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->streamDependency:I

    .line 32
    iput-short p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->weight:S

    .line 33
    iput-boolean p3, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->exclusive:Z

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 64
    instance-of v0, p1, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 65
    return v1

    .line 67
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;

    .line 68
    .local v0, "other":Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;
    invoke-super {p0, v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 69
    .local v2, "same":Z
    if-eqz v2, :cond_1

    iget v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->streamDependency:I

    iget v4, v0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->streamDependency:I

    if-ne v3, v4, :cond_1

    iget-short v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->weight:S

    iget-short v4, v0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->weight:S

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->exclusive:Z

    iget-boolean v4, v0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->exclusive:Z

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public exclusive()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->exclusive:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 75
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->hashCode()I

    move-result v0

    .line 76
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->streamDependency:I

    add-int/2addr v1, v2

    .line 77
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-short v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->weight:S

    add-int/2addr v0, v2

    .line 78
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->exclusive:Z

    add-int/2addr v1, v2

    .line 79
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    return v1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "PRIORITY_FRAME"

    return-object v0
.end method

.method public bridge synthetic stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;

    move-result-object p1

    return-object p1
.end method

.method public stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;
    .locals 0
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2FrameStream;

    .line 53
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;

    .line 54
    return-object p0
.end method

.method public bridge synthetic stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2PriorityFrame;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2StreamFrame;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;

    move-result-object p1

    return-object p1
.end method

.method public streamDependency()I
    .locals 1

    .line 38
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->streamDependency:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultHttp2PriorityFrame(stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streamDependency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->streamDependency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->weight:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exclusive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->exclusive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    return-object v0
.end method

.method public weight()S
    .locals 1

    .line 43
    iget-short v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->weight:S

    return v0
.end method
