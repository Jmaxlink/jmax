.class final Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$AutoRefillState;
.super Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;
.source "DefaultHttp2LocalFlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoRefillState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;Lio/netty/handler/codec/http2/Http2Stream;I)V
    .locals 0
    .param p2, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p3, "initialWindowSize"    # I

    .line 303
    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$AutoRefillState;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    .line 304
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;Lio/netty/handler/codec/http2/Http2Stream;I)V

    .line 305
    return-void
.end method


# virtual methods
.method public consumeBytes(I)Z
    .locals 1
    .param p1, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public receiveFlowControlledFrame(I)V
    .locals 0
    .param p1, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 309
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->receiveFlowControlledFrame(I)V

    .line 311
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;->consumeBytes(I)Z

    .line 312
    return-void
.end method
