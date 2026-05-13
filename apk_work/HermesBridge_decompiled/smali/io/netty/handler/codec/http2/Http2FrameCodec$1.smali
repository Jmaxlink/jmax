.class Lio/netty/handler/codec/http2/Http2FrameCodec$1;
.super Ljava/lang/Object;
.source "Http2FrameCodec.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2StreamVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/Http2FrameCodec;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

.field final synthetic val$streamVisitor:Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/http2/Http2FrameCodec;

    .line 193
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$1;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$1;->val$streamVisitor:Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lio/netty/handler/codec/http2/Http2Stream;)Z
    .locals 4
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 197
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$1;->val$streamVisitor:Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$1;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    iget-object v1, v1, Lio/netty/handler/codec/http2/Http2FrameCodec;->streamKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1, v1}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2FrameStream;

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;->visit(Lio/netty/handler/codec/http2/Http2FrameStream;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 198
    :catchall_0
    move-exception v0

    .line 199
    .local v0, "cause":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$1;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$1;->this$0:Lio/netty/handler/codec/http2/Http2FrameCodec;

    iget-object v2, v2, Lio/netty/handler/codec/http2/Http2FrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    .line 200
    return v3
.end method
