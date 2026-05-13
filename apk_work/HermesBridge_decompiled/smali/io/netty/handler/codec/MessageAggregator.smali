.class public abstract Lio/netty/handler/codec/MessageAggregator;
.super Lio/netty/handler/codec/MessageToMessageDecoder;
.source "MessageAggregator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "C::",
        "Lio/netty/buffer/ByteBufHolder;",
        "O::",
        "Lio/netty/buffer/ByteBufHolder;",
        ">",
        "Lio/netty/handler/codec/MessageToMessageDecoder<",
        "TI;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_COMPOSITEBUFFER_COMPONENTS:I = 0x400


# instance fields
.field private aggregating:Z

.field private continueResponseWriteListener:Lio/netty/channel/ChannelFutureListener;

.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private currentMessage:Lio/netty/buffer/ByteBufHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private handleIncompleteAggregateDuringClose:Z

.field private handlingOversizedMessage:Z

.field private final maxContentLength:I

.field private maxCumulationBufferComponents:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "maxContentLength"    # I

    .line 76
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageDecoder;-><init>()V

    .line 61
    const/16 v0, 0x400

    iput v0, p0, Lio/netty/handler/codec/MessageAggregator;->maxCumulationBufferComponents:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->handleIncompleteAggregateDuringClose:Z

    .line 77
    invoke-static {p1}, Lio/netty/handler/codec/MessageAggregator;->validateMaxContentLength(I)V

    .line 78
    iput p1, p0, Lio/netty/handler/codec/MessageAggregator;->maxContentLength:I

    .line 79
    return-void
.end method

.method protected constructor <init>(ILjava/lang/Class;)V
    .locals 1
    .param p1, "maxContentLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+TI;>;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    .local p2, "inboundMessageType":Ljava/lang/Class;, "Ljava/lang/Class<+TI;>;"
    invoke-direct {p0, p2}, Lio/netty/handler/codec/MessageToMessageDecoder;-><init>(Ljava/lang/Class;)V

    .line 61
    const/16 v0, 0x400

    iput v0, p0, Lio/netty/handler/codec/MessageAggregator;->maxCumulationBufferComponents:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->handleIncompleteAggregateDuringClose:Z

    .line 83
    invoke-static {p1}, Lio/netty/handler/codec/MessageAggregator;->validateMaxContentLength(I)V

    .line 84
    iput p1, p0, Lio/netty/handler/codec/MessageAggregator;->maxContentLength:I

    .line 85
    return-void
.end method

.method private static appendPartialContent(Lio/netty/buffer/CompositeByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p0, "content"    # Lio/netty/buffer/CompositeByteBuf;
    .param p1, "partialContent"    # Lio/netty/buffer/ByteBuf;

    .line 330
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/CompositeByteBuf;->addComponent(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    .line 333
    :cond_0
    return-void
.end method

.method private finishAggregation0(Lio/netty/buffer/ByteBufHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 389
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    .local p1, "aggregated":Lio/netty/buffer/ByteBufHolder;, "TO;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->aggregating:Z

    .line 390
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/MessageAggregator;->finishAggregation(Lio/netty/buffer/ByteBufHolder;)V

    .line 391
    return-void
.end method

.method private invokeHandleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 399
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    .local p2, "oversized":Ljava/lang/Object;, "TS;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->handlingOversizedMessage:Z

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->handleIncompleteAggregateDuringClose:Z

    .line 403
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/MessageAggregator;->handleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 407
    nop

    .line 408
    return-void

    .line 406
    :catchall_0
    move-exception v0

    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 407
    throw v0
.end method

.method private releaseCurrentMessage()V
    .locals 1

    .line 464
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufHolder;->release()Z

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->handlingOversizedMessage:Z

    .line 468
    iput-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->aggregating:Z

    .line 470
    :cond_0
    return-void
.end method

.method private static validateMaxContentLength(I)V
    .locals 1
    .param p0, "maxContentLength"    # I

    .line 88
    const-string v0, "maxContentLength"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 89
    return-void
.end method


# virtual methods
.method public acceptInboundMessage(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToMessageDecoder;->acceptInboundMessage(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 95
    return v1

    .line 99
    :cond_0
    move-object v0, p1

    .line 101
    .local v0, "in":Ljava/lang/Object;, "TI;"
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/MessageAggregator;->isAggregated(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    return v1

    .line 107
    :cond_1
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/MessageAggregator;->isStartMessage(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 108
    return v3

    .line 110
    :cond_2
    iget-boolean v2, p0, Lio/netty/handler/codec/MessageAggregator;->aggregating:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/MessageAggregator;->isContentMessage(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method protected aggregate(Lio/netty/buffer/ByteBufHolder;Lio/netty/buffer/ByteBufHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;TC;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 386
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    .local p1, "aggregated":Lio/netty/buffer/ByteBufHolder;, "TO;"
    .local p2, "content":Lio/netty/buffer/ByteBufHolder;, "TC;"
    return-void
.end method

.method protected abstract beginAggregation(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lio/netty/buffer/ByteBuf;",
            ")TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 435
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    iget-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->aggregating:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->handleIncompleteAggregateDuringClose:Z

    if-eqz v0, :cond_0

    .line 436
    new-instance v0, Lio/netty/handler/codec/PrematureChannelClosureException;

    const-string v1, "Channel closed while still aggregating message"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/PrematureChannelClosureException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 441
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToMessageDecoder;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    invoke-direct {p0}, Lio/netty/handler/codec/MessageAggregator;->releaseCurrentMessage()V

    .line 444
    nop

    .line 445
    return-void

    .line 443
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/netty/handler/codec/MessageAggregator;->releaseCurrentMessage()V

    .line 444
    throw v0
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 427
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 430
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 431
    return-void
.end method

.method protected abstract closeAfterContinueResponse(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final ctx()Lio/netty/channel/ChannelHandlerContext;
    .locals 2

    .line 199
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object v0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not added to a pipeline yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TI;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    .local p2, "msg":Ljava/lang/Object;, "TI;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/MessageAggregator;->isStartMessage(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->aggregating:Z

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->handlingOversizedMessage:Z

    .line 210
    iget-object v2, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    if-nez v2, :cond_8

    .line 217
    move-object v1, p2

    .line 221
    .local v1, "m":Ljava/lang/Object;, "TS;"
    iget v2, p0, Lio/netty/handler/codec/MessageAggregator;->maxContentLength:I

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lio/netty/handler/codec/MessageAggregator;->newContinueResponse(Ljava/lang/Object;ILio/netty/channel/ChannelPipeline;)Ljava/lang/Object;

    move-result-object v2

    .line 222
    .local v2, "continueResponse":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 224
    iget-object v3, p0, Lio/netty/handler/codec/MessageAggregator;->continueResponseWriteListener:Lio/netty/channel/ChannelFutureListener;

    .line 225
    .local v3, "listener":Lio/netty/channel/ChannelFutureListener;
    if-nez v3, :cond_0

    .line 226
    new-instance v4, Lio/netty/handler/codec/MessageAggregator$1;

    invoke-direct {v4, p0, p1}, Lio/netty/handler/codec/MessageAggregator$1;-><init>(Lio/netty/handler/codec/MessageAggregator;Lio/netty/channel/ChannelHandlerContext;)V

    move-object v3, v4

    iput-object v4, p0, Lio/netty/handler/codec/MessageAggregator;->continueResponseWriteListener:Lio/netty/channel/ChannelFutureListener;

    .line 237
    :cond_0
    invoke-virtual {p0, v2}, Lio/netty/handler/codec/MessageAggregator;->closeAfterContinueResponse(Ljava/lang/Object;)Z

    move-result v4

    .line 238
    .local v4, "closeAfterWrite":Z
    invoke-virtual {p0, v2}, Lio/netty/handler/codec/MessageAggregator;->ignoreContentAfterContinueResponse(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lio/netty/handler/codec/MessageAggregator;->handlingOversizedMessage:Z

    .line 240
    invoke-interface {p1, v2}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v5

    invoke-interface {v5, v3}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    move-result-object v5

    .line 242
    .local v5, "future":Lio/netty/channel/ChannelFuture;
    if-eqz v4, :cond_1

    .line 243
    iput-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->handleIncompleteAggregateDuringClose:Z

    .line 244
    sget-object v0, Lio/netty/channel/ChannelFutureListener;->CLOSE:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v5, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 245
    return-void

    .line 247
    :cond_1
    iget-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->handlingOversizedMessage:Z

    if-eqz v0, :cond_2

    .line 248
    return-void

    .line 247
    .end local v3    # "listener":Lio/netty/channel/ChannelFutureListener;
    .end local v4    # "closeAfterWrite":Z
    .end local v5    # "future":Lio/netty/channel/ChannelFuture;
    :cond_2
    goto :goto_0

    .line 250
    :cond_3
    iget v0, p0, Lio/netty/handler/codec/MessageAggregator;->maxContentLength:I

    invoke-virtual {p0, v1, v0}, Lio/netty/handler/codec/MessageAggregator;->isContentLengthInvalid(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    invoke-direct {p0, p1, v1}, Lio/netty/handler/codec/MessageAggregator;->invokeHandleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 253
    return-void

    .line 250
    :cond_4
    :goto_0
    nop

    .line 256
    instance-of v0, v1, Lio/netty/handler/codec/DecoderResultProvider;

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Lio/netty/handler/codec/DecoderResultProvider;

    invoke-interface {v0}, Lio/netty/handler/codec/DecoderResultProvider;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/DecoderResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_6

    .line 258
    instance-of v0, v1, Lio/netty/buffer/ByteBufHolder;

    if-eqz v0, :cond_5

    .line 259
    move-object v0, v1

    check-cast v0, Lio/netty/buffer/ByteBufHolder;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/netty/handler/codec/MessageAggregator;->beginAggregation(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;

    move-result-object v0

    .local v0, "aggregated":Lio/netty/buffer/ByteBufHolder;, "TO;"
    goto :goto_1

    .line 261
    .end local v0    # "aggregated":Lio/netty/buffer/ByteBufHolder;, "TO;"
    :cond_5
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, v1, v0}, Lio/netty/handler/codec/MessageAggregator;->beginAggregation(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;

    move-result-object v0

    .line 263
    .restart local v0    # "aggregated":Lio/netty/buffer/ByteBufHolder;, "TO;"
    :goto_1
    invoke-direct {p0, v0}, Lio/netty/handler/codec/MessageAggregator;->finishAggregation0(Lio/netty/buffer/ByteBufHolder;)V

    .line 264
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    return-void

    .line 269
    .end local v0    # "aggregated":Lio/netty/buffer/ByteBufHolder;, "TO;"
    :cond_6
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    iget v3, p0, Lio/netty/handler/codec/MessageAggregator;->maxCumulationBufferComponents:I

    invoke-interface {v0, v3}, Lio/netty/buffer/ByteBufAllocator;->compositeBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    .line 270
    .local v0, "content":Lio/netty/buffer/CompositeByteBuf;
    instance-of v3, v1, Lio/netty/buffer/ByteBufHolder;

    if-eqz v3, :cond_7

    .line 271
    move-object v3, v1

    check-cast v3, Lio/netty/buffer/ByteBufHolder;

    invoke-interface {v3}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-static {v0, v3}, Lio/netty/handler/codec/MessageAggregator;->appendPartialContent(Lio/netty/buffer/CompositeByteBuf;Lio/netty/buffer/ByteBuf;)V

    .line 273
    :cond_7
    invoke-virtual {p0, v1, v0}, Lio/netty/handler/codec/MessageAggregator;->beginAggregation(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;

    move-result-object v3

    iput-object v3, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    .line 274
    .end local v0    # "content":Lio/netty/buffer/CompositeByteBuf;
    .end local v1    # "m":Ljava/lang/Object;, "TS;"
    .end local v2    # "continueResponse":Ljava/lang/Object;
    goto/16 :goto_4

    .line 211
    :cond_8
    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufHolder;->release()Z

    .line 212
    iput-object v1, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    .line 213
    new-instance v0, Lio/netty/handler/codec/MessageAggregationException;

    invoke-direct {v0}, Lio/netty/handler/codec/MessageAggregationException;-><init>()V

    throw v0

    .line 274
    :cond_9
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/MessageAggregator;->isContentMessage(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 275
    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    if-nez v0, :cond_a

    .line 278
    return-void

    .line 282
    :cond_a
    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    .line 285
    .restart local v0    # "content":Lio/netty/buffer/CompositeByteBuf;
    move-object v2, p2

    check-cast v2, Lio/netty/buffer/ByteBufHolder;

    .line 287
    .local v2, "m":Lio/netty/buffer/ByteBufHolder;, "TC;"
    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf;->readableBytes()I

    move-result v3

    iget v4, p0, Lio/netty/handler/codec/MessageAggregator;->maxContentLength:I

    invoke-interface {v2}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v5

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_b

    .line 290
    iget-object v1, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    .line 291
    .local v1, "s":Ljava/lang/Object;, "TS;"
    invoke-direct {p0, p1, v1}, Lio/netty/handler/codec/MessageAggregator;->invokeHandleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 292
    return-void

    .line 296
    .end local v1    # "s":Ljava/lang/Object;, "TS;"
    :cond_b
    invoke-interface {v2}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-static {v0, v3}, Lio/netty/handler/codec/MessageAggregator;->appendPartialContent(Lio/netty/buffer/CompositeByteBuf;Lio/netty/buffer/ByteBuf;)V

    .line 299
    iget-object v3, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    invoke-virtual {p0, v3, v2}, Lio/netty/handler/codec/MessageAggregator;->aggregate(Lio/netty/buffer/ByteBufHolder;Lio/netty/buffer/ByteBufHolder;)V

    .line 302
    instance-of v3, v2, Lio/netty/handler/codec/DecoderResultProvider;

    if-eqz v3, :cond_e

    .line 303
    move-object v3, v2

    check-cast v3, Lio/netty/handler/codec/DecoderResultProvider;

    invoke-interface {v3}, Lio/netty/handler/codec/DecoderResultProvider;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v3

    .line 304
    .local v3, "decoderResult":Lio/netty/handler/codec/DecoderResult;
    invoke-virtual {v3}, Lio/netty/handler/codec/DecoderResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_d

    .line 305
    iget-object v4, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    instance-of v4, v4, Lio/netty/handler/codec/DecoderResultProvider;

    if-eqz v4, :cond_c

    .line 306
    iget-object v4, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    check-cast v4, Lio/netty/handler/codec/DecoderResultProvider;

    .line 307
    invoke-virtual {v3}, Lio/netty/handler/codec/DecoderResult;->cause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v5}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    move-result-object v5

    .line 306
    invoke-interface {v4, v5}, Lio/netty/handler/codec/DecoderResultProvider;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 309
    :cond_c
    const/4 v4, 0x1

    .local v4, "last":Z
    goto :goto_2

    .line 311
    .end local v4    # "last":Z
    :cond_d
    invoke-virtual {p0, v2}, Lio/netty/handler/codec/MessageAggregator;->isLastContentMessage(Lio/netty/buffer/ByteBufHolder;)Z

    move-result v4

    .line 313
    .end local v3    # "decoderResult":Lio/netty/handler/codec/DecoderResult;
    .restart local v4    # "last":Z
    :goto_2
    goto :goto_3

    .line 314
    .end local v4    # "last":Z
    :cond_e
    invoke-virtual {p0, v2}, Lio/netty/handler/codec/MessageAggregator;->isLastContentMessage(Lio/netty/buffer/ByteBufHolder;)Z

    move-result v4

    .line 317
    .restart local v4    # "last":Z
    :goto_3
    if-eqz v4, :cond_f

    .line 318
    iget-object v3, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    invoke-direct {p0, v3}, Lio/netty/handler/codec/MessageAggregator;->finishAggregation0(Lio/netty/buffer/ByteBufHolder;)V

    .line 321
    iget-object v3, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iput-object v1, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    .line 324
    .end local v0    # "content":Lio/netty/buffer/CompositeByteBuf;
    .end local v2    # "m":Lio/netty/buffer/ByteBufHolder;, "TC;"
    .end local v4    # "last":Z
    :cond_f
    nop

    .line 327
    :goto_4
    return-void

    .line 325
    :cond_10
    new-instance v0, Lio/netty/handler/codec/MessageAggregationException;

    invoke-direct {v0}, Lio/netty/handler/codec/MessageAggregationException;-><init>()V

    throw v0
.end method

.method protected finishAggregation(Lio/netty/buffer/ByteBufHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 396
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    .local p1, "aggregated":Lio/netty/buffer/ByteBufHolder;, "TO;"
    return-void
.end method

.method protected handleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 418
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    .local p2, "oversized":Ljava/lang/Object;, "TS;"
    new-instance v0, Lio/netty/handler/codec/TooLongFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content length exceeded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 419
    invoke-virtual {p0}, Lio/netty/handler/codec/MessageAggregator;->maxContentLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 420
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 449
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    iput-object p1, p0, Lio/netty/handler/codec/MessageAggregator;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 450
    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 455
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    :try_start_0
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToMessageDecoder;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    invoke-direct {p0}, Lio/netty/handler/codec/MessageAggregator;->releaseCurrentMessage()V

    .line 460
    nop

    .line 461
    return-void

    .line 459
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/netty/handler/codec/MessageAggregator;->releaseCurrentMessage()V

    .line 460
    throw v0
.end method

.method protected abstract ignoreContentAfterContinueResponse(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract isAggregated(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract isContentLengthInvalid(Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract isContentMessage(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final isHandlingOversizedMessage()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 195
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    iget-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->handlingOversizedMessage:Z

    return v0
.end method

.method protected abstract isLastContentMessage(Lio/netty/buffer/ByteBufHolder;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract isStartMessage(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final maxContentLength()I
    .locals 1

    .line 155
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    iget v0, p0, Lio/netty/handler/codec/MessageAggregator;->maxContentLength:I

    return v0
.end method

.method public final maxCumulationBufferComponents()I
    .locals 1

    .line 165
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    iget v0, p0, Lio/netty/handler/codec/MessageAggregator;->maxCumulationBufferComponents:I

    return v0
.end method

.method protected abstract newContinueResponse(Ljava/lang/Object;ILio/netty/channel/ChannelPipeline;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I",
            "Lio/netty/channel/ChannelPipeline;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final setMaxCumulationBufferComponents(I)V
    .locals 3
    .param p1, "maxCumulationBufferComponents"    # I

    .line 176
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 182
    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    .line 183
    iput p1, p0, Lio/netty/handler/codec/MessageAggregator;->maxCumulationBufferComponents:I

    .line 188
    return-void

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "decoder properties cannot be changed once the decoder is added to a pipeline."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxCumulationBufferComponents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: >= 2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
