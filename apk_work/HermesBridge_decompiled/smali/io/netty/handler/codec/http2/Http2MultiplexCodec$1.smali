.class Lio/netty/handler/codec/http2/Http2MultiplexCodec$1;
.super Ljava/lang/Object;
.source "Http2MultiplexCodec.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/Http2MultiplexCodec;->onHttp2GoAwayFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2GoAwayFrame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

.field final synthetic val$goAwayFrame:Lio/netty/handler/codec/http2/Http2GoAwayFrame;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2GoAwayFrame;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    .line 229
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$1;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$1;->val$goAwayFrame:Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lio/netty/handler/codec/http2/Http2FrameStream;)Z
    .locals 4
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2FrameStream;

    .line 232
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v0

    .line 233
    .local v0, "streamId":I
    move-object v1, p1

    check-cast v1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    iget-object v1, v1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->attachment:Lio/netty/channel/Channel;

    check-cast v1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    .line 235
    .local v1, "channel":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$1;->val$goAwayFrame:Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2GoAwayFrame;->lastStreamId()I

    move-result v2

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$1;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->isValidStreamId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$1;->val$goAwayFrame:Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2GoAwayFrame;->retainedDuplicate()Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 238
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
