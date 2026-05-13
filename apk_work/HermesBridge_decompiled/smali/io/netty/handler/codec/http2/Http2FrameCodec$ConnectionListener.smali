.class final Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;
.super Lio/netty/handler/codec/http2/Http2ConnectionAdapter;
.source "Http2FrameCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2FrameCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;


# direct methods
.method private constructor <init>(Lio/netty/handler/codec/http2/Http2FrameCodec;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2ConnectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/codec/http2/Http2FrameCodec;
    .param p2, "x1"    # Lio/netty/handler/codec/http2/Http2FrameCodec$1;

    .line 501
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;-><init>(Lio/netty/handler/codec/http2/Http2FrameCodec;)V

    return-void
.end method

.method private onHttp2StreamStateChanged0(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 3
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 527
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    iget-object v0, v0, Lio/netty/handler/codec/http2/Http2FrameCodec;->streamKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    .line 528
    .local v0, "stream2":Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
    if-eqz v0, :cond_0

    .line 529
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    iget-object v2, v2, Lio/netty/handler/codec/http2/Http2FrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {v1, v2, v0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2StreamStateChanged(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;)V

    .line 531
    :cond_0
    return-void
.end method


# virtual methods
.method public onStreamActive(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 513
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    invoke-static {v0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->access$700(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/handler/codec/http2/Http2Stream;)V

    .line 514
    return-void
.end method

.method public onStreamAdded(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 2
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 504
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->access$600(Lio/netty/handler/codec/http2/Http2FrameCodec;)Lio/netty/util/collection/IntObjectMap;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v1

    invoke-interface {v0, v1}, Lio/netty/util/collection/IntObjectMap;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    .line 506
    .local v0, "frameStream":Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
    if-eqz v0, :cond_0

    .line 507
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    iget-object v1, v1, Lio/netty/handler/codec/http2/Http2FrameCodec;->streamKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-virtual {v0, v1, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->setStreamAndProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    .line 509
    :cond_0
    return-void
.end method

.method public onStreamClosed(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 0
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 518
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;->onHttp2StreamStateChanged0(Lio/netty/handler/codec/http2/Http2Stream;)V

    .line 519
    return-void
.end method

.method public onStreamHalfClosed(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 0
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 523
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec$ConnectionListener;->onHttp2StreamStateChanged0(Lio/netty/handler/codec/http2/Http2Stream;)V

    .line 524
    return-void
.end method
