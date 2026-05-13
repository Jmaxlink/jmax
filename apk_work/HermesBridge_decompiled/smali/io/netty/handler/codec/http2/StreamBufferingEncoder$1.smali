.class Lio/netty/handler/codec/http2/StreamBufferingEncoder$1;
.super Lio/netty/handler/codec/http2/Http2ConnectionAdapter;
.source "StreamBufferingEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/StreamBufferingEncoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http2/StreamBufferingEncoder;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/StreamBufferingEncoder;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/http2/StreamBufferingEncoder;

    .line 130
    iput-object p1, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$1;->this$0:Lio/netty/handler/codec/http2/StreamBufferingEncoder;

    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2ConnectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onGoAwayReceived(IJLio/netty/buffer/ByteBuf;)V
    .locals 5
    .param p1, "lastStreamId"    # I
    .param p2, "errorCode"    # J
    .param p4, "debugData"    # Lio/netty/buffer/ByteBuf;

    .line 134
    iget-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$1;->this$0:Lio/netty/handler/codec/http2/StreamBufferingEncoder;

    new-instance v1, Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    .line 137
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p4, v2, v3, v4}, Lio/netty/buffer/ByteBufUtil;->getBytes(Lio/netty/buffer/ByteBuf;IIZ)[B

    move-result-object v2

    invoke-direct {v1, p1, p2, p3, v2}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;-><init>(IJ[B)V

    .line 134
    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->access$302(Lio/netty/handler/codec/http2/StreamBufferingEncoder;Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;)Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    .line 138
    iget-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$1;->this$0:Lio/netty/handler/codec/http2/StreamBufferingEncoder;

    iget-object v1, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$1;->this$0:Lio/netty/handler/codec/http2/StreamBufferingEncoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->access$300(Lio/netty/handler/codec/http2/StreamBufferingEncoder;)Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    move-result-object v1

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->access$400(Lio/netty/handler/codec/http2/StreamBufferingEncoder;Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;)V

    .line 139
    return-void
.end method

.method public onStreamClosed(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 143
    iget-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$1;->this$0:Lio/netty/handler/codec/http2/StreamBufferingEncoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->access$500(Lio/netty/handler/codec/http2/StreamBufferingEncoder;)V

    .line 144
    return-void
.end method
