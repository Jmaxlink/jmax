.class final Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;
.super Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;
.source "DefaultHttp2ConnectionEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FlowControlledData"
.end annotation


# instance fields
.field private dataSize:I

.field private final queue:Lio/netty/channel/CoalescingBufferQueue;

.field final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)V
    .locals 6
    .param p2, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p3, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p4, "padding"    # I
    .param p5, "endOfStream"    # Z
    .param p6, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 447
    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;

    .line 448
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Stream;IZLio/netty/channel/ChannelPromise;)V

    .line 449
    new-instance p1, Lio/netty/channel/CoalescingBufferQueue;

    invoke-interface {p6}, Lio/netty/channel/ChannelPromise;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/netty/channel/CoalescingBufferQueue;-><init>(Lio/netty/channel/Channel;)V

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    .line 450
    iget-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    invoke-virtual {p1, p3, p6}, Lio/netty/channel/CoalescingBufferQueue;->add(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)V

    .line 451
    iget-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    invoke-virtual {p1}, Lio/netty/channel/CoalescingBufferQueue;->readableBytes()I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->dataSize:I

    .line 452
    return-void
.end method


# virtual methods
.method public error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 461
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    invoke-virtual {v0, p2}, Lio/netty/channel/CoalescingBufferQueue;->releaseAndFailAll(Ljava/lang/Throwable;)V

    .line 467
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->access$000(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;)Lio/netty/handler/codec/http2/Http2LifecycleManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    .line 468
    return-void
.end method

.method public merge(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;)Z
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "next"    # Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;

    .line 516
    const-class v0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;

    move-object v1, v0

    .line 517
    .local v1, "nextData":Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->size()I

    move-result v0

    const v2, 0x7fffffff

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    iget-object v0, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    invoke-virtual {v0, v2}, Lio/netty/channel/CoalescingBufferQueue;->copyTo(Lio/netty/channel/AbstractCoalescingBufferQueue;)V

    .line 521
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    invoke-virtual {v0}, Lio/netty/channel/CoalescingBufferQueue;->readableBytes()I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->dataSize:I

    .line 523
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->padding:I

    iget v2, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->padding:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->padding:I

    .line 524
    iget-boolean v0, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->endOfStream:Z

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->endOfStream:Z

    .line 525
    const/4 v0, 0x1

    return v0

    .line 518
    .end local v1    # "nextData":Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 2

    .line 456
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->dataSize:I

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->padding:I

    add-int/2addr v0, v1

    return v0
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;I)V
    .locals 13
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "allowedBytes"    # I

    .line 472
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    invoke-virtual {v0}, Lio/netty/channel/CoalescingBufferQueue;->readableBytes()I

    move-result v0

    .line 473
    .local v0, "queuedData":I
    iget-boolean v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->endOfStream:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 474
    if-nez v0, :cond_1

    .line 475
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    invoke-virtual {v1}, Lio/netty/channel/CoalescingBufferQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    iput v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->dataSize:I

    iput v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->padding:I

    goto :goto_0

    .line 487
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-interface {v1, p0}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object v1

    .line 488
    .local v1, "writePromise":Lio/netty/channel/ChannelPromise;
    iget-object v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    invoke-virtual {v3, v2, v1}, Lio/netty/channel/CoalescingBufferQueue;->remove(ILio/netty/channel/ChannelPromise;)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 490
    .end local v1    # "writePromise":Lio/netty/channel/ChannelPromise;
    :goto_0
    return-void

    .line 493
    :cond_1
    if-nez p2, :cond_2

    .line 494
    return-void

    .line 499
    :cond_2
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 500
    .local v1, "writableData":I
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    invoke-interface {v3, p0}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object v3

    .line 501
    .local v3, "writePromise":Lio/netty/channel/ChannelPromise;
    iget-object v4, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    invoke-virtual {v4, v1, v3}, Lio/netty/channel/CoalescingBufferQueue;->remove(ILio/netty/channel/ChannelPromise;)Lio/netty/buffer/ByteBuf;

    move-result-object v11

    .line 502
    .local v11, "toWrite":Lio/netty/buffer/ByteBuf;
    iget-object v4, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    invoke-virtual {v4}, Lio/netty/channel/CoalescingBufferQueue;->readableBytes()I

    move-result v4

    iput v4, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->dataSize:I

    .line 505
    sub-int v4, p2, v1

    iget v5, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->padding:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 506
    .local v12, "writablePadding":I
    iget v4, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->padding:I

    sub-int/2addr v4, v12

    iput v4, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->padding:I

    .line 509
    iget-object v4, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;

    invoke-virtual {v4}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter()Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-result-object v4

    iget-object v5, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-interface {v5}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v6

    iget-boolean v5, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->endOfStream:Z

    if-eqz v5, :cond_3

    .line 510
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->size()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    nop

    :goto_1
    move v9, v2

    .line 509
    move-object v5, p1

    move-object v7, v11

    move v8, v12

    move-object v10, v3

    invoke-interface/range {v4 .. v10}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 511
    return-void
.end method
