.class Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$3;
.super Lio/netty/channel/DefaultChannelPipeline;
.source "AbstractHttp2StreamChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;-><init>(Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;ILio/netty/channel/ChannelHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;Lio/netty/channel/Channel;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    .param p2, "x0"    # Lio/netty/channel/Channel;

    .line 218
    iput-object p1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$3;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-direct {p0, p2}, Lio/netty/channel/DefaultChannelPipeline;-><init>(Lio/netty/channel/Channel;)V

    return-void
.end method


# virtual methods
.method protected decrementPendingOutboundBytes(J)V
    .locals 2
    .param p1, "size"    # J

    .line 226
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$3;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$300(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;JZ)V

    .line 227
    return-void
.end method

.method protected incrementPendingOutboundBytes(J)V
    .locals 2
    .param p1, "size"    # J

    .line 221
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$3;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->access$200(Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;JZ)V

    .line 222
    return-void
.end method

.method protected onUnhandledInboundException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 232
    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2FrameStreamException;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$3;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    move-object v1, p1

    check-cast v1, Lio/netty/handler/codec/http2/Http2FrameStreamException;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2FrameStreamException;->error()Lio/netty/handler/codec/http2/Http2Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->closeWithError(Lio/netty/handler/codec/http2/Http2Error;)V

    .line 234
    return-void

    .line 236
    :cond_0
    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2CodecUtil;->getEmbeddedHttp2Exception(Ljava/lang/Throwable;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    .line 237
    .local v0, "exception":Lio/netty/handler/codec/http2/Http2Exception;
    if-eqz v0, :cond_1

    .line 238
    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$3;->this$0:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Exception;->error()Lio/netty/handler/codec/http2/Http2Error;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->closeWithError(Lio/netty/handler/codec/http2/Http2Error;)V

    .line 239
    return-void

    .line 242
    .end local v0    # "exception":Lio/netty/handler/codec/http2/Http2Exception;
    :cond_1
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->onUnhandledInboundException(Ljava/lang/Throwable;)V

    .line 243
    return-void
.end method
