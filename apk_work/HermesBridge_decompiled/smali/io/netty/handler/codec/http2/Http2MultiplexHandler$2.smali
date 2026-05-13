.class Lio/netty/handler/codec/http2/Http2MultiplexHandler$2;
.super Ljava/lang/Object;
.source "Http2MultiplexHandler.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/Http2MultiplexHandler;->fireExceptionCaughtForActiveStream(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http2/Http2MultiplexHandler;

.field final synthetic val$cause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/Http2MultiplexHandler;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/http2/Http2MultiplexHandler;

    .line 318
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler$2;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexHandler;

    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler$2;->val$cause:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lio/netty/handler/codec/http2/Http2FrameStream;)Z
    .locals 3
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2FrameStream;

    .line 321
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    iget-object v0, v0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->attachment:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    .line 323
    .local v0, "childChannel":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler$2;->val$cause:Ljava/lang/Throwable;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    .line 324
    const/4 v1, 0x1

    return v1
.end method
