.class public Lio/netty/handler/codec/http2/Http2ConnectionHandler;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "Http2ConnectionHandler.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2LifecycleManager;
.implements Lio/netty/channel/ChannelOutboundHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/Http2ConnectionHandler$ClosingChannelFutureListener;,
        Lio/netty/handler/codec/http2/Http2ConnectionHandler$FrameDecoder;,
        Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;,
        Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;
    }
.end annotation


# static fields
.field private static final HEADERS_TOO_LARGE_HEADERS:Lio/netty/handler/codec/http2/Http2Headers;

.field private static final HTTP_1_X_BUF:Lio/netty/buffer/ByteBuf;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private byteDecoder:Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;

.field private closeListener:Lio/netty/channel/ChannelFutureListener;

.field private final decoder:Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

.field private final decoupleCloseAndGoAway:Z

.field private final encoder:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

.field private final flushPreface:Z

.field private gracefulShutdownTimeoutMillis:J

.field private final initialSettings:Lio/netty/handler/codec/http2/Http2Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    const-class v0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 71
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUEST_HEADER_FIELDS_TOO_LARGE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 72
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->codeAsText()Lio/netty/util/AsciiString;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lio/netty/util/AsciiString;

    .line 71
    invoke-static {v1, v0, v2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->serverHeaders(ZLio/netty/util/AsciiString;[Lio/netty/util/AsciiString;)Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->HEADERS_TOO_LARGE_HEADERS:Lio/netty/handler/codec/http2/Http2Headers;

    .line 73
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 74
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->unreleasableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->asReadOnly()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->HTTP_1_X_BUF:Lio/netty/buffer/ByteBuf;

    .line 73
    return-void

    :array_0
    .array-data 1
        0x48t
        0x54t
        0x54t
        0x50t
        0x2ft
        0x31t
        0x2et
    .end array-data
.end method

.method protected constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 1
    .param p1, "decoder"    # Lio/netty/handler/codec/http2/Http2ConnectionDecoder;
    .param p2, "encoder"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .param p3, "initialSettings"    # Lio/netty/handler/codec/http2/Http2Settings;

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;Z)V

    .line 88
    return-void
.end method

.method protected constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;Z)V
    .locals 6
    .param p1, "decoder"    # Lio/netty/handler/codec/http2/Http2ConnectionDecoder;
    .param p2, "encoder"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .param p3, "initialSettings"    # Lio/netty/handler/codec/http2/Http2Settings;
    .param p4, "decoupleCloseAndGoAway"    # Z

    .line 92
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;ZZ)V

    .line 93
    return-void
.end method

.method protected constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;ZZ)V
    .locals 2
    .param p1, "decoder"    # Lio/netty/handler/codec/http2/Http2ConnectionDecoder;
    .param p2, "encoder"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .param p3, "initialSettings"    # Lio/netty/handler/codec/http2/Http2Settings;
    .param p4, "decoupleCloseAndGoAway"    # Z
    .param p5, "flushPreface"    # Z

    .line 97
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 98
    const-string v0, "initialSettings"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Settings;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->initialSettings:Lio/netty/handler/codec/http2/Http2Settings;

    .line 99
    const-string v0, "decoder"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->decoder:Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    .line 100
    const-string v0, "encoder"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    .line 101
    iput-boolean p4, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->decoupleCloseAndGoAway:Z

    .line 102
    iput-boolean p5, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->flushPreface:Z

    .line 103
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2ConnectionDecoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 106
    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Encoder and Decoder do not share the same connection object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/http2/Http2ConnectionHandler;)Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    .line 66
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    return-object v0
.end method

.method static synthetic access$1000(Lio/netty/handler/codec/http2/Http2ConnectionHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2ConnectionHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Lio/netty/channel/ChannelFuture;

    .line 66
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->closeConnectionOnError(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

.method static synthetic access$1100(Lio/netty/handler/codec/http2/Http2ConnectionHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2ConnectionHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p3, "x3"    # Lio/netty/channel/ChannelFuture;

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->processRstStreamWriteResult(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

.method static synthetic access$1200(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelFuture;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/ChannelHandlerContext;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # Lio/netty/buffer/ByteBuf;
    .param p5, "x4"    # Lio/netty/channel/ChannelFuture;

    .line 66
    invoke-static/range {p0 .. p5}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->processGoAwayWriteResult(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

.method static synthetic access$200(Lio/netty/handler/codec/http2/Http2Connection;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2Connection;

    .line 66
    invoke-static {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->clientPrefaceString(Lio/netty/handler/codec/http2/Http2Connection;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lio/netty/handler/codec/http2/Http2ConnectionHandler;)Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    .line 66
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->byteDecoder:Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;

    return-object v0
.end method

.method static synthetic access$302(Lio/netty/handler/codec/http2/Http2ConnectionHandler;Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;)Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2ConnectionHandler;
    .param p1, "x1"    # Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;

    .line 66
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->byteDecoder:Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;

    return-object p1
.end method

.method static synthetic access$500(Lio/netty/handler/codec/http2/Http2ConnectionHandler;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    .line 66
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->flushPreface:Z

    return v0
.end method

.method static synthetic access$600()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 66
    sget-object v0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->HTTP_1_X_BUF:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method static synthetic access$700(Lio/netty/handler/codec/http2/Http2ConnectionHandler;)Lio/netty/handler/codec/http2/Http2Settings;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    .line 66
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->initialSettings:Lio/netty/handler/codec/http2/Http2Settings;

    return-object v0
.end method

.method static synthetic access$800(Lio/netty/handler/codec/http2/Http2ConnectionHandler;)Lio/netty/handler/codec/http2/Http2ConnectionDecoder;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    .line 66
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->decoder:Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    return-object v0
.end method

.method static synthetic access$900(Lio/netty/handler/codec/http2/Http2ConnectionHandler;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2ConnectionHandler;
    .param p1, "x1"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p2, "x2"    # Lio/netty/channel/ChannelFuture;

    .line 66
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->doCloseStream(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

.method private checkCloseConnection(Lio/netty/channel/ChannelFuture;)V
    .locals 4
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;

    .line 873
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->closeListener:Lio/netty/channel/ChannelFutureListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->isGracefulShutdownComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->closeListener:Lio/netty/channel/ChannelFutureListener;

    .line 877
    .local v0, "closeListener":Lio/netty/channel/ChannelFutureListener;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->closeListener:Lio/netty/channel/ChannelFutureListener;

    .line 879
    :try_start_0
    invoke-interface {v0, p1}, Lio/netty/channel/ChannelFutureListener;->operationComplete(Lio/netty/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    goto :goto_0

    .line 880
    :catch_0
    move-exception v1

    .line 881
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Close listener threw an unexpected exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 884
    .end local v0    # "closeListener":Lio/netty/channel/ChannelFutureListener;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private static clientPrefaceString(Lio/netty/handler/codec/http2/Http2Connection;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;

    .line 929
    invoke-interface {p0}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/netty/handler/codec/http2/Http2CodecUtil;->connectionPrefaceBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private closeConnectionOnError(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "future"    # Lio/netty/channel/ChannelFuture;

    .line 915
    invoke-interface {p2}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    invoke-interface {p2}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2, v0, v1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onConnectionError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception;)V

    .line 918
    :cond_0
    return-void
.end method

.method private doCloseStream(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V
    .locals 0
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p2, "future"    # Lio/netty/channel/ChannelFuture;

    .line 921
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->close()Lio/netty/handler/codec/http2/Http2Stream;

    .line 922
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->checkCloseConnection(Lio/netty/channel/ChannelFuture;)V

    .line 923
    return-void
.end method

.method private doGracefulShutdown(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "future"    # Lio/netty/channel/ChannelFuture;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 504
    invoke-direct {p0, p1, p3}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->newClosingChannelFutureListener(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFutureListener;

    move-result-object v0

    .line 505
    .local v0, "listener":Lio/netty/channel/ChannelFutureListener;
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->isGracefulShutdownComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 514
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->closeListener:Lio/netty/channel/ChannelFutureListener;

    if-nez v1, :cond_1

    .line 515
    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->closeListener:Lio/netty/channel/ChannelFutureListener;

    goto :goto_0

    .line 516
    :cond_1
    if-eqz p3, :cond_2

    .line 517
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->closeListener:Lio/netty/channel/ChannelFutureListener;

    .line 518
    .local v1, "oldCloseListener":Lio/netty/channel/ChannelFutureListener;
    new-instance v2, Lio/netty/handler/codec/http2/Http2ConnectionHandler$1;

    invoke-direct {v2, p0, v1, v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$1;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionHandler;Lio/netty/channel/ChannelFutureListener;Lio/netty/channel/ChannelFutureListener;)V

    iput-object v2, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->closeListener:Lio/netty/channel/ChannelFutureListener;

    .line 530
    .end local v1    # "oldCloseListener":Lio/netty/channel/ChannelFutureListener;
    :cond_2
    :goto_0
    return-void
.end method

.method private goAway(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Exception;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Lio/netty/handler/codec/http2/Http2Exception;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 891
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2Exception;->error()Lio/netty/handler/codec/http2/Http2Error;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->NO_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    :goto_0
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v0

    move-wide v5, v0

    .line 893
    .local v5, "errorCode":J
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2Exception;->shutdownHint()Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    if-ne v0, v1, :cond_1

    .line 898
    const v0, 0x7fffffff

    .local v0, "lastKnownStream":I
    goto :goto_1

    .line 900
    .end local v0    # "lastKnownStream":I
    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->lastStreamCreated()I

    move-result v0

    .line 902
    .restart local v0    # "lastKnownStream":I
    :goto_1
    invoke-static {p1, p2}, Lio/netty/handler/codec/http2/Http2CodecUtil;->toByteBuf(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->goAway(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1
.end method

.method private newClosingChannelFutureListener(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFutureListener;
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 497
    iget-wide v6, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->gracefulShutdownTimeoutMillis:J

    .line 498
    .local v6, "gracefulShutdownTimeoutMillis":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gez v0, :cond_0

    new-instance v0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$ClosingChannelFutureListener;

    invoke-direct {v0, p1, p2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$ClosingChannelFutureListener;-><init>(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    :cond_0
    new-instance v8, Lio/netty/handler/codec/http2/Http2ConnectionHandler$ClosingChannelFutureListener;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-wide v3, v6

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$ClosingChannelFutureListener;-><init>(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;JLjava/util/concurrent/TimeUnit;)V

    :goto_0
    return-object v0
.end method

.method private prefaceSent()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->byteDecoder:Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->byteDecoder:Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;->prefaceSent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static processGoAwayWriteResult(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelFuture;)V
    .locals 9
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p1, "lastStreamId"    # I
    .param p2, "errorCode"    # J
    .param p4, "debugData"    # Lio/netty/buffer/ByteBuf;
    .param p5, "future"    # Lio/netty/channel/ChannelFuture;

    .line 935
    :try_start_0
    invoke-interface {p5}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-eqz v0, :cond_1

    .line 936
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->NO_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v7

    cmp-long v0, p2, v7

    if-eqz v0, :cond_3

    .line 937
    sget-object v0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    sget-object v0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v7, "{} Sent GOAWAY: lastStreamId \'{}\', errorCode \'{}\', debugData \'{}\'. Forcing shutdown of the connection."

    new-array v6, v6, [Ljava/lang/Object;

    .line 940
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v3

    sget-object v3, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v3}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-interface {p5}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v2

    aput-object v2, v6, v1

    .line 938
    invoke-interface {v0, v7, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 942
    :cond_0
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 945
    :cond_1
    sget-object v0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 946
    sget-object v0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v7, "{} Sending GOAWAY failed: lastStreamId \'{}\', errorCode \'{}\', debugData \'{}\'. Forcing shutdown of the connection."

    new-array v6, v6, [Ljava/lang/Object;

    .line 948
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v3

    sget-object v3, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v3}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-interface {p5}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v2

    aput-object v2, v6, v1

    .line 946
    invoke-interface {v0, v7, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    :cond_2
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    :cond_3
    :goto_0
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 955
    nop

    .line 956
    return-void

    .line 954
    :catchall_0
    move-exception v0

    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 955
    throw v0
.end method

.method private processRstStreamWriteResult(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p3, "future"    # Lio/netty/channel/ChannelFuture;

    .line 906
    invoke-interface {p3}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {p0, p2, p3}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->closeStream(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 910
    :cond_0
    invoke-interface {p3}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2, v0, v1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onConnectionError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception;)V

    .line 912
    :goto_0
    return-void
.end method

.method private resetStream(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;JLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p3, "errorCode"    # J
    .param p5, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 795
    invoke-interface {p5}, Lio/netty/channel/ChannelPromise;->unvoid()Lio/netty/channel/ChannelPromise;

    move-result-object p5

    .line 796
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Stream;->isResetSent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    invoke-interface {p5}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0

    .line 805
    :cond_0
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Stream;->resetSent()Lio/netty/handler/codec/http2/Http2Stream;

    .line 810
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http2/Http2Stream$State;->IDLE:Lio/netty/handler/codec/http2/Http2Stream$State;

    if-eq v0, v1, :cond_2

    .line 811
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->created(Lio/netty/handler/codec/http2/Http2Stream;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Stream;->isHeadersSent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Stream;->isPushPromiseSent()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 814
    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->frameWriter()Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-result-object v0

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v2

    move-object v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeRstStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .local v0, "future":Lio/netty/channel/ChannelFuture;
    goto :goto_1

    .line 812
    .end local v0    # "future":Lio/netty/channel/ChannelFuture;
    :cond_2
    :goto_0
    invoke-interface {p5}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    .line 816
    .restart local v0    # "future":Lio/netty/channel/ChannelFuture;
    :goto_1
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 817
    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->processRstStreamWriteResult(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V

    goto :goto_2

    .line 819
    :cond_3
    new-instance v1, Lio/netty/handler/codec/http2/Http2ConnectionHandler$4;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$4;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 827
    :goto_2
    return-object v0
.end method

.method private resetUnknownStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "errorCode"    # J
    .param p5, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 768
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->frameWriter()Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeRstStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 769
    .local v0, "future":Lio/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->closeConnectionOnError(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 772
    :cond_0
    new-instance v1, Lio/netty/handler/codec/http2/Http2ConnectionHandler$3;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$3;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 779
    :goto_0
    return-object v0
.end method


# virtual methods
.method public bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 458
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 459
    return-void
.end method

.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->byteDecoder:Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionHandler;Lio/netty/channel/ChannelHandlerContext;)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->byteDecoder:Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;

    .line 423
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->byteDecoder:Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 424
    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 425
    return-void
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 430
    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 431
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->byteDecoder:Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->byteDecoder:Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->byteDecoder:Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;

    .line 435
    :cond_0
    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 553
    :try_start_0
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->channelReadComplete0(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->flush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 556
    nop

    .line 557
    return-void

    .line 555
    :catchall_0
    move-exception v0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->flush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 556
    throw v0
.end method

.method final channelReadComplete0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 561
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->discardSomeReadBytes()V

    .line 566
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 570
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 571
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

    .line 442
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->flush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 445
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2RemoteFlowController;->channelWritabilityChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V

    .line 448
    nop

    .line 449
    return-void

    .line 447
    :catchall_0
    move-exception v0

    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V

    .line 448
    throw v0
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 474
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->decoupleCloseAndGoAway:Z

    if-eqz v0, :cond_0

    .line 475
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 476
    return-void

    .line 478
    :cond_0
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->unvoid()Lio/netty/channel/ChannelPromise;

    move-result-object p2

    .line 480
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->prefaceSent()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 490
    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->goAwaySent()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->goAway(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Exception;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 491
    .local v0, "f":Lio/netty/channel/ChannelFuture;
    :goto_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 492
    invoke-direct {p0, p1, v0, p2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->doGracefulShutdown(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    .line 493
    return-void

    .line 481
    .end local v0    # "f":Lio/netty/channel/ChannelFuture;
    :cond_3
    :goto_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 482
    return-void
.end method

.method public closeStream(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p2, "future"    # Lio/netty/channel/ChannelFuture;

    .line 628
    invoke-interface {p2}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->doCloseStream(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 631
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$2;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$2;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionHandler;Lio/netty/handler/codec/http2/Http2Stream;)V

    invoke-interface {p2, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 638
    :goto_0
    return-void
.end method

.method public closeStreamLocal(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V
    .locals 2
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p2, "future"    # Lio/netty/channel/ChannelFuture;

    .line 595
    sget-object v0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$6;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2Stream$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 601
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->closeStream(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 598
    :pswitch_0
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->closeLocalSide()Lio/netty/handler/codec/http2/Http2Stream;

    .line 599
    nop

    .line 604
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public closeStreamRemote(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V
    .locals 2
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p2, "future"    # Lio/netty/channel/ChannelFuture;

    .line 615
    sget-object v0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$6;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2Stream$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 621
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->closeStream(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 618
    :pswitch_0
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->closeRemoteSide()Lio/netty/handler/codec/http2/Http2Stream;

    .line 619
    nop

    .line 624
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 464
    invoke-interface {p1, p2, p3, p4}, Lio/netty/channel/ChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 465
    return-void
.end method

.method public connection()Lio/netty/handler/codec/http2/Http2Connection;
    .locals 1

    .line 132
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 1
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

    .line 453
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->byteDecoder:Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 454
    return-void
.end method

.method public decoder()Lio/netty/handler/codec/http2/Http2ConnectionDecoder;
    .locals 1

    .line 136
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->decoder:Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    return-object v0
.end method

.method public deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 534
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 535
    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 469
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 470
    return-void
.end method

.method public encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
    .locals 1

    .line 140
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    return-object v0
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

    .line 578
    invoke-static {p2}, Lio/netty/handler/codec/http2/Http2CodecUtil;->getEmbeddedHttp2Exception(Ljava/lang/Throwable;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    goto :goto_0

    .line 582
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/ByteToMessageDecoder;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 584
    :goto_0
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 196
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2RemoteFlowController;->writePendingBytes()V

    .line 197
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v1

    .line 201
    .local v1, "cause":Ljava/lang/Throwable;
    sget-object v2, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Error flushing"

    invoke-static {v2, v1, v4, v3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    goto :goto_1

    .line 198
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Lio/netty/handler/codec/http2/Http2Exception;
    invoke-virtual {p0, p1, v0, v1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    .line 202
    .end local v1    # "e":Lio/netty/handler/codec/http2/Http2Exception;
    :goto_0
    nop

    .line 203
    :goto_1
    return-void
.end method

.method protected frameWriter()Lio/netty/handler/codec/http2/Http2FrameWriter;
    .locals 1

    .line 758
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->frameWriter()Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-result-object v0

    return-object v0
.end method

.method public goAway(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 15
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "lastStreamId"    # I
    .param p3, "errorCode"    # J
    .param p5, "debugData"    # Lio/netty/buffer/ByteBuf;
    .param p6, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 833
    invoke-interface/range {p6 .. p6}, Lio/netty/channel/ChannelPromise;->unvoid()Lio/netty/channel/ChannelPromise;

    move-result-object v8

    .line 834
    .end local p6    # "promise":Lio/netty/channel/ChannelPromise;
    .local v8, "promise":Lio/netty/channel/ChannelPromise;
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v9

    .line 836
    .local v9, "connection":Lio/netty/handler/codec/http2/Http2Connection;
    move/from16 v10, p2

    move-wide/from16 v11, p3

    move-object/from16 v13, p5

    :try_start_0
    invoke-interface {v9, v10, v11, v12, v13}, Lio/netty/handler/codec/http2/Http2Connection;->goAwaySent(IJLio/netty/buffer/ByteBuf;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    invoke-virtual/range {p5 .. p5}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 838
    invoke-interface {v8}, Lio/netty/channel/ChannelPromise;->trySuccess()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    return-object v8

    .line 845
    :cond_0
    nop

    .line 849
    invoke-virtual/range {p5 .. p5}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    .line 850
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->frameWriter()Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-result-object v1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object v7, v8

    invoke-interface/range {v1 .. v7}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeGoAway(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 852
    .local v0, "future":Lio/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 853
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->processGoAwayWriteResult(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelFuture;)V

    goto :goto_0

    .line 855
    :cond_1
    new-instance v14, Lio/netty/handler/codec/http2/Http2ConnectionHandler$5;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$5;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionHandler;Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;)V

    invoke-interface {v0, v14}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 863
    :goto_0
    return-object v0

    .line 841
    .end local v0    # "future":Lio/netty/channel/ChannelFuture;
    :catchall_0
    move-exception v0

    .line 842
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-virtual/range {p5 .. p5}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 843
    invoke-interface {v8, v0}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 844
    return-object v8
.end method

.method public gracefulShutdownTimeoutMillis()J
    .locals 2

    .line 114
    iget-wide v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->gracefulShutdownTimeoutMillis:J

    return-wide v0
.end method

.method public gracefulShutdownTimeoutMillis(J)V
    .locals 3
    .param p1, "gracefulShutdownTimeoutMillis"    # J

    .line 124
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 128
    iput-wide p1, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->gracefulShutdownTimeoutMillis:J

    .line 129
    return-void

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gracefulShutdownTimeoutMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: -1 for indefinite or >= 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleServerHeaderDecodeSizeError(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 754
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v0

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v2

    sget-object v3, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->HEADERS_TOO_LARGE_HEADERS:Lio/netty/handler/codec/http2/Http2Headers;

    const/4 v5, 0x1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 755
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    invoke-interface {v0, p0}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->lifecycleManager(Lio/netty/handler/codec/http2/Http2LifecycleManager;)V

    .line 404
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->decoder:Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    invoke-interface {v0, p0}, Lio/netty/handler/codec/http2/Http2ConnectionDecoder;->lifecycleManager(Lio/netty/handler/codec/http2/Http2LifecycleManager;)V

    .line 405
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2RemoteFlowController;->channelHandlerContext(Lio/netty/channel/ChannelHandlerContext;)V

    .line 406
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->decoder:Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionDecoder;->flowController()Lio/netty/handler/codec/http2/Http2LocalFlowController;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->channelHandlerContext(Lio/netty/channel/ChannelHandlerContext;)V

    .line 407
    new-instance v0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$PrefaceDecoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionHandler;Lio/netty/channel/ChannelHandlerContext;)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->byteDecoder:Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;

    .line 408
    return-void
.end method

.method protected handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->byteDecoder:Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->byteDecoder:Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->byteDecoder:Lio/netty/handler/codec/http2/Http2ConnectionHandler$BaseDecoder;

    .line 416
    :cond_0
    return-void
.end method

.method protected isGracefulShutdownComplete()Z
    .locals 1

    .line 665
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->numActiveStreams()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onConnectionError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "outbound"    # Z
    .param p3, "cause"    # Ljava/lang/Throwable;
    .param p4, "http2Ex"    # Lio/netty/handler/codec/http2/Http2Exception;

    .line 680
    if-nez p4, :cond_0

    .line 681
    new-instance v0, Lio/netty/handler/codec/http2/Http2Exception;

    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p4, v0

    .line 684
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    .line 685
    .local v0, "promise":Lio/netty/channel/ChannelPromise;
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-direct {p0, p1, p4, v1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->goAway(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Exception;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    .line 686
    .local v1, "future":Lio/netty/channel/ChannelFuture;
    invoke-virtual {p4}, Lio/netty/handler/codec/http2/Http2Exception;->shutdownHint()Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    move-result-object v2

    sget-object v3, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->GRACEFUL_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    if-ne v2, v3, :cond_1

    .line 687
    invoke-direct {p0, p1, v1, v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->doGracefulShutdown(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 689
    :cond_1
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->newClosingChannelFutureListener(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFutureListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 691
    :goto_0
    return-void
.end method

.method public onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "outbound"    # Z
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 645
    invoke-static {p3}, Lio/netty/handler/codec/http2/Http2CodecUtil;->getEmbeddedHttp2Exception(Ljava/lang/Throwable;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    .line 646
    .local v0, "embedded":Lio/netty/handler/codec/http2/Http2Exception;
    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2Exception;->isStreamError(Lio/netty/handler/codec/http2/Http2Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    move-object v1, v0

    check-cast v1, Lio/netty/handler/codec/http2/Http2Exception$StreamException;

    invoke-virtual {p0, p1, p2, p3, v1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onStreamError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$StreamException;)V

    goto :goto_1

    .line 648
    :cond_0
    instance-of v1, v0, Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;

    if-eqz v1, :cond_2

    .line 649
    move-object v1, v0

    check-cast v1, Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;

    .line 650
    .local v1, "compositException":Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/handler/codec/http2/Http2Exception$StreamException;

    .line 651
    .local v3, "streamException":Lio/netty/handler/codec/http2/Http2Exception$StreamException;
    invoke-virtual {p0, p1, p2, p3, v3}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onStreamError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$StreamException;)V

    .line 652
    .end local v3    # "streamException":Lio/netty/handler/codec/http2/Http2Exception$StreamException;
    goto :goto_0

    .line 653
    .end local v1    # "compositException":Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;
    :cond_1
    goto :goto_1

    .line 654
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onConnectionError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception;)V

    .line 656
    :goto_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 657
    return-void
.end method

.method public onHttpClientUpgrade()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 155
    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->prefaceSent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->decoder:Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionDecoder;->prefaceReceived()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->createStream(IZ)Lio/netty/handler/codec/http2/Http2Stream;

    .line 166
    return-void

    .line 161
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v2, "HTTP upgrade must occur before HTTP/2 preface is received"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 158
    :cond_1
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v2, "HTTP upgrade must occur after preface was sent"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 153
    :cond_2
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v2, "Client-side HTTP upgrade requested for a server"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method public onHttpServerUpgrade(Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 3
    .param p1, "settings"    # Lio/netty/handler/codec/http2/Http2Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 176
    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->prefaceSent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->decoder:Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionDecoder;->prefaceReceived()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->remoteSettings(Lio/netty/handler/codec/http2/Http2Settings;)V

    .line 189
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->createStream(IZ)Lio/netty/handler/codec/http2/Http2Stream;

    .line 190
    return-void

    .line 182
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v2, "HTTP upgrade must occur before HTTP/2 preface is received"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 179
    :cond_1
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v2, "HTTP upgrade must occur after preface was sent"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 174
    :cond_2
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v2, "Server-side HTTP upgrade requested for a client"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method protected onStreamError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$StreamException;)V
    .locals 13
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "outbound"    # Z
    .param p3, "cause"    # Ljava/lang/Throwable;
    .param p4, "http2Ex"    # Lio/netty/handler/codec/http2/Http2Exception$StreamException;

    .line 704
    move-object v7, p0

    move-object v8, p1

    move v9, p2

    move-object/from16 v10, p4

    invoke-virtual/range {p4 .. p4}, Lio/netty/handler/codec/http2/Http2Exception$StreamException;->streamId()I

    move-result v11

    .line 705
    .local v11, "streamId":I
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, v11}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v12

    .line 708
    .local v12, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    instance-of v0, v10, Lio/netty/handler/codec/http2/Http2Exception$HeaderListSizeException;

    if-eqz v0, :cond_1

    move-object v0, v10

    check-cast v0, Lio/netty/handler/codec/http2/Http2Exception$HeaderListSizeException;

    .line 709
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Exception$HeaderListSizeException;->duringDecode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    if-nez v12, :cond_0

    .line 720
    :try_start_0
    iget-object v0, v7, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v11, v1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->createStream(IZ)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    .end local v12    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    move-object v12, v0

    goto :goto_0

    .line 721
    .end local v0    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    .restart local v12    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Lio/netty/handler/codec/http2/Http2Exception;
    invoke-virtual/range {p4 .. p4}, Lio/netty/handler/codec/http2/Http2Exception$StreamException;->error()Lio/netty/handler/codec/http2/Http2Error;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v4

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v3, v11

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->resetUnknownStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 723
    return-void

    .line 728
    .end local v0    # "e":Lio/netty/handler/codec/http2/Http2Exception;
    :cond_0
    :goto_0
    if-eqz v12, :cond_1

    invoke-interface {v12}, Lio/netty/handler/codec/http2/Http2Stream;->isHeadersSent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 730
    :try_start_1
    invoke-virtual {p0, p1, v12}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->handleServerHeaderDecodeSizeError(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 733
    goto :goto_1

    .line 731
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 732
    .local v0, "cause2":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error DecodeSizeError"

    invoke-static {v1, v0, v3, v2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    .line 737
    .end local v0    # "cause2":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    if-nez v12, :cond_3

    .line 738
    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v0

    invoke-interface {v0, v11}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->mayHaveCreatedStream(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 739
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lio/netty/handler/codec/http2/Http2Exception$StreamException;->error()Lio/netty/handler/codec/http2/Http2Error;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v4

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v3, v11

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->resetUnknownStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_2

    .line 742
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lio/netty/handler/codec/http2/Http2Exception$StreamException;->error()Lio/netty/handler/codec/http2/Http2Error;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v4

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, v12

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->resetStream(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;JLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 744
    :cond_4
    :goto_2
    return-void
.end method

.method public read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 539
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 540
    return-void
.end method

.method public resetStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "errorCode"    # J
    .param p5, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 785
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 786
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    if-nez v0, :cond_0

    .line 787
    invoke-interface {p5}, Lio/netty/channel/ChannelPromise;->unvoid()Lio/netty/channel/ChannelPromise;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->resetUnknownStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1

    .line 790
    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->resetStream(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Stream;JLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 544
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 545
    return-void
.end method
