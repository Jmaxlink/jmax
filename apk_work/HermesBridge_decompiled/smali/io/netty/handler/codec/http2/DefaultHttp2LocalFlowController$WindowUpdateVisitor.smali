.class final Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$WindowUpdateVisitor;
.super Ljava/lang/Object;
.source "DefaultHttp2LocalFlowController.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2StreamVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowUpdateVisitor"
.end annotation


# instance fields
.field private compositeException:Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;

.field private final delta:I

.field final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;I)V
    .locals 0
    .param p2, "delta"    # I

    .line 622
    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$WindowUpdateVisitor;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    iput p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$WindowUpdateVisitor;->delta:I

    .line 624
    return-void
.end method


# virtual methods
.method public throwIfError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$WindowUpdateVisitor;->compositeException:Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;

    if-nez v0, :cond_0

    .line 646
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$WindowUpdateVisitor;->compositeException:Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;

    throw v0
.end method

.method public visit(Lio/netty/handler/codec/http2/Http2Stream;)Z
    .locals 4
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 630
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$WindowUpdateVisitor;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    invoke-static {v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->access$300(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v0

    .line 631
    .local v0, "state":Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$WindowUpdateVisitor;->delta:I

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->incrementFlowControlWindows(I)V

    .line 632
    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$WindowUpdateVisitor;->delta:I

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->incrementInitialStreamWindow(I)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception$StreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    .end local v0    # "state":Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    goto :goto_0

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Lio/netty/handler/codec/http2/Http2Exception$StreamException;
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$WindowUpdateVisitor;->compositeException:Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;

    if-nez v1, :cond_0

    .line 635
    new-instance v1, Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Exception$StreamException;->error()Lio/netty/handler/codec/http2/Http2Error;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;-><init>(Lio/netty/handler/codec/http2/Http2Error;I)V

    iput-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$WindowUpdateVisitor;->compositeException:Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;

    .line 637
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$WindowUpdateVisitor;->compositeException:Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;->add(Lio/netty/handler/codec/http2/Http2Exception$StreamException;)V

    .line 639
    .end local v0    # "e":Lio/netty/handler/codec/http2/Http2Exception$StreamException;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
