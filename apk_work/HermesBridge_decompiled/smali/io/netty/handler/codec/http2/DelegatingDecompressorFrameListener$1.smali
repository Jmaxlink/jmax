.class Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$1;
.super Lio/netty/handler/codec/http2/Http2ConnectionAdapter;
.source "DelegatingDecompressorFrameListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;-><init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2FrameListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;

    .line 66
    iput-object p1, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$1;->this$0:Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;

    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2ConnectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamRemoved(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 69
    iget-object v0, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$1;->this$0:Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->decompressor(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;

    move-result-object v0

    .line 70
    .local v0, "decompressor":Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;
    if-eqz v0, :cond_0

    .line 71
    invoke-static {v0}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->access$000(Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;)V

    .line 73
    :cond_0
    return-void
.end method
