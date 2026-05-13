.class Lio/netty/handler/codec/http2/UniformStreamByteDistributor$1;
.super Lio/netty/handler/codec/http2/Http2ConnectionAdapter;
.source "UniformStreamByteDistributor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/UniformStreamByteDistributor;-><init>(Lio/netty/handler/codec/http2/Http2Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http2/UniformStreamByteDistributor;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/http2/UniformStreamByteDistributor;

    .line 56
    iput-object p1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/UniformStreamByteDistributor;

    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2ConnectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamAdded(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 3
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 59
    iget-object v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/UniformStreamByteDistributor;

    invoke-static {v0}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->access$000(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;

    iget-object v2, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/UniformStreamByteDistributor;

    invoke-direct {v1, v2, p1}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;-><init>(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;Lio/netty/handler/codec/http2/Http2Stream;)V

    invoke-interface {p1, v0, v1}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public onStreamClosed(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 64
    iget-object v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/UniformStreamByteDistributor;

    invoke-static {v0, p1}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->access$100(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->close()V

    .line 65
    return-void
.end method
