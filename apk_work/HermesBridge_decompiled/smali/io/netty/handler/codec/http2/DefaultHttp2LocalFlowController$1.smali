.class Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;
.super Lio/netty/handler/codec/http2/Http2ConnectionAdapter;
.source "DefaultHttp2LocalFlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;-><init>(Lio/netty/handler/codec/http2/Http2Connection;FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    .line 89
    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2ConnectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamActive(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 4
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 101
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$000(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;

    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    iget-object v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v3}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$200(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)I

    move-result v3

    invoke-direct {v1, v2, p1, v3}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;Lio/netty/handler/codec/http2/Http2Stream;I)V

    invoke-interface {p1, v0, v1}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public onStreamAdded(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 2
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 94
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$000(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$100()Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public onStreamClosed(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 3
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 109
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$300(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v0

    .line 110
    .local v0, "state":Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    invoke-interface {v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->unconsumedBytes()I

    move-result v1

    .line 111
    .local v1, "unconsumedBytes":I
    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    .line 112
    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v2, v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$500(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 124
    .end local v0    # "state":Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    .end local v1    # "unconsumedBytes":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lio/netty/handler/codec/http2/Http2Exception;
    :try_start_1
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .end local v0    # "e":Lio/netty/handler/codec/http2/Http2Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$000(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$100()Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    nop

    .line 126
    return-void

    .line 124
    :goto_1
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$000(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v1

    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$100()Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    throw v0
.end method
