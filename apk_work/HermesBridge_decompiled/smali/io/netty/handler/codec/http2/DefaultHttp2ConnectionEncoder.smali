.class public Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;
.super Ljava/lang/Object;
.source "DefaultHttp2ConnectionEncoder.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
.implements Lio/netty/handler/codec/http2/Http2SettingsReceivedConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;,
        Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;,
        Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;
    }
.end annotation


# instance fields
.field private final connection:Lio/netty/handler/codec/http2/Http2Connection;

.field private final frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

.field private lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

.field private final outstandingLocalSettingsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/handler/codec/http2/Http2Settings;",
            ">;"
        }
    .end annotation
.end field

.field private outstandingRemoteSettingsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/handler/codec/http2/Http2Settings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2FrameWriter;)V
    .locals 2
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;
    .param p2, "frameWriter"    # Lio/netty/handler/codec/http2/Http2FrameWriter;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->outstandingLocalSettingsQueue:Ljava/util/Queue;

    .line 53
    const-string v0, "connection"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Connection;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    .line 54
    const-string v0, "frameWriter"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameWriter;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    .line 55
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController()Lio/netty/handler/codec/http2/Http2FlowController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    invoke-direct {v1, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;-><init>(Lio/netty/handler/codec/http2/Http2Connection;)V

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController(Lio/netty/handler/codec/http2/Http2FlowController;)V

    .line 58
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;)Lio/netty/handler/codec/http2/Http2LifecycleManager;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;

    .line 43
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;)Lio/netty/handler/codec/http2/Http2Connection;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;

    .line 43
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    return-object v0
.end method

.method static synthetic access$200(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZ)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p1, "x1"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 43
    invoke-static {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->validateHeadersSentState(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;)Lio/netty/handler/codec/http2/Http2FrameWriter;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;

    .line 43
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    return-object v0
.end method

.method static synthetic access$400(Lio/netty/handler/codec/http2/Http2FrameWriter;Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ZISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2FrameWriter;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "x4"    # Z
    .param p5, "x5"    # I
    .param p6, "x6"    # S
    .param p7, "x7"    # Z
    .param p8, "x8"    # I
    .param p9, "x9"    # Z
    .param p10, "x10"    # Lio/netty/channel/ChannelPromise;

    .line 43
    invoke-static/range {p0 .. p10}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->sendHeaders(Lio/netty/handler/codec/http2/Http2FrameWriter;Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ZISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method private notifyLifecycleManagerOnError(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 530
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$1;

    invoke-direct {v0, p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$1;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 539
    return-void
.end method

.method private requireStream(I)Lio/netty/handler/codec/http2/Http2Stream;
    .locals 3
    .param p1, "streamId"    # I

    .line 412
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 413
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    if-nez v0, :cond_1

    .line 415
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v1, p1}, Lio/netty/handler/codec/http2/Http2Connection;->streamMayHaveExisted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stream no longer exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "message":Ljava/lang/String;
    goto :goto_0

    .line 418
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stream does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    .restart local v1    # "message":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 422
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static sendHeaders(Lio/netty/handler/codec/http2/Http2FrameWriter;Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ZISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 10
    .param p0, "frameWriter"    # Lio/netty/handler/codec/http2/Http2FrameWriter;
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "hasPriority"    # Z
    .param p5, "streamDependency"    # I
    .param p6, "weight"    # S
    .param p7, "exclusive"    # Z
    .param p8, "padding"    # I
    .param p9, "endOfStream"    # Z
    .param p10, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 180
    if-eqz p4, :cond_0

    .line 181
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-interface/range {v0 .. v9}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p10

    invoke-interface/range {v0 .. v6}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method private static validateHeadersSentState(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZ)Z
    .locals 4
    .param p0, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p1, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p2, "isServer"    # Z
    .param p3, "endOfStream"    # Z

    .line 156
    if-eqz p2, :cond_0

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Headers;->status()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpStatusClass;->valueOf(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpStatusClass;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpStatusClass;->INFORMATIONAL:Lio/netty/handler/codec/http/HttpStatusClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    .local v0, "isInformational":Z
    :goto_0
    if-nez v0, :cond_1

    if-nez p3, :cond_2

    :cond_1
    invoke-interface {p0}, Lio/netty/handler/codec/http2/Http2Stream;->isHeadersSent()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-interface {p0}, Lio/netty/handler/codec/http2/Http2Stream;->isTrailersSent()Z

    move-result v1

    if-nez v1, :cond_3

    .line 160
    return v0

    .line 158
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sent too many headers EOS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeHeaders0(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ZISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 18
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "hasPriority"    # Z
    .param p5, "streamDependency"    # I
    .param p6, "weight"    # S
    .param p7, "exclusive"    # Z
    .param p8, "padding"    # I
    .param p9, "endOfStream"    # Z
    .param p10, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 193
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p9

    move-object/from16 v11, p10

    const/4 v10, 0x1

    :try_start_0
    iget-object v0, v12, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0, v14}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v1, v0

    .line 194
    .local v1, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    if-nez v1, :cond_1

    .line 201
    :try_start_1
    iget-object v0, v12, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v14, v2}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->createStream(IZ)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0
    :try_end_1
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 208
    move-object v0, v1

    goto :goto_1

    .line 269
    .end local v1    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    :catchall_0
    move-exception v0

    move v4, v10

    goto/16 :goto_6

    .line 202
    .restart local v1    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "cause":Lio/netty/handler/codec/http2/Http2Exception;
    :try_start_2
    iget-object v2, v12, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v2

    invoke-interface {v2, v14}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->mayHaveCreatedStream(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stream no longer exists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v11, v2}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 205
    return-object v11

    .line 207
    :cond_0
    nop

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "streamId":I
    .end local p3    # "headers":Lio/netty/handler/codec/http2/Http2Headers;
    .end local p4    # "hasPriority":Z
    .end local p5    # "streamDependency":I
    .end local p6    # "weight":S
    .end local p7    # "exclusive":Z
    .end local p8    # "padding":I
    .end local p9    # "endOfStream":Z
    .end local p10    # "promise":Lio/netty/channel/ChannelPromise;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    .end local v0    # "cause":Lio/netty/handler/codec/http2/Http2Exception;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "streamId":I
    .restart local p3    # "headers":Lio/netty/handler/codec/http2/Http2Headers;
    .restart local p4    # "hasPriority":Z
    .restart local p5    # "streamDependency":I
    .restart local p6    # "weight":S
    .restart local p7    # "exclusive":Z
    .restart local p8    # "padding":I
    .restart local p9    # "endOfStream":Z
    .restart local p10    # "promise":Lio/netty/channel/ChannelPromise;
    :cond_1
    :try_start_3
    sget-object v0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$2;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2Stream$State;->ordinal()I

    move-result v2

    aget v0, v0, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    packed-switch v0, :pswitch_data_0

    .line 219
    move v4, v10

    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto/16 :goto_4

    .line 212
    :pswitch_0
    :try_start_5
    invoke-interface {v1, v15}, Lio/netty/handler/codec/http2/Http2Stream;->open(Z)Lio/netty/handler/codec/http2/Http2Stream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 213
    goto :goto_0

    .line 217
    :pswitch_1
    nop

    .line 226
    :goto_0
    move-object v0, v1

    .end local v1    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    :goto_1
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-object v9, v1

    .line 227
    .local v9, "flowController":Lio/netty/handler/codec/http2/Http2RemoteFlowController;
    if-eqz v15, :cond_3

    :try_start_7
    invoke-interface {v9, v0}, Lio/netty/handler/codec/http2/Http2RemoteFlowController;->hasFlowControlled(Lio/netty/handler/codec/http2/Http2Stream;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v14, v9

    goto :goto_2

    .line 264
    :cond_2
    new-instance v8, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;

    const/16 v16, 0x1

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v3, v0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v17, v8

    move/from16 v8, p7

    move-object v14, v9

    .end local v9    # "flowController":Lio/netty/handler/codec/http2/Http2RemoteFlowController;
    .local v14, "flowController":Lio/netty/handler/codec/http2/Http2RemoteFlowController;
    move/from16 v9, p8

    move/from16 v10, v16

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZISZIZLio/netty/channel/ChannelPromise;)V

    move-object/from16 v1, v17

    invoke-interface {v14, v0, v1}, Lio/netty/handler/codec/http2/Http2RemoteFlowController;->addFlowControlled(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 267
    return-object p10

    .line 269
    .end local v0    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .end local v14    # "flowController":Lio/netty/handler/codec/http2/Http2RemoteFlowController;
    :catchall_1
    move-exception v0

    move-object/from16 v11, p10

    const/4 v4, 0x1

    goto/16 :goto_6

    .line 227
    .restart local v0    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .restart local v9    # "flowController":Lio/netty/handler/codec/http2/Http2RemoteFlowController;
    :cond_3
    move-object v14, v9

    .line 230
    .end local v9    # "flowController":Lio/netty/handler/codec/http2/Http2RemoteFlowController;
    .restart local v14    # "flowController":Lio/netty/handler/codec/http2/Http2RemoteFlowController;
    :goto_2
    :try_start_8
    invoke-interface/range {p10 .. p10}, Lio/netty/channel/ChannelPromise;->unvoid()Lio/netty/channel/ChannelPromise;

    move-result-object v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 231
    .end local p10    # "promise":Lio/netty/channel/ChannelPromise;
    .local v11, "promise":Lio/netty/channel/ChannelPromise;
    :try_start_9
    iget-object v1, v12, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v1

    move-object/from16 v10, p3

    invoke-static {v0, v10, v1, v15}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->validateHeadersSentState(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZ)Z

    move-result v1

    move v9, v1

    .line 233
    .local v9, "isInformational":Z
    iget-object v1, v12, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v16, v14

    move v14, v9

    .end local v9    # "isInformational":Z
    .local v14, "isInformational":Z
    .local v16, "flowController":Lio/netty/handler/codec/http2/Http2RemoteFlowController;
    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v1 .. v11}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->sendHeaders(Lio/netty/handler/codec/http2/Http2FrameWriter;Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ZISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    .line 237
    .local v1, "future":Lio/netty/channel/ChannelFuture;
    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v2

    .line 238
    .local v2, "failureCause":Ljava/lang/Throwable;
    if-nez v2, :cond_5

    .line 244
    invoke-interface {v0, v14}, Lio/netty/handler/codec/http2/Http2Stream;->headersSent(Z)Lio/netty/handler/codec/http2/Http2Stream;

    .line 246
    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_4

    .line 248
    invoke-direct {v12, v1, v13}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->notifyLifecycleManagerOnError(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelHandlerContext;)V

    const/4 v4, 0x1

    goto :goto_3

    .line 246
    :cond_4
    const/4 v4, 0x1

    goto :goto_3

    .line 251
    :cond_5
    iget-object v3, v12, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const/4 v4, 0x1

    :try_start_a
    invoke-interface {v3, v13, v4, v2}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    .line 254
    :goto_3
    if-eqz v15, :cond_6

    .line 258
    iget-object v3, v12, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    invoke-interface {v3, v0, v1}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->closeStreamLocal(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 261
    :cond_6
    return-object v1

    .line 269
    .end local v0    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .end local v1    # "future":Lio/netty/channel/ChannelFuture;
    .end local v2    # "failureCause":Ljava/lang/Throwable;
    .end local v14    # "isInformational":Z
    .end local v16    # "flowController":Lio/netty/handler/codec/http2/Http2RemoteFlowController;
    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    const/4 v4, 0x1

    goto :goto_6

    .end local v11    # "promise":Lio/netty/channel/ChannelPromise;
    .restart local p10    # "promise":Lio/netty/channel/ChannelPromise;
    :catchall_4
    move-exception v0

    const/4 v4, 0x1

    goto :goto_5

    .line 219
    .local v1, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    :goto_4
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in unexpected state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 220
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "streamId":I
    .end local p3    # "headers":Lio/netty/handler/codec/http2/Http2Headers;
    .end local p4    # "hasPriority":Z
    .end local p5    # "streamDependency":I
    .end local p6    # "weight":S
    .end local p7    # "exclusive":Z
    .end local p8    # "padding":I
    .end local p9    # "endOfStream":Z
    .end local p10    # "promise":Lio/netty/channel/ChannelPromise;
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 269
    .end local v1    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "streamId":I
    .restart local p3    # "headers":Lio/netty/handler/codec/http2/Http2Headers;
    .restart local p4    # "hasPriority":Z
    .restart local p5    # "streamDependency":I
    .restart local p6    # "weight":S
    .restart local p7    # "exclusive":Z
    .restart local p8    # "padding":I
    .restart local p9    # "endOfStream":Z
    .restart local p10    # "promise":Lio/netty/channel/ChannelPromise;
    :catchall_5
    move-exception v0

    goto :goto_5

    :catchall_6
    move-exception v0

    move v4, v10

    :goto_5
    move-object/from16 v11, p10

    .line 270
    .end local p10    # "promise":Lio/netty/channel/ChannelPromise;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v11    # "promise":Lio/netty/channel/ChannelPromise;
    :goto_6
    iget-object v1, v12, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    invoke-interface {v1, v13, v4, v0}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    .line 271
    invoke-interface {v11, v0}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 272
    return-object v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 398
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2FrameWriter;->close()V

    .line 399
    return-void
.end method

.method public configuration()Lio/netty/handler/codec/http2/Http2FrameWriter$Configuration;
    .locals 1

    .line 408
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2FrameWriter;->configuration()Lio/netty/handler/codec/http2/Http2FrameWriter$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public connection()Lio/netty/handler/codec/http2/Http2Connection;
    .locals 1

    .line 72
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    return-object v0
.end method

.method public consumeReceivedSettings(Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 2
    .param p1, "settings"    # Lio/netty/handler/codec/http2/Http2Settings;

    .line 427
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->outstandingRemoteSettingsQueue:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->outstandingRemoteSettingsQueue:Ljava/util/Queue;

    .line 430
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->outstandingRemoteSettingsQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 431
    return-void
.end method

.method public final flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController()Lio/netty/handler/codec/http2/Http2FlowController;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    return-object v0
.end method

.method public frameWriter()Lio/netty/handler/codec/http2/Http2FrameWriter;
    .locals 1

    .line 67
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    return-object v0
.end method

.method public lifecycleManager(Lio/netty/handler/codec/http2/Http2LifecycleManager;)V
    .locals 1
    .param p1, "lifecycleManager"    # Lio/netty/handler/codec/http2/Http2LifecycleManager;

    .line 62
    const-string v0, "lifecycleManager"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2LifecycleManager;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    .line 63
    return-void
.end method

.method public pollSentSettings()Lio/netty/handler/codec/http2/Http2Settings;
    .locals 1

    .line 403
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->outstandingLocalSettingsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Settings;

    return-object v0
.end method

.method public remoteSettings(Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 11
    .param p1, "settings"    # Lio/netty/handler/codec/http2/Http2Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->pushEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 83
    .local v0, "pushEnabled":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->configuration()Lio/netty/handler/codec/http2/Http2FrameWriter$Configuration;

    move-result-object v1

    .line 84
    .local v1, "config":Lio/netty/handler/codec/http2/Http2FrameWriter$Configuration;
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2FrameWriter$Configuration;->headersConfiguration()Lio/netty/handler/codec/http2/Http2HeadersEncoder$Configuration;

    move-result-object v2

    .line 85
    .local v2, "outboundHeaderConfig":Lio/netty/handler/codec/http2/Http2HeadersEncoder$Configuration;
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2FrameWriter$Configuration;->frameSizePolicy()Lio/netty/handler/codec/http2/Http2FrameSizePolicy;

    move-result-object v3

    .line 86
    .local v3, "outboundFrameSizePolicy":Lio/netty/handler/codec/http2/Http2FrameSizePolicy;
    if-eqz v0, :cond_2

    .line 87
    iget-object v4, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v4}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    sget-object v4, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Client received a value of ENABLE_PUSH specified to other than 0"

    invoke-static {v4, v6, v5}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v4

    throw v4

    .line 91
    :cond_1
    :goto_0
    iget-object v4, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v4}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v4, v5}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->allowPushTo(Z)V

    .line 94
    :cond_2
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->maxConcurrentStreams()Ljava/lang/Long;

    move-result-object v4

    .line 95
    .local v4, "maxConcurrentStreams":Ljava/lang/Long;
    if-eqz v4, :cond_3

    .line 96
    iget-object v5, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v5}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/32 v8, 0x7fffffff

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-interface {v5, v6}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->maxActiveStreams(I)V

    .line 99
    :cond_3
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->headerTableSize()Ljava/lang/Long;

    move-result-object v5

    .line 100
    .local v5, "headerTableSize":Ljava/lang/Long;
    if-eqz v5, :cond_4

    .line 101
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v2, v6, v7}, Lio/netty/handler/codec/http2/Http2HeadersEncoder$Configuration;->maxHeaderTableSize(J)V

    .line 104
    :cond_4
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->maxHeaderListSize()Ljava/lang/Long;

    move-result-object v6

    .line 105
    .local v6, "maxHeaderListSize":Ljava/lang/Long;
    if-eqz v6, :cond_5

    .line 106
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {v2, v7, v8}, Lio/netty/handler/codec/http2/Http2HeadersEncoder$Configuration;->maxHeaderListSize(J)V

    .line 109
    :cond_5
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->maxFrameSize()Ljava/lang/Integer;

    move-result-object v7

    .line 110
    .local v7, "maxFrameSize":Ljava/lang/Integer;
    if-eqz v7, :cond_6

    .line 111
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v3, v8}, Lio/netty/handler/codec/http2/Http2FrameSizePolicy;->maxFrameSize(I)V

    .line 114
    :cond_6
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Settings;->initialWindowSize()Ljava/lang/Integer;

    move-result-object v8

    .line 115
    .local v8, "initialWindowSize":Ljava/lang/Integer;
    if-eqz v8, :cond_7

    .line 116
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Lio/netty/handler/codec/http2/Http2RemoteFlowController;->initialWindowSize(I)V

    .line 118
    :cond_7
    return-void
.end method

.method public writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 13
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "data"    # Lio/netty/buffer/ByteBuf;
    .param p4, "padding"    # I
    .param p5, "endOfStream"    # Z
    .param p6, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 123
    invoke-interface/range {p6 .. p6}, Lio/netty/channel/ChannelPromise;->unvoid()Lio/netty/channel/ChannelPromise;

    move-result-object v8

    .line 126
    .end local p6    # "promise":Lio/netty/channel/ChannelPromise;
    .local v8, "promise":Lio/netty/channel/ChannelPromise;
    move-object v9, p0

    move v10, p2

    :try_start_0
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->requireStream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 129
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    sget-object v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$2;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2Stream$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 135
    new-instance v1, Ljava/lang/IllegalStateException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 133
    :pswitch_0
    nop

    .line 140
    nop

    .line 143
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    move-result-object v11

    new-instance v12, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;

    move-object v1, v12

    move-object v2, p0

    move-object v3, v0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)V

    invoke-interface {v11, v0, v12}, Lio/netty/handler/codec/http2/Http2RemoteFlowController;->addFlowControlled(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;)V

    .line 145
    return-object v8

    .line 135
    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in unexpected state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v8    # "promise":Lio/netty/channel/ChannelPromise;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "streamId":I
    .end local p3    # "data":Lio/netty/buffer/ByteBuf;
    .end local p4    # "padding":I
    .end local p5    # "endOfStream":Z
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    .end local v0    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .restart local v8    # "promise":Lio/netty/channel/ChannelPromise;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "streamId":I
    .restart local p3    # "data":Lio/netty/buffer/ByteBuf;
    .restart local p4    # "padding":I
    .restart local p5    # "endOfStream":Z
    :catchall_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual/range {p3 .. p3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 139
    invoke-interface {v8, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeFrame(Lio/netty/channel/ChannelHandlerContext;BILio/netty/handler/codec/http2/Http2Flags;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "frameType"    # B
    .param p3, "streamId"    # I
    .param p4, "flags"    # Lio/netty/handler/codec/http2/Http2Flags;
    .param p5, "payload"    # Lio/netty/buffer/ByteBuf;
    .param p6, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 393
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeFrame(Lio/netty/channel/ChannelHandlerContext;BILio/netty/handler/codec/http2/Http2Flags;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public writeGoAway(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "lastStreamId"    # I
    .param p3, "errorCode"    # J
    .param p5, "debugData"    # Lio/netty/buffer/ByteBuf;
    .param p6, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 380
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->goAway(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 11
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "streamDependency"    # I
    .param p5, "weight"    # S
    .param p6, "exclusive"    # Z
    .param p7, "padding"    # I
    .param p8, "endOfStream"    # Z
    .param p9, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 167
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->writeHeaders0(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ZISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 11
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "padding"    # I
    .param p5, "endStream"    # Z
    .param p6, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 151
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->writeHeaders0(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ZISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public writePing(Lio/netty/channel/ChannelHandlerContext;ZJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "ack"    # Z
    .param p3, "data"    # J
    .param p5, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 337
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writePing(Lio/netty/channel/ChannelHandlerContext;ZJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public writePriority(Lio/netty/channel/ChannelHandlerContext;IISZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "streamDependency"    # I
    .param p4, "weight"    # S
    .param p5, "exclusive"    # Z
    .param p6, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 279
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writePriority(Lio/netty/channel/ChannelHandlerContext;IISZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public writePushPromise(Lio/netty/channel/ChannelHandlerContext;IILio/netty/handler/codec/http2/Http2Headers;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 13
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "promisedStreamId"    # I
    .param p4, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p5, "padding"    # I
    .param p6, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 344
    move-object v1, p0

    move-object v9, p1

    const/4 v10, 0x1

    :try_start_0
    iget-object v0, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->goAwayReceived()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_2

    .line 348
    move v11, p2

    :try_start_1
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->requireStream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 350
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    iget-object v2, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v12, p3

    :try_start_2
    invoke-interface {v2, v12, v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->reservePushStream(ILio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/Http2Stream;

    .line 352
    invoke-interface/range {p6 .. p6}, Lio/netty/channel/ChannelPromise;->unvoid()Lio/netty/channel/ChannelPromise;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 353
    .end local p6    # "promise":Lio/netty/channel/ChannelPromise;
    .local v8, "promise":Lio/netty/channel/ChannelPromise;
    :try_start_3
    iget-object v2, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v8}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writePushPromise(Lio/netty/channel/ChannelHandlerContext;IILio/netty/handler/codec/http2/Http2Headers;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v2

    .line 356
    .local v2, "future":Lio/netty/channel/ChannelFuture;
    invoke-interface {v2}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v3

    .line 357
    .local v3, "failureCause":Ljava/lang/Throwable;
    if-nez v3, :cond_0

    .line 360
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->pushPromiseSent()Lio/netty/handler/codec/http2/Http2Stream;

    .line 362
    invoke-interface {v2}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_1

    .line 364
    invoke-direct {p0, v2, p1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->notifyLifecycleManagerOnError(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 367
    :cond_0
    iget-object v4, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    invoke-interface {v4, p1, v10, v3}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 369
    :cond_1
    :goto_0
    return-object v2

    .line 370
    .end local v0    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .end local v2    # "future":Lio/netty/channel/ChannelFuture;
    .end local v3    # "failureCause":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    goto :goto_3

    .end local v8    # "promise":Lio/netty/channel/ChannelPromise;
    .restart local p6    # "promise":Lio/netty/channel/ChannelPromise;
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 345
    :cond_2
    move v11, p2

    move/from16 v12, p3

    :try_start_4
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v2, "Sending PUSH_PROMISE after GO_AWAY received."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "streamId":I
    .end local p3    # "promisedStreamId":I
    .end local p4    # "headers":Lio/netty/handler/codec/http2/Http2Headers;
    .end local p5    # "padding":I
    .end local p6    # "promise":Lio/netty/channel/ChannelPromise;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 370
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "streamId":I
    .restart local p3    # "promisedStreamId":I
    .restart local p4    # "headers":Lio/netty/handler/codec/http2/Http2Headers;
    .restart local p5    # "padding":I
    .restart local p6    # "promise":Lio/netty/channel/ChannelPromise;
    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move v11, p2

    :goto_1
    move/from16 v12, p3

    :goto_2
    move-object/from16 v8, p6

    .line 371
    .end local p6    # "promise":Lio/netty/channel/ChannelPromise;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v8    # "promise":Lio/netty/channel/ChannelPromise;
    :goto_3
    iget-object v2, v1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    invoke-interface {v2, p1, v10, v0}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    .line 372
    invoke-interface {v8, v0}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 373
    return-object v8
.end method

.method public writeRstStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "errorCode"    # J
    .param p5, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 286
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->resetStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public writeSettings(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "settings"    # Lio/netty/handler/codec/http2/Http2Settings;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 292
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->outstandingLocalSettingsQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 294
    :try_start_0
    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2Settings;->pushEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 295
    .local v0, "pushEnabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v2, "Server sending SETTINGS frame with ENABLE_PUSH specified"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "settings":Lio/netty/handler/codec/http2/Http2Settings;
    .end local p3    # "promise":Lio/netty/channel/ChannelPromise;
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .end local v0    # "pushEnabled":Ljava/lang/Boolean;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "settings":Lio/netty/handler/codec/http2/Http2Settings;
    .restart local p3    # "promise":Lio/netty/channel/ChannelPromise;
    :cond_1
    :goto_0
    nop

    .line 302
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeSettings(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 298
    :catchall_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Throwable;
    invoke-interface {p3, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    move-result-object v1

    return-object v1
.end method

.method public writeSettingsAck(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 307
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->outstandingRemoteSettingsQueue:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeSettingsAck(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 310
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->outstandingRemoteSettingsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Settings;

    .line 311
    .local v0, "settings":Lio/netty/handler/codec/http2/Http2Settings;
    if-nez v0, :cond_1

    .line 312
    new-instance v1, Lio/netty/handler/codec/http2/Http2Exception;

    sget-object v2, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v3, "attempted to write a SETTINGS ACK with no  pending SETTINGS"

    invoke-direct {v1, v2, v3}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    move-result-object v1

    return-object v1

    .line 315
    :cond_1
    new-instance v1, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    .line 316
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v3

    invoke-direct {v1, p2, v2, v3}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;-><init>(Lio/netty/channel/ChannelPromise;Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    .line 320
    .local v1, "aggregator":Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;
    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeSettingsAck(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 324
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    .line 326
    .local v2, "applySettingsPromise":Lio/netty/channel/ChannelPromise;
    :try_start_0
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->remoteSettings(Lio/netty/handler/codec/http2/Http2Settings;)V

    .line 327
    invoke-interface {v2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    goto :goto_0

    .line 328
    :catchall_0
    move-exception v3

    .line 329
    .local v3, "e":Ljava/lang/Throwable;
    invoke-interface {v2, v3}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 330
    iget-object v4, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->lifecycleManager:Lio/netty/handler/codec/http2/Http2LifecycleManager;

    const/4 v5, 0x1

    invoke-interface {v4, p1, v5, v3}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    .line 332
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2CodecUtil$SimpleChannelPromiseAggregator;->doneAllocatingPromises()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    return-object v3
.end method

.method public writeWindowUpdate(Lio/netty/channel/ChannelHandlerContext;IILio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "windowSizeIncrement"    # I
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 386
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use the Http2[Inbound|Outbound]FlowController objects to control window sizes"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method
