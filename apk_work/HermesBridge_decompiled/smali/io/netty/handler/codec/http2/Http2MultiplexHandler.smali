.class public final Lio/netty/handler/codec/http2/Http2MultiplexHandler;
.super Lio/netty/handler/codec/http2/Http2ChannelDuplexHandler;
.source "Http2MultiplexHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/Http2MultiplexHandler$Http2MultiplexHandlerStreamChannel;
    }
.end annotation


# static fields
.field static final CHILD_CHANNEL_REGISTRATION_LISTENER:Lio/netty/channel/ChannelFutureListener;


# instance fields
.field private volatile ctx:Lio/netty/channel/ChannelHandlerContext;

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
    .locals 1

    .line 104
    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexHandler$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/Http2MultiplexHandler$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->CHILD_CHANNEL_REGISTRATION_LISTENER:Lio/netty/channel/ChannelFutureListener;

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/ChannelHandler;)V
    .locals 1
    .param p1, "inboundStreamHandler"    # Lio/netty/channel/ChannelHandler;

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2MultiplexHandler;-><init>(Lio/netty/channel/ChannelHandler;Lio/netty/channel/ChannelHandler;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/ChannelHandler;Lio/netty/channel/ChannelHandler;)V
    .locals 3
    .param p1, "inboundStreamHandler"    # Lio/netty/channel/ChannelHandler;
    .param p2, "upgradeStreamHandler"    # Lio/netty/channel/ChannelHandler;

    .line 142
    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2ChannelDuplexHandler;-><init>()V

    .line 113
    new-instance v0, Lio/netty/handler/codec/http2/MaxCapacityQueue;

    new-instance v1, Ljava/util/ArrayDeque;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http2/MaxCapacityQueue;-><init>(Ljava/util/Queue;I)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->readCompletePendingQueue:Ljava/util/Queue;

    .line 143
    const-string v0, "inboundStreamHandler"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelHandler;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->inboundStreamHandler:Lio/netty/channel/ChannelHandler;

    .line 144
    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->upgradeStreamHandler:Lio/netty/channel/ChannelHandler;

    .line 145
    return-void
.end method

.method static synthetic access$004(Lio/netty/handler/codec/http2/Http2MultiplexHandler;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2MultiplexHandler;

    .line 102
    iget v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->idCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->idCount:I

    return v0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/http2/Http2MultiplexHandler;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2MultiplexHandler;

    .line 102
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->parentReadInProgress:Z

    return v0
.end method

.method static synthetic access$200(Lio/netty/handler/codec/http2/Http2MultiplexHandler;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2MultiplexHandler;

    .line 102
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->readCompletePendingQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$300(Lio/netty/handler/codec/http2/Http2MultiplexHandler;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2MultiplexHandler;

    .line 102
    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->processPendingReadCompleteQueue()V

    return-void
.end method

.method static synthetic access$400(Lio/netty/handler/codec/http2/Http2MultiplexHandler;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2MultiplexHandler;

    .line 102
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method private fireExceptionCaughtForActiveStream(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 318
    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexHandler$2;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexHandler$2;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexHandler;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V

    .line 327
    return-void
.end method

.method private static isServer(Lio/netty/channel/ChannelHandlerContext;)Z
    .locals 1
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 330
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->parent()Lio/netty/channel/Channel;

    move-result-object v0

    instance-of v0, v0, Lio/netty/channel/ServerChannel;

    return v0
.end method

.method private onHttp2GoAwayFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2GoAwayFrame;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "goAwayFrame"    # Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    .line 334
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2GoAwayFrame;->lastStreamId()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 336
    return-void

    .line 340
    :cond_0
    :try_start_0
    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->isServer(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v0

    .line 341
    .local v0, "server":Z
    new-instance v1, Lio/netty/handler/codec/http2/Http2MultiplexHandler$3;

    invoke-direct {v1, p0, p2, v0}, Lio/netty/handler/codec/http2/Http2MultiplexHandler$3;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexHandler;Lio/netty/handler/codec/http2/Http2GoAwayFrame;Z)V

    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v0    # "server":Z
    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Lio/netty/handler/codec/http2/Http2Exception;
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 355
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 357
    .end local v0    # "e":Lio/netty/handler/codec/http2/Http2Exception;
    :goto_0
    return-void
.end method

.method private processPendingReadCompleteQueue()V
    .locals 3

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->parentReadInProgress:Z

    .line 373
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->readCompletePendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    .line 374
    .local v0, "childChannel":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 377
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->fireChildReadComplete()V

    .line 378
    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->readCompletePendingQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 379
    if-nez v0, :cond_0

    .line 381
    iput-boolean v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->parentReadInProgress:Z

    .line 382
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->readCompletePendingQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 383
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 384
    goto :goto_0

    .line 381
    :catchall_0
    move-exception v2

    iput-boolean v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->parentReadInProgress:Z

    .line 382
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->readCompletePendingQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 383
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 384
    throw v2

    .line 386
    :cond_1
    iput-boolean v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->parentReadInProgress:Z

    .line 388
    :goto_0
    return-void
.end method

.method static registerDone(Lio/netty/channel/ChannelFuture;)V
    .locals 2
    .param p0, "future"    # Lio/netty/channel/ChannelFuture;

    .line 151
    invoke-interface {p0}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-interface {p0}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 153
    .local v0, "childChannel":Lio/netty/channel/Channel;
    invoke-interface {v0}, Lio/netty/channel/Channel;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-interface {v0}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 156
    :cond_0
    invoke-interface {v0}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel$Unsafe;->closeForcibly()V

    .line 159
    .end local v0    # "childChannel":Lio/netty/channel/Channel;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->parentReadInProgress:Z

    .line 177
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2StreamFrame;

    if-eqz v0, :cond_2

    .line 178
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2WindowUpdateFrame;

    if-eqz v0, :cond_0

    .line 180
    return-void

    .line 182
    :cond_0
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2StreamFrame;

    .line 183
    .local v0, "streamFrame":Lio/netty/handler/codec/http2/Http2StreamFrame;
    nop

    .line 184
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    .line 186
    .local v1, "s":Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
    iget-object v2, v1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->attachment:Lio/netty/channel/Channel;

    check-cast v2, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    .line 187
    .local v2, "channel":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    instance-of v3, p2, Lio/netty/handler/codec/http2/Http2ResetFrame;

    if-eqz v3, :cond_1

    .line 190
    invoke-virtual {v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v3

    invoke-interface {v3, p2}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v2, v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->fireChildRead(Lio/netty/handler/codec/http2/Http2Frame;)V

    .line 197
    :goto_0
    return-void

    .line 200
    .end local v0    # "streamFrame":Lio/netty/handler/codec/http2/Http2StreamFrame;
    .end local v1    # "s":Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
    .end local v2    # "channel":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    :cond_2
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    if-eqz v0, :cond_3

    .line 203
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->onHttp2GoAwayFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2GoAwayFrame;)V

    .line 207
    :cond_3
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 208
    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 364
    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->processPendingReadCompleteQueue()V

    .line 365
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 366
    return-void
.end method

.method public channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->WRITABLE_VISITOR:Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V

    .line 218
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    .line 219
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 291
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2FrameStreamException;

    if-eqz v0, :cond_0

    .line 292
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameStreamException;

    .line 293
    .local v0, "exception":Lio/netty/handler/codec/http2/Http2FrameStreamException;
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2FrameStreamException;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v1

    .line 294
    .local v1, "stream":Lio/netty/handler/codec/http2/Http2FrameStream;
    move-object v2, v1

    check-cast v2, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    iget-object v2, v2, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->attachment:Lio/netty/channel/Channel;

    check-cast v2, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    .line 297
    .local v2, "childChannel":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    :try_start_0
    invoke-virtual {v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2FrameStreamException;->error()Lio/netty/handler/codec/http2/Http2Error;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->closeWithError(Lio/netty/handler/codec/http2/Http2Error;)V

    .line 302
    nop

    .line 303
    return-void

    .line 301
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2FrameStreamException;->error()Lio/netty/handler/codec/http2/Http2Error;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->closeWithError(Lio/netty/handler/codec/http2/Http2Error;)V

    .line 302
    throw v3

    .line 305
    .end local v0    # "exception":Lio/netty/handler/codec/http2/Http2FrameStreamException;
    .end local v1    # "stream":Lio/netty/handler/codec/http2/Http2FrameStream;
    .end local v2    # "childChannel":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2MultiplexActiveStreamsException;

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->fireExceptionCaughtForActiveStream(Ljava/lang/Throwable;)V

    .line 308
    return-void

    .line 311
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_2

    .line 312
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->fireExceptionCaughtForActiveStream(Ljava/lang/Throwable;)V

    .line 314
    :cond_2
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 315
    return-void
.end method

.method protected handlerAdded0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 163
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 166
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 167
    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EventExecutor must be EventLoop of Channel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 171
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->readCompletePendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 172
    return-void
.end method

.method newOutboundStream()Lio/netty/handler/codec/http2/Http2StreamChannel;
    .locals 3

    .line 286
    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexHandler$Http2MultiplexHandlerStreamChannel;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->newStream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/netty/handler/codec/http2/Http2MultiplexHandler$Http2MultiplexHandlerStreamChannel;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexHandler;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Lio/netty/channel/ChannelHandler;)V

    return-object v0
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2FrameStreamEvent;

    if-eqz v0, :cond_6

    .line 224
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameStreamEvent;

    .line 225
    .local v0, "event":Lio/netty/handler/codec/http2/Http2FrameStreamEvent;
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2FrameStreamEvent;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    .line 226
    .local v1, "stream":Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2FrameStreamEvent;->type()Lio/netty/handler/codec/http2/Http2FrameStreamEvent$Type;

    move-result-object v2

    sget-object v3, Lio/netty/handler/codec/http2/Http2FrameStreamEvent$Type;->State:Lio/netty/handler/codec/http2/Http2FrameStreamEvent$Type;

    if-ne v2, v3, :cond_5

    .line 227
    sget-object v2, Lio/netty/handler/codec/http2/Http2MultiplexHandler$4;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/handler/codec/http2/Http2Stream$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 262
    :pswitch_0
    iget-object v2, v1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->attachment:Lio/netty/channel/Channel;

    check-cast v2, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;

    .line 263
    .local v2, "channel":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    if-eqz v2, :cond_5

    .line 264
    invoke-virtual {v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->streamClosed()V

    goto :goto_1

    .line 229
    .end local v2    # "channel":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    :pswitch_1
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->id()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 231
    goto :goto_1

    .line 237
    :cond_0
    :pswitch_2
    iget-object v2, v1, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->attachment:Lio/netty/channel/Channel;

    if-eqz v2, :cond_1

    .line 239
    goto :goto_1

    .line 243
    :cond_1
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->id()I

    move-result v2

    if-ne v2, v3, :cond_3

    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->isServer(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 245
    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->upgradeStreamHandler:Lio/netty/channel/ChannelHandler;

    if-eqz v2, :cond_2

    .line 249
    new-instance v2, Lio/netty/handler/codec/http2/Http2MultiplexHandler$Http2MultiplexHandlerStreamChannel;

    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->upgradeStreamHandler:Lio/netty/channel/ChannelHandler;

    invoke-direct {v2, p0, v1, v3}, Lio/netty/handler/codec/http2/Http2MultiplexHandler$Http2MultiplexHandlerStreamChannel;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexHandler;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Lio/netty/channel/ChannelHandler;)V

    .line 250
    .local v2, "ch":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    invoke-virtual {v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->closeOutbound()V

    goto :goto_0

    .line 246
    .end local v2    # "ch":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    :cond_2
    sget-object v2, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Client is misconfigured for upgrade requests"

    invoke-static {v2, v4, v3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v2

    throw v2

    .line 252
    :cond_3
    new-instance v2, Lio/netty/handler/codec/http2/Http2MultiplexHandler$Http2MultiplexHandlerStreamChannel;

    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->inboundStreamHandler:Lio/netty/channel/ChannelHandler;

    invoke-direct {v2, p0, v1, v3}, Lio/netty/handler/codec/http2/Http2MultiplexHandler$Http2MultiplexHandlerStreamChannel;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexHandler;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Lio/netty/channel/ChannelHandler;)V

    .line 254
    .restart local v2    # "ch":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    :goto_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v3

    invoke-interface {v3, v2}, Lio/netty/channel/EventLoop;->register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;

    move-result-object v3

    .line 255
    .local v3, "future":Lio/netty/channel/ChannelFuture;
    invoke-interface {v3}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 256
    invoke-static {v3}, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->registerDone(Lio/netty/channel/ChannelFuture;)V

    goto :goto_1

    .line 258
    :cond_4
    sget-object v4, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->CHILD_CHANNEL_REGISTRATION_LISTENER:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v3, v4}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 260
    nop

    .line 272
    .end local v2    # "ch":Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
    .end local v3    # "future":Lio/netty/channel/ChannelFuture;
    :cond_5
    :goto_1
    return-void

    .line 274
    .end local v0    # "event":Lio/netty/handler/codec/http2/Http2FrameStreamEvent;
    .end local v1    # "stream":Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
    :cond_6
    sget-object v0, Lio/netty/channel/socket/ChannelInputShutdownReadComplete;->INSTANCE:Lio/netty/channel/socket/ChannelInputShutdownReadComplete;

    if-ne p2, v0, :cond_7

    .line 275
    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->CHANNEL_INPUT_SHUTDOWN_READ_COMPLETE_VISITOR:Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V

    goto :goto_2

    .line 276
    :cond_7
    sget-object v0, Lio/netty/channel/socket/ChannelOutputShutdownEvent;->INSTANCE:Lio/netty/channel/socket/ChannelOutputShutdownEvent;

    if-ne p2, v0, :cond_8

    .line 277
    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->CHANNEL_OUTPUT_SHUTDOWN_EVENT_VISITOR:Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V

    goto :goto_2

    .line 278
    :cond_8
    sget-object v0, Lio/netty/handler/ssl/SslCloseCompletionEvent;->SUCCESS:Lio/netty/handler/ssl/SslCloseCompletionEvent;

    if-ne p2, v0, :cond_9

    .line 279
    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;->SSL_CLOSE_COMPLETION_EVENT_VISITOR:Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2FrameStreamVisitor;)V

    .line 281
    :cond_9
    :goto_2
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 282
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
