.class public Lio/netty/channel/embedded/EmbeddedChannel;
.super Lio/netty/channel/AbstractChannel;
.source "EmbeddedChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedChannelPipeline;,
        Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;,
        Lio/netty/channel/embedded/EmbeddedChannel$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_HANDLERS:[Lio/netty/channel/ChannelHandler;

.field private static final LOCAL_ADDRESS:Ljava/net/SocketAddress;

.field private static final METADATA_DISCONNECT:Lio/netty/channel/ChannelMetadata;

.field private static final METADATA_NO_DISCONNECT:Lio/netty/channel/ChannelMetadata;

.field private static final REMOTE_ADDRESS:Ljava/net/SocketAddress;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final config:Lio/netty/channel/ChannelConfig;

.field private inboundMessages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private lastException:Ljava/lang/Throwable;

.field private final loop:Lio/netty/channel/embedded/EmbeddedEventLoop;

.field private final metadata:Lio/netty/channel/ChannelMetadata;

.field private outboundMessages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final recordExceptionListener:Lio/netty/channel/ChannelFutureListener;

.field private state:Lio/netty/channel/embedded/EmbeddedChannel$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    nop

    .line 53
    new-instance v0, Lio/netty/channel/embedded/EmbeddedSocketAddress;

    invoke-direct {v0}, Lio/netty/channel/embedded/EmbeddedSocketAddress;-><init>()V

    sput-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->LOCAL_ADDRESS:Ljava/net/SocketAddress;

    .line 54
    new-instance v0, Lio/netty/channel/embedded/EmbeddedSocketAddress;

    invoke-direct {v0}, Lio/netty/channel/embedded/EmbeddedSocketAddress;-><init>()V

    sput-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->REMOTE_ADDRESS:Ljava/net/SocketAddress;

    .line 56
    const/4 v0, 0x0

    new-array v1, v0, [Lio/netty/channel/ChannelHandler;

    sput-object v1, Lio/netty/channel/embedded/EmbeddedChannel;->EMPTY_HANDLERS:[Lio/netty/channel/ChannelHandler;

    .line 59
    const-class v1, Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-static {v1}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/channel/embedded/EmbeddedChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 61
    new-instance v1, Lio/netty/channel/ChannelMetadata;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelMetadata;-><init>(Z)V

    sput-object v1, Lio/netty/channel/embedded/EmbeddedChannel;->METADATA_NO_DISCONNECT:Lio/netty/channel/ChannelMetadata;

    .line 62
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/channel/ChannelMetadata;-><init>(Z)V

    sput-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->METADATA_DISCONNECT:Lio/netty/channel/ChannelMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 84
    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->EMPTY_HANDLERS:[Lio/netty/channel/ChannelHandler;

    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>([Lio/netty/channel/ChannelHandler;)V

    .line 85
    return-void
.end method

.method public varargs constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/ChannelId;ZZ[Lio/netty/channel/ChannelHandler;)V
    .locals 1
    .param p1, "parent"    # Lio/netty/channel/Channel;
    .param p2, "channelId"    # Lio/netty/channel/ChannelId;
    .param p3, "register"    # Z
    .param p4, "hasDisconnect"    # Z
    .param p5, "handlers"    # [Lio/netty/channel/ChannelHandler;

    .line 183
    invoke-direct {p0, p1, p2}, Lio/netty/channel/AbstractChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/ChannelId;)V

    .line 64
    new-instance v0, Lio/netty/channel/embedded/EmbeddedEventLoop;

    invoke-direct {v0}, Lio/netty/channel/embedded/EmbeddedEventLoop;-><init>()V

    iput-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->loop:Lio/netty/channel/embedded/EmbeddedEventLoop;

    .line 65
    new-instance v0, Lio/netty/channel/embedded/EmbeddedChannel$1;

    invoke-direct {v0, p0}, Lio/netty/channel/embedded/EmbeddedChannel$1;-><init>(Lio/netty/channel/embedded/EmbeddedChannel;)V

    iput-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->recordExceptionListener:Lio/netty/channel/ChannelFutureListener;

    .line 184
    invoke-static {p4}, Lio/netty/channel/embedded/EmbeddedChannel;->metadata(Z)Lio/netty/channel/ChannelMetadata;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->metadata:Lio/netty/channel/ChannelMetadata;

    .line 185
    new-instance v0, Lio/netty/channel/DefaultChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/DefaultChannelConfig;-><init>(Lio/netty/channel/Channel;)V

    iput-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->config:Lio/netty/channel/ChannelConfig;

    .line 186
    invoke-direct {p0, p3, p5}, Lio/netty/channel/embedded/EmbeddedChannel;->setup(Z[Lio/netty/channel/ChannelHandler;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/ChannelId;)V
    .locals 1
    .param p1, "channelId"    # Lio/netty/channel/ChannelId;

    .line 93
    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->EMPTY_HANDLERS:[Lio/netty/channel/ChannelHandler;

    invoke-direct {p0, p1, v0}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;[Lio/netty/channel/ChannelHandler;)V

    .line 94
    return-void
.end method

.method public varargs constructor <init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V
    .locals 1
    .param p1, "channelId"    # Lio/netty/channel/ChannelId;
    .param p2, "hasDisconnect"    # Z
    .param p3, "config"    # Lio/netty/channel/ChannelConfig;
    .param p4, "handlers"    # [Lio/netty/channel/ChannelHandler;

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/channel/AbstractChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/ChannelId;)V

    .line 64
    new-instance v0, Lio/netty/channel/embedded/EmbeddedEventLoop;

    invoke-direct {v0}, Lio/netty/channel/embedded/EmbeddedEventLoop;-><init>()V

    iput-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->loop:Lio/netty/channel/embedded/EmbeddedEventLoop;

    .line 65
    new-instance v0, Lio/netty/channel/embedded/EmbeddedChannel$1;

    invoke-direct {v0, p0}, Lio/netty/channel/embedded/EmbeddedChannel$1;-><init>(Lio/netty/channel/embedded/EmbeddedChannel;)V

    iput-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->recordExceptionListener:Lio/netty/channel/ChannelFutureListener;

    .line 202
    invoke-static {p2}, Lio/netty/channel/embedded/EmbeddedChannel;->metadata(Z)Lio/netty/channel/ChannelMetadata;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->metadata:Lio/netty/channel/ChannelMetadata;

    .line 203
    const-string v0, "config"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelConfig;

    iput-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->config:Lio/netty/channel/ChannelConfig;

    .line 204
    const/4 v0, 0x1

    invoke-direct {p0, v0, p4}, Lio/netty/channel/embedded/EmbeddedChannel;->setup(Z[Lio/netty/channel/ChannelHandler;)V

    .line 205
    return-void
.end method

.method public varargs constructor <init>(Lio/netty/channel/ChannelId;ZZ[Lio/netty/channel/ChannelHandler;)V
    .locals 6
    .param p1, "channelId"    # Lio/netty/channel/ChannelId;
    .param p2, "register"    # Z
    .param p3, "hasDisconnect"    # Z
    .param p4, "handlers"    # [Lio/netty/channel/ChannelHandler;

    .line 166
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/ChannelId;ZZ[Lio/netty/channel/ChannelHandler;)V

    .line 167
    return-void
.end method

.method public varargs constructor <init>(Lio/netty/channel/ChannelId;Z[Lio/netty/channel/ChannelHandler;)V
    .locals 1
    .param p1, "channelId"    # Lio/netty/channel/ChannelId;
    .param p2, "hasDisconnect"    # Z
    .param p3, "handlers"    # [Lio/netty/channel/ChannelHandler;

    .line 150
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZZ[Lio/netty/channel/ChannelHandler;)V

    .line 151
    return-void
.end method

.method public varargs constructor <init>(Lio/netty/channel/ChannelId;[Lio/netty/channel/ChannelHandler;)V
    .locals 1
    .param p1, "channelId"    # Lio/netty/channel/ChannelId;
    .param p2, "handlers"    # [Lio/netty/channel/ChannelHandler;

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;Z[Lio/netty/channel/ChannelHandler;)V

    .line 138
    return-void
.end method

.method public varargs constructor <init>(ZZ[Lio/netty/channel/ChannelHandler;)V
    .locals 1
    .param p1, "register"    # Z
    .param p2, "hasDisconnect"    # Z
    .param p3, "handlers"    # [Lio/netty/channel/ChannelHandler;

    .line 126
    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannelId;->INSTANCE:Lio/netty/channel/ChannelId;

    invoke-direct {p0, v0, p1, p2, p3}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZZ[Lio/netty/channel/ChannelHandler;)V

    .line 127
    return-void
.end method

.method public varargs constructor <init>(Z[Lio/netty/channel/ChannelHandler;)V
    .locals 1
    .param p1, "hasDisconnect"    # Z
    .param p2, "handlers"    # [Lio/netty/channel/ChannelHandler;

    .line 113
    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannelId;->INSTANCE:Lio/netty/channel/ChannelId;

    invoke-direct {p0, v0, p1, p2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;Z[Lio/netty/channel/ChannelHandler;)V

    .line 114
    return-void
.end method

.method public varargs constructor <init>([Lio/netty/channel/ChannelHandler;)V
    .locals 1
    .param p1, "handlers"    # [Lio/netty/channel/ChannelHandler;

    .line 102
    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannelId;->INSTANCE:Lio/netty/channel/ChannelId;

    invoke-direct {p0, v0, p1}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;[Lio/netty/channel/ChannelHandler;)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/embedded/EmbeddedChannel;Lio/netty/channel/ChannelFuture;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/embedded/EmbeddedChannel;
    .param p1, "x1"    # Lio/netty/channel/ChannelFuture;

    .line 51
    invoke-direct {p0, p1}, Lio/netty/channel/embedded/EmbeddedChannel;->recordException(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

.method static synthetic access$200(Lio/netty/channel/embedded/EmbeddedChannel;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/embedded/EmbeddedChannel;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 51
    invoke-direct {p0, p1}, Lio/netty/channel/embedded/EmbeddedChannel;->recordException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private checkException(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 683
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->lastException:Ljava/lang/Throwable;

    .line 684
    .local v0, "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 685
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->lastException:Ljava/lang/Throwable;

    .line 687
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->isVoid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 691
    :cond_0
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    move-result-object v1

    return-object v1

    .line 694
    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    return-object v1
.end method

.method private checkOpen(Z)Z
    .locals 1
    .param p1, "recordException"    # Z

    .line 709
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 710
    if-eqz p1, :cond_0

    .line 711
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->recordException(Ljava/lang/Throwable;)V

    .line 713
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 716
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private embeddedEventLoop()Lio/netty/channel/embedded/EmbeddedEventLoop;
    .locals 1

    .line 720
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    invoke-super {p0}, Lio/netty/channel/AbstractChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    check-cast v0, Lio/netty/channel/embedded/EmbeddedEventLoop;

    return-object v0

    .line 724
    :cond_0
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->loop:Lio/netty/channel/embedded/EmbeddedEventLoop;

    return-object v0
.end method

.method private finish(Z)Z
    .locals 2
    .param p1, "releaseAll"    # Z

    .line 504
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->close()Lio/netty/channel/ChannelFuture;

    .line 506
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkException()V

    .line 507
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    invoke-static {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->isNotEmpty(Ljava/util/Queue;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    invoke-static {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->isNotEmpty(Ljava/util/Queue;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 509
    :goto_1
    if-eqz p1, :cond_2

    .line 510
    iget-object v1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    invoke-static {v1}, Lio/netty/channel/embedded/EmbeddedChannel;->releaseAll(Ljava/util/Queue;)Z

    .line 511
    iget-object v1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    invoke-static {v1}, Lio/netty/channel/embedded/EmbeddedChannel;->releaseAll(Ljava/util/Queue;)Z

    .line 507
    :cond_2
    return v0

    .line 509
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_3

    .line 510
    iget-object v1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    invoke-static {v1}, Lio/netty/channel/embedded/EmbeddedChannel;->releaseAll(Ljava/util/Queue;)Z

    .line 511
    iget-object v1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    invoke-static {v1}, Lio/netty/channel/embedded/EmbeddedChannel;->releaseAll(Ljava/util/Queue;)Z

    .line 513
    :cond_3
    throw v0
.end method

.method private finishPendingTasks(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .line 547
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    .line 548
    if-eqz p1, :cond_0

    .line 550
    invoke-direct {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->embeddedEventLoop()Lio/netty/channel/embedded/EmbeddedEventLoop;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->cancelScheduledTasks()V

    .line 552
    :cond_0
    return-void
.end method

.method private flushInbound(ZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "recordException"    # Z
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 385
    invoke-direct {p0, p1}, Lio/netty/channel/embedded/EmbeddedChannel;->checkOpen(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 387
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    .line 390
    :cond_0
    invoke-direct {p0, p2}, Lio/netty/channel/embedded/EmbeddedChannel;->checkException(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method private flushOutbound0()V
    .locals 0

    .line 473
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    .line 475
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->flush()Lio/netty/channel/Channel;

    .line 476
    return-void
.end method

.method private static isNotEmpty(Ljava/util/Queue;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 584
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static metadata(Z)Lio/netty/channel/ChannelMetadata;
    .locals 1
    .param p0, "hasDisconnect"    # Z

    .line 208
    if-eqz p0, :cond_0

    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->METADATA_DISCONNECT:Lio/netty/channel/ChannelMetadata;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->METADATA_NO_DISCONNECT:Lio/netty/channel/ChannelMetadata;

    :goto_0
    return-object v0
.end method

.method private static poll(Ljava/util/Queue;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 588
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private recordException(Lio/netty/channel/ChannelFuture;)V
    .locals 1
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;

    .line 636
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->recordException(Ljava/lang/Throwable;)V

    .line 639
    :cond_0
    return-void
.end method

.method private recordException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 642
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->lastException:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 643
    iput-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->lastException:Ljava/lang/Throwable;

    goto :goto_0

    .line 645
    :cond_0
    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "More than one exception was raised. Will report only the first one and log others."

    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 649
    :goto_0
    return-void
.end method

.method private static releaseAll(Ljava/util/Queue;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 533
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-static {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->isNotEmpty(Ljava/util/Queue;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    :goto_0
    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 536
    .local v0, "msg":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 537
    nop

    .line 541
    .end local v0    # "msg":Ljava/lang/Object;
    const/4 v0, 0x1

    return v0

    .line 539
    .restart local v0    # "msg":Ljava/lang/Object;
    :cond_0
    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 540
    .end local v0    # "msg":Ljava/lang/Object;
    goto :goto_0

    .line 543
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private varargs setup(Z[Lio/netty/channel/ChannelHandler;)V
    .locals 4
    .param p1, "register"    # Z
    .param p2, "handlers"    # [Lio/netty/channel/ChannelHandler;

    .line 212
    const-string v0, "handlers"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 214
    .local v0, "p":Lio/netty/channel/ChannelPipeline;
    const/4 v1, 0x1

    new-array v1, v1, [Lio/netty/channel/ChannelHandler;

    new-instance v2, Lio/netty/channel/embedded/EmbeddedChannel$2;

    invoke-direct {v2, p0, p2}, Lio/netty/channel/embedded/EmbeddedChannel$2;-><init>(Lio/netty/channel/embedded/EmbeddedChannel;[Lio/netty/channel/ChannelHandler;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 226
    if-eqz p1, :cond_1

    .line 227
    iget-object v1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->loop:Lio/netty/channel/embedded/EmbeddedEventLoop;

    invoke-virtual {v1, p0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    .line 228
    .local v1, "future":Lio/netty/channel/ChannelFuture;
    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 230
    .end local v1    # "future":Lio/netty/channel/ChannelFuture;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public advanceTimeBy(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 656
    invoke-direct {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->embeddedEventLoop()Lio/netty/channel/embedded/EmbeddedEventLoop;

    move-result-object v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/embedded/EmbeddedEventLoop;->advanceTimeBy(J)V

    .line 657
    return-void
.end method

.method public checkException()V
    .locals 1

    .line 701
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkException(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 702
    return-void
.end method

.method public final close()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 556
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 568
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    .line 569
    invoke-super {p0, p1}, Lio/netty/channel/AbstractChannel;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 572
    .local v0, "future":Lio/netty/channel/ChannelFuture;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lio/netty/channel/embedded/EmbeddedChannel;->finishPendingTasks(Z)V

    .line 573
    return-object v0
.end method

.method public config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 256
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->config:Lio/netty/channel/ChannelConfig;

    return-object v0
.end method

.method public final disconnect()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 561
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 578
    invoke-super {p0, p1}, Lio/netty/channel/AbstractChannel;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 579
    .local v0, "future":Lio/netty/channel/ChannelFuture;
    iget-object v1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->metadata:Lio/netty/channel/ChannelMetadata;

    invoke-virtual {v1}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lio/netty/channel/embedded/EmbeddedChannel;->finishPendingTasks(Z)V

    .line 580
    return-object v0
.end method

.method protected doBeginRead()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 776
    return-void
.end method

.method protected doBind(Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 759
    return-void
.end method

.method protected doClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 770
    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannel$State;->CLOSED:Lio/netty/channel/embedded/EmbeddedChannel$State;

    iput-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->state:Lio/netty/channel/embedded/EmbeddedChannel$State;

    .line 771
    return-void
.end method

.method protected doDisconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 763
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->metadata:Lio/netty/channel/ChannelMetadata;

    invoke-virtual {v0}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 764
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->doClose()V

    .line 766
    :cond_0
    return-void
.end method

.method protected doRegister()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 753
    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannel$State;->ACTIVE:Lio/netty/channel/embedded/EmbeddedChannel$State;

    iput-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->state:Lio/netty/channel/embedded/EmbeddedChannel$State;

    .line 754
    return-void
.end method

.method protected doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .locals 1
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 791
    nop

    :goto_0
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v0

    .line 792
    .local v0, "msg":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 793
    nop

    .line 800
    .end local v0    # "msg":Ljava/lang/Object;
    return-void

    .line 796
    .restart local v0    # "msg":Ljava/lang/Object;
    :cond_0
    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    invoke-virtual {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->handleOutboundMessage(Ljava/lang/Object;)V

    .line 798
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 799
    .end local v0    # "msg":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected final ensureOpen()V
    .locals 1

    .line 731
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkOpen(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 732
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkException()V

    .line 734
    :cond_0
    return-void
.end method

.method public finish()Z
    .locals 1

    .line 484
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->finish(Z)Z

    move-result v0

    return v0
.end method

.method public finishAndReleaseAll()Z
    .locals 1

    .line 494
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->finish(Z)Z

    move-result v0

    return v0
.end method

.method public flushInbound()Lio/netty/channel/embedded/EmbeddedChannel;
    .locals 2

    .line 380
    const/4 v0, 0x1

    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/channel/embedded/EmbeddedChannel;->flushInbound(ZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 381
    return-object p0
.end method

.method public flushOutbound()Lio/netty/channel/embedded/EmbeddedChannel;
    .locals 1

    .line 463
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkOpen(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-direct {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->flushOutbound0()V

    .line 466
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkException(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 467
    return-object p0
.end method

.method public freezeTime()V
    .locals 1

    .line 665
    invoke-direct {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->embeddedEventLoop()Lio/netty/channel/embedded/EmbeddedEventLoop;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->freezeTime()V

    .line 666
    return-void
.end method

.method protected handleInboundMessage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 815
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 816
    return-void
.end method

.method protected handleOutboundMessage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 808
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 809
    return-void
.end method

.method public hasPendingTasks()Z
    .locals 4

    .line 617
    invoke-direct {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->embeddedEventLoop()Lio/netty/channel/embedded/EmbeddedEventLoop;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->hasPendingNormalTasks()Z

    move-result v0

    if-nez v0, :cond_1

    .line 618
    invoke-direct {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->embeddedEventLoop()Lio/netty/channel/embedded/EmbeddedEventLoop;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->nextScheduledTask()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 617
    :goto_1
    return v0
.end method

.method public inboundMessages()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    .line 276
    :cond_0
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    .line 266
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->state:Lio/netty/channel/embedded/EmbeddedChannel$State;

    sget-object v1, Lio/netty/channel/embedded/EmbeddedChannel$State;->ACTIVE:Lio/netty/channel/embedded/EmbeddedChannel$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isCompatible(Lio/netty/channel/EventLoop;)Z
    .locals 1
    .param p1, "loop"    # Lio/netty/channel/EventLoop;

    .line 738
    instance-of v0, p1, Lio/netty/channel/embedded/EmbeddedEventLoop;

    return v0
.end method

.method public isOpen()Z
    .locals 2

    .line 261
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->state:Lio/netty/channel/embedded/EmbeddedChannel$State;

    sget-object v1, Lio/netty/channel/embedded/EmbeddedChannel$State;->CLOSED:Lio/netty/channel/embedded/EmbeddedChannel$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastInboundBuffer()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public lastOutboundBuffer()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method protected localAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 743
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->LOCAL_ADDRESS:Ljava/net/SocketAddress;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 251
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->metadata:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method protected final newChannelPipeline()Lio/netty/channel/DefaultChannelPipeline;
    .locals 1

    .line 246
    new-instance v0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedChannelPipeline;

    invoke-direct {v0, p0, p0}, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedChannelPipeline;-><init>(Lio/netty/channel/embedded/EmbeddedChannel;Lio/netty/channel/embedded/EmbeddedChannel;)V

    return-object v0
.end method

.method protected newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 2

    .line 780
    new-instance v0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;-><init>(Lio/netty/channel/embedded/EmbeddedChannel;Lio/netty/channel/embedded/EmbeddedChannel$1;)V

    return-object v0
.end method

.method public outboundMessages()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    .line 294
    :cond_0
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    return-object v0
.end method

.method public readInbound()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    invoke-static {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->poll(Ljava/util/Queue;)Ljava/lang/Object;

    move-result-object v0

    .line 311
    .local v0, "message":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 312
    const-string v1, "Caller of readInbound() will handle the message from this point"

    invoke-static {v0, v1}, Lio/netty/util/ReferenceCountUtil;->touch(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_0
    return-object v0
.end method

.method public readOutbound()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    invoke-static {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->poll(Ljava/util/Queue;)Ljava/lang/Object;

    move-result-object v0

    .line 323
    .local v0, "message":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 324
    const-string v1, "Caller of readOutbound() will handle the message from this point."

    invoke-static {v0, v1}, Lio/netty/util/ReferenceCountUtil;->touch(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_0
    return-object v0
.end method

.method public register()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->loop:Lio/netty/channel/embedded/EmbeddedEventLoop;

    invoke-virtual {v0, p0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 237
    .local v0, "future":Lio/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v1

    .line 239
    .local v1, "cause":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 240
    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 242
    :cond_0
    return-void

    .line 237
    .end local v1    # "cause":Ljava/lang/Throwable;
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public releaseInbound()Z
    .locals 1

    .line 521
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    invoke-static {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->releaseAll(Ljava/util/Queue;)Z

    move-result v0

    return v0
.end method

.method public releaseOutbound()Z
    .locals 1

    .line 529
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    invoke-static {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->releaseAll(Ljava/util/Queue;)Z

    move-result v0

    return v0
.end method

.method protected remoteAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 748
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->REMOTE_ADDRESS:Ljava/net/SocketAddress;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public runPendingTasks()V
    .locals 1

    .line 597
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->embeddedEventLoop()Lio/netty/channel/embedded/EmbeddedEventLoop;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->runTasks()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    goto :goto_0

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->recordException(Ljava/lang/Throwable;)V

    .line 603
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->embeddedEventLoop()Lio/netty/channel/embedded/EmbeddedEventLoop;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->runScheduledTasks()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 606
    goto :goto_1

    .line 604
    :catch_1
    move-exception v0

    .line 605
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->recordException(Ljava/lang/Throwable;)V

    .line 607
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public runScheduledPendingTasks()J
    .locals 3

    .line 628
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->embeddedEventLoop()Lio/netty/channel/embedded/EmbeddedEventLoop;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->runScheduledTasks()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->recordException(Ljava/lang/Throwable;)V

    .line 631
    invoke-direct {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->embeddedEventLoop()Lio/netty/channel/embedded/EmbeddedEventLoop;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/embedded/EmbeddedEventLoop;->nextScheduledTask()J

    move-result-wide v1

    return-wide v1
.end method

.method public unfreezeTime()V
    .locals 1

    .line 676
    invoke-direct {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->embeddedEventLoop()Lio/netty/channel/embedded/EmbeddedEventLoop;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->unfreezeTime()V

    .line 677
    return-void
.end method

.method public unsafe()Lio/netty/channel/Channel$Unsafe;
    .locals 1

    .line 785
    invoke-super {p0}, Lio/netty/channel/AbstractChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    check-cast v0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    iget-object v0, v0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;->wrapped:Lio/netty/channel/Channel$Unsafe;

    return-object v0
.end method

.method public varargs writeInbound([Ljava/lang/Object;)Z
    .locals 5
    .param p1, "msgs"    # [Ljava/lang/Object;

    .line 337
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->ensureOpen()V

    .line 338
    array-length v0, p1

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    invoke-static {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->isNotEmpty(Ljava/util/Queue;)Z

    move-result v0

    return v0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 343
    .local v0, "p":Lio/netty/channel/ChannelPipeline;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 344
    .local v4, "m":Ljava/lang/Object;
    invoke-interface {v0, v4}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 343
    .end local v4    # "m":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 347
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lio/netty/channel/embedded/EmbeddedChannel;->flushInbound(ZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 348
    iget-object v1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    invoke-static {v1}, Lio/netty/channel/embedded/EmbeddedChannel;->isNotEmpty(Ljava/util/Queue;)Z

    move-result v1

    return v1
.end method

.method public writeOneInbound(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 358
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->writeOneInbound(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public writeOneInbound(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 368
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkOpen(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 371
    :cond_0
    invoke-direct {p0, p2}, Lio/netty/channel/embedded/EmbeddedChannel;->checkException(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public writeOneOutbound(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 441
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->writeOneOutbound(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public writeOneOutbound(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 451
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkOpen(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/embedded/EmbeddedChannel;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 454
    :cond_0
    invoke-direct {p0, p2}, Lio/netty/channel/embedded/EmbeddedChannel;->checkException(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs writeOutbound([Ljava/lang/Object;)Z
    .locals 5
    .param p1, "msgs"    # [Ljava/lang/Object;

    .line 400
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->ensureOpen()V

    .line 401
    array-length v0, p1

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    invoke-static {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->isNotEmpty(Ljava/util/Queue;)Z

    move-result v0

    return v0

    .line 405
    :cond_0
    array-length v0, p1

    invoke-static {v0}, Lio/netty/util/internal/RecyclableArrayList;->newInstance(I)Lio/netty/util/internal/RecyclableArrayList;

    move-result-object v0

    .line 407
    .local v0, "futures":Lio/netty/util/internal/RecyclableArrayList;
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 408
    .local v3, "m":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 409
    goto :goto_1

    .line 411
    :cond_1
    invoke-virtual {p0, v3}, Lio/netty/channel/embedded/EmbeddedChannel;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/netty/util/internal/RecyclableArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    nop

    .end local v3    # "m":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    :cond_2
    :goto_1
    invoke-direct {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->flushOutbound0()V

    .line 416
    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->size()I

    move-result v1

    .line 417
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 418
    invoke-virtual {v0, v2}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/channel/ChannelFuture;

    .line 419
    .local v3, "future":Lio/netty/channel/ChannelFuture;
    invoke-interface {v3}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 420
    invoke-direct {p0, v3}, Lio/netty/channel/embedded/EmbeddedChannel;->recordException(Lio/netty/channel/ChannelFuture;)V

    goto :goto_3

    .line 423
    :cond_3
    iget-object v4, p0, Lio/netty/channel/embedded/EmbeddedChannel;->recordExceptionListener:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v3, v4}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 417
    .end local v3    # "future":Lio/netty/channel/ChannelFuture;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 427
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkException()V

    .line 428
    iget-object v2, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    invoke-static {v2}, Lio/netty/channel/embedded/EmbeddedChannel;->isNotEmpty(Ljava/util/Queue;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 428
    return v2

    .line 430
    .end local v1    # "size":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 431
    throw v1
.end method
