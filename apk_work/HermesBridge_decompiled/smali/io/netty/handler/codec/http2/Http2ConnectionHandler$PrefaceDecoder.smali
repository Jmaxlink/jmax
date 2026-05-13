.class final Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;
.super Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;
.source "Http2ConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2ConnectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrefaceDecoder"
.end annotation


# instance fields
.field private clientPrefaceString:Lio/netty/buffer/ByteBuf;

.field private prefaceSent:Z

.field final synthetic this$0:Lio/netty/handler/codec/http2/Http2ConnectionHandler;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->this$0:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionHandler;Lio/netty/handler/codec/http2/Http2ConnectionHandler$1;)V

    .line 233
    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->access$100(Lio/netty/handler/codec/http2/Http2ConnectionHandler;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object p1

    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->access$200(Lio/netty/handler/codec/http2/Http2Connection;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->clientPrefaceString:Lio/netty/buffer/ByteBuf;

    .line 236
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->sendPreface(Lio/netty/channel/ChannelHandlerContext;)V

    .line 237
    return-void
.end method

.method private cleanup()V
    .locals 1

    .line 288
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->clientPrefaceString:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->clientPrefaceString:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->clientPrefaceString:Lio/netty/buffer/ByteBuf;

    .line 292
    :cond_0
    return-void
.end method

.method private readClientPrefaceString(Lio/netty/buffer/ByteBuf;)Z
    .locals 8
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->clientPrefaceString:Lio/netty/buffer/ByteBuf;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 302
    return v1

    .line 305
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->clientPrefaceString:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 306
    .local v0, "prefaceRemaining":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 309
    .local v2, "bytesRead":I
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    iget-object v4, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->clientPrefaceString:Lio/netty/buffer/ByteBuf;

    iget-object v5, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->clientPrefaceString:Lio/netty/buffer/ByteBuf;

    .line 310
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    .line 309
    invoke-static {p1, v3, v4, v5, v2}, Lio/netty/buffer/ByteBufUtil;->equals(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;II)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 325
    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->clientPrefaceString:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3, v2}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 327
    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->clientPrefaceString:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 329
    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->clientPrefaceString:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 330
    const/4 v3, 0x0

    iput-object v3, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->clientPrefaceString:Lio/netty/buffer/ByteBuf;

    .line 331
    return v1

    .line 333
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 312
    :cond_3
    :goto_0
    const/16 v1, 0x400

    .line 314
    .local v1, "maxSearch":I
    invoke-static {}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->access$600()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    invoke-static {v3, v4}, Lio/netty/buffer/ByteBufUtil;->indexOf(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)I

    move-result v3

    .line 315
    .local v3, "http1Index":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 316
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    sub-int v5, v3, v5

    sget-object v6, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4, v5, v6}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, "chunk":Ljava/lang/String;
    sget-object v5, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v6, "Unexpected HTTP/1.x request: %s"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v5

    throw v5

    .line 319
    .end local v4    # "chunk":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    .line 320
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    iget-object v6, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->clientPrefaceString:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 319
    invoke-static {p1, v4, v5}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "receivedBytes":Ljava/lang/String;
    sget-object v5, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v6, "HTTP/2 client preface string missing or corrupt. Hex dump for received bytes: %s"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v5

    throw v5
.end method

.method private sendPreface(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 364
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->prefaceSent:Z

    if-nez v0, :cond_3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->prefaceSent:Z

    .line 370
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->this$0:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v1

    xor-int/2addr v0, v1

    .line 371
    .local v0, "isClient":Z
    if-eqz v0, :cond_1

    .line 373
    invoke-static {}, Lio/netty/handler/codec/http2/Http2CodecUtil;->connectionPrefaceBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    sget-object v2, Lio/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 377
    :cond_1
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->this$0:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    invoke-static {v1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->access$100(Lio/netty/handler/codec/http2/Http2ConnectionHandler;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->this$0:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    invoke-static {v2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->access$700(Lio/netty/handler/codec/http2/Http2ConnectionHandler;)Lio/netty/handler/codec/http2/Http2Settings;

    move-result-object v2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->writeSettings(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    sget-object v2, Lio/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 380
    if-eqz v0, :cond_2

    .line 384
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->this$0:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    sget-object v2, Lio/netty/handler/codec/http2/Http2ConnectionPrefaceAndSettingsFrameWrittenEvent;->INSTANCE:Lio/netty/handler/codec/http2/Http2ConnectionPrefaceAndSettingsFrameWrittenEvent;

    invoke-virtual {v1, p1, v2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 386
    :cond_2
    return-void

    .line 365
    .end local v0    # "isClient":Z
    :cond_3
    :goto_0
    return-void
.end method

.method private verifyFirstFrameIsSettings(Lio/netty/buffer/ByteBuf;)Z
    .locals 5
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 345
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 347
    const/4 v0, 0x0

    return v0

    .line 350
    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v0

    .line 351
    .local v0, "frameType":S
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v2

    .line 352
    .local v2, "flags":S
    if-ne v0, v3, :cond_1

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_1

    .line 357
    const/4 v1, 0x1

    return v1

    .line 353
    :cond_1
    sget-object v3, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 355
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-static {p1, v4, v1}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 353
    const-string v4, "First received frame was not SETTINGS. Hex dump for first 5 bytes: %s"

    invoke-static {v3, v4, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 260
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->sendPreface(Lio/netty/channel/ChannelHandlerContext;)V

    .line 262
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->this$0:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->access$500(Lio/netty/handler/codec/http2/Http2ConnectionHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 268
    :cond_0
    return-void
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 272
    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->cleanup()V

    .line 273
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 274
    return-void
.end method

.method public decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
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

    .line 247
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->readClientPrefaceString(Lio/netty/buffer/ByteBuf;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->verifyFirstFrameIsSettings(Lio/netty/buffer/ByteBuf;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->this$0:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    new-instance v1, Lio/netty/handler/codec/http2/Http2ConnectionHandler$FrameDecoder;

    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->this$0:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$FrameDecoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionHandler;Lio/netty/handler/codec/http2/Http2ConnectionHandler$1;)V

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->access$302(Lio/netty/handler/codec/http2/Http2ConnectionHandler;Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;

    .line 250
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->this$0:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->access$300(Lio/netty/handler/codec/http2/Http2ConnectionHandler;)Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_0
    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->this$0:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    .line 255
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
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

    .line 281
    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->cleanup()V

    .line 282
    return-void
.end method

.method public prefaceSent()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;->prefaceSent:Z

    return v0
.end method
