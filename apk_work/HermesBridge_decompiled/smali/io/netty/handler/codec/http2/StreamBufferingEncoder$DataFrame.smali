.class final Lio/netty/handler/codec/http2/StreamBufferingEncoder$DataFrame;
.super Lio/netty/handler/codec/http2/StreamBufferingEncoder$Frame;
.source "StreamBufferingEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/StreamBufferingEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataFrame"
.end annotation


# instance fields
.field final data:Lio/netty/buffer/ByteBuf;

.field final endOfStream:Z

.field final padding:I

.field final synthetic this$0:Lio/netty/handler/codec/http2/StreamBufferingEncoder;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/StreamBufferingEncoder;Lio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p2, "data"    # Lio/netty/buffer/ByteBuf;
    .param p3, "padding"    # I
    .param p4, "endOfStream"    # Z
    .param p5, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 364
    iput-object p1, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$DataFrame;->this$0:Lio/netty/handler/codec/http2/StreamBufferingEncoder;

    .line 365
    invoke-direct {p0, p5}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Frame;-><init>(Lio/netty/channel/ChannelPromise;)V

    .line 366
    iput-object p2, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$DataFrame;->data:Lio/netty/buffer/ByteBuf;

    .line 367
    iput p3, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$DataFrame;->padding:I

    .line 368
    iput-boolean p4, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$DataFrame;->endOfStream:Z

    .line 369
    return-void
.end method


# virtual methods
.method release(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 373
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Frame;->release(Ljava/lang/Throwable;)V

    .line 374
    iget-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$DataFrame;->data:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 375
    return-void
.end method

.method send(Lio/netty/channel/ChannelHandlerContext;I)V
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I

    .line 379
    iget-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$DataFrame;->this$0:Lio/netty/handler/codec/http2/StreamBufferingEncoder;

    iget-object v3, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$DataFrame;->data:Lio/netty/buffer/ByteBuf;

    iget v4, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$DataFrame;->padding:I

    iget-boolean v5, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$DataFrame;->endOfStream:Z

    iget-object v6, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$DataFrame;->promise:Lio/netty/channel/ChannelPromise;

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 380
    return-void
.end method
