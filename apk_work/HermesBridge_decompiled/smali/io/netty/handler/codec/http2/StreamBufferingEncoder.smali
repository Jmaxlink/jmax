.class public Lio/netty/handler/codec/http2/StreamBufferingEncoder;
.super Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;
.source "StreamBufferingEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/StreamBufferingEncoder$DataFrame;,
        Lio/netty/handler/codec/http2/StreamBufferingEncoder$HeadersFrame;,
        Lio/netty/handler/codec/http2/StreamBufferingEncoder$Frame;,
        Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;,
        Lio/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;,
        Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;,
        Lio/netty/handler/codec/http2/StreamBufferingEncoder$Http2ChannelClosedException;
    }
.end annotation


# instance fields
.field private closed:Z

.field private goAwayDetail:Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

.field private maxConcurrentStreams:I

.field private final pendingStreams:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)V
    .locals 1
    .param p1, "delegate"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    .line 124
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;I)V
    .locals 2
    .param p1, "delegate"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .param p2, "initialMaxConcurrentStreams"    # I

    .line 128
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)V

    .line 118
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->pendingStreams:Ljava/util/TreeMap;

    .line 129
    iput p2, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->maxConcurrentStreams:I

    .line 130
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/http2/StreamBufferingEncoder$1;

    invoke-direct {v1, p0}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$1;-><init>(Lio/netty/handler/codec/http2/StreamBufferingEncoder;)V

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/Http2Connection;->addListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V

    .line 146
    return-void
.end method

.method static synthetic access$300(Lio/netty/handler/codec/http2/StreamBufferingEncoder;)Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/StreamBufferingEncoder;

    .line 59
    iget-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->goAwayDetail:Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    return-object v0
.end method

.method static synthetic access$302(Lio/netty/handler/codec/http2/StreamBufferingEncoder;Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;)Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http2/StreamBufferingEncoder;
    .param p1, "x1"    # Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    .line 59
    iput-object p1, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->goAwayDetail:Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    return-object p1
.end method

.method static synthetic access$400(Lio/netty/handler/codec/http2/StreamBufferingEncoder;Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http2/StreamBufferingEncoder;
    .param p1, "x1"    # Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    .line 59
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->cancelGoAwayStreams(Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;)V

    return-void
.end method

.method static synthetic access$500(Lio/netty/handler/codec/http2/StreamBufferingEncoder;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http2/StreamBufferingEncoder;

    .line 59
    invoke-direct {p0}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->tryCreatePendingStreams()V

    return-void
.end method

.method private canCreateStream()Z
    .locals 2

    .line 283
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->numActiveStreams()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->maxConcurrentStreams:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private cancelGoAwayStreams(Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;)V
    .locals 5
    .param p1, "goAwayDetail"    # Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    .line 268
    iget-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->pendingStreams:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 269
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;>;"
    new-instance v1, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;

    invoke-direct {v1, p1}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;-><init>(Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;)V

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;

    .line 272
    .local v2, "stream":Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;
    iget v3, v2, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;->streamId:I

    invoke-static {p1}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;->access$000(Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;)I

    move-result v4

    if-le v3, v4, :cond_0

    .line 273
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 274
    invoke-virtual {v2, v1}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;->close(Ljava/lang/Throwable;)V

    .line 276
    .end local v2    # "stream":Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;
    :cond_0
    goto :goto_0

    .line 277
    :cond_1
    return-void
.end method

.method private isExistingStream(I)Z
    .locals 1
    .param p1, "streamId"    # I

    .line 287
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->lastStreamCreated()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private tryCreatePendingStreams()V
    .locals 3

    .line 256
    nop

    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->pendingStreams:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->canCreateStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->pendingStreams:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 258
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;

    .line 260
    .local v1, "pendingStream":Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;
    :try_start_0
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;->sendFrames()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    goto :goto_1

    .line 261
    :catchall_0
    move-exception v2

    .line 262
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;->close(Ljava/lang/Throwable;)V

    .line 264
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;>;"
    .end local v1    # "pendingStream":Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 265
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 240
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->closed:Z

    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->closed:Z

    .line 244
    new-instance v0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Http2ChannelClosedException;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Http2ChannelClosedException;-><init>()V

    .line 245
    .local v0, "e":Lio/netty/handler/codec/http2/StreamBufferingEncoder$Http2ChannelClosedException;
    :goto_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->pendingStreams:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    iget-object v1, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->pendingStreams:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;

    .line 247
    .local v1, "stream":Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;
    invoke-virtual {v1, v0}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;->close(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v1    # "stream":Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;
    goto :goto_0

    .line 251
    .end local v0    # "e":Lio/netty/handler/codec/http2/StreamBufferingEncoder$Http2ChannelClosedException;
    :cond_0
    invoke-super {p0}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->close()V

    .line 252
    nop

    .line 253
    return-void

    .line 251
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->close()V

    .line 252
    throw v0
.end method

.method public numBufferedStreams()I
    .locals 1

    .line 152
    iget-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->pendingStreams:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

.method public remoteSettings(Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 1
    .param p1, "settings"    # Lio/netty/handler/codec/http2/Http2Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 228
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->remoteSettings(Lio/netty/handler/codec/http2/Http2Settings;)V

    .line 231
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->maxActiveStreams()I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->maxConcurrentStreams:I

    .line 234
    invoke-direct {p0}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->tryCreatePendingStreams()V

    .line 235
    return-void
.end method

.method public writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "data"    # Lio/netty/buffer/ByteBuf;
    .param p4, "padding"    # I
    .param p5, "endOfStream"    # Z
    .param p6, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 211
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->isExistingStream(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-super/range {p0 .. p6}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->pendingStreams:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;

    .line 215
    .local v0, "pendingStream":Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;
    if-eqz v0, :cond_1

    .line 216
    iget-object v1, v0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;->frames:Ljava/util/Queue;

    new-instance v8, Lio/netty/handler/codec/http2/StreamBufferingEncoder$DataFrame;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v2 .. v7}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$DataFrame;-><init>(Lio/netty/handler/codec/http2/StreamBufferingEncoder;Lio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)V

    invoke-interface {v1, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {p3}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 219
    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Stream does not exist %d"

    invoke-static {v1, v3, v2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    invoke-interface {p6, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 221
    :goto_0
    return-object p6
.end method

.method public writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 16
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "streamDependency"    # I
    .param p5, "weight"    # S
    .param p6, "exclusive"    # Z
    .param p7, "padding"    # I
    .param p8, "endOfStream"    # Z
    .param p9, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 166
    move-object/from16 v9, p0

    move/from16 v10, p2

    move-object/from16 v11, p9

    iget-boolean v0, v9, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->closed:Z

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Http2ChannelClosedException;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Http2ChannelClosedException;-><init>()V

    invoke-interface {v11, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    invoke-direct {v9, v10}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->isExistingStream(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct/range {p0 .. p0}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->canCreateStream()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v12, p1

    goto :goto_1

    .line 173
    :cond_1
    iget-object v0, v9, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->goAwayDetail:Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    if-eqz v0, :cond_2

    .line 174
    new-instance v0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;

    iget-object v1, v9, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->goAwayDetail:Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;-><init>(Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;)V

    invoke-interface {v11, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0

    .line 176
    :cond_2
    iget-object v0, v9, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->pendingStreams:Ljava/util/TreeMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;

    .line 177
    .local v0, "pendingStream":Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;
    if-nez v0, :cond_3

    .line 178
    new-instance v1, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;

    move-object/from16 v12, p1

    invoke-direct {v1, v12, v10}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;-><init>(Lio/netty/channel/ChannelHandlerContext;I)V

    move-object v0, v1

    .line 179
    iget-object v1, v9, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->pendingStreams:Ljava/util/TreeMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v0

    goto :goto_0

    .line 177
    :cond_3
    move-object/from16 v12, p1

    move-object v13, v0

    .line 181
    .end local v0    # "pendingStream":Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;
    .local v13, "pendingStream":Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;
    :goto_0
    iget-object v14, v13, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;->frames:Ljava/util/Queue;

    new-instance v15, Lio/netty/handler/codec/http2/StreamBufferingEncoder$HeadersFrame;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$HeadersFrame;-><init>(Lio/netty/handler/codec/http2/StreamBufferingEncoder;Lio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)V

    invoke-interface {v14, v15}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 183
    return-object v11

    .line 169
    .end local v13    # "pendingStream":Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;
    :cond_4
    move-object/from16 v12, p1

    .line 170
    :goto_1
    invoke-super/range {p0 .. p9}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 10
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "padding"    # I
    .param p5, "endStream"    # Z
    .param p6, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 158
    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public writeRstStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "errorCode"    # J
    .param p5, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 189
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->isExistingStream(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-super/range {p0 .. p5}, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->writeRstStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 194
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder;->pendingStreams:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;

    .line 195
    .local v0, "stream":Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;
    if-eqz v0, :cond_1

    .line 200
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;->close(Ljava/lang/Throwable;)V

    .line 201
    invoke-interface {p5}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 203
    :cond_1
    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Stream does not exist %d"

    invoke-static {v1, v3, v2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    invoke-interface {p5, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 205
    :goto_0
    return-object p5
.end method
