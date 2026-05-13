.class Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "WebSocketClientHandshaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->processHandshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/HttpResponse;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private fullHttpResponse:Lio/netty/handler/codec/http/FullHttpResponse;

.field final synthetic this$0:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

.field final synthetic val$channel:Lio/netty/channel/Channel;

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 506
    const-class v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;Lio/netty/channel/ChannelPromise;Lio/netty/channel/Channel;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    .line 506
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->this$0:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    iput-object p2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->val$promise:Lio/netty/channel/ChannelPromise;

    iput-object p3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->val$channel:Lio/netty/channel/Channel;

    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    return-void
.end method

.method private handleHandshakeResponse(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;)V
    .locals 8
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "response"    # Lio/netty/handler/codec/http/HttpObject;

    .line 549
    instance-of v0, p2, Lio/netty/handler/codec/http/FullHttpResponse;

    if-eqz v0, :cond_0

    .line 550
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 551
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->tryFinishHandshake(Lio/netty/handler/codec/http/FullHttpResponse;)V

    .line 552
    return-void

    .line 555
    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v0, :cond_2

    .line 556
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->fullHttpResponse:Lio/netty/handler/codec/http/FullHttpResponse;

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->fullHttpResponse:Lio/netty/handler/codec/http/FullHttpResponse;

    .line 558
    .local v0, "handshakeResponse":Lio/netty/handler/codec/http/FullHttpResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->fullHttpResponse:Lio/netty/handler/codec/http/FullHttpResponse;

    .line 560
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-interface {v1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 561
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->tryFinishHandshake(Lio/netty/handler/codec/http/FullHttpResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpResponse;->release()Z

    .line 564
    nop

    .line 565
    return-void

    .line 563
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpResponse;->release()Z

    .line 564
    throw v1

    .line 556
    .end local v0    # "handshakeResponse":Lio/netty/handler/codec/http/FullHttpResponse;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 568
    :cond_2
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_3

    .line 569
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpResponse;

    .line 570
    .local v0, "httpResponse":Lio/netty/handler/codec/http/HttpResponse;
    new-instance v7, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v2

    .line 571
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v3

    sget-object v4, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/http/EmptyHttpHeaders;->INSTANCE:Lio/netty/handler/codec/http/EmptyHttpHeaders;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpHeaders;)V

    iput-object v7, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->fullHttpResponse:Lio/netty/handler/codec/http/FullHttpResponse;

    .line 573
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/DecoderResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 574
    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->fullHttpResponse:Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/netty/handler/codec/http/FullHttpResponse;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 577
    .end local v0    # "httpResponse":Lio/netty/handler/codec/http/HttpResponse;
    :cond_3
    return-void
.end method

.method private releaseFullHttpResponse()V
    .locals 1

    .line 589
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->fullHttpResponse:Lio/netty/handler/codec/http/FullHttpResponse;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->fullHttpResponse:Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpResponse;->release()Z

    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->fullHttpResponse:Lio/netty/handler/codec/http/FullHttpResponse;

    .line 593
    :cond_0
    return-void
.end method

.method private tryFinishHandshake(Lio/netty/handler/codec/http/FullHttpResponse;)V
    .locals 2
    .param p1, "fullHttpResponse"    # Lio/netty/handler/codec/http/FullHttpResponse;

    .line 581
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->this$0:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->val$channel:Lio/netty/channel/Channel;

    invoke-virtual {v0, v1, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->finishHandshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/FullHttpResponse;)V

    .line 582
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    goto :goto_0

    .line 583
    :catchall_0
    move-exception v0

    .line 584
    .local v0, "cause":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v1, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 586
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 534
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->val$promise:Lio/netty/channel/ChannelPromise;

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 537
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    invoke-direct {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->releaseFullHttpResponse()V

    .line 540
    nop

    .line 541
    return-void

    .line 539
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->releaseFullHttpResponse()V

    .line 540
    throw v0
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 512
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpObject;

    if-eqz v0, :cond_0

    .line 514
    :try_start_0
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpObject;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->handleHandshakeResponse(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 517
    goto :goto_0

    .line 516
    :catchall_0
    move-exception v0

    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 517
    throw v0

    .line 519
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 521
    :goto_0
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 526
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 527
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, p2}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 528
    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 545
    invoke-direct {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;->releaseFullHttpResponse()V

    .line 546
    return-void
.end method
