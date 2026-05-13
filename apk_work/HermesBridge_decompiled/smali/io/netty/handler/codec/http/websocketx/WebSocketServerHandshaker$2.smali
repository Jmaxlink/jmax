.class Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "WebSocketServerHandshaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->handshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/HttpRequest;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private fullHttpRequest:Lio/netty/handler/codec/http/FullHttpRequest;

.field final synthetic this$0:Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;

.field final synthetic val$channel:Lio/netty/channel/Channel;

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;

.field final synthetic val$responseHeaders:Lio/netty/handler/codec/http/HttpHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 307
    const-class v0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;Lio/netty/channel/ChannelPromise;Lio/netty/channel/Channel;Lio/netty/handler/codec/http/HttpHeaders;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;

    .line 307
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->this$0:Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;

    iput-object p2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$promise:Lio/netty/channel/ChannelPromise;

    iput-object p3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$channel:Lio/netty/channel/Channel;

    iput-object p4, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$responseHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    return-void
.end method

.method private handleHandshakeRequest(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;)V
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "httpObject"    # Lio/netty/handler/codec/http/HttpObject;

    .line 351
    instance-of v0, p2, Lio/netty/handler/codec/http/FullHttpRequest;

    if-eqz v0, :cond_0

    .line 352
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 353
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->this$0:Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;

    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$channel:Lio/netty/channel/Channel;

    move-object v2, p2

    check-cast v2, Lio/netty/handler/codec/http/FullHttpRequest;

    iget-object v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$responseHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    iget-object v4, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->handshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/FullHttpRequest;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 354
    return-void

    .line 357
    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->fullHttpRequest:Lio/netty/handler/codec/http/FullHttpRequest;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->fullHttpRequest:Lio/netty/handler/codec/http/FullHttpRequest;

    .line 360
    .local v0, "handshakeRequest":Lio/netty/handler/codec/http/FullHttpRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->fullHttpRequest:Lio/netty/handler/codec/http/FullHttpRequest;

    .line 362
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-interface {v1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 363
    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->this$0:Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;

    iget-object v2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$channel:Lio/netty/channel/Channel;

    iget-object v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$responseHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    iget-object v4, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-virtual {v1, v2, v0, v3, v4}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->handshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/FullHttpRequest;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpRequest;->release()Z

    .line 366
    nop

    .line 367
    return-void

    .line 365
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpRequest;->release()Z

    .line 366
    throw v1

    .line 358
    .end local v0    # "handshakeRequest":Lio/netty/handler/codec/http/FullHttpRequest;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 370
    :cond_2
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_3

    .line 371
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpRequest;

    .line 372
    .local v0, "httpRequest":Lio/netty/handler/codec/http/HttpRequest;
    new-instance v8, Lio/netty/handler/codec/http/DefaultFullHttpRequest;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v2

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v3

    .line 373
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->uri()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v6

    sget-object v7, Lio/netty/handler/codec/http/EmptyHttpHeaders;->INSTANCE:Lio/netty/handler/codec/http/EmptyHttpHeaders;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpHeaders;)V

    iput-object v8, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->fullHttpRequest:Lio/netty/handler/codec/http/FullHttpRequest;

    .line 374
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/DecoderResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 375
    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->fullHttpRequest:Lio/netty/handler/codec/http/FullHttpRequest;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/netty/handler/codec/http/FullHttpRequest;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 378
    .end local v0    # "httpRequest":Lio/netty/handler/codec/http/HttpRequest;
    :cond_3
    return-void
.end method

.method private releaseFullHttpRequest()V
    .locals 1

    .line 381
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->fullHttpRequest:Lio/netty/handler/codec/http/FullHttpRequest;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->fullHttpRequest:Lio/netty/handler/codec/http/FullHttpRequest;

    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpRequest;->release()Z

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->fullHttpRequest:Lio/netty/handler/codec/http/FullHttpRequest;

    .line 385
    :cond_0
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

    .line 336
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$promise:Lio/netty/channel/ChannelPromise;

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 339
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    invoke-direct {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->releaseFullHttpRequest()V

    .line 342
    nop

    .line 343
    return-void

    .line 341
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->releaseFullHttpRequest()V

    .line 342
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

    .line 313
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpObject;

    if-eqz v0, :cond_0

    .line 315
    :try_start_0
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpObject;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->handleHandshakeRequest(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 318
    goto :goto_0

    .line 317
    :catchall_0
    move-exception v0

    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 318
    throw v0

    .line 320
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 322
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

    .line 327
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 328
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, p2}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 329
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 330
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

    .line 347
    invoke-direct {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->releaseFullHttpRequest()V

    .line 348
    return-void
.end method
