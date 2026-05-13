.class final Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;
.super Ljava/lang/Object;
.source "Http2FrameCodec.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2FrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2FrameCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;


# direct methods
.method private constructor <init>(Lio/netty/handler/codec/http2/Http2FrameCodec;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/codec/http2/Http2FrameCodec;
    .param p2, "x1"    # Lio/netty/handler/codec/http2/Http2FrameCodec$1;

    .line 592
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;-><init>(Lio/netty/handler/codec/http2/Http2FrameCodec;)V

    return-void
.end method

.method private requireStream(I)Lio/netty/handler/codec/http2/Http2FrameStream;
    .locals 4
    .param p1, "streamId"    # I

    .line 690
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    iget-object v1, v1, Lio/netty/handler/codec/http2/Http2FrameCodec;->streamKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameStream;

    .line 691
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2FrameStream;
    if-eqz v0, :cond_0

    .line 694
    return-object v0

    .line 692
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stream object required for identifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "data"    # Lio/netty/buffer/ByteBuf;
    .param p4, "padding"    # I
    .param p5, "endOfStream"    # Z

    .line 651
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    invoke-direct {v1, p3, p5, p4}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;-><init>(Lio/netty/buffer/ByteBuf;ZI)V

    .line 652
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->requireStream(I)Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->retain()Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object v1

    .line 651
    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2Frame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Frame;)V

    .line 654
    const/4 v0, 0x0

    return v0
.end method

.method public onGoAwayRead(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "lastStreamId"    # I
    .param p3, "errorCode"    # J
    .param p5, "debugData"    # Lio/netty/buffer/ByteBuf;

    .line 659
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;

    invoke-direct {v1, p2, p3, p4, p5}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;-><init>(IJLio/netty/buffer/ByteBuf;)V

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->retain()Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2Frame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Frame;)V

    .line 660
    return-void
.end method

.method public onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "streamDependency"    # I
    .param p5, "weight"    # S
    .param p6, "exclusive"    # Z
    .param p7, "padding"    # I
    .param p8, "endStream"    # Z

    .line 638
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p7

    move v5, p8

    invoke-virtual/range {v0 .. v5}, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZ)V

    .line 639
    return-void
.end method

.method public onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZ)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "padding"    # I
    .param p5, "endOfStream"    # Z

    .line 644
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;

    invoke-direct {v1, p3, p5, p4}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;-><init>(Lio/netty/handler/codec/http2/Http2Headers;ZI)V

    .line 645
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->requireStream(I)Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2HeadersFrame;

    move-result-object v1

    .line 644
    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2Frame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Frame;)V

    .line 646
    return-void
.end method

.method public onPingAckRead(Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "data"    # J

    .line 617
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2PingFrame;

    const/4 v2, 0x1

    invoke-direct {v1, p2, p3, v2}, Lio/netty/handler/codec/http2/DefaultHttp2PingFrame;-><init>(JZ)V

    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2Frame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Frame;)V

    .line 618
    return-void
.end method

.method public onPingRead(Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "data"    # J

    .line 612
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2PingFrame;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, v2}, Lio/netty/handler/codec/http2/DefaultHttp2PingFrame;-><init>(JZ)V

    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2Frame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Frame;)V

    .line 613
    return-void
.end method

.method public onPriorityRead(Lio/netty/channel/ChannelHandlerContext;IISZ)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "streamDependency"    # I
    .param p4, "weight"    # S
    .param p5, "exclusive"    # Z

    .line 666
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 667
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    if-nez v0, :cond_0

    .line 669
    return-void

    .line 671
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    new-instance v2, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;

    invoke-direct {v2, p3, p4, p5}, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;-><init>(ISZ)V

    .line 672
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->requireStream(I)Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2PriorityFrame;

    move-result-object v2

    .line 671
    invoke-virtual {v1, p1, v2}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2Frame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Frame;)V

    .line 673
    return-void
.end method

.method public onPushPromiseRead(Lio/netty/channel/ChannelHandlerContext;IILio/netty/handler/codec/http2/Http2Headers;I)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "promisedStreamId"    # I
    .param p4, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p5, "padding"    # I

    .line 683
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;

    invoke-direct {v1, p4, p5, p3}, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;-><init>(Lio/netty/handler/codec/http2/Http2Headers;II)V

    new-instance v2, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    invoke-direct {v2}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;-><init>()V

    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    iget-object v3, v3, Lio/netty/handler/codec/http2/Http2FrameCodec;->streamKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    iget-object v4, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    .line 685
    invoke-virtual {v4}, Lio/netty/handler/codec/http2/Http2FrameCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v4

    invoke-interface {v4, p3}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->setStreamAndProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    move-result-object v2

    .line 684
    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2PushPromiseFrame;->pushStream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2StreamFrame;

    move-result-object v1

    .line 686
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->requireStream(I)Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2StreamFrame;

    move-result-object v1

    .line 683
    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2Frame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Frame;)V

    .line 687
    return-void
.end method

.method public onRstStreamRead(Lio/netty/channel/ChannelHandlerContext;IJ)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "errorCode"    # J

    .line 622
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2ResetFrame;

    invoke-direct {v1, p3, p4}, Lio/netty/handler/codec/http2/DefaultHttp2ResetFrame;-><init>(J)V

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->requireStream(I)Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2ResetFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2ResetFrame;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2Frame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Frame;)V

    .line 623
    return-void
.end method

.method public onSettingsAckRead(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 677
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    sget-object v1, Lio/netty/handler/codec/http2/Http2SettingsAckFrame;->INSTANCE:Lio/netty/handler/codec/http2/Http2SettingsAckFrame;

    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2Frame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Frame;)V

    .line 678
    return-void
.end method

.method public onSettingsRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "settings"    # Lio/netty/handler/codec/http2/Http2Settings;

    .line 607
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2SettingsFrame;

    invoke-direct {v1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2SettingsFrame;-><init>(Lio/netty/handler/codec/http2/Http2Settings;)V

    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2Frame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Frame;)V

    .line 608
    return-void
.end method

.method public onUnknownFrame(Lio/netty/channel/ChannelHandlerContext;BILio/netty/handler/codec/http2/Http2Flags;Lio/netty/buffer/ByteBuf;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "frameType"    # B
    .param p3, "streamId"    # I
    .param p4, "flags"    # Lio/netty/handler/codec/http2/Http2Flags;
    .param p5, "payload"    # Lio/netty/buffer/ByteBuf;

    .line 597
    if-nez p3, :cond_0

    .line 599
    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2UnknownFrame;

    invoke-direct {v1, p2, p4, p5}, Lio/netty/handler/codec/http2/DefaultHttp2UnknownFrame;-><init>(BLio/netty/handler/codec/http2/Http2Flags;Lio/netty/buffer/ByteBuf;)V

    .line 602
    invoke-direct {p0, p3}, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->requireStream(I)Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2UnknownFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2UnknownFrame;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/DefaultHttp2UnknownFrame;->retain()Lio/netty/handler/codec/http2/DefaultHttp2UnknownFrame;

    move-result-object v1

    .line 601
    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2Frame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Frame;)V

    .line 603
    return-void
.end method

.method public onWindowUpdateRead(Lio/netty/channel/ChannelHandlerContext;II)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "windowSizeIncrement"    # I

    .line 627
    if-nez p2, :cond_0

    .line 629
    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2WindowUpdateFrame;

    invoke-direct {v1, p3}, Lio/netty/handler/codec/http2/DefaultHttp2WindowUpdateFrame;-><init>(I)V

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/Http2FrameCodec$FrameListener;->requireStream(I)Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2WindowUpdateFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2WindowUpdateFrame;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttp2Frame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Frame;)V

    .line 632
    return-void
.end method
