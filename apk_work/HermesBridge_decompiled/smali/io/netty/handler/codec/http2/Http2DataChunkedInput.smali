.class public final Lio/netty/handler/codec/http2/Http2DataChunkedInput;
.super Ljava/lang/Object;
.source "Http2DataChunkedInput.java"

# interfaces
.implements Lio/netty/handler/stream/ChunkedInput;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/handler/stream/ChunkedInput<",
        "Lio/netty/handler/codec/http2/Http2DataFrame;",
        ">;"
    }
.end annotation


# instance fields
.field private endStreamSent:Z

.field private final input:Lio/netty/handler/stream/ChunkedInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/stream/ChunkedInput<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation
.end field

.field private final stream:Lio/netty/handler/codec/http2/Http2FrameStream;


# direct methods
.method public constructor <init>(Lio/netty/handler/stream/ChunkedInput;Lio/netty/handler/codec/http2/Http2FrameStream;)V
    .locals 1
    .param p2, "stream"    # Lio/netty/handler/codec/http2/Http2FrameStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/stream/ChunkedInput<",
            "Lio/netty/buffer/ByteBuf;",
            ">;",
            "Lio/netty/handler/codec/http2/Http2FrameStream;",
            ")V"
        }
    .end annotation

    .line 58
    .local p1, "input":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<Lio/netty/buffer/ByteBuf;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "input"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/stream/ChunkedInput;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    .line 60
    const-string v0, "stream"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameStream;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->stream:Lio/netty/handler/codec/http2/Http2FrameStream;

    .line 61
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->close()V

    .line 75
    return-void
.end method

.method public isEndOfInput()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->isEndOfInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->endStreamSent:Z

    return v0

    .line 69
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public length()J
    .locals 2

    .line 109
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public progress()J
    .locals 2

    .line 114
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->progress()J

    move-result-wide v0

    return-wide v0
.end method

.method public readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http2/Http2DataFrame;
    .locals 4
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->endStreamSent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 86
    return-object v1

    .line 89
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->isEndOfInput()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 90
    iput-boolean v2, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->endStreamSent:Z

    .line 91
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    invoke-direct {v0, v2}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;-><init>(Z)V

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->stream:Lio/netty/handler/codec/http2/Http2FrameStream;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object v0

    return-object v0

    .line 94
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v0, p1}, Lio/netty/handler/stream/ChunkedInput;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 95
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    if-nez v0, :cond_2

    .line 96
    return-object v1

    .line 99
    :cond_2
    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->input:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {v3}, Lio/netty/handler/stream/ChunkedInput;->isEndOfInput()Z

    move-result v3

    invoke-direct {v1, v0, v3}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->stream:Lio/netty/handler/codec/http2/Http2FrameStream;

    invoke-virtual {v1, v3}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object v1

    .line 100
    .local v1, "dataFrame":Lio/netty/handler/codec/http2/Http2DataFrame;
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2DataFrame;->isEndStream()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    iput-boolean v2, p0, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->endStreamSent:Z

    .line 104
    :cond_3
    return-object v1
.end method

.method public readChunk(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/codec/http2/Http2DataFrame;
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http2/Http2DataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readChunk(Lio/netty/buffer/ByteBufAllocator;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http2/Http2DataFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readChunk(Lio/netty/channel/ChannelHandlerContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2DataChunkedInput;->readChunk(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/codec/http2/Http2DataFrame;

    move-result-object p1

    return-object p1
.end method
