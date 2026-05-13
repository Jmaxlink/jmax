.class public Lio/netty/handler/codec/http2/Http2MultiplexCodec;
.super Lio/netty/handler/codec/http2/Http2FrameCodec;
.source "Http2MultiplexCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field volatile ctx:Lio/netty/channel/ChannelHandlerContext;

.field private idCount:I

.field private final inboundStreamHandler:Lio/netty/channel/ChannelHandler;

.field private parentReadInProgress:Z

.field private final readCompletePendingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final upgradeStreamHandler:Lio/netty/channel/ChannelHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 89
    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Settings;Lio/netty/channel/ChannelHandler;Lio/netty/channel/ChannelHandler;ZZ)V
    .locals 6
    .param p1, "encoder"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .param p2, "decoder"    # Lio/netty/handler/codec/http2/Http2ConnectionDecoder;
    .param p3, "initialSettings"    # Lio/netty/handler/codec/http2/Http2Settings;
    .param p4, "inboundStreamHandler"    # Lio/netty/channel/ChannelHandler;
    .param p5, "upgradeStreamHandler"    # Lio/netty/channel/ChannelHandler;
    .param p6, "decoupleCloseAndGoAway"    # Z
    .param p7, "flushPreface"    # Z

    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/Http2FrameCodec;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2Settings;ZZ)V

    .line 95
    new-instance v0, Lio/netty/handler/codec/http2/MaxCapacityQueue;

    new-instance v1, Ljava/util/ArrayDeque;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http2/MaxCapacityQueue;-><init>(Ljava/util/Queue;I)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->readCompletePendingQueue:Ljava/util/Queue;

    .line 112
    iput-object p4, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->inboundStreamHandler:Lio/netty/channel/ChannelHandler;

    .line 113
    iput-object p5, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->upgradeStreamHandler:Lio/netty/channel/ChannelHandler;

    .line 114
    return-void
.end method

.method static synthetic access$004(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    .line 91
    iget v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->idCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->idCount:I

    return v0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    .line 91
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->parentReadInProgress:Z

    return v0
.end method

.method static synthetic access$200(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    .line 91
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->readCompletePendingQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$300(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    .line 91
    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->processPendingReadCompleteQueue()V

    return-void
.end method

.method private onHttp2GoAwayFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2GoAwayFrame;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "goAwayFrame"    # Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    .line 223
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2GoAwayFrame;->lastStreamId()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 225
    return-void

    .line 229
    :cond_0
    :try_start_0
    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$1;

    invoke-direct {v0, p0, p2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$1;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2GoAwayFrame;)V

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Lio/netty/handler/codec/http2/Http2Exception;
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 243
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 245
    .end local v0    # "e":Lio/netty/handler/codec/http2/Http2Exception;
    :goto_0
    return-void
.end method

.method private processPendingReadCompleteQueue()V
    .locals 2

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->parentReadInProgress:Z

    .line 263
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->readCompletePendingQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    .local v1, "childChannel":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    if-nez v1, :cond_0

    .line 265
    nop

    .line 270
    .end local v1    # "childChannel":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->parentReadInProgress:Z

    .line 271
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->readCompletePendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 273
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->flush0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 274
    nop

    .line 275
    return-void

    .line 267
    .restart local v1    # "childChannel":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->fireChildReadComplete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    .end local v1    # "childChannel":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    goto :goto_0

    .line 270
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->parentReadInProgress:Z

    .line 271
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->readCompletePendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 273
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->flush0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 274
    throw v1
.end method


# virtual methods
.method public final channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->parentReadInProgress:Z

    .line 279
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameCodec;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 280
    return-void
.end method

.method public final channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->processPendingReadCompleteQueue()V

    .line 253
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->channelReadComplete0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 254
    return-void
.end method

.method public final channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 284
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->WRITABLE_VISITOR:Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V

    .line 290
    :cond_0
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V

    .line 291
    return-void
.end method

.method final flush0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 306
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->flush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 307
    return-void
.end method

.method public final handlerAdded0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 131
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 132
    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EventExecutor must be EventLoop of Channel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameCodec;->handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 138
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->readCompletePendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 139
    return-void
.end method

.method final newOutboundStream()Lio/netty/handler/codec/http2/Http2StreamChannel;
    .locals 3

    .line 205
    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->newStream()Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Lio/netty/channel/ChannelHandler;)V

    return-object v0
.end method

.method final onHttp2Frame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Frame;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "frame"    # Lio/netty/handler/codec/http2/Http2Frame;

    .line 143
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2StreamFrame;

    if-eqz v0, :cond_0

    .line 144
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2StreamFrame;

    .line 145
    .local v0, "streamFrame":Lio/netty/handler/codec/http2/Http2StreamFrame;
    nop

    .line 146
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    iget-object v1, v1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->attachment:Lio/netty/channel/Channel;

    check-cast v1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    .line 147
    .local v1, "channel":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    invoke-virtual {v1, v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->fireChildRead(Lio/netty/handler/codec/http2/Http2Frame;)V

    .line 148
    return-void

    .line 150
    .end local v0    # "streamFrame":Lio/netty/handler/codec/http2/Http2StreamFrame;
    .end local v1    # "channel":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    if-eqz v0, :cond_1

    .line 151
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->onHttp2GoAwayFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2GoAwayFrame;)V

    .line 154
    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 155
    return-void
.end method

.method final onHttp2FrameStreamException(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameStreamException;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Lio/netty/handler/codec/http2/Http2FrameStreamException;

    .line 210
    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2FrameStreamException;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v0

    .line 211
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2FrameStream;
    move-object v1, v0

    check-cast v1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    iget-object v1, v1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->attachment:Lio/netty/channel/Channel;

    check-cast v1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    .line 214
    .local v1, "channel":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    :try_start_0
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2FrameStreamException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2FrameStreamException;->error()Lio/netty/handler/codec/http2/Http2Error;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->closeWithError(Lio/netty/handler/codec/http2/Http2Error;)V

    .line 219
    nop

    .line 220
    return-void

    .line 218
    :catchall_0
    move-exception v2

    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2FrameStreamException;->error()Lio/netty/handler/codec/http2/Http2Error;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->closeWithError(Lio/netty/handler/codec/http2/Http2Error;)V

    .line 219
    throw v2
.end method

.method final onHttp2StreamStateChanged(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "stream"    # Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    .line 159
    sget-object v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$2;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2Stream$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 192
    :pswitch_0
    iget-object v0, p2, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->attachment:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    .line 193
    .local v0, "channel":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    if-eqz v0, :cond_5

    .line 194
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->streamClosed()V

    goto :goto_1

    .line 161
    .end local v0    # "channel":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    :pswitch_1
    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->id()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 163
    goto :goto_1

    .line 169
    :cond_0
    :pswitch_2
    iget-object v0, p2, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->attachment:Lio/netty/channel/Channel;

    if-eqz v0, :cond_1

    .line 171
    goto :goto_1

    .line 175
    :cond_1
    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->id()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v0

    if-nez v0, :cond_3

    .line 178
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->upgradeStreamHandler:Lio/netty/channel/ChannelHandler;

    if-eqz v0, :cond_2

    .line 179
    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->upgradeStreamHandler:Lio/netty/channel/ChannelHandler;

    invoke-direct {v0, p0, p2, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Lio/netty/channel/ChannelHandler;)V

    .line 180
    .local v0, "streamChannel":Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;->closeOutbound()V

    goto :goto_0

    .line 178
    .end local v0    # "streamChannel":Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 182
    :cond_3
    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->inboundStreamHandler:Lio/netty/channel/ChannelHandler;

    invoke-direct {v0, p0, p2, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Lio/netty/channel/ChannelHandler;)V

    .line 184
    .restart local v0    # "streamChannel":Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;
    :goto_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/channel/EventLoop;->register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    .line 185
    .local v1, "future":Lio/netty/channel/ChannelFuture;
    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 186
    invoke-static {v1}, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->registerDone(Lio/netty/channel/ChannelFuture;)V

    goto :goto_1

    .line 188
    :cond_4
    sget-object v2, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->CHILD_CHANNEL_REGISTRATION_LISTENER:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 190
    nop

    .line 201
    .end local v0    # "streamChannel":Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStreamChannel;
    .end local v1    # "future":Lio/netty/channel/ChannelFuture;
    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onHttpClientUpgrade()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->upgradeStreamHandler:Lio/netty/channel/ChannelHandler;

    if-eqz v0, :cond_0

    .line 123
    invoke-super {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onHttpClientUpgrade()V

    .line 124
    return-void

    .line 120
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Client is misconfigured for upgrade requests"

    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method final onUserEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 295
    sget-object v0, Lio/netty/channel/socket/ChannelInputShutdownReadComplete;->INSTANCE:Lio/netty/channel/socket/ChannelInputShutdownReadComplete;

    if-ne p2, v0, :cond_0

    .line 296
    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->CHANNEL_INPUT_SHUTDOWN_READ_COMPLETE_VISITOR:Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V

    goto :goto_0

    .line 297
    :cond_0
    sget-object v0, Lio/netty/channel/socket/ChannelOutputShutdownEvent;->INSTANCE:Lio/netty/channel/socket/ChannelOutputShutdownEvent;

    if-ne p2, v0, :cond_1

    .line 298
    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->CHANNEL_OUTPUT_SHUTDOWN_EVENT_VISITOR:Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V

    goto :goto_0

    .line 299
    :cond_1
    sget-object v0, Lio/netty/handler/ssl/SslCloseCompletionEvent;->SUCCESS:Lio/netty/handler/ssl/SslCloseCompletionEvent;

    if-ne p2, v0, :cond_2

    .line 300
    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->SSL_CLOSE_COMPLETION_EVENT_VISITOR:Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V

    .line 302
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameCodec;->onUserEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 303
    return-void
.end method
