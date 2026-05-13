.class public final Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;
.super Ljava/lang/Object;
.source "Http2StreamChannelBootstrap.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_ATTRIBUTE_ARRAY:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "Lio/netty/util/AttributeKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_OPTION_ARRAY:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final attrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/util/AttributeKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final channel:Lio/netty/channel/Channel;

.field private volatile handler:Lio/netty/channel/ChannelHandler;

.field private volatile multiplexCtx:Lio/netty/channel/ChannelHandlerContext;

.field private final options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    nop

    .line 42
    const-class v0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 44
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/util/Map$Entry;

    sput-object v1, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->EMPTY_OPTION_ARRAY:[Ljava/util/Map$Entry;

    .line 46
    new-array v0, v0, [Ljava/util/Map$Entry;

    sput-object v0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->EMPTY_ATTRIBUTE_ARRAY:[Ljava/util/Map$Entry;

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/Channel;)V
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->options:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->attrs:Ljava/util/Map;

    .line 59
    const-string v0, "channel"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/Channel;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->channel:Lio/netty/channel/Channel;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;)Lio/netty/channel/Channel;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;

    .line 41
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->channel:Lio/netty/channel/Channel;

    return-object v0
.end method

.method private findCtx()Lio/netty/channel/ChannelHandlerContext;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->multiplexCtx:Lio/netty/channel/ChannelHandlerContext;

    .line 142
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    return-object v0

    .line 145
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->channel:Lio/netty/channel/Channel;

    invoke-interface {v1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    .line 146
    .local v1, "pipeline":Lio/netty/channel/ChannelPipeline;
    const-class v2, Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->context(Ljava/lang/Class;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    .line 147
    if-nez v0, :cond_1

    .line 148
    const-class v2, Lio/netty/handler/codec/http2/Http2MultiplexHandler;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->context(Ljava/lang/Class;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    .line 150
    :cond_1
    if-nez v0, :cond_3

    .line 151
    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->channel:Lio/netty/channel/Channel;

    invoke-interface {v2}, Lio/netty/channel/Channel;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-static {v4}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lio/netty/handler/codec/http2/Http2MultiplexHandler;

    .line 153
    invoke-static {v4}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must be in the ChannelPipeline of Channel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->channel:Lio/netty/channel/Channel;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_2
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v2

    .line 159
    :cond_3
    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->multiplexCtx:Lio/netty/channel/ChannelHandlerContext;

    .line 160
    return-object v0
.end method

.method private init(Lio/netty/channel/Channel;)V
    .locals 5
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 213
    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 214
    .local v0, "p":Lio/netty/channel/ChannelPipeline;
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->handler:Lio/netty/channel/ChannelHandler;

    .line 215
    .local v1, "handler":Lio/netty/channel/ChannelHandler;
    if-eqz v1, :cond_0

    .line 216
    const/4 v2, 0x1

    new-array v2, v2, [Lio/netty/channel/ChannelHandler;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-interface {v0, v2}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 219
    :cond_0
    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->options:Ljava/util/Map;

    monitor-enter v2

    .line 220
    :try_start_0
    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->options:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->EMPTY_OPTION_ARRAY:[Ljava/util/Map$Entry;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Map$Entry;

    .line 221
    .local v3, "optionArray":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/channel/ChannelOption<*>;Ljava/lang/Object;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-static {p1, v3}, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->setChannelOptions(Lio/netty/channel/Channel;[Ljava/util/Map$Entry;)V

    .line 224
    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->attrs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    sget-object v4, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->EMPTY_ATTRIBUTE_ARRAY:[Ljava/util/Map$Entry;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/Map$Entry;

    invoke-static {p1, v2}, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->setAttributes(Lio/netty/channel/Channel;[Ljava/util/Map$Entry;)V

    .line 225
    return-void

    .line 221
    .end local v3    # "optionArray":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/channel/ChannelOption<*>;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static setAttributes(Lio/netty/channel/Channel;[Ljava/util/Map$Entry;)V
    .locals 6
    .param p0, "channel"    # Lio/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "[",
            "Ljava/util/Map$Entry<",
            "Lio/netty/util/AttributeKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 250
    .local p1, "options":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/util/AttributeKey<*>;Ljava/lang/Object;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 252
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/netty/util/AttributeKey<*>;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/util/AttributeKey;

    .line 253
    .local v3, "key":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<Ljava/lang/Object;>;"
    invoke-interface {p0, v3}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/netty/util/Attribute;->set(Ljava/lang/Object;)V

    .line 250
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/netty/util/AttributeKey<*>;Ljava/lang/Object;>;"
    .end local v3    # "key":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<Ljava/lang/Object;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_0
    return-void
.end method

.method private static setChannelOption(Lio/netty/channel/Channel;Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V
    .locals 4
    .param p0, "channel"    # Lio/netty/channel/Channel;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 238
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<*>;"
    move-object v0, p1

    .line 239
    .local v0, "opt":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<Ljava/lang/Object;>;"
    :try_start_0
    invoke-interface {p0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lio/netty/channel/ChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    sget-object v1, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Unknown channel option \'{}\' for channel \'{}\'"

    invoke-interface {v1, v2, p1, p0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    .end local v0    # "opt":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<Ljava/lang/Object;>;"
    :cond_0
    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    .line 243
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to set channel option \'{}\' with value \'{}\' for channel \'{}\'"

    filled-new-array {p1, p2, p0, v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static setChannelOptions(Lio/netty/channel/Channel;[Ljava/util/Map$Entry;)V
    .locals 5
    .param p0, "channel"    # Lio/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "[",
            "Ljava/util/Map$Entry<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 229
    .local p1, "options":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Lio/netty/channel/ChannelOption<*>;Ljava/lang/Object;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 230
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/netty/channel/ChannelOption<*>;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/channel/ChannelOption;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->setChannelOption(Lio/netty/channel/Channel;Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V

    .line 229
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/netty/channel/ChannelOption<*>;Ljava/lang/Object;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method


# virtual methods
.method public attr(Lio/netty/util/AttributeKey;Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;TT;)",
            "Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;"
        }
    .end annotation

    .line 84
    .local p1, "key":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    if-nez p2, :cond_0

    .line 86
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :goto_0
    return-object p0
.end method

.method public handler(Lio/netty/channel/ChannelHandler;)Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;
    .locals 1
    .param p1, "handler"    # Lio/netty/channel/ChannelHandler;

    .line 97
    const-string v0, "handler"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelHandler;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->handler:Lio/netty/channel/ChannelHandler;

    .line 98
    return-object p0
.end method

.method public open()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/handler/codec/http2/Http2StreamChannel;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->open(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public open(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/handler/codec/http2/Http2StreamChannel;",
            ">;)",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/handler/codec/http2/Http2StreamChannel;",
            ">;"
        }
    .end annotation

    .line 115
    .local p1, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/handler/codec/http2/Http2StreamChannel;>;"
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->findCtx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    .line 116
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 117
    .local v1, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {p0, v0, p1}, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->open0(Lio/netty/channel/ChannelHandlerContext;Lio/netty/util/concurrent/Promise;)V

    goto :goto_0

    .line 120
    :cond_0
    move-object v2, v0

    .line 121
    .local v2, "finalCtx":Lio/netty/channel/ChannelHandlerContext;
    new-instance v3, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$1;

    invoke-direct {v3, p0, v2, p1}, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$1;-><init>(Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;Lio/netty/channel/ChannelHandlerContext;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v1, v3}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v0    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local v1    # "executor":Lio/netty/util/concurrent/EventExecutor;
    .end local v2    # "finalCtx":Lio/netty/channel/ChannelHandlerContext;
    :goto_0
    goto :goto_1

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 135
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_1
    return-object p1
.end method

.method public open0(Lio/netty/channel/ChannelHandlerContext;Lio/netty/util/concurrent/Promise;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/handler/codec/http2/Http2StreamChannel;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/handler/codec/http2/Http2StreamChannel;>;"
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    invoke-interface {p2}, Lio/netty/util/concurrent/Promise;->setUncancellable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    return-void

    .line 174
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    instance-of v0, v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    if-eqz v0, :cond_1

    .line 175
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->newOutboundStream()Lio/netty/handler/codec/http2/Http2StreamChannel;

    move-result-object v0

    .local v0, "streamChannel":Lio/netty/handler/codec/http2/Http2StreamChannel;
    goto :goto_0

    .line 177
    .end local v0    # "streamChannel":Lio/netty/handler/codec/http2/Http2StreamChannel;
    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2MultiplexHandler;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2MultiplexHandler;->newOutboundStream()Lio/netty/handler/codec/http2/Http2StreamChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 182
    .restart local v0    # "streamChannel":Lio/netty/handler/codec/http2/Http2StreamChannel;
    :goto_0
    nop

    .line 184
    :try_start_1
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->init(Lio/netty/channel/Channel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    nop

    .line 191
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/channel/EventLoop;->register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    .line 192
    .local v1, "future":Lio/netty/channel/ChannelFuture;
    new-instance v2, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$2;

    invoke-direct {v2, p0, p2, v0}, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$2;-><init>(Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;Lio/netty/util/concurrent/Promise;Lio/netty/handler/codec/http2/Http2StreamChannel;)V

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 210
    return-void

    .line 185
    .end local v1    # "future":Lio/netty/channel/ChannelFuture;
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/Exception;
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2StreamChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/Channel$Unsafe;->closeForcibly()V

    .line 187
    invoke-interface {p2, v1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 188
    return-void

    .line 179
    .end local v0    # "streamChannel":Lio/netty/handler/codec/http2/Http2StreamChannel;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 181
    return-void

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public option(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;TT;)",
            "Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;"
        }
    .end annotation

    .line 67
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "option"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->options:Ljava/util/Map;

    monitor-enter v0

    .line 70
    if-nez p2, :cond_0

    .line 71
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->options:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->options:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :goto_0
    monitor-exit v0

    .line 76
    return-object p0

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
