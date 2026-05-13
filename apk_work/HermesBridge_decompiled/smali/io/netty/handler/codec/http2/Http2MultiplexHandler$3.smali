.class Lio/netty/handler/codec/http2/Http2MultiplexHandler$3;
.super Ljava/lang/Object;
.source "Http2MultiplexHandler.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/Http2MultiplexHandler;->onHttp2GoAwayFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2GoAwayFrame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http2/Http2MultiplexHandler;

.field final synthetic val$goAwayFrame:Lio/netty/handler/codec/http2/Http2GoAwayFrame;

.field final synthetic val$server:Z


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/Http2MultiplexHandler;Lio/netty/handler/codec/http2/Http2GoAwayFrame;Z)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/http2/Http2MultiplexHandler;

    .line 341
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler$3;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexHandler;

    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler$3;->val$goAwayFrame:Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    iput-boolean p3, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler$3;->val$server:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lio/netty/handler/codec/http2/Http2FrameStream;)Z
    .locals 4
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2FrameStream;

    .line 344
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v0

    .line 345
    .local v0, "streamId":I
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler$3;->val$goAwayFrame:Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2GoAwayFrame;->lastStreamId()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler$3;->val$server:Z

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/Http2CodecUtil;->isStreamIdValid(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    move-object v1, p1

    check-cast v1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    iget-object v1, v1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->attachment:Lio/netty/channel/Channel;

    check-cast v1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    .line 348
    .local v1, "childChannel":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler$3;->val$goAwayFrame:Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2GoAwayFrame;->retainedDuplicate()Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 350
    .end local v1    # "childChannel":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
