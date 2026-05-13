.class abstract Lio/netty/channel/AbstractChannelHandlerContext;
.super Ljava/lang/Object;
.source "AbstractChannelHandlerContext.java"

# interfaces
.implements Lio/netty/channel/ChannelHandlerContext;
.implements Lio/netty/util/ResourceLeakHint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/AbstractChannelHandlerContext$Tasks;,
        Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ADD_COMPLETE:I = 0x2

.field private static final ADD_PENDING:I = 0x1

.field private static final HANDLER_STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/netty/channel/AbstractChannelHandlerContext;",
            ">;"
        }
    .end annotation
.end field

.field private static final INIT:I = 0x0

.field private static final REMOVE_COMPLETE:I = 0x3

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final executionMask:I

.field final executor:Lio/netty/util/concurrent/EventExecutor;

.field private volatile handlerState:I

.field private invokeTasks:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

.field private final name:Ljava/lang/String;

.field volatile next:Lio/netty/channel/AbstractChannelHandlerContext;

.field private final ordered:Z

.field private final pipeline:Lio/netty/channel/DefaultChannelPipeline;

.field volatile prev:Lio/netty/channel/AbstractChannelHandlerContext;

.field private succeededFuture:Lio/netty/channel/ChannelFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    nop

    .line 63
    const-class v0, Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/channel/AbstractChannelHandlerContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 67
    nop

    .line 68
    const-string v1, "handlerState"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/channel/AbstractChannelHandlerContext;->HANDLER_STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 67
    return-void
.end method

.method constructor <init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/util/concurrent/EventExecutor;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p1, "pipeline"    # Lio/netty/channel/DefaultChannelPipeline;
    .param p2, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/DefaultChannelPipeline;",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lio/netty/channel/ChannelHandler;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p4, "handlerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/netty/channel/ChannelHandler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->handlerState:I

    .line 106
    const-string v1, "name"

    invoke-static {p3, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->name:Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    .line 108
    iput-object p2, p0, Lio/netty/channel/AbstractChannelHandlerContext;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 109
    invoke-static {p4}, Lio/netty/channel/ChannelHandlerMask;->mask(Ljava/lang/Class;)I

    move-result v1

    iput v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->executionMask:I

    .line 111
    if-eqz p2, :cond_0

    instance-of v1, p2, Lio/netty/util/concurrent/OrderedEventExecutor;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->ordered:Z

    .line 112
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 61
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRegistered()V

    return-void
.end method

.method static synthetic access$100(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 61
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelUnregistered()V

    return-void
.end method

.method static synthetic access$1000(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "x1"    # Ljava/net/SocketAddress;
    .param p2, "x2"    # Ljava/net/SocketAddress;
    .param p3, "x3"    # Lio/netty/channel/ChannelPromise;

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$1100(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 61
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeDisconnect(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$1200(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 61
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeClose(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$1300(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 61
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeDeregister(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$1700(Lio/netty/channel/AbstractChannelHandlerContext;)Lio/netty/channel/DefaultChannelPipeline;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 61
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    return-object v0
.end method

.method static synthetic access$1900(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 61
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelReadComplete()V

    return-void
.end method

.method static synthetic access$200(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 61
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelActive()V

    return-void
.end method

.method static synthetic access$2000(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 61
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeRead()V

    return-void
.end method

.method static synthetic access$2100(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 61
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelWritabilityChanged()V

    return-void
.end method

.method static synthetic access$2200(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 61
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeFlush()V

    return-void
.end method

.method static synthetic access$300(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 61
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelInactive()V

    return-void
.end method

.method static synthetic access$400(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 61
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 61
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeUserEventTriggered(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 61
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRead(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "x1"    # Ljava/net/SocketAddress;
    .param p2, "x2"    # Lio/netty/channel/ChannelPromise;

    .line 61
    invoke-direct {p0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeBind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method private findContextInbound(I)Lio/netty/channel/AbstractChannelHandlerContext;
    .locals 3
    .param p1, "mask"    # I

    .line 1053
    move-object v0, p0

    .line 1054
    .local v0, "ctx":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 1056
    .local v1, "currentExecutor":Lio/netty/util/concurrent/EventExecutor;
    :cond_0
    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 1057
    const/16 v2, 0x1fe

    invoke-static {v0, v1, p1, v2}, Lio/netty/channel/AbstractChannelHandlerContext;->skipContext(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/util/concurrent/EventExecutor;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1058
    return-object v0
.end method

.method private findContextOutbound(I)Lio/netty/channel/AbstractChannelHandlerContext;
    .locals 3
    .param p1, "mask"    # I

    .line 1062
    move-object v0, p0

    .line 1063
    .local v0, "ctx":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 1065
    .local v1, "currentExecutor":Lio/netty/util/concurrent/EventExecutor;
    :cond_0
    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 1066
    const v2, 0x1fe00

    invoke-static {v0, v1, p1, v2}, Lio/netty/channel/AbstractChannelHandlerContext;->skipContext(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/util/concurrent/EventExecutor;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1067
    return-object v0
.end method

.method private invokeBind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 592
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    .line 598
    .local v0, "handler":Lio/netty/channel/ChannelHandler;
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v1, v1, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/DefaultChannelPipeline$HeadContext;

    .line 599
    .local v1, "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    if-ne v0, v1, :cond_0

    .line 600
    invoke-virtual {v1, p0, p1, p2}, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 601
    :cond_0
    instance-of v2, v0, Lio/netty/channel/ChannelDuplexHandler;

    if-eqz v2, :cond_1

    .line 602
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelDuplexHandler;

    invoke-virtual {v2, p0, p1, p2}, Lio/netty/channel/ChannelDuplexHandler;->bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 604
    :cond_1
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v2, p0, p1, p2}, Lio/netty/channel/ChannelOutboundHandler;->bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 606
    .end local v0    # "handler":Lio/netty/channel/ChannelHandler;
    .end local v1    # "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    :catchall_0
    move-exception v0

    .line 607
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    .line 608
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 610
    :cond_2
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 612
    :goto_1
    return-void
.end method

.method private invokeChannelActive()V
    .locals 3

    .line 250
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    .line 256
    .local v0, "handler":Lio/netty/channel/ChannelHandler;
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v1, v1, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/DefaultChannelPipeline$HeadContext;

    .line 257
    .local v1, "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    if-ne v0, v1, :cond_0

    .line 258
    invoke-virtual {v1, p0}, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 259
    :cond_0
    instance-of v2, v0, Lio/netty/channel/ChannelDuplexHandler;

    if-eqz v2, :cond_1

    .line 260
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelDuplexHandler;

    invoke-virtual {v2, p0}, Lio/netty/channel/ChannelDuplexHandler;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 262
    :cond_1
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v2, p0}, Lio/netty/channel/ChannelInboundHandler;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 264
    .end local v0    # "handler":Lio/netty/channel/ChannelHandler;
    .end local v1    # "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    :catchall_0
    move-exception v0

    .line 265
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    .line 266
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 268
    :cond_2
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    .line 270
    :goto_1
    return-void
.end method

.method static invokeChannelActive(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 2
    .param p0, "next"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 236
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 237
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelActive()V

    goto :goto_0

    .line 240
    :cond_0
    new-instance v1, Lio/netty/channel/AbstractChannelHandlerContext$3;

    invoke-direct {v1, p0}, Lio/netty/channel/AbstractChannelHandlerContext$3;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 247
    :goto_0
    return-void
.end method

.method private invokeChannelInactive()V
    .locals 3

    .line 293
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    .line 299
    .local v0, "handler":Lio/netty/channel/ChannelHandler;
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v1, v1, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/DefaultChannelPipeline$HeadContext;

    .line 300
    .local v1, "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    if-ne v0, v1, :cond_0

    .line 301
    invoke-virtual {v1, p0}, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 302
    :cond_0
    instance-of v2, v0, Lio/netty/channel/ChannelDuplexHandler;

    if-eqz v2, :cond_1

    .line 303
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelDuplexHandler;

    invoke-virtual {v2, p0}, Lio/netty/channel/ChannelDuplexHandler;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 305
    :cond_1
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v2, p0}, Lio/netty/channel/ChannelInboundHandler;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 307
    .end local v0    # "handler":Lio/netty/channel/ChannelHandler;
    .end local v1    # "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    :catchall_0
    move-exception v0

    .line 308
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    .line 309
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 311
    :cond_2
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    .line 313
    :goto_1
    return-void
.end method

.method static invokeChannelInactive(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 2
    .param p0, "next"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 279
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 280
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelInactive()V

    goto :goto_0

    .line 283
    :cond_0
    new-instance v1, Lio/netty/channel/AbstractChannelHandlerContext$4;

    invoke-direct {v1, p0}, Lio/netty/channel/AbstractChannelHandlerContext$4;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 290
    :goto_0
    return-void
.end method

.method static invokeChannelRead(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3
    .param p0, "next"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "msg"    # Ljava/lang/Object;

    .line 417
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    const-string v1, "msg"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lio/netty/channel/DefaultChannelPipeline;->touch(Ljava/lang/Object;Lio/netty/channel/AbstractChannelHandlerContext;)Ljava/lang/Object;

    move-result-object v0

    .line 418
    .local v0, "m":Ljava/lang/Object;
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 419
    .local v1, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRead(Ljava/lang/Object;)V

    goto :goto_0

    .line 422
    :cond_0
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$7;

    invoke-direct {v2, p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext$7;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 429
    :goto_0
    return-void
.end method

.method private invokeChannelRead(Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/Object;

    .line 432
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    .line 438
    .local v0, "handler":Lio/netty/channel/ChannelHandler;
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v1, v1, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/DefaultChannelPipeline$HeadContext;

    .line 439
    .local v1, "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    if-ne v0, v1, :cond_0

    .line 440
    invoke-virtual {v1, p0, p1}, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    goto :goto_0

    .line 441
    :cond_0
    instance-of v2, v0, Lio/netty/channel/ChannelDuplexHandler;

    if-eqz v2, :cond_1

    .line 442
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelDuplexHandler;

    invoke-virtual {v2, p0, p1}, Lio/netty/channel/ChannelDuplexHandler;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    goto :goto_0

    .line 444
    :cond_1
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v2, p0, p1}, Lio/netty/channel/ChannelInboundHandler;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 446
    .end local v0    # "handler":Lio/netty/channel/ChannelHandler;
    .end local v1    # "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    :catchall_0
    move-exception v0

    .line 447
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    .line 448
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 450
    :cond_2
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 452
    :goto_1
    return-void
.end method

.method private invokeChannelReadComplete()V
    .locals 3

    .line 474
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    .line 480
    .local v0, "handler":Lio/netty/channel/ChannelHandler;
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v1, v1, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/DefaultChannelPipeline$HeadContext;

    .line 481
    .local v1, "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    if-ne v0, v1, :cond_0

    .line 482
    invoke-virtual {v1, p0}, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 483
    :cond_0
    instance-of v2, v0, Lio/netty/channel/ChannelDuplexHandler;

    if-eqz v2, :cond_1

    .line 484
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelDuplexHandler;

    invoke-virtual {v2, p0}, Lio/netty/channel/ChannelDuplexHandler;->channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 486
    :cond_1
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v2, p0}, Lio/netty/channel/ChannelInboundHandler;->channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 488
    .end local v0    # "handler":Lio/netty/channel/ChannelHandler;
    .end local v1    # "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    :catchall_0
    move-exception v0

    .line 489
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    .line 490
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 492
    :cond_2
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 494
    :goto_1
    return-void
.end method

.method static invokeChannelReadComplete(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 3
    .param p0, "next"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 461
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 462
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelReadComplete()V

    goto :goto_0

    .line 465
    :cond_0
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeTasks:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 466
    .local v1, "tasks":Lio/netty/channel/AbstractChannelHandlerContext$Tasks;
    if-nez v1, :cond_1

    .line 467
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    invoke-direct {v2, p0}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;)V

    move-object v1, v2

    iput-object v2, p0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeTasks:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 469
    :cond_1
    invoke-static {v1}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->access$700(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 471
    .end local v1    # "tasks":Lio/netty/channel/AbstractChannelHandlerContext$Tasks;
    :goto_0
    return-void
.end method

.method private invokeChannelRegistered()V
    .locals 3

    .line 164
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    .line 170
    .local v0, "handler":Lio/netty/channel/ChannelHandler;
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v1, v1, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/DefaultChannelPipeline$HeadContext;

    .line 171
    .local v1, "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    if-ne v0, v1, :cond_0

    .line 172
    invoke-virtual {v1, p0}, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 173
    :cond_0
    instance-of v2, v0, Lio/netty/channel/ChannelDuplexHandler;

    if-eqz v2, :cond_1

    .line 174
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelDuplexHandler;

    invoke-virtual {v2, p0}, Lio/netty/channel/ChannelDuplexHandler;->channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 176
    :cond_1
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v2, p0}, Lio/netty/channel/ChannelInboundHandler;->channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 178
    .end local v0    # "handler":Lio/netty/channel/ChannelHandler;
    .end local v1    # "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    :catchall_0
    move-exception v0

    .line 179
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    .line 180
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelRegistered()Lio/netty/channel/ChannelHandlerContext;

    .line 184
    :goto_1
    return-void
.end method

.method static invokeChannelRegistered(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 2
    .param p0, "next"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 150
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 151
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRegistered()V

    goto :goto_0

    .line 154
    :cond_0
    new-instance v1, Lio/netty/channel/AbstractChannelHandlerContext$1;

    invoke-direct {v1, p0}, Lio/netty/channel/AbstractChannelHandlerContext$1;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 161
    :goto_0
    return-void
.end method

.method private invokeChannelUnregistered()V
    .locals 3

    .line 207
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    .line 213
    .local v0, "handler":Lio/netty/channel/ChannelHandler;
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v1, v1, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/DefaultChannelPipeline$HeadContext;

    .line 214
    .local v1, "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    if-ne v0, v1, :cond_0

    .line 215
    invoke-virtual {v1, p0}, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->channelUnregistered(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 216
    :cond_0
    instance-of v2, v0, Lio/netty/channel/ChannelDuplexHandler;

    if-eqz v2, :cond_1

    .line 217
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelDuplexHandler;

    invoke-virtual {v2, p0}, Lio/netty/channel/ChannelDuplexHandler;->channelUnregistered(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 219
    :cond_1
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v2, p0}, Lio/netty/channel/ChannelInboundHandler;->channelUnregistered(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 221
    .end local v0    # "handler":Lio/netty/channel/ChannelHandler;
    .end local v1    # "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    :catchall_0
    move-exception v0

    .line 222
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    .line 223
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 225
    :cond_2
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelUnregistered()Lio/netty/channel/ChannelHandlerContext;

    .line 227
    :goto_1
    return-void
.end method

.method static invokeChannelUnregistered(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 2
    .param p0, "next"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 193
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 194
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelUnregistered()V

    goto :goto_0

    .line 197
    :cond_0
    new-instance v1, Lio/netty/channel/AbstractChannelHandlerContext$2;

    invoke-direct {v1, p0}, Lio/netty/channel/AbstractChannelHandlerContext$2;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 204
    :goto_0
    return-void
.end method

.method private invokeChannelWritabilityChanged()V
    .locals 3

    .line 516
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    .line 522
    .local v0, "handler":Lio/netty/channel/ChannelHandler;
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v1, v1, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/DefaultChannelPipeline$HeadContext;

    .line 523
    .local v1, "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    if-ne v0, v1, :cond_0

    .line 524
    invoke-virtual {v1, p0}, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 525
    :cond_0
    instance-of v2, v0, Lio/netty/channel/ChannelDuplexHandler;

    if-eqz v2, :cond_1

    .line 526
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelDuplexHandler;

    invoke-virtual {v2, p0}, Lio/netty/channel/ChannelDuplexHandler;->channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 528
    :cond_1
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v2, p0}, Lio/netty/channel/ChannelInboundHandler;->channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 530
    .end local v0    # "handler":Lio/netty/channel/ChannelHandler;
    .end local v1    # "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    :catchall_0
    move-exception v0

    .line 531
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    .line 532
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 534
    :cond_2
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    .line 536
    :goto_1
    return-void
.end method

.method static invokeChannelWritabilityChanged(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 3
    .param p0, "next"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 503
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 504
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelWritabilityChanged()V

    goto :goto_0

    .line 507
    :cond_0
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeTasks:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 508
    .local v1, "tasks":Lio/netty/channel/AbstractChannelHandlerContext$Tasks;
    if-nez v1, :cond_1

    .line 509
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    invoke-direct {v2, p0}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;)V

    move-object v1, v2

    iput-object v2, p0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeTasks:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 511
    :cond_1
    invoke-static {v1}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->access$800(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 513
    .end local v1    # "tasks":Lio/netty/channel/AbstractChannelHandlerContext$Tasks;
    :goto_0
    return-void
.end method

.method private invokeClose(Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 741
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 746
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    .line 747
    .local v0, "handler":Lio/netty/channel/ChannelHandler;
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v1, v1, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/DefaultChannelPipeline$HeadContext;

    .line 748
    .local v1, "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    if-ne v0, v1, :cond_0

    .line 749
    invoke-virtual {v1, p0, p1}, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 750
    :cond_0
    instance-of v2, v0, Lio/netty/channel/ChannelDuplexHandler;

    if-eqz v2, :cond_1

    .line 751
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelDuplexHandler;

    invoke-virtual {v2, p0, p1}, Lio/netty/channel/ChannelDuplexHandler;->close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 753
    :cond_1
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v2, p0, p1}, Lio/netty/channel/ChannelOutboundHandler;->close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 755
    .end local v0    # "handler":Lio/netty/channel/ChannelHandler;
    .end local v1    # "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    :catchall_0
    move-exception v0

    .line 756
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    .line 757
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 759
    :cond_2
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 761
    :goto_1
    return-void
.end method

.method private invokeConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 645
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 650
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    .line 651
    .local v0, "handler":Lio/netty/channel/ChannelHandler;
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v1, v1, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/DefaultChannelPipeline$HeadContext;

    .line 652
    .local v1, "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    if-ne v0, v1, :cond_0

    .line 653
    invoke-virtual {v1, p0, p1, p2, p3}, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 654
    :cond_0
    instance-of v2, v0, Lio/netty/channel/ChannelDuplexHandler;

    if-eqz v2, :cond_1

    .line 655
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelDuplexHandler;

    invoke-virtual {v2, p0, p1, p2, p3}, Lio/netty/channel/ChannelDuplexHandler;->connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 657
    :cond_1
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v2, p0, p1, p2, p3}, Lio/netty/channel/ChannelOutboundHandler;->connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 659
    .end local v0    # "handler":Lio/netty/channel/ChannelHandler;
    .end local v1    # "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    :catchall_0
    move-exception v0

    .line 660
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    .line 661
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 663
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 665
    :goto_1
    return-void
.end method

.method private invokeDeregister(Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 787
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 792
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    .line 793
    .local v0, "handler":Lio/netty/channel/ChannelHandler;
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v1, v1, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/DefaultChannelPipeline$HeadContext;

    .line 794
    .local v1, "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    if-ne v0, v1, :cond_0

    .line 795
    invoke-virtual {v1, p0, p1}, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 796
    :cond_0
    instance-of v2, v0, Lio/netty/channel/ChannelDuplexHandler;

    if-eqz v2, :cond_1

    .line 797
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelDuplexHandler;

    invoke-virtual {v2, p0, p1}, Lio/netty/channel/ChannelDuplexHandler;->deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 799
    :cond_1
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v2, p0, p1}, Lio/netty/channel/ChannelOutboundHandler;->deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 801
    .end local v0    # "handler":Lio/netty/channel/ChannelHandler;
    .end local v1    # "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    :catchall_0
    move-exception v0

    .line 802
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    .line 803
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 805
    :cond_2
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 807
    :goto_1
    return-void
.end method

.method private invokeDisconnect(Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 695
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 700
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    .line 701
    .local v0, "handler":Lio/netty/channel/ChannelHandler;
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v1, v1, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/DefaultChannelPipeline$HeadContext;

    .line 702
    .local v1, "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    if-ne v0, v1, :cond_0

    .line 703
    invoke-virtual {v1, p0, p1}, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 704
    :cond_0
    instance-of v2, v0, Lio/netty/channel/ChannelDuplexHandler;

    if-eqz v2, :cond_1

    .line 705
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelDuplexHandler;

    invoke-virtual {v2, p0, p1}, Lio/netty/channel/ChannelDuplexHandler;->disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 707
    :cond_1
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v2, p0, p1}, Lio/netty/channel/ChannelOutboundHandler;->disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 709
    .end local v0    # "handler":Lio/netty/channel/ChannelHandler;
    .end local v1    # "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    :catchall_0
    move-exception v0

    .line 710
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    .line 711
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 713
    :cond_2
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 715
    :goto_1
    return-void
.end method

.method static invokeExceptionCaught(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "next"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 322
    const-string v0, "cause"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 323
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 324
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 328
    :cond_0
    :try_start_0
    new-instance v1, Lio/netty/channel/AbstractChannelHandlerContext$5;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext$5;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    goto :goto_0

    .line 334
    :catchall_0
    move-exception v1

    .line 335
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lio/netty/channel/AbstractChannelHandlerContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    sget-object v2, Lio/netty/channel/AbstractChannelHandlerContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Failed to submit an exceptionCaught() event."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 337
    sget-object v2, Lio/netty/channel/AbstractChannelHandlerContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "The exceptionCaught() event that was failed to submit was:"

    invoke-interface {v2, v3, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method private invokeExceptionCaught(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 344
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/netty/channel/ChannelHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :cond_0
    :goto_0
    goto :goto_1

    .line 347
    :catchall_0
    move-exception v0

    .line 348
    .local v0, "error":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/channel/AbstractChannelHandlerContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    sget-object v1, Lio/netty/channel/AbstractChannelHandlerContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 353
    invoke-static {v0}, Lio/netty/util/internal/ThrowableUtil;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 349
    const-string v3, "An exception {}was thrown by a user handler\'s exceptionCaught() method while handling the following exception:"

    invoke-interface {v1, v3, v2, p1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 354
    :cond_1
    sget-object v1, Lio/netty/channel/AbstractChannelHandlerContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    sget-object v1, Lio/netty/channel/AbstractChannelHandlerContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "An exception \'{}\' [enable DEBUG level for full stacktrace] was thrown by a user handler\'s exceptionCaught() method while handling the following exception:"

    invoke-interface {v1, v2, v0, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 362
    .end local v0    # "error":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 364
    :goto_1
    return-void
.end method

.method private invokeFlush()V
    .locals 1

    .line 906
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeFlush0()V

    goto :goto_0

    .line 909
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 911
    :goto_0
    return-void
.end method

.method private invokeFlush0()V
    .locals 3

    .line 918
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    .line 919
    .local v0, "handler":Lio/netty/channel/ChannelHandler;
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v1, v1, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/DefaultChannelPipeline$HeadContext;

    .line 920
    .local v1, "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    if-ne v0, v1, :cond_0

    .line 921
    invoke-virtual {v1, p0}, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->flush(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 922
    :cond_0
    instance-of v2, v0, Lio/netty/channel/ChannelDuplexHandler;

    if-eqz v2, :cond_1

    .line 923
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelDuplexHandler;

    invoke-virtual {v2, p0}, Lio/netty/channel/ChannelDuplexHandler;->flush(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 925
    :cond_1
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v2, p0}, Lio/netty/channel/ChannelOutboundHandler;->flush(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    .end local v0    # "handler":Lio/netty/channel/ChannelHandler;
    .end local v1    # "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    :goto_0
    goto :goto_1

    .line 927
    :catchall_0
    move-exception v0

    .line 928
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    .line 930
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private invokeHandler()Z
    .locals 3

    .line 1140
    iget v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->handlerState:I

    .line 1141
    .local v0, "handlerState":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->ordered:Z

    if-nez v1, :cond_0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private invokeRead()V
    .locals 3

    .line 827
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 832
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    .line 833
    .local v0, "handler":Lio/netty/channel/ChannelHandler;
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v1, v1, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/DefaultChannelPipeline$HeadContext;

    .line 834
    .local v1, "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    if-ne v0, v1, :cond_0

    .line 835
    invoke-virtual {v1, p0}, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->read(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 836
    :cond_0
    instance-of v2, v0, Lio/netty/channel/ChannelDuplexHandler;

    if-eqz v2, :cond_1

    .line 837
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelDuplexHandler;

    invoke-virtual {v2, p0}, Lio/netty/channel/ChannelDuplexHandler;->read(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 839
    :cond_1
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v2, p0}, Lio/netty/channel/ChannelOutboundHandler;->read(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 841
    .end local v0    # "handler":Lio/netty/channel/ChannelHandler;
    .end local v1    # "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    :catchall_0
    move-exception v0

    .line 842
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    .line 843
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 845
    :cond_2
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 847
    :goto_1
    return-void
.end method

.method static invokeUserEventTriggered(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2
    .param p0, "next"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "event"    # Ljava/lang/Object;

    .line 373
    const-string v0, "event"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 374
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 375
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeUserEventTriggered(Ljava/lang/Object;)V

    goto :goto_0

    .line 378
    :cond_0
    new-instance v1, Lio/netty/channel/AbstractChannelHandlerContext$6;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext$6;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 385
    :goto_0
    return-void
.end method

.method private invokeUserEventTriggered(Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/Object;

    .line 388
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    .line 394
    .local v0, "handler":Lio/netty/channel/ChannelHandler;
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v1, v1, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/DefaultChannelPipeline$HeadContext;

    .line 395
    .local v1, "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    if-ne v0, v1, :cond_0

    .line 396
    invoke-virtual {v1, p0, p1}, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    goto :goto_0

    .line 397
    :cond_0
    instance-of v2, v0, Lio/netty/channel/ChannelDuplexHandler;

    if-eqz v2, :cond_1

    .line 398
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelDuplexHandler;

    invoke-virtual {v2, p0, p1}, Lio/netty/channel/ChannelDuplexHandler;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    goto :goto_0

    .line 400
    :cond_1
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v2, p0, p1}, Lio/netty/channel/ChannelInboundHandler;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 402
    .end local v0    # "handler":Lio/netty/channel/ChannelHandler;
    .end local v1    # "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    :catchall_0
    move-exception v0

    .line 403
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    .line 404
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 406
    :cond_2
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 408
    :goto_1
    return-void
.end method

.method private invokeWrite0(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 874
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    .line 875
    .local v0, "handler":Lio/netty/channel/ChannelHandler;
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v1, v1, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/DefaultChannelPipeline$HeadContext;

    .line 876
    .local v1, "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    if-ne v0, v1, :cond_0

    .line 877
    invoke-virtual {v1, p0, p1, p2}, Lio/netty/channel/DefaultChannelPipeline$HeadContext;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 878
    :cond_0
    instance-of v2, v0, Lio/netty/channel/ChannelDuplexHandler;

    if-eqz v2, :cond_1

    .line 879
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelDuplexHandler;

    invoke-virtual {v2, p0, p1, p2}, Lio/netty/channel/ChannelDuplexHandler;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 881
    :cond_1
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v2, p0, p1, p2}, Lio/netty/channel/ChannelOutboundHandler;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    .end local v0    # "handler":Lio/netty/channel/ChannelHandler;
    .end local v1    # "headContext":Lio/netty/channel/DefaultChannelPipeline$HeadContext;
    :goto_0
    goto :goto_1

    .line 883
    :catchall_0
    move-exception v0

    .line 884
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    .line 886
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private isNotValidPromise(Lio/netty/channel/ChannelPromise;Z)Z
    .locals 3
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p2, "allowVoidPromise"    # Z

    .line 1018
    const-string v0, "promise"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1020
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1025
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    const/4 v0, 0x1

    return v0

    .line 1028
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "promise already done: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1031
    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 1036
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/netty/channel/DefaultChannelPromise;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 1037
    return v2

    .line 1040
    :cond_2
    if-nez p2, :cond_4

    instance-of v0, p1, Lio/netty/channel/VoidChannelPromise;

    if-nez v0, :cond_3

    goto :goto_0

    .line 1041
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lio/netty/channel/VoidChannelPromise;

    .line 1042
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allowed for this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    :cond_4
    :goto_0
    instance-of v0, p1, Lio/netty/channel/AbstractChannel$CloseFuture;

    if-nez v0, :cond_5

    .line 1049
    return v2

    .line 1046
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lio/netty/channel/AbstractChannel$CloseFuture;

    .line 1047
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allowed in a pipeline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1032
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1033
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1032
    const-string v2, "promise.channel does not match: %s (expected: %s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p0, "cause"    # Ljava/lang/Throwable;
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 990
    instance-of v0, p1, Lio/netty/channel/VoidChannelPromise;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/channel/AbstractChannelHandlerContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    :goto_0
    invoke-static {p1, p0, v0}, Lio/netty/util/internal/PromiseNotificationUtil;->tryFailure(Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;Lio/netty/util/internal/logging/InternalLogger;)V

    .line 991
    return-void
.end method

.method private static safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;Z)Z
    .locals 2
    .param p0, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p3, "msg"    # Ljava/lang/Object;
    .param p4, "lazy"    # Z

    .line 1162
    if-eqz p4, :cond_0

    :try_start_0
    instance-of v0, p0, Lio/netty/util/concurrent/AbstractEventExecutor;

    if-eqz v0, :cond_0

    .line 1163
    move-object v0, p0

    check-cast v0, Lio/netty/util/concurrent/AbstractEventExecutor;

    invoke-virtual {v0, p1}, Lio/netty/util/concurrent/AbstractEventExecutor;->lazyExecute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1165
    :cond_0
    invoke-interface {p0, p1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1168
    :catchall_0
    move-exception v0

    .line 1170
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz p3, :cond_1

    .line 1171
    :try_start_1
    invoke-static {p3}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1174
    :catchall_1
    move-exception v1

    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 1175
    throw v1

    .line 1174
    :cond_1
    :goto_1
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 1175
    nop

    .line 1176
    const/4 v1, 0x0

    return v1
.end method

.method private static skipContext(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/util/concurrent/EventExecutor;II)Z
    .locals 2
    .param p0, "ctx"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "currentExecutor"    # Lio/netty/util/concurrent/EventExecutor;
    .param p2, "mask"    # I
    .param p3, "onlyMask"    # I

    .line 1073
    iget v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->executionMask:I

    or-int v1, p3, p2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1078
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->executionMask:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1073
    :goto_1
    return v0
.end method

.method private write(Ljava/lang/Object;ZLio/netty/channel/ChannelPromise;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "flush"    # Z
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 948
    const-string v0, "msg"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 950
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p3, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->isNotValidPromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    return-void

    .line 958
    :cond_0
    nop

    .line 960
    if-eqz p2, :cond_1

    const v0, 0x18000

    goto :goto_0

    :cond_1
    const v0, 0x8000

    :goto_0
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 962
    .local v0, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v1, p1, v0}, Lio/netty/channel/DefaultChannelPipeline;->touch(Ljava/lang/Object;Lio/netty/channel/AbstractChannelHandlerContext;)Ljava/lang/Object;

    move-result-object v1

    .line 963
    .local v1, "m":Ljava/lang/Object;
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    .line 964
    .local v2, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v2}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 965
    if-eqz p2, :cond_2

    .line 966
    invoke-virtual {v0, v1, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeWriteAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    goto :goto_1

    .line 968
    :cond_2
    invoke-virtual {v0, v1, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeWrite(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    goto :goto_1

    .line 971
    :cond_3
    invoke-static {v0, v1, p3, p2}, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->newInstance(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;Z)Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;

    move-result-object v3

    .line 972
    .local v3, "task":Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;
    xor-int/lit8 v4, p2, 0x1

    invoke-static {v2, v3, p3, v1, v4}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;Z)Z

    move-result v4

    if-nez v4, :cond_4

    .line 977
    invoke-virtual {v3}, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->cancel()V

    .line 980
    .end local v3    # "task":Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;
    :cond_4
    :goto_1
    return-void

    .line 955
    .end local v0    # "next":Lio/netty/channel/AbstractChannelHandlerContext;
    .end local v1    # "m":Ljava/lang/Object;
    .end local v2    # "executor":Lio/netty/util/concurrent/EventExecutor;
    :catch_0
    move-exception v0

    .line 956
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 957
    throw v0
.end method


# virtual methods
.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    return-object v0
.end method

.method public attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)",
            "Lio/netty/util/Attribute<",
            "TT;>;"
        }
    .end annotation

    .line 1151
    .local p1, "key":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<TT;>;"
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .line 540
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 5
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 570
    const-string v0, "localAddress"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 571
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->isNotValidPromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    return-object p2

    .line 576
    :cond_0
    const/16 v1, 0x200

    invoke-direct {p0, v1}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 577
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    .line 578
    .local v2, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v2}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 579
    invoke-direct {v1, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeBind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 581
    :cond_1
    new-instance v3, Lio/netty/channel/AbstractChannelHandlerContext$8;

    invoke-direct {v3, p0, v1, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext$8;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    const/4 v4, 0x0

    invoke-static {v2, v3, p2, v4, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;Z)Z

    .line 588
    :goto_0
    return-object p2
.end method

.method final callHandlerAdded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1113
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->setAddComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 1116
    :cond_0
    return-void
.end method

.method final callHandlerRemoved()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1121
    :try_start_0
    iget v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->handlerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1122
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelHandler;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->setRemoved()V

    .line 1127
    nop

    .line 1128
    return-void

    .line 1126
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->setRemoved()V

    .line 1127
    throw v0
.end method

.method public channel()Lio/netty/channel/Channel;
    .locals 1

    .line 116
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0}, Lio/netty/channel/DefaultChannelPipeline;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public close()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 5
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 719
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->isNotValidPromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 721
    return-object p1

    .line 724
    :cond_0
    const/16 v1, 0x1000

    invoke-direct {p0, v1}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 725
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    .line 726
    .local v2, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v2}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 727
    invoke-direct {v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeClose(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 729
    :cond_1
    new-instance v3, Lio/netty/channel/AbstractChannelHandlerContext$11;

    invoke-direct {v3, p0, v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext$11;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;Z)Z

    .line 737
    :goto_0
    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 545
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 616
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .line 550
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 10
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 622
    const-string v0, "remoteAddress"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 624
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->isNotValidPromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    return-object p3

    .line 629
    :cond_0
    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 630
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v8

    .line 631
    .local v8, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v8}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 632
    invoke-direct {v1, p1, p2, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 634
    :cond_1
    new-instance v9, Lio/netty/channel/AbstractChannelHandlerContext$9;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lio/netty/channel/AbstractChannelHandlerContext$9;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    const/4 v2, 0x0

    invoke-static {v8, v9, p3, v2, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;Z)Z

    .line 641
    :goto_0
    return-object p3
.end method

.method public deregister()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 5
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 765
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->isNotValidPromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 767
    return-object p1

    .line 770
    :cond_0
    const/16 v1, 0x2000

    invoke-direct {p0, v1}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 771
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    .line 772
    .local v2, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v2}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 773
    invoke-direct {v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeDeregister(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 775
    :cond_1
    new-instance v3, Lio/netty/channel/AbstractChannelHandlerContext$12;

    invoke-direct {v3, p0, v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext$12;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;Z)Z

    .line 783
    :goto_0
    return-object p1
.end method

.method public disconnect()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 555
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 5
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 669
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 672
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 674
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->isNotValidPromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 676
    return-object p1

    .line 679
    :cond_1
    const/16 v1, 0x800

    invoke-direct {p0, v1}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 680
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    .line 681
    .local v2, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v2}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 682
    invoke-direct {v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeDisconnect(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 684
    :cond_2
    new-instance v3, Lio/netty/channel/AbstractChannelHandlerContext$10;

    invoke-direct {v3, p0, v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext$10;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;Z)Z

    .line 691
    :goto_0
    return-object p1
.end method

.method public executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .line 131
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->executor:Lio/netty/util/concurrent/EventExecutor;

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->executor:Lio/netty/util/concurrent/EventExecutor;

    return-object v0
.end method

.method public fireChannelActive()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 231
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelActive(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 232
    return-object p0
.end method

.method public bridge synthetic fireChannelActive()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 274
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelInactive(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 275
    return-object p0
.end method

.method public bridge synthetic fireChannelInactive()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 412
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRead(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V

    .line 413
    return-object p0
.end method

.method public bridge synthetic fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelInboundInvoker;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object p1

    return-object p1
.end method

.method public fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 456
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelReadComplete(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 457
    return-object p0
.end method

.method public bridge synthetic fireChannelReadComplete()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public fireChannelRegistered()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 145
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRegistered(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 146
    return-object p0
.end method

.method public bridge synthetic fireChannelRegistered()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelRegistered()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public fireChannelUnregistered()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 188
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelUnregistered(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 189
    return-object p0
.end method

.method public bridge synthetic fireChannelUnregistered()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelUnregistered()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 498
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelWritabilityChanged(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 499
    return-object p0
.end method

.method public bridge synthetic fireChannelWritabilityChanged()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 317
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 318
    return-object p0
.end method

.method public bridge synthetic fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelInboundInvoker;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object p1

    return-object p1
.end method

.method public fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p1, "event"    # Ljava/lang/Object;

    .line 368
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeUserEventTriggered(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V

    .line 369
    return-object p0
.end method

.method public bridge synthetic fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelInboundInvoker;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object p1

    return-object p1
.end method

.method public flush()Lio/netty/channel/ChannelHandlerContext;
    .locals 7

    .line 890
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 891
    .local v0, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 892
    .local v1, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 893
    invoke-direct {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeFlush()V

    goto :goto_0

    .line 895
    :cond_0
    iget-object v2, v0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeTasks:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 896
    .local v2, "tasks":Lio/netty/channel/AbstractChannelHandlerContext$Tasks;
    if-nez v2, :cond_1

    .line 897
    new-instance v3, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    invoke-direct {v3, v0}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;)V

    move-object v2, v3

    iput-object v3, v0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeTasks:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 899
    :cond_1
    invoke-static {v2}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->access$1500(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/Channel;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v3, v4, v5, v6}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;Z)Z

    .line 902
    .end local v2    # "tasks":Lio/netty/channel/AbstractChannelHandlerContext$Tasks;
    :goto_0
    return-object p0
.end method

.method public bridge synthetic flush()Lio/netty/channel/ChannelOutboundInvoker;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public hasAttr(Lio/netty/util/AttributeKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1156
    .local p1, "key":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<TT;>;"
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/Channel;->hasAttr(Lio/netty/util/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method invokeWrite(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 862
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    invoke-direct {p0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeWrite0(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 865
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 867
    :goto_0
    return-void
.end method

.method invokeWriteAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 939
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    invoke-direct {p0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeWrite0(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 941
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeFlush0()V

    goto :goto_0

    .line 943
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 945
    :goto_0
    return-void
.end method

.method public isRemoved()Z
    .locals 2

    .line 1146
    iget v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->handlerState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->name:Ljava/lang/String;

    return-object v0
.end method

.method public newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1014
    new-instance v0, Lio/netty/channel/FailedChannelFuture;

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lio/netty/channel/FailedChannelFuture;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public newProgressivePromise()Lio/netty/channel/ChannelProgressivePromise;
    .locals 3

    .line 1000
    new-instance v0, Lio/netty/channel/DefaultChannelProgressivePromise;

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/netty/channel/DefaultChannelProgressivePromise;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    return-object v0
.end method

.method public newPromise()Lio/netty/channel/ChannelPromise;
    .locals 3

    .line 995
    new-instance v0, Lio/netty/channel/DefaultChannelPromise;

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/netty/channel/DefaultChannelPromise;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    return-object v0
.end method

.method public newSucceededFuture()Lio/netty/channel/ChannelFuture;
    .locals 4

    .line 1005
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->succeededFuture:Lio/netty/channel/ChannelFuture;

    .line 1006
    .local v0, "succeededFuture":Lio/netty/channel/ChannelFuture;
    if-nez v0, :cond_0

    .line 1007
    new-instance v1, Lio/netty/channel/SucceededChannelFuture;

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/netty/channel/SucceededChannelFuture;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    move-object v0, v1

    iput-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->succeededFuture:Lio/netty/channel/ChannelFuture;

    .line 1009
    :cond_0
    return-object v0
.end method

.method public pipeline()Lio/netty/channel/ChannelPipeline;
    .locals 1

    .line 121
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    return-object v0
.end method

.method public read()Lio/netty/channel/ChannelHandlerContext;
    .locals 4

    .line 811
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 812
    .local v0, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 813
    .local v1, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 814
    invoke-direct {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeRead()V

    goto :goto_0

    .line 816
    :cond_0
    iget-object v2, v0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeTasks:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 817
    .local v2, "tasks":Lio/netty/channel/AbstractChannelHandlerContext$Tasks;
    if-nez v2, :cond_1

    .line 818
    new-instance v3, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    invoke-direct {v3, v0}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;)V

    move-object v2, v3

    iput-object v3, v0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeTasks:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 820
    :cond_1
    invoke-static {v2}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->access$1400(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 823
    .end local v2    # "tasks":Lio/netty/channel/AbstractChannelHandlerContext$Tasks;
    :goto_0
    return-object p0
.end method

.method public bridge synthetic read()Lio/netty/channel/ChannelOutboundInvoker;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method final setAddComplete()Z
    .locals 3

    .line 1092
    nop

    :goto_0
    iget v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->handlerState:I

    .line 1093
    .local v0, "oldState":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1094
    const/4 v1, 0x0

    return v1

    .line 1099
    :cond_0
    sget-object v1, Lio/netty/channel/AbstractChannelHandlerContext;->HANDLER_STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1100
    const/4 v1, 0x1

    return v1

    .line 1102
    .end local v0    # "oldState":I
    :cond_1
    goto :goto_0
.end method

.method final setAddPending()V
    .locals 3

    .line 1106
    sget-object v0, Lio/netty/channel/AbstractChannelHandlerContext;->HANDLER_STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    .line 1107
    .local v0, "updated":Z
    if-eqz v0, :cond_0

    .line 1108
    return-void

    .line 1107
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method final setRemoved()V
    .locals 1

    .line 1087
    const/4 v0, 0x3

    iput v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->handlerState:I

    .line 1088
    return-void
.end method

.method public toHintString()Ljava/lang/String;
    .locals 2

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' will handle the message from this point."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/netty/channel/ChannelHandlerContext;

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public voidPromise()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 851
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 856
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->write(Ljava/lang/Object;ZLio/netty/channel/ChannelPromise;)V

    .line 858
    return-object p2
.end method

.method public writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 984
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 934
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->write(Ljava/lang/Object;ZLio/netty/channel/ChannelPromise;)V

    .line 935
    return-object p2
.end method
