.class public Lio/netty/handler/ssl/SslHandler;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SslHandler.java"

# interfaces
.implements Lio/netty/channel/ChannelOutboundHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;,
        Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;,
        Lio/netty/handler/ssl/SslHandler$SslTasksRunner;,
        Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;,
        Lio/netty/handler/ssl/SslHandler$SslEngineType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

.field private static final IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

.field private static final MAX_PLAINTEXT_LENGTH:I = 0x4000

.field private static final STATE_CLOSE_NOTIFY:I = 0x40

.field private static final STATE_FIRE_CHANNEL_READ:I = 0x100

.field private static final STATE_FLUSHED_BEFORE_HANDSHAKE:I = 0x2

.field private static final STATE_HANDSHAKE_STARTED:I = 0x8

.field private static final STATE_NEEDS_FLUSH:I = 0x10

.field private static final STATE_OUTBOUND_CLOSED:I = 0x20

.field private static final STATE_PROCESS_TASK:I = 0x80

.field private static final STATE_READ_DURING_HANDSHAKE:I = 0x4

.field private static final STATE_SENT_FIRST_MESSAGE:I = 0x1

.field private static final STATE_UNWRAP_REENTRY:I = 0x200

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private volatile closeNotifyFlushTimeoutMillis:J

.field private volatile closeNotifyReadTimeoutMillis:J

.field private volatile ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final delegatedTaskExecutor:Ljava/util/concurrent/Executor;

.field private final engine:Ljavax/net/ssl/SSLEngine;

.field private final engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

.field private handshakePromise:Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private volatile handshakeTimeoutMillis:J

.field private final jdkCompatibilityMode:Z

.field private packetLength:I

.field private pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

.field private final singleBuffer:[Ljava/nio/ByteBuffer;

.field private final sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

.field private final sslTaskRunner:Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

.field private final sslTaskRunnerForUnwrap:Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

.field private final startTls:Z

.field private state:S

.field volatile wrapDataSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 171
    nop

    .line 172
    nop

    .line 173
    const-class v0, Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 174
    const-string v0, "^.*(?:Socket|Datagram|Sctp|Udt)Channel.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslHandler;->IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

    .line 176
    const-string v0, "^.*(?:connection.*(?:reset|closed|abort|broken)|broken.*pipe).*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslHandler;->IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 439
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    .line 440
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "delegatedTaskExecutor"    # Ljava/util/concurrent/Executor;

    .line 461
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V

    .line 462
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Z)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "startTls"    # Z

    .line 450
    sget-object v0, Lio/netty/util/concurrent/ImmediateExecutor;->INSTANCE:Lio/netty/util/concurrent/ImmediateExecutor;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V

    .line 451
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "startTls"    # Z
    .param p3, "delegatedTaskExecutor"    # Ljava/util/concurrent/Executor;

    .line 473
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 414
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lio/netty/handler/ssl/SslHandler;->singleBuffer:[Ljava/nio/ByteBuffer;

    .line 418
    new-instance v1, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    invoke-direct {v1, p0, v0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;-><init>(Lio/netty/handler/ssl/SslHandler;Z)V

    iput-object v1, p0, Lio/netty/handler/ssl/SslHandler;->sslTaskRunnerForUnwrap:Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    .line 419
    new-instance v0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;-><init>(Lio/netty/handler/ssl/SslHandler;Z)V

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslTaskRunner:Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    .line 422
    new-instance v0, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/handler/ssl/SslHandler$1;)V

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    .line 423
    new-instance v0, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    invoke-direct {v0, p0, v1}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/handler/ssl/SslHandler$1;)V

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    .line 428
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakeTimeoutMillis:J

    .line 429
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyFlushTimeoutMillis:J

    .line 431
    const/16 v0, 0x4000

    iput v0, p0, Lio/netty/handler/ssl/SslHandler;->wrapDataSize:I

    .line 474
    const-string v0, "engine"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLEngine;

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    .line 475
    const-string v0, "delegatedTaskExecutor"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    .line 476
    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler$SslEngineType;->forEngine(Ljavax/net/ssl/SSLEngine;)Lio/netty/handler/ssl/SslHandler$SslEngineType;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    .line 477
    iput-boolean p2, p0, Lio/netty/handler/ssl/SslHandler;->startTls:Z

    .line 478
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/SslHandler$SslEngineType;->jdkCompatibilityMode(Ljavax/net/ssl/SSLEngine;)Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->jdkCompatibilityMode:Z

    .line 479
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    iget-object v0, v0, Lio/netty/handler/ssl/SslHandler$SslEngineType;->cumulator:Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/SslHandler;->setCumulator(Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;)V

    .line 480
    return-void
.end method

.method static synthetic access$100(Lio/netty/handler/ssl/SslHandler;)Ljavax/net/ssl/SSLEngine;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;

    .line 171
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method static synthetic access$1000(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 171
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->handleUnwrapThrowable(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1100(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 171
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1200(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;

    .line 171
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method static synthetic access$1300(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;

    .line 171
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->channelReadComplete0(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method static synthetic access$1400(Lio/netty/handler/ssl/SslHandler;I)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # I

    .line 171
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->clearState(I)V

    return-void
.end method

.method static synthetic access$1500(Lio/netty/handler/ssl/SslHandler;Lio/netty/handler/ssl/SslHandler$SslTasksRunner;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    .line 171
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->executeDelegatedTask(Lio/netty/handler/ssl/SslHandler$SslTasksRunner;)V

    return-void
.end method

.method static synthetic access$1600(Lio/netty/handler/ssl/SslHandler;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;

    .line 171
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccess()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Z)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->wrap(Lio/netty/channel/ChannelHandlerContext;Z)V

    return-void
.end method

.method static synthetic access$1800(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->unwrapNonAppData(Lio/netty/channel/ChannelHandlerContext;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Z)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->wrapNonAppData(Lio/netty/channel/ChannelHandlerContext;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lio/netty/handler/ssl/SslHandler;)[Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;

    .line 171
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->singleBuffer:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$2200(Lio/netty/handler/ssl/SslHandler;Lio/netty/util/concurrent/Promise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/util/concurrent/Promise;

    .line 171
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->renegotiateOnEventLoop(Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method static synthetic access$2300(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 171
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->releaseAndFailAll(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$2400()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 171
    sget-object v0, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method static synthetic access$2500(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/ChannelFuture;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 171
    invoke-static {p0, p1}, Lio/netty/handler/ssl/SslHandler;->addCloseListener(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$2600(Lio/netty/handler/ssl/SslHandler;)J
    .locals 2
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;

    .line 171
    iget-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyReadTimeoutMillis:J

    return-wide v0
.end method

.method static synthetic access$2700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;

    .line 171
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    return-object v0
.end method

.method static synthetic access$2800(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/ByteBuf;
    .param p1, "x1"    # Lio/netty/buffer/ByteBuf;
    .param p2, "x2"    # I

    .line 171
    invoke-static {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->attemptCopyToCumulation(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/handler/ssl/SslHandler$SslEngineType;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;

    .line 171
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    return-object v0
.end method

.method static synthetic access$300(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/ByteBuf;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 171
    invoke-static {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->toByteBuffer(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 171
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->closeOutbound0(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$600(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 171
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailureTransportFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$700(Lio/netty/handler/ssl/SslHandler;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 171
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->notifyClosePromise(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$800(Lio/netty/handler/ssl/SslHandler;Z)Lio/netty/handler/ssl/SslHandler$SslTasksRunner;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Z

    .line 171
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->getTaskRunner(Z)Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;

    .line 171
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method private static addCloseListener(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p0, "future"    # Lio/netty/channel/ChannelFuture;
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 2347
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lio/netty/util/concurrent/PromiseNotifier;->cascade(ZLio/netty/util/concurrent/Future;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    .line 2348
    return-void
.end method

.method private allocate(Lio/netty/channel/ChannelHandlerContext;I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "capacity"    # I

    .line 2355
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    .line 2356
    .local v0, "alloc":Lio/netty/buffer/ByteBufAllocator;
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    iget-boolean v1, v1, Lio/netty/handler/ssl/SslHandler$SslEngineType;->wantsDirectBuffer:Z

    if-eqz v1, :cond_0

    .line 2357
    invoke-interface {v0, p2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    return-object v1

    .line 2359
    :cond_0
    invoke-interface {v0, p2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    return-object v1
.end method

.method private allocateOutNetBuf(Lio/netty/channel/ChannelHandlerContext;II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "pendingBytes"    # I
    .param p3, "numComponents"    # I

    .line 2368
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2, p3}, Lio/netty/handler/ssl/SslHandler$SslEngineType;->allocateWrapBuffer(Lio/netty/handler/ssl/SslHandler;Lio/netty/buffer/ByteBufAllocator;II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method private applyHandshakeTimeout()V
    .locals 6

    .line 2203
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    .line 2206
    .local v0, "localHandshakePromise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/channel/Channel;>;"
    iget-wide v1, p0, Lio/netty/handler/ssl/SslHandler;->handshakeTimeoutMillis:J

    .line 2207
    .local v1, "handshakeTimeoutMillis":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    invoke-interface {v0}, Lio/netty/util/concurrent/Promise;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2211
    :cond_0
    iget-object v3, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v3}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v3

    new-instance v4, Lio/netty/handler/ssl/SslHandler$7;

    invoke-direct {v4, p0, v0, v1, v2}, Lio/netty/handler/ssl/SslHandler$7;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/util/concurrent/Promise;J)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v1, v2, v5}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v3

    .line 2230
    .local v3, "timeoutFuture":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    new-instance v4, Lio/netty/handler/ssl/SslHandler$8;

    invoke-direct {v4, p0, v3}, Lio/netty/handler/ssl/SslHandler$8;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/util/concurrent/Future;)V

    invoke-interface {v0, v4}, Lio/netty/util/concurrent/Promise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 2236
    return-void

    .line 2208
    .end local v3    # "timeoutFuture":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    :cond_1
    :goto_0
    return-void
.end method

.method private static attemptCopyToCumulation(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)Z
    .locals 4
    .param p0, "cumulation"    # Lio/netty/buffer/ByteBuf;
    .param p1, "next"    # Lio/netty/buffer/ByteBuf;
    .param p2, "wrapDataSize"    # I

    .line 2437
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 2438
    .local v0, "inReadableBytes":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v1

    .line 2439
    .local v1, "cumulationCapacity":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    sub-int v2, p2, v2

    const/4 v3, 0x0

    if-lt v2, v0, :cond_2

    .line 2443
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->isWritable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ge v1, p2, :cond_1

    :cond_0
    if-ge v1, p2, :cond_2

    .line 2445
    invoke-virtual {p0, v0, v3}, Lio/netty/buffer/ByteBuf;->ensureWritable(IZ)I

    move-result v2

    invoke-static {v2}, Lio/netty/buffer/ByteBufUtil;->ensureWritableSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2446
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 2447
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 2448
    const/4 v2, 0x1

    return v2

    .line 2450
    :cond_2
    return v3
.end method

.method private channelReadComplete0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1400
    invoke-virtual {p0}, Lio/netty/handler/ssl/SslHandler;->discardSomeReadBytes()V

    .line 1402
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->flushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 1403
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->readIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 1405
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->clearState(I)V

    .line 1406
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 1407
    return-void
.end method

.method private clearState(I)V
    .locals 2
    .param p1, "bit"    # I

    .line 2380
    iget-short v0, p0, Lio/netty/handler/ssl/SslHandler;->state:S

    not-int v1, p1

    and-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lio/netty/handler/ssl/SslHandler;->state:S

    .line 2381
    return-void
.end method

.method private closeOutbound0(Lio/netty/channel/ChannelPromise;)V
    .locals 4
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 675
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->setState(I)V

    .line 676
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 678
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/SslHandler;->flush(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    goto :goto_0

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 681
    sget-object v1, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    const-string v3, "{} flush() raised a masked exception."

    invoke-interface {v1, v3, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 684
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private closeOutboundAndChannel(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;Z)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p3, "disconnect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2029
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->setState(I)V

    .line 2030
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 2032
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2033
    if-eqz p3, :cond_0

    .line 2034
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 2036
    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 2038
    :goto_0
    return-void

    .line 2041
    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    .line 2043
    .local v0, "closeNotifyPromise":Lio/netty/channel/ChannelPromise;
    const/4 v1, 0x0

    const/16 v2, 0x40

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslHandler;->flush(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2045
    invoke-direct {p0, v2}, Lio/netty/handler/ssl/SslHandler;->isStateSet(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2046
    invoke-direct {p0, v2}, Lio/netty/handler/ssl/SslHandler;->setState(I)V

    .line 2055
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lio/netty/util/concurrent/PromiseNotifier;->cascade(ZLio/netty/util/concurrent/Future;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelPromise;

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/ssl/SslHandler;->safeClose(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_1

    .line 2058
    :cond_2
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    new-instance v2, Lio/netty/handler/ssl/SslHandler$5;

    invoke-direct {v2, p0, p2}, Lio/netty/handler/ssl/SslHandler$5;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelPromise;)V

    invoke-virtual {v1, v2}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 2065
    nop

    .line 2066
    :goto_1
    return-void

    .line 2045
    :catchall_0
    move-exception v3

    invoke-direct {p0, v2}, Lio/netty/handler/ssl/SslHandler;->isStateSet(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2046
    invoke-direct {p0, v2}, Lio/netty/handler/ssl/SslHandler;->setState(I)V

    .line 2055
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lio/netty/util/concurrent/PromiseNotifier;->cascade(ZLio/netty/util/concurrent/Future;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelPromise;

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/ssl/SslHandler;->safeClose(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_2

    .line 2058
    :cond_3
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    new-instance v2, Lio/netty/handler/ssl/SslHandler$5;

    invoke-direct {v2, p0, p2}, Lio/netty/handler/ssl/SslHandler$5;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelPromise;)V

    invoke-virtual {v1, v2}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 2065
    :goto_2
    throw v3
.end method

.method private decodeJdkCompatible(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/ssl/NotSslRecordException;
        }
    .end annotation

    .line 1298
    iget v0, p0, Lio/netty/handler/ssl/SslHandler;->packetLength:I

    .line 1300
    .local v0, "packetLength":I
    if-lez v0, :cond_0

    .line 1301
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-ge v1, v0, :cond_3

    .line 1302
    return-void

    .line 1306
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    .line 1307
    .local v1, "readableBytes":I
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 1308
    return-void

    .line 1310
    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-static {p2, v2}, Lio/netty/handler/ssl/SslUtils;->getEncryptedPacketLength(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    .line 1311
    const/4 v2, -0x2

    if-eq v0, v2, :cond_7

    .line 1323
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 1324
    return-void

    .line 1326
    :cond_2
    if-lez v0, :cond_6

    .line 1327
    if-le v0, v1, :cond_3

    .line 1329
    iput v0, p0, Lio/netty/handler/ssl/SslHandler;->packetLength:I

    .line 1330
    return-void

    .line 1336
    .end local v1    # "readableBytes":I
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lio/netty/handler/ssl/SslHandler;->packetLength:I

    .line 1338
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/ssl/SslHandler;->unwrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;I)I

    move-result v1

    .line 1339
    .local v1, "bytesConsumed":I
    if-eq v1, v0, :cond_5

    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "we feed the SSLEngine a packets worth of data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but it only consumed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "packetLength":I
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1344
    .end local v1    # "bytesConsumed":I
    .restart local v0    # "packetLength":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    :cond_5
    :goto_0
    goto :goto_1

    .line 1342
    :catchall_0
    move-exception v1

    .line 1343
    .local v1, "cause":Ljava/lang/Throwable;
    invoke-direct {p0, p1, v1}, Lio/netty/handler/ssl/SslHandler;->handleUnwrapThrowable(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 1345
    .end local v1    # "cause":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 1326
    .local v1, "readableBytes":I
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1313
    :cond_7
    new-instance v2, Lio/netty/handler/ssl/NotSslRecordException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not an SSL/TLS record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1314
    invoke-static {p2}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/netty/handler/ssl/NotSslRecordException;-><init>(Ljava/lang/String;)V

    .line 1315
    .local v2, "e":Lio/netty/handler/ssl/NotSslRecordException;
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 1319
    invoke-direct {p0, p1, v2}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 1321
    throw v2
.end method

.method private decodeNonJdkCompatible(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;

    .line 1349
    :try_start_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/ssl/SslHandler;->unwrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    goto :goto_0

    .line 1350
    :catchall_0
    move-exception v0

    .line 1351
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslHandler;->handleUnwrapThrowable(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 1353
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private executeChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "decodedOut"    # Lio/netty/buffer/ByteBuf;

    .line 1593
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    new-instance v1, Lio/netty/handler/ssl/SslHandler$4;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/handler/ssl/SslHandler$4;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1602
    nop

    .line 1603
    return-void

    .line 1599
    :catch_0
    move-exception v0

    .line 1600
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1601
    throw v0
.end method

.method private executeDelegatedTask(Lio/netty/handler/ssl/SslHandler$SslTasksRunner;)V
    .locals 2
    .param p1, "task"    # Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    .line 1672
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->setState(I)V

    .line 1674
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1678
    nop

    .line 1679
    return-void

    .line 1675
    :catch_0
    move-exception v1

    .line 1676
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->clearState(I)V

    .line 1677
    throw v1
.end method

.method private executeDelegatedTask(Z)V
    .locals 1
    .param p1, "inUnwrap"    # Z

    .line 1668
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->getTaskRunner(Z)Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->executeDelegatedTask(Lio/netty/handler/ssl/SslHandler$SslTasksRunner;)V

    .line 1669
    return-void
.end method

.method private executeNotifyClosePromise(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1580
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    new-instance v1, Lio/netty/handler/ssl/SslHandler$3;

    invoke-direct {v1, p0}, Lio/netty/handler/ssl/SslHandler$3;-><init>(Lio/netty/handler/ssl/SslHandler;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1588
    goto :goto_0

    .line 1586
    :catch_0
    move-exception v0

    .line 1587
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->notifyClosePromise(Ljava/lang/Throwable;)V

    .line 1589
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method private flush(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2069
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    if-eqz v0, :cond_0

    .line 2070
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, v1, p2}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->add(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 2072
    :cond_0
    invoke-static {}, Lio/netty/handler/ssl/SslHandler;->newPendingWritesNullException()Ljava/lang/IllegalStateException;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 2074
    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/SslHandler;->flush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 2075
    return-void
.end method

.method private flushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1420
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->isStateSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 1423
    :cond_0
    return-void
.end method

.method private forceFlush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 2239
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->clearState(I)V

    .line 2240
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 2241
    return-void
.end method

.method private getTaskRunner(Z)Lio/netty/handler/ssl/SslHandler$SslTasksRunner;
    .locals 1
    .param p1, "inUnwrap"    # Z

    .line 1664
    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslTaskRunnerForUnwrap:Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslTaskRunner:Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    :goto_0
    return-object v0
.end method

.method private handleUnwrapThrowable(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 1361
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0, p2}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1362
    new-instance v0, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    invoke-direct {v0, p2}, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 1366
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    if-eqz v0, :cond_1

    .line 1369
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->wrapAndFlush(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1376
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;ZZZ)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1371
    :catch_0
    move-exception v0

    .line 1372
    .local v0, "ex":Ljavax/net/ssl/SSLException;
    :try_start_1
    sget-object v1, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "SSLException during trying to call SSLEngine.wrap(...) because of an previous SSLException, ignoring..."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1376
    .end local v0    # "ex":Ljavax/net/ssl/SSLException;
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;ZZZ)V

    .line 1377
    :goto_0
    nop

    .line 1378
    invoke-static {p2}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 1379
    return-void

    .line 1376
    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;ZZZ)V

    .line 1377
    throw v0
.end method

.method private handshake(Z)V
    .locals 2
    .param p1, "flushAtEnd"    # Z

    .line 2174
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v1, :cond_0

    .line 2177
    return-void

    .line 2179
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Lio/netty/util/concurrent/Promise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2185
    return-void

    .line 2189
    :cond_1
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 2191
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 2192
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/netty/handler/ssl/SslHandler;->wrapNonAppData(Lio/netty/channel/ChannelHandlerContext;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2196
    if-eqz p1, :cond_2

    .line 2197
    goto :goto_0

    .line 2193
    :catchall_0
    move-exception v1

    .line 2194
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-direct {p0, v0, v1}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2196
    .end local v1    # "e":Ljava/lang/Throwable;
    if-eqz p1, :cond_2

    .line 2197
    :goto_0
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 2200
    :cond_2
    return-void

    .line 2196
    :catchall_1
    move-exception v1

    if-eqz p1, :cond_3

    .line 2197
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 2199
    :cond_3
    throw v1
.end method

.method private ignoreException(Ljava/lang/Throwable;)Z
    .locals 13
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 1218
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1219
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1223
    .local v0, "message":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v3, Lio/netty/handler/ssl/SslHandler;->IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1224
    return v2

    .line 1228
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 1229
    .local v3, "elements":[Ljava/lang/StackTraceElement;
    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_8

    aget-object v6, v3, v5

    .line 1230
    .local v6, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 1231
    .local v7, "classname":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    .line 1234
    .local v8, "methodname":Ljava/lang/String;
    const-string v9, "io.netty."

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1235
    goto :goto_2

    .line 1239
    :cond_1
    const-string v9, "read"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1240
    goto :goto_2

    .line 1245
    :cond_2
    sget-object v9, Lio/netty/handler/ssl/SslHandler;->IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1246
    return v2

    .line 1253
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 1255
    .local v9, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v10, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v10, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_6

    const-class v10, Ljava/nio/channels/DatagramChannel;

    .line 1256
    invoke-virtual {v10, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_1

    .line 1261
    :cond_4
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v10

    const/4 v11, 0x7

    if-lt v10, v11, :cond_5

    const-string v10, "com.sun.nio.sctp.SctpChannel"

    .line 1262
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_5

    .line 1263
    return v2

    .line 1270
    .end local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    goto :goto_2

    .line 1257
    .restart local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    :goto_1
    return v2

    .line 1265
    .end local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v9

    .line 1266
    .local v9, "cause":Ljava/lang/Throwable;
    sget-object v10, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v10}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1267
    sget-object v10, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 1268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    filled-new-array {v11, v7, v9}, [Ljava/lang/Object;

    move-result-object v11

    .line 1267
    const-string v12, "Unexpected exception while loading class {} classname {}"

    invoke-interface {v10, v12, v11}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1229
    .end local v6    # "element":Ljava/lang/StackTraceElement;
    .end local v7    # "classname":Ljava/lang/String;
    .end local v8    # "methodname":Ljava/lang/String;
    .end local v9    # "cause":Ljava/lang/Throwable;
    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1274
    .end local v0    # "message":Ljava/lang/String;
    .end local v3    # "elements":[Ljava/lang/StackTraceElement;
    :cond_8
    return v1
.end method

.method private static inEventLoop(Ljava/util/concurrent/Executor;)Z
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .line 1611
    instance-of v0, p0, Lio/netty/util/concurrent/EventExecutor;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEncrypted(Lio/netty/buffer/ByteBuf;)Z
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 1290
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 1294
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-static {p0, v0}, Lio/netty/handler/ssl/SslUtils;->getEncryptedPacketLength(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1291
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer must have at least 5 readable bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isStateSet(I)Z
    .locals 1
    .param p1, "bit"    # I

    .line 2372
    iget-short v0, p0, Lio/netty/handler/ssl/SslHandler;->state:S

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static newPendingWritesNullException()Ljava/lang/IllegalStateException;
    .locals 2

    .line 767
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pendingUnencryptedWrites is null, handlerRemoved0 called?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private notifyClosePromise(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 2016
    if-nez p1, :cond_0

    .line 2017
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->trySuccess(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2018
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    sget-object v1, Lio/netty/handler/ssl/SslCloseCompletionEvent;->SUCCESS:Lio/netty/handler/ssl/SslCloseCompletionEvent;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    .line 2021
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2022
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    new-instance v1, Lio/netty/handler/ssl/SslCloseCompletionEvent;

    invoke-direct {v1, p1}, Lio/netty/handler/ssl/SslCloseCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 2025
    :cond_1
    :goto_0
    return-void
.end method

.method private readIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1411
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1412
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->isStateSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Lio/netty/util/concurrent/Promise;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1415
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 1417
    :cond_1
    return-void
.end method

.method private releaseAndFailAll(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 2010
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    if-eqz v0, :cond_0

    .line 2011
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->releaseAndFailAll(Lio/netty/channel/ChannelOutboundInvoker;Ljava/lang/Throwable;)V

    .line 2013
    :cond_0
    return-void
.end method

.method private renegotiateOnEventLoop(Lio/netty/util/concurrent/Promise;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)V"
        }
    .end annotation

    .line 2155
    .local p1, "newHandshakePromise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/channel/Channel;>;"
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    .line 2156
    .local v0, "oldHandshakePromise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/channel/Channel;>;"
    invoke-interface {v0}, Lio/netty/util/concurrent/Promise;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2159
    invoke-static {v0, p1}, Lio/netty/util/concurrent/PromiseNotifier;->cascade(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    goto :goto_0

    .line 2161
    :cond_0
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    .line 2162
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lio/netty/handler/ssl/SslHandler;->handshake(Z)V

    .line 2163
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->applyHandshakeTimeout()V

    .line 2165
    :goto_0
    return-void
.end method

.method private runDelegatedTasks(Z)Z
    .locals 7
    .param p1, "inUnwrap"    # Z

    .line 1622
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    sget-object v1, Lio/netty/util/concurrent/ImmediateExecutor;->INSTANCE:Lio/netty/util/concurrent/ImmediateExecutor;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->inEventLoop(Ljava/util/concurrent/Executor;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1658
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->executeDelegatedTask(Z)V

    .line 1659
    return v2

    .line 1626
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 1627
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_2

    .line 1628
    const/4 v1, 0x1

    return v1

    .line 1630
    :cond_2
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lio/netty/handler/ssl/SslHandler;->setState(I)V

    .line 1631
    instance-of v3, v0, Lio/netty/handler/ssl/AsyncRunnable;

    if-eqz v3, :cond_7

    .line 1633
    const/4 v3, 0x0

    .line 1635
    .local v3, "pending":Z
    :try_start_0
    move-object v4, v0

    check-cast v4, Lio/netty/handler/ssl/AsyncRunnable;

    .line 1636
    .local v4, "asyncTask":Lio/netty/handler/ssl/AsyncRunnable;
    new-instance v5, Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;

    invoke-direct {v5, p0, p1}, Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;-><init>(Lio/netty/handler/ssl/SslHandler;Z)V

    .line 1637
    .local v5, "completionHandler":Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;
    invoke-interface {v4, v5}, Lio/netty/handler/ssl/AsyncRunnable;->run(Ljava/lang/Runnable;)V

    .line 1638
    invoke-virtual {v5}, Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;->resumeLater()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v6

    .line 1639
    if-eqz v3, :cond_4

    .line 1640
    nop

    .line 1643
    if-nez v3, :cond_3

    .line 1646
    invoke-direct {p0, v1}, Lio/netty/handler/ssl/SslHandler;->clearState(I)V

    .line 1640
    :cond_3
    return v2

    .line 1643
    .end local v4    # "asyncTask":Lio/netty/handler/ssl/AsyncRunnable;
    .end local v5    # "completionHandler":Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;
    :cond_4
    if-nez v3, :cond_5

    .line 1646
    invoke-direct {p0, v1}, Lio/netty/handler/ssl/SslHandler;->clearState(I)V

    .line 1649
    .end local v3    # "pending":Z
    :cond_5
    goto :goto_1

    .line 1643
    .restart local v3    # "pending":Z
    :catchall_0
    move-exception v2

    if-nez v3, :cond_6

    .line 1646
    invoke-direct {p0, v1}, Lio/netty/handler/ssl/SslHandler;->clearState(I)V

    .line 1648
    :cond_6
    throw v2

    .line 1651
    .end local v3    # "pending":Z
    :cond_7
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1653
    invoke-direct {p0, v1}, Lio/netty/handler/ssl/SslHandler;->clearState(I)V

    .line 1654
    nop

    .line 1656
    .end local v0    # "task":Ljava/lang/Runnable;
    :goto_1
    goto :goto_0

    .line 1653
    .restart local v0    # "task":Ljava/lang/Runnable;
    :catchall_1
    move-exception v2

    invoke-direct {p0, v1}, Lio/netty/handler/ssl/SslHandler;->clearState(I)V

    .line 1654
    throw v2
.end method

.method private safeClose(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "flushFuture"    # Lio/netty/channel/ChannelFuture;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 2264
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2265
    invoke-interface {p1, p3}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 2266
    return-void

    .line 2270
    :cond_0
    invoke-interface {p2}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2271
    iget-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyFlushTimeoutMillis:J

    .line 2272
    .local v0, "closeNotifyTimeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 2274
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    new-instance v3, Lio/netty/handler/ssl/SslHandler$9;

    invoke-direct {v3, p0, p2, p1, p3}, Lio/netty/handler/ssl/SslHandler$9;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v2

    .local v2, "timeoutFuture":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    goto :goto_0

    .line 2286
    .end local v2    # "timeoutFuture":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    :cond_1
    const/4 v2, 0x0

    .line 2288
    .end local v0    # "closeNotifyTimeout":J
    .restart local v2    # "timeoutFuture":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    :goto_0
    goto :goto_1

    .line 2289
    .end local v2    # "timeoutFuture":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    :cond_2
    const/4 v2, 0x0

    .line 2293
    .restart local v2    # "timeoutFuture":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    :goto_1
    new-instance v0, Lio/netty/handler/ssl/SslHandler$10;

    invoke-direct {v0, p0, v2, p1, p3}, Lio/netty/handler/ssl/SslHandler$10;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/util/concurrent/Future;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {p2, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 2338
    return-void
.end method

.method private setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 1955
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;ZZZ)V

    .line 1956
    return-void
.end method

.method private setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;ZZZ)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "closeInbound"    # Z
    .param p4, "notify"    # Z
    .param p5, "alwaysFlushAndClose"    # Z

    .line 1965
    const/16 v0, 0x20

    :try_start_0
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->setState(I)V

    .line 1966
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1968
    if-eqz p3, :cond_1

    .line 1970
    :try_start_1
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1983
    goto :goto_0

    .line 1971
    :catch_0
    move-exception v0

    .line 1972
    .local v0, "e":Ljavax/net/ssl/SSLException;
    :try_start_2
    sget-object v1, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1977
    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1978
    .local v1, "msg":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "possible truncation attack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "closing inbound before receiving peer\'s close_notify"

    .line 1979
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1980
    :cond_0
    sget-object v2, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "{} SSLEngine.closeInbound() raised an exception."

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1985
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0, p2}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p5, :cond_3

    .line 1986
    :cond_2
    invoke-static {p1, p2, p4}, Lio/netty/handler/ssl/SslUtils;->handleHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1990
    :cond_3
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->releaseAndFailAll(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 1991
    nop

    .line 1992
    return-void

    .line 1990
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->releaseAndFailAll(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 1991
    throw v0
.end method

.method private setHandshakeFailureTransportFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 1999
    :try_start_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "failure when writing TLS control frames"

    invoke-direct {v0, v1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2000
    .local v0, "transportFailure":Ljavax/net/ssl/SSLException;
    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslHandler;->releaseAndFailAll(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 2001
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v1, v0}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2002
    new-instance v1, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    invoke-direct {v1, v0}, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2005
    .end local v0    # "transportFailure":Ljavax/net/ssl/SSLException;
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 2006
    nop

    .line 2007
    return-void

    .line 2005
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 2006
    throw v0
.end method

.method private setHandshakeSuccess()Z
    .locals 6

    .line 1931
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Lio/netty/util/concurrent/Promise;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->trySuccess(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .local v1, "notified":Z
    if-eqz v0, :cond_2

    .line 1932
    sget-object v0, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1933
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 1934
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    sget-object v2, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v3, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 1936
    invoke-interface {v3}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    .line 1937
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v4

    .line 1938
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 1934
    const-string v4, "{} HANDSHAKEN: protocol:{} cipher suite:{}"

    invoke-interface {v2, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1940
    .end local v0    # "session":Ljavax/net/ssl/SSLSession;
    :cond_1
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    sget-object v2, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;->SUCCESS:Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    invoke-interface {v0, v2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 1942
    :cond_2
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->isStateSet(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1943
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->clearState(I)V

    .line 1944
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1945
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 1948
    :cond_3
    return v1
.end method

.method private setHandshakeSuccessUnwrapMarkReentry()Z
    .locals 3

    .line 1563
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->isStateSet(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1564
    .local v1, "setReentryState":Z
    if-eqz v1, :cond_0

    .line 1565
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->setState(I)V

    .line 1568
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccess()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1572
    if-eqz v1, :cond_1

    .line 1573
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->clearState(I)V

    .line 1568
    :cond_1
    return v2

    .line 1572
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 1573
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->clearState(I)V

    .line 1575
    :cond_2
    throw v2
.end method

.method private setOpensslEngineSocketFd(Lio/netty/channel/Channel;)V
    .locals 2
    .param p1, "c"    # Lio/netty/channel/Channel;

    .line 2244
    instance-of v0, p1, Lio/netty/channel/unix/UnixChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    instance-of v0, v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    if-eqz v0, :cond_0

    .line 2245
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    check-cast v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-object v1, p1

    check-cast v1, Lio/netty/channel/unix/UnixChannel;

    invoke-interface {v1}, Lio/netty/channel/unix/UnixChannel;->fd()Lio/netty/channel/unix/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->bioSetFd(I)V

    .line 2247
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 1
    .param p1, "bit"    # I

    .line 2376
    iget-short v0, p0, Lio/netty/handler/ssl/SslHandler;->state:S

    or-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lio/netty/handler/ssl/SslHandler;->state:S

    .line 2377
    return-void
.end method

.method private startHandshakeProcessing(Z)V
    .locals 2
    .param p1, "flushAtEnd"    # Z

    .line 2102
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->isStateSet(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2103
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->setState(I)V

    .line 2104
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2108
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->handshake(Z)V

    .line 2110
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->applyHandshakeTimeout()V

    goto :goto_0

    .line 2111
    :cond_1
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->isStateSet(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2112
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 2114
    :cond_2
    :goto_0
    return-void
.end method

.method private static toByteBuffer(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "out"    # Lio/netty/buffer/ByteBuf;
    .param p1, "index"    # I
    .param p2, "len"    # I

    .line 1606
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 1607
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1606
    :goto_0
    return-object v0
.end method

.method private unwrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;I)I
    .locals 18
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "packet"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1436
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 1437
    .local v4, "originalLength":I
    const/4 v0, 0x0

    .line 1438
    .local v0, "wrapLater":Z
    const/4 v5, 0x0

    .line 1439
    .local v5, "notifyClosure":Z
    const/4 v6, 0x0

    .line 1440
    .local v6, "executedRead":Z
    move/from16 v7, p3

    invoke-direct {v1, v2, v7}, Lio/netty/handler/ssl/SslHandler;->allocate(Lio/netty/channel/ChannelHandlerContext;I)Lio/netty/buffer/ByteBuf;

    move-result-object v8

    move-object v9, v8

    move v8, v6

    move v6, v5

    move v5, v0

    .line 1445
    .end local v0    # "wrapLater":Z
    .end local p3    # "length":I
    .local v5, "wrapLater":Z
    .local v6, "notifyClosure":Z
    .local v7, "length":I
    .local v8, "executedRead":Z
    .local v9, "decodeOut":Lio/netty/buffer/ByteBuf;
    :cond_0
    :try_start_0
    iget-object v0, v1, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    invoke-virtual {v0, v1, v3, v7, v9}, Lio/netty/handler/ssl/SslHandler$SslEngineType;->unwrap(Lio/netty/handler/ssl/SslHandler;Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 1446
    .local v0, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v11

    .line 1447
    .local v11, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v12

    .line 1448
    .local v12, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v13

    .line 1449
    .local v13, "produced":I
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v14

    .line 1454
    .local v14, "consumed":I
    invoke-virtual {v3, v14}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 1455
    sub-int/2addr v7, v14

    .line 1460
    sget-object v15, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v12, v15, :cond_1

    sget-object v15, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v12, v15, :cond_6

    .line 1461
    :cond_1
    invoke-virtual {v9}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1462
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccessUnwrapMarkReentry()Z

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccess()Z

    move-result v15

    if-nez v15, :cond_5

    :cond_3
    sget-object v15, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v12, v15, :cond_4

    goto :goto_0

    :cond_4
    const/4 v15, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v15, 0x1

    :goto_1
    or-int/2addr v5, v15

    .line 1469
    :cond_6
    invoke-virtual {v9}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1470
    const/16 v15, 0x100

    invoke-direct {v1, v15}, Lio/netty/handler/ssl/SslHandler;->setState(I)V

    .line 1471
    const/16 v15, 0x200

    invoke-direct {v1, v15}, Lio/netty/handler/ssl/SslHandler;->isStateSet(I)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1472
    const/4 v8, 0x1

    .line 1473
    invoke-direct {v1, v2, v9}, Lio/netty/handler/ssl/SslHandler;->executeChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    goto :goto_2

    .line 1475
    :cond_7
    invoke-interface {v2, v9}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 1477
    :goto_2
    const/4 v9, 0x0

    .line 1480
    :cond_8
    sget-object v15, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v11, v15, :cond_9

    .line 1481
    const/4 v6, 0x1

    move-object/from16 v17, v0

    goto :goto_4

    .line 1482
    :cond_9
    sget-object v15, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v11, v15, :cond_c

    .line 1483
    if-eqz v9, :cond_a

    .line 1484
    invoke-virtual {v9}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1486
    :cond_a
    iget-object v15, v1, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v15}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v15

    invoke-interface {v15}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v15

    .line 1491
    .local v15, "applicationBufferSize":I
    iget-object v10, v1, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    if-ge v15, v13, :cond_b

    move-object/from16 v17, v0

    move v0, v15

    goto :goto_3

    :cond_b
    sub-int v16, v15, v13

    move-object/from16 v17, v0

    move/from16 v0, v16

    .end local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    .local v17, "result":Ljavax/net/ssl/SSLEngineResult;
    :goto_3
    invoke-virtual {v10, v1, v0}, Lio/netty/handler/ssl/SslHandler$SslEngineType;->calculatePendingData(Lio/netty/handler/ssl/SslHandler;I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lio/netty/handler/ssl/SslHandler;->allocate(Lio/netty/channel/ChannelHandlerContext;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 1493
    .end local v9    # "decodeOut":Lio/netty/buffer/ByteBuf;
    .local v0, "decodeOut":Lio/netty/buffer/ByteBuf;
    move-object v9, v0

    goto :goto_6

    .line 1482
    .end local v15    # "applicationBufferSize":I
    .end local v17    # "result":Ljavax/net/ssl/SSLEngineResult;
    .local v0, "result":Ljavax/net/ssl/SSLEngineResult;
    .restart local v9    # "decodeOut":Lio/netty/buffer/ByteBuf;
    :cond_c
    move-object/from16 v17, v0

    .line 1496
    .end local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    .restart local v17    # "result":Ljavax/net/ssl/SSLEngineResult;
    :goto_4
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v12, v0, :cond_e

    .line 1497
    const/4 v0, 0x1

    invoke-direct {v1, v0}, Lio/netty/handler/ssl/SslHandler;->runDelegatedTasks(Z)Z

    move-result v10

    move v0, v10

    .line 1498
    .local v0, "pending":Z
    if-nez v0, :cond_d

    .line 1504
    const/4 v5, 0x0

    .line 1505
    goto :goto_8

    .line 1498
    .end local v0    # "pending":Z
    :cond_d
    goto :goto_5

    .line 1507
    :cond_e
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v12, v0, :cond_f

    .line 1511
    const/4 v0, 0x1

    invoke-direct {v1, v2, v0}, Lio/netty/handler/ssl/SslHandler;->wrapNonAppData(Lio/netty/channel/ChannelHandlerContext;Z)Z

    move-result v10

    if-eqz v10, :cond_10

    if-nez v7, :cond_10

    .line 1512
    goto :goto_8

    .line 1507
    :cond_f
    :goto_5
    nop

    .line 1516
    :cond_10
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v11, v0, :cond_14

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v12, v0, :cond_12

    if-nez v14, :cond_11

    if-eqz v13, :cond_14

    :cond_11
    if-nez v7, :cond_12

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v12, v0, :cond_12

    goto :goto_7

    .line 1527
    :cond_12
    if-nez v9, :cond_13

    .line 1528
    invoke-direct {v1, v2, v7}, Lio/netty/handler/ssl/SslHandler;->allocate(Lio/netty/channel/ChannelHandlerContext;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    move-object v9, v0

    .line 1530
    .end local v11    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    .end local v12    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v13    # "produced":I
    .end local v14    # "consumed":I
    .end local v17    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_13
    :goto_6
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_8

    .line 1520
    .restart local v11    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    .restart local v12    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v13    # "produced":I
    .restart local v14    # "consumed":I
    .restart local v17    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_14
    :goto_7
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v12, v0, :cond_15

    .line 1523
    invoke-direct/range {p0 .. p1}, Lio/netty/handler/ssl/SslHandler;->readIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 1532
    .end local v11    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    .end local v12    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v13    # "produced":I
    .end local v14    # "consumed":I
    .end local v17    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_15
    :goto_8
    const/4 v0, 0x2

    invoke-direct {v1, v0}, Lio/netty/handler/ssl/SslHandler;->isStateSet(I)Z

    move-result v10

    if-eqz v10, :cond_16

    iget-object v10, v1, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v10}, Lio/netty/util/concurrent/Promise;->isDone()Z

    move-result v10

    if-eqz v10, :cond_16

    .line 1537
    invoke-direct {v1, v0}, Lio/netty/handler/ssl/SslHandler;->clearState(I)V

    .line 1538
    const/4 v0, 0x1

    move v5, v0

    .line 1541
    :cond_16
    if-eqz v5, :cond_17

    .line 1542
    const/4 v0, 0x1

    invoke-direct {v1, v2, v0}, Lio/netty/handler/ssl/SslHandler;->wrap(Lio/netty/channel/ChannelHandlerContext;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1545
    :cond_17
    if-eqz v9, :cond_18

    .line 1546
    invoke-virtual {v9}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1549
    :cond_18
    if-eqz v6, :cond_1a

    .line 1550
    if-eqz v8, :cond_19

    .line 1551
    invoke-direct/range {p0 .. p1}, Lio/netty/handler/ssl/SslHandler;->executeNotifyClosePromise(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_9

    .line 1553
    :cond_19
    const/4 v10, 0x0

    invoke-direct {v1, v10}, Lio/netty/handler/ssl/SslHandler;->notifyClosePromise(Ljava/lang/Throwable;)V

    .line 1557
    :cond_1a
    :goto_9
    sub-int v0, v4, v7

    return v0

    .line 1545
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_1b

    .line 1546
    invoke-virtual {v9}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1549
    :cond_1b
    if-eqz v6, :cond_1d

    .line 1550
    if-eqz v8, :cond_1c

    .line 1551
    invoke-direct/range {p0 .. p1}, Lio/netty/handler/ssl/SslHandler;->executeNotifyClosePromise(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_a

    .line 1553
    :cond_1c
    const/4 v10, 0x0

    invoke-direct {v1, v10}, Lio/netty/handler/ssl/SslHandler;->notifyClosePromise(Ljava/lang/Throwable;)V

    .line 1556
    :cond_1d
    :goto_a
    throw v0
.end method

.method private unwrapNonAppData(Lio/netty/channel/ChannelHandlerContext;)I
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1429
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/ssl/SslHandler;->unwrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    return v0
.end method

.method private wrap(Lio/netty/buffer/ByteBufAllocator;Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;
    .locals 10
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p3, "in"    # Lio/netty/buffer/ByteBuf;
    .param p4, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1096
    const/4 v0, 0x0

    .line 1098
    .local v0, "newDirectIn":Lio/netty/buffer/ByteBuf;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    .line 1099
    .local v3, "readerIndex":I
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    .line 1104
    .local v4, "readableBytes":I
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    iget-boolean v5, v5, Lio/netty/handler/ssl/SslHandler$SslEngineType;->wantsDirectBuffer:Z

    if-nez v5, :cond_0

    goto :goto_0

    .line 1121
    :cond_0
    invoke-interface {p1, v4}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    move-object v0, v5

    .line 1122
    invoke-virtual {v0, p3, v3, v4}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 1123
    iget-object v5, p0, Lio/netty/handler/ssl/SslHandler;->singleBuffer:[Ljava/nio/ByteBuffer;

    .line 1124
    .local v5, "in0":[Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    invoke-virtual {v0, v6, v4}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v6

    aput-object v6, v5, v2

    goto :goto_1

    .line 1109
    .end local v5    # "in0":[Ljava/nio/ByteBuffer;
    :cond_1
    :goto_0
    instance-of v5, p3, Lio/netty/buffer/CompositeByteBuf;

    if-nez v5, :cond_2

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 1110
    iget-object v5, p0, Lio/netty/handler/ssl/SslHandler;->singleBuffer:[Ljava/nio/ByteBuffer;

    .line 1113
    .restart local v5    # "in0":[Ljava/nio/ByteBuffer;
    invoke-virtual {p3, v3, v4}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v6

    aput-object v6, v5, v2

    goto :goto_1

    .line 1115
    .end local v5    # "in0":[Ljava/nio/ByteBuffer;
    :cond_2
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->nioBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1130
    .restart local v5    # "in0":[Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v6

    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v7

    invoke-static {p4, v6, v7}, Lio/netty/handler/ssl/SslHandler;->toByteBuffer(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1131
    .local v6, "out0":Ljava/nio/ByteBuffer;
    invoke-virtual {p2, v5, v6}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v7

    .line 1132
    .local v7, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v8

    invoke-virtual {p3, v8}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 1133
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v8

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p4, v8}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 1135
    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v8

    sget-object v9, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v8, v9, :cond_3

    .line 1136
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v8

    invoke-interface {v8}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v8

    invoke-virtual {p4, v8}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1140
    .end local v6    # "out0":Ljava/nio/ByteBuffer;
    .end local v7    # "result":Ljavax/net/ssl/SSLEngineResult;
    goto :goto_1

    .line 1138
    .restart local v6    # "out0":Ljava/nio/ByteBuffer;
    .restart local v7    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_3
    nop

    .line 1143
    iget-object v8, p0, Lio/netty/handler/ssl/SslHandler;->singleBuffer:[Ljava/nio/ByteBuffer;

    aput-object v1, v8, v2

    .line 1145
    if-eqz v0, :cond_4

    .line 1146
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1138
    :cond_4
    return-object v7

    .line 1143
    .end local v3    # "readerIndex":I
    .end local v4    # "readableBytes":I
    .end local v5    # "in0":[Ljava/nio/ByteBuffer;
    .end local v6    # "out0":Ljava/nio/ByteBuffer;
    .end local v7    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lio/netty/handler/ssl/SslHandler;->singleBuffer:[Ljava/nio/ByteBuffer;

    aput-object v1, v4, v2

    .line 1145
    if-eqz v0, :cond_5

    .line 1146
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1148
    :cond_5
    throw v3
.end method

.method private wrap(Lio/netty/channel/ChannelHandlerContext;Z)V
    .locals 10
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "inUnwrap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 832
    const/4 v0, 0x0

    .line 833
    .local v0, "out":Lio/netty/buffer/ByteBuf;
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    .line 835
    .local v1, "alloc":Lio/netty/buffer/ByteBufAllocator;
    const/16 v2, 0x10

    :try_start_0
    iget v3, p0, Lio/netty/handler/ssl/SslHandler;->wrapDataSize:I

    .line 838
    .local v3, "wrapDataSize":I
    :goto_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_12

    .line 839
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v4

    .line 840
    .local v4, "promise":Lio/netty/channel/ChannelPromise;
    if-lez v3, :cond_0

    iget-object v5, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    .line 841
    invoke-virtual {v5, v1, v3, v4}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->remove(Lio/netty/buffer/ByteBufAllocator;ILio/netty/channel/ChannelPromise;)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    .line 842
    invoke-virtual {v5, v4}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->removeFirst(Lio/netty/channel/ChannelPromise;)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    :goto_1
    nop

    .line 843
    .local v5, "buf":Lio/netty/buffer/ByteBuf;
    if-nez v5, :cond_1

    .line 844
    goto/16 :goto_8

    .line 849
    :cond_1
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    const/16 v7, 0x4000

    if-le v6, v7, :cond_4

    .line 855
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    .line 856
    .local v6, "readableBytes":I
    div-int/lit16 v7, v6, 0x4000

    .line 857
    .local v7, "numPackets":I
    rem-int/lit16 v8, v6, 0x4000

    if-eqz v8, :cond_2

    .line 858
    add-int/lit8 v7, v7, 0x1

    .line 861
    :cond_2
    if-nez v0, :cond_3

    .line 862
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {p0, p1, v6, v8}, Lio/netty/handler/ssl/SslHandler;->allocateOutNetBuf(Lio/netty/channel/ChannelHandlerContext;II)Lio/netty/buffer/ByteBuf;

    move-result-object v8

    move-object v0, v8

    .line 864
    :cond_3
    iget-object v8, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-direct {p0, v1, v8, v5, v0}, Lio/netty/handler/ssl/SslHandler;->wrapMultiple(Lio/netty/buffer/ByteBufAllocator;Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v8

    move-object v6, v8

    .line 865
    .end local v7    # "numPackets":I
    .local v6, "result":Ljavax/net/ssl/SSLEngineResult;
    goto :goto_2

    .line 866
    .end local v6    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_4
    if-nez v0, :cond_5

    .line 867
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v7

    invoke-direct {p0, p1, v6, v7}, Lio/netty/handler/ssl/SslHandler;->allocateOutNetBuf(Lio/netty/channel/ChannelHandlerContext;II)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    move-object v0, v6

    .line 869
    :cond_5
    iget-object v6, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-direct {p0, v1, v6, v5, v0}, Lio/netty/handler/ssl/SslHandler;->wrap(Lio/netty/buffer/ByteBufAllocator;Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v6

    .line 872
    .restart local v6    # "result":Ljavax/net/ssl/SSLEngineResult;
    :goto_2
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 873
    iget-object v7, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v7, v5, v4}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->addFirst(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)V

    .line 876
    const/4 v4, 0x0

    goto :goto_3

    .line 878
    :cond_6
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 883
    :goto_3
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 884
    move-object v7, v0

    .line 885
    .local v7, "b":Lio/netty/buffer/ByteBuf;
    const/4 v0, 0x0

    .line 886
    if-eqz v4, :cond_7

    .line 887
    invoke-interface {p1, v7, v4}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_4

    .line 889
    :cond_7
    invoke-interface {p1, v7}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 891
    .end local v7    # "b":Lio/netty/buffer/ByteBuf;
    :cond_8
    :goto_4
    goto :goto_5

    :cond_9
    if-eqz v4, :cond_8

    .line 892
    sget-object v7, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-interface {p1, v7, v4}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 896
    :goto_5
    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    sget-object v8, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v7, v8, :cond_e

    .line 899
    iget-object v7, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v7}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    .line 902
    iget-object v7, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v7}, Lio/netty/util/concurrent/Promise;->cause()Ljava/lang/Throwable;

    move-result-object v7

    .line 903
    .local v7, "exception":Ljava/lang/Throwable;
    if-nez v7, :cond_a

    .line 904
    iget-object v8, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    invoke-virtual {v8}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->cause()Ljava/lang/Throwable;

    move-result-object v8

    move-object v7, v8

    .line 905
    if-nez v7, :cond_a

    .line 906
    new-instance v8, Lio/netty/handler/ssl/SslClosedEngineException;

    const-string v9, "SSLEngine closed already"

    invoke-direct {v8, v9}, Lio/netty/handler/ssl/SslClosedEngineException;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    .line 909
    :cond_a
    iget-object v8, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v8, p1, v7}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->releaseAndFailAll(Lio/netty/channel/ChannelOutboundInvoker;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    .end local v7    # "exception":Ljava/lang/Throwable;
    :cond_b
    if-eqz v0, :cond_c

    .line 948
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 950
    :cond_c
    if-eqz p2, :cond_d

    .line 951
    invoke-direct {p0, v2}, Lio/netty/handler/ssl/SslHandler;->setState(I)V

    .line 912
    :cond_d
    return-void

    .line 914
    :cond_e
    :try_start_1
    sget-object v7, Lio/netty/handler/ssl/SslHandler$11;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 941
    new-instance v7, Ljava/lang/IllegalStateException;

    goto :goto_7

    .line 938
    :pswitch_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->readIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 947
    if-eqz v0, :cond_f

    .line 948
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 950
    :cond_f
    if-eqz p2, :cond_10

    .line 951
    invoke-direct {p0, v2}, Lio/netty/handler/ssl/SslHandler;->setState(I)V

    .line 939
    :cond_10
    return-void

    .line 931
    :pswitch_1
    :try_start_2
    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v7

    if-lez v7, :cond_11

    iget-object v7, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v7}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 932
    iget-object v7, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    sget-object v8, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v7, v8}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->add(Lio/netty/buffer/ByteBuf;)V

    goto :goto_6

    .line 924
    :pswitch_2
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccess()Z

    .line 925
    goto :goto_6

    .line 916
    :pswitch_3
    invoke-direct {p0, p2}, Lio/netty/handler/ssl/SslHandler;->runDelegatedTasks(Z)Z

    move-result v7

    if-nez v7, :cond_11

    .line 919
    goto :goto_8

    .line 945
    .end local v4    # "promise":Lio/netty/channel/ChannelPromise;
    .end local v5    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v6    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_11
    :goto_6
    goto/16 :goto_0

    .line 941
    .restart local v4    # "promise":Lio/netty/channel/ChannelPromise;
    .restart local v5    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local v6    # "result":Ljavax/net/ssl/SSLEngineResult;
    :goto_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown handshake status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 942
    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "out":Lio/netty/buffer/ByteBuf;
    .end local v1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "inUnwrap":Z
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 947
    .end local v3    # "wrapDataSize":I
    .end local v4    # "promise":Lio/netty/channel/ChannelPromise;
    .end local v5    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v6    # "result":Ljavax/net/ssl/SSLEngineResult;
    .restart local v0    # "out":Lio/netty/buffer/ByteBuf;
    .restart local v1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "inUnwrap":Z
    :cond_12
    :goto_8
    if-eqz v0, :cond_13

    .line 948
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 950
    :cond_13
    if-eqz p2, :cond_14

    .line 951
    invoke-direct {p0, v2}, Lio/netty/handler/ssl/SslHandler;->setState(I)V

    .line 954
    :cond_14
    return-void

    .line 947
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_15

    .line 948
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 950
    :cond_15
    if-eqz p2, :cond_16

    .line 951
    invoke-direct {p0, v2}, Lio/netty/handler/ssl/SslHandler;->setState(I)V

    .line 953
    :cond_16
    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private wrapAndFlush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 811
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->add(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)V

    .line 818
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Lio/netty/util/concurrent/Promise;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 819
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->setState(I)V

    .line 822
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslHandler;->wrap(Lio/netty/channel/ChannelHandlerContext;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 827
    nop

    .line 828
    return-void

    .line 826
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 827
    throw v0
.end method

.method private wrapMultiple(Lio/netty/buffer/ByteBufAllocator;Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;
    .locals 6
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p3, "in"    # Lio/netty/buffer/ByteBuf;
    .param p4, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1056
    const/4 v0, 0x0

    .line 1059
    .local v0, "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_0
    const/16 v1, 0x4000

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1062
    .local v1, "nextSliceSize":I
    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v3

    invoke-virtual {v2, p0, v1, v3}, Lio/netty/handler/ssl/SslHandler$SslEngineType;->calculateRequiredOutBufSpace(Lio/netty/handler/ssl/SslHandler;II)I

    move-result v2

    .line 1064
    .local v2, "nextOutSize":I
    invoke-virtual {p4, v2}, Lio/netty/buffer/ByteBuf;->isWritable(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1065
    if-eqz v0, :cond_1

    .line 1068
    goto :goto_0

    .line 1072
    :cond_1
    invoke-virtual {p4, v2}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 1075
    :cond_2
    invoke-virtual {p3, v1}, Lio/netty/buffer/ByteBuf;->readSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 1076
    .local v3, "wrapBuf":Lio/netty/buffer/ByteBuf;
    invoke-direct {p0, p1, p2, v3, p4}, Lio/netty/handler/ssl/SslHandler;->wrap(Lio/netty/buffer/ByteBufAllocator;Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 1078
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v4, v5, :cond_3

    .line 1081
    goto :goto_0

    .line 1084
    :cond_3
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1087
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p3, v4}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 1089
    .end local v1    # "nextSliceSize":I
    .end local v2    # "nextOutSize":I
    .end local v3    # "wrapBuf":Lio/netty/buffer/ByteBuf;
    :cond_4
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1091
    :goto_0
    return-object v0
.end method

.method private wrapNonAppData(Lio/netty/channel/ChannelHandlerContext;Z)Z
    .locals 8
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "inUnwrap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 963
    const/4 v0, 0x0

    .line 964
    .local v0, "out":Lio/netty/buffer/ByteBuf;
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    .line 968
    .local v1, "alloc":Lio/netty/buffer/ByteBufAllocator;
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_d

    .line 969
    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 973
    const/16 v4, 0x800

    invoke-direct {p0, p1, v4, v2}, Lio/netty/handler/ssl/SslHandler;->allocateOutNetBuf(Lio/netty/channel/ChannelHandlerContext;II)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    move-object v0, v4

    .line 975
    :cond_0
    iget-object v4, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    sget-object v5, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, v1, v4, v5, v0}, Lio/netty/handler/ssl/SslHandler;->wrap(Lio/netty/buffer/ByteBufAllocator;Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    .line 976
    .local v4, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v5

    if-lez v5, :cond_2

    .line 977
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v5

    new-instance v6, Lio/netty/handler/ssl/SslHandler$2;

    invoke-direct {v6, p0, p1}, Lio/netty/handler/ssl/SslHandler$2;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v5, v6}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 986
    if-eqz p2, :cond_1

    .line 987
    const/16 v5, 0x10

    invoke-direct {p0, v5}, Lio/netty/handler/ssl/SslHandler;->setState(I)V

    .line 989
    :cond_1
    const/4 v0, 0x0

    .line 992
    :cond_2
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    .line 993
    .local v5, "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v6, Lio/netty/handler/ssl/SslHandler$11;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1031
    new-instance v2, Ljava/lang/IllegalStateException;

    goto/16 :goto_2

    .line 1011
    :pswitch_0
    if-nez p2, :cond_3

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->unwrapNonAppData(Lio/netty/channel/ChannelHandlerContext;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v2, :cond_a

    .line 1015
    :cond_3
    nop

    .line 1047
    if-eqz v0, :cond_4

    .line 1048
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1015
    :cond_4
    return v3

    .line 1019
    :pswitch_1
    goto :goto_1

    .line 1021
    :pswitch_2
    :try_start_1
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccess()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p2, :cond_5

    iget-object v3, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v3}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1022
    invoke-direct {p0, p1, v2}, Lio/netty/handler/ssl/SslHandler;->wrap(Lio/netty/channel/ChannelHandlerContext;Z)V

    .line 1026
    :cond_5
    if-nez p2, :cond_6

    .line 1027
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->unwrapNonAppData(Lio/netty/channel/ChannelHandlerContext;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1029
    :cond_6
    nop

    .line 1047
    if-eqz v0, :cond_7

    .line 1048
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1029
    :cond_7
    return v2

    .line 999
    :pswitch_3
    :try_start_2
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccess()Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz p2, :cond_8

    iget-object v6, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v6}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1000
    invoke-direct {p0, p1, v2}, Lio/netty/handler/ssl/SslHandler;->wrap(Lio/netty/channel/ChannelHandlerContext;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1002
    :cond_8
    nop

    .line 1047
    if-eqz v0, :cond_9

    .line 1048
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1002
    :cond_9
    return v3

    .line 1004
    :pswitch_4
    :try_start_3
    invoke-direct {p0, p2}, Lio/netty/handler/ssl/SslHandler;->runDelegatedTasks(Z)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1007
    goto :goto_3

    .line 1036
    :cond_a
    :goto_1
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v5, v2, :cond_b

    .line 1037
    goto :goto_3

    .line 1042
    :cond_b
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v2, v6, :cond_c

    .line 1043
    goto :goto_3

    .line 1045
    .end local v4    # "result":Ljavax/net/ssl/SSLEngineResult;
    .end local v5    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_c
    goto/16 :goto_0

    .line 1031
    .restart local v4    # "result":Ljavax/net/ssl/SSLEngineResult;
    .restart local v5    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown handshake status: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "out":Lio/netty/buffer/ByteBuf;
    .end local v1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "inUnwrap":Z
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1047
    .end local v4    # "result":Ljavax/net/ssl/SSLEngineResult;
    .end local v5    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v0    # "out":Lio/netty/buffer/ByteBuf;
    .restart local v1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "inUnwrap":Z
    :cond_d
    :goto_3
    if-eqz v0, :cond_e

    .line 1048
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1051
    :cond_e
    return v3

    .line 1047
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_f

    .line 1048
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1050
    :cond_f
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public applicationProtocol()Ljava/lang/String;
    .locals 2

    .line 609
    invoke-virtual {p0}, Lio/netty/handler/ssl/SslHandler;->engine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 610
    .local v0, "engine":Ljavax/net/ssl/SSLEngine;
    instance-of v1, v0, Lio/netty/handler/ssl/ApplicationProtocolAccessor;

    if-nez v1, :cond_0

    .line 611
    const/4 v1, 0x0

    return-object v1

    .line 614
    :cond_0
    move-object v1, v0

    check-cast v1, Lio/netty/handler/ssl/ApplicationProtocolAccessor;

    invoke-interface {v1}, Lio/netty/handler/ssl/ApplicationProtocolAccessor;->getNegotiatedApplicationProtocol()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

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

    .line 731
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 732
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

    .line 2254
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->setOpensslEngineSocketFd(Lio/netty/channel/Channel;)V

    .line 2255
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->startTls:Z

    if-nez v0, :cond_0

    .line 2256
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->startHandshakeProcessing(Z)V

    .line 2258
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    .line 2259
    return-void
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1153
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Lio/netty/util/concurrent/Promise;->cause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1156
    .local v0, "handshakeFailed":Z
    :goto_0
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 1159
    .local v2, "exception":Ljava/nio/channels/ClosedChannelException;
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lio/netty/handler/ssl/SslHandler;->isStateSet(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v4}, Lio/netty/util/concurrent/Promise;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1160
    const-class v4, Lio/netty/handler/ssl/SslHandler;

    const-string v5, "channelInactive"

    const-string v6, "Connection closed while SSL/TLS handshake was in progress"

    invoke-static {v6, v4, v5}, Lio/netty/handler/ssl/StacklessSSLHandshakeException;->newInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/ssl/StacklessSSLHandshakeException;

    move-result-object v4

    invoke-static {v2, v4}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 1167
    :cond_1
    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lio/netty/handler/ssl/SslHandler;->isStateSet(I)Z

    move-result v4

    xor-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v3}, Lio/netty/handler/ssl/SslHandler;->isStateSet(I)Z

    move-result v7

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v3 .. v8}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;ZZZ)V

    .line 1171
    invoke-direct {p0, v2}, Lio/netty/handler/ssl/SslHandler;->notifyClosePromise(Ljava/lang/Throwable;)V

    .line 1174
    :try_start_0
    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    goto :goto_1

    .line 1175
    :catch_0
    move-exception v1

    .line 1176
    .local v1, "e":Lio/netty/handler/codec/DecoderException;
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lio/netty/handler/codec/DecoderException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljavax/net/ssl/SSLException;

    if-eqz v3, :cond_2

    .line 1185
    .end local v1    # "e":Lio/netty/handler/codec/DecoderException;
    :goto_1
    return-void

    .line 1182
    .restart local v1    # "e":Lio/netty/handler/codec/DecoderException;
    :cond_2
    throw v1
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1395
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->channelReadComplete0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 1396
    return-void
.end method

.method public close()Lio/netty/channel/ChannelFuture;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 632
    invoke-virtual {p0}, Lio/netty/handler/ssl/SslHandler;->closeOutbound()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 640
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/SslHandler;->closeOutbound(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 754
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/ssl/SslHandler;->closeOutboundAndChannel(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;Z)V

    .line 755
    return-void
.end method

.method public closeOutbound()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 650
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/SslHandler;->closeOutbound(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public closeOutbound(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 3
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 660
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 661
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->closeOutbound0(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 664
    :cond_0
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    new-instance v2, Lio/netty/handler/ssl/SslHandler$1;

    invoke-direct {v2, p0, p1}, Lio/netty/handler/ssl/SslHandler$1;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 671
    :goto_0
    return-object p1
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

    .line 737
    invoke-interface {p1, p2, p3, p4}, Lio/netty/channel/ChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 738
    return-void
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
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1383
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->isStateSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    return-void

    .line 1386
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->jdkCompatibilityMode:Z

    if-eqz v0, :cond_1

    .line 1387
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->decodeJdkCompatible(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    goto :goto_0

    .line 1389
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->decodeNonJdkCompatible(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    .line 1391
    :goto_0
    return-void
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

    .line 742
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 743
    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 748
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/ssl/SslHandler;->closeOutboundAndChannel(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;Z)V

    .line 749
    return-void
.end method

.method public engine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .line 600
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1189
    invoke-direct {p0, p2}, Lio/netty/handler/ssl/SslHandler;->ignoreException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1192
    sget-object v0, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    sget-object v0, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 1195
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    .line 1193
    const-string v2, "{} Swallowing a harmless \'connection reset by peer / broken pipe\' error that occurred while writing close_notify in response to the peer\'s close_notify"

    invoke-interface {v0, v2, v1, p2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1200
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1201
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 1204
    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 1206
    :cond_2
    :goto_0
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 788
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->startTls:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->isStateSet(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 789
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->setState(I)V

    .line 790
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v1, p1}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->writeAndRemoveAll(Lio/netty/channel/ChannelHandlerContext;)V

    .line 791
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 794
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->startHandshakeProcessing(Z)V

    .line 795
    return-void

    .line 798
    :cond_0
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->isStateSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    return-void

    .line 803
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->wrapAndFlush(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    goto :goto_0

    .line 804
    :catchall_0
    move-exception v0

    .line 805
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 806
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 808
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final getCloseNotifyFlushTimeoutMillis()J
    .locals 2

    .line 550
    iget-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyFlushTimeoutMillis:J

    return-wide v0
.end method

.method public final getCloseNotifyReadTimeoutMillis()J
    .locals 2

    .line 576
    iget-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyReadTimeoutMillis:J

    return-wide v0
.end method

.method public getCloseNotifyTimeoutMillis()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 525
    invoke-virtual {p0}, Lio/netty/handler/ssl/SslHandler;->getCloseNotifyFlushTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHandshakeTimeoutMillis()J
    .locals 2

    .line 483
    iget-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakeTimeoutMillis:J

    return-wide v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 10
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2079
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 2080
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 2081
    .local v0, "channel":Lio/netty/channel/Channel;
    new-instance v1, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v0, v2}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/Channel;I)V

    iput-object v1, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    .line 2083
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->setOpensslEngineSocketFd(Lio/netty/channel/Channel;)V

    .line 2084
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v3

    sget-object v4, Lio/netty/channel/ChannelOption;->TCP_FASTOPEN_CONNECT:Lio/netty/channel/ChannelOption;

    invoke-interface {v3, v4}, Lio/netty/channel/ChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2085
    .local v1, "fastOpen":Z
    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v3

    .line 2086
    .local v3, "active":Z
    if-nez v3, :cond_0

    if-eqz v1, :cond_2

    .line 2090
    :cond_0
    invoke-direct {p0, v3}, Lio/netty/handler/ssl/SslHandler;->startHandshakeProcessing(Z)V

    .line 2094
    if-eqz v1, :cond_2

    invoke-interface {v0}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/Channel$Unsafe;->outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;

    move-result-object v4

    move-object v5, v4

    .local v5, "outboundBuffer":Lio/netty/channel/ChannelOutboundBuffer;
    if-eqz v4, :cond_1

    .line 2095
    invoke-virtual {v5}, Lio/netty/channel/ChannelOutboundBuffer;->totalPendingWriteBytes()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_2

    .line 2096
    :cond_1
    invoke-direct {p0, v2}, Lio/netty/handler/ssl/SslHandler;->setState(I)V

    .line 2099
    .end local v5    # "outboundBuffer":Lio/netty/channel/ChannelOutboundBuffer;
    :cond_2
    return-void
.end method

.method public handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 700
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "Pending write on removal of SslHandler"

    invoke-direct {v1, v2}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->releaseAndFailAll(Lio/netty/channel/ChannelOutboundInvoker;Ljava/lang/Throwable;)V

    .line 705
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    .line 707
    const/4 v0, 0x0

    .line 712
    .local v0, "cause":Ljavax/net/ssl/SSLException;
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v1}, Lio/netty/util/concurrent/Promise;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 713
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "SslHandler removed before handshake completed"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 714
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v1, v0}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 715
    new-instance v1, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    invoke-direct {v1, v0}, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 718
    :cond_1
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    invoke-virtual {v1}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->isDone()Z

    move-result v1

    if-nez v1, :cond_3

    .line 719
    if-nez v0, :cond_2

    .line 720
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "SslHandler removed before SSLEngine was closed"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 722
    :cond_2
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->notifyClosePromise(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    .end local v0    # "cause":Ljavax/net/ssl/SSLException;
    :cond_3
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 726
    nop

    .line 727
    return-void

    .line 725
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 726
    throw v0
.end method

.method public handshakeFuture()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    return-object v0
.end method

.method public read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 759
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Lio/netty/util/concurrent/Promise;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->setState(I)V

    .line 763
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 764
    return-void
.end method

.method public renegotiate()Lio/netty/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    .line 2120
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 2121
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    if-eqz v0, :cond_0

    .line 2125
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/netty/handler/ssl/SslHandler;->renegotiate(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    return-object v1

    .line 2122
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public renegotiate(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    .line 2132
    .local p1, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/channel/Channel;>;"
    const-string v0, "promise"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2134
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 2135
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    if-eqz v0, :cond_1

    .line 2139
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 2140
    .local v1, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2141
    new-instance v2, Lio/netty/handler/ssl/SslHandler$6;

    invoke-direct {v2, p0, p1}, Lio/netty/handler/ssl/SslHandler$6;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2147
    return-object p1

    .line 2150
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->renegotiateOnEventLoop(Lio/netty/util/concurrent/Promise;)V

    .line 2151
    return-object p1

    .line 2136
    .end local v1    # "executor":Lio/netty/util/concurrent/EventExecutor;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public final setCloseNotifyFlushTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "closeNotifyFlushTimeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 559
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/ssl/SslHandler;->setCloseNotifyFlushTimeoutMillis(J)V

    .line 560
    return-void
.end method

.method public final setCloseNotifyFlushTimeoutMillis(J)V
    .locals 2
    .param p1, "closeNotifyFlushTimeoutMillis"    # J

    .line 566
    const-string v0, "closeNotifyFlushTimeoutMillis"

    invoke-static {p1, p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyFlushTimeoutMillis:J

    .line 568
    return-void
.end method

.method public final setCloseNotifyReadTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "closeNotifyReadTimeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 585
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/ssl/SslHandler;->setCloseNotifyReadTimeoutMillis(J)V

    .line 586
    return-void
.end method

.method public final setCloseNotifyReadTimeoutMillis(J)V
    .locals 2
    .param p1, "closeNotifyReadTimeoutMillis"    # J

    .line 592
    const-string v0, "closeNotifyReadTimeoutMillis"

    invoke-static {p1, p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyReadTimeoutMillis:J

    .line 594
    return-void
.end method

.method public setCloseNotifyTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p1, "closeNotifyTimeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 533
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/ssl/SslHandler;->setCloseNotifyFlushTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 534
    return-void
.end method

.method public setCloseNotifyTimeoutMillis(J)V
    .locals 0
    .param p1, "closeNotifyFlushTimeoutMillis"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 541
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->setCloseNotifyFlushTimeoutMillis(J)V

    .line 542
    return-void
.end method

.method public setHandshakeTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "handshakeTimeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 487
    const-string v0, "unit"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 488
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/ssl/SslHandler;->setHandshakeTimeoutMillis(J)V

    .line 489
    return-void
.end method

.method public setHandshakeTimeoutMillis(J)V
    .locals 2
    .param p1, "handshakeTimeoutMillis"    # J

    .line 492
    const-string v0, "handshakeTimeoutMillis"

    invoke-static {p1, p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakeTimeoutMillis:J

    .line 493
    return-void
.end method

.method public final setWrapDataSize(I)V
    .locals 0
    .param p1, "wrapDataSize"    # I

    .line 517
    iput p1, p0, Lio/netty/handler/ssl/SslHandler;->wrapDataSize:I

    .line 518
    return-void
.end method

.method public sslCloseFuture()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    return-object v0
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 772
    instance-of v0, p2, Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_0

    .line 773
    new-instance v0, Lio/netty/handler/codec/UnsupportedMessageTypeException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lio/netty/buffer/ByteBuf;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, p2, v1}, Lio/netty/handler/codec/UnsupportedMessageTypeException;-><init>(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 774
    .local v0, "exception":Lio/netty/handler/codec/UnsupportedMessageTypeException;
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 775
    invoke-interface {p3, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 776
    .end local v0    # "exception":Lio/netty/handler/codec/UnsupportedMessageTypeException;
    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    if-nez v0, :cond_1

    .line 777
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 778
    invoke-static {}, Lio/netty/handler/ssl/SslHandler;->newPendingWritesNullException()Ljava/lang/IllegalStateException;

    move-result-object v0

    invoke-interface {p3, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 780
    :cond_1
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    move-object v1, p2

    check-cast v1, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, v1, p3}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->add(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)V

    .line 782
    :goto_0
    return-void
.end method
