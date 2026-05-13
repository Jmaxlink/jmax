.class public abstract Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;
.super Ljava/lang/Object;
.source "WebSocketServerHandshaker.java"


# static fields
.field public static final SUB_PROTOCOL_WILDCARD:Ljava/lang/String; = "*"

.field protected static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final decoderConfig:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

.field private selectedSubprotocol:Ljava/lang/String;

.field private final subprotocols:[Ljava/lang/String;

.field private final uri:Ljava/lang/String;

.field private final version:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method protected constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "subprotocols"    # Ljava/lang/String;
    .param p4, "maxFramePayloadLength"    # I

    .line 90
    invoke-static {}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->newBuilder()Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p4}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->maxFramePayloadLength(I)Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->build()Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    move-result-object v0

    .line 90
    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/lang/String;Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V

    .line 93
    return-void
.end method

.method protected constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/lang/String;Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V
    .locals 3
    .param p1, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "subprotocols"    # Ljava/lang/String;
    .param p4, "decoderConfig"    # Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->version:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    .line 111
    iput-object p2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->uri:Ljava/lang/String;

    .line 112
    if-eqz p3, :cond_1

    .line 113
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "subprotocolArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 115
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "i":I
    :cond_0
    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->subprotocols:[Ljava/lang/String;

    .line 118
    .end local v0    # "subprotocolArray":[Ljava/lang/String;
    goto :goto_1

    .line 119
    :cond_1
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->subprotocols:[Ljava/lang/String;

    .line 121
    :goto_1
    const-string v0, "decoderConfig"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->decoderConfig:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    .line 122
    return-void
.end method

.method private close0(Lio/netty/channel/ChannelOutboundInvoker;Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "invoker"    # Lio/netty/channel/ChannelOutboundInvoker;
    .param p2, "frame"    # Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 462
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    sget-object v1, Lio/netty/channel/ChannelFutureListener;->CLOSE:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "frame"    # Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    .line 412
    const-string v0, "channel"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 413
    invoke-interface {p1}, Lio/netty/channel/Channel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->close(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "frame"    # Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 430
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->close0(Lio/netty/channel/ChannelOutboundInvoker;Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "frame"    # Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    .line 442
    const-string v0, "ctx"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 443
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "frame"    # Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 457
    const-string v0, "ctx"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 458
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->close0(Lio/netty/channel/ChannelOutboundInvoker;Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    sget-object v1, Lio/netty/channel/ChannelFutureListener;->CLOSE:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public decoderConfig()Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;
    .locals 1

    .line 162
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->decoderConfig:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    return-object v0
.end method

.method public handshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/FullHttpRequest;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "req"    # Lio/netty/handler/codec/http/FullHttpRequest;

    .line 177
    const/4 v0, 0x0

    invoke-interface {p1}, Lio/netty/channel/Channel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->handshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/FullHttpRequest;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final handshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/FullHttpRequest;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 7
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "req"    # Lio/netty/handler/codec/http/FullHttpRequest;
    .param p3, "responseHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 199
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "{} WebSocket version {} server handshake"

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->version()Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    :cond_0
    invoke-virtual {p0, p2, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->newHandshakeResponse(Lio/netty/handler/codec/http/FullHttpRequest;Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    .line 203
    .local v0, "response":Lio/netty/handler/codec/http/FullHttpResponse;
    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    .line 204
    .local v1, "p":Lio/netty/channel/ChannelPipeline;
    const-class v2, Lio/netty/handler/codec/http/HttpObjectAggregator;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 205
    const-class v2, Lio/netty/handler/codec/http/HttpObjectAggregator;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->remove(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    .line 207
    :cond_1
    const-class v2, Lio/netty/handler/codec/http/HttpContentCompressor;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 208
    const-class v2, Lio/netty/handler/codec/http/HttpContentCompressor;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->remove(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    .line 210
    :cond_2
    const-class v2, Lio/netty/handler/codec/http/HttpRequestDecoder;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->context(Ljava/lang/Class;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    .line 212
    .local v2, "ctx":Lio/netty/channel/ChannelHandlerContext;
    const-string v3, "wsencoder"

    const-string v4, "wsdecoder"

    if-nez v2, :cond_4

    .line 214
    const-class v5, Lio/netty/handler/codec/http/HttpServerCodec;

    invoke-interface {v1, v5}, Lio/netty/channel/ChannelPipeline;->context(Ljava/lang/Class;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    .line 215
    if-nez v2, :cond_3

    .line 216
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "No HttpDecoder and no HttpServerCodec in the pipeline"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v3}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 218
    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpResponse;->release()Z

    .line 219
    return-object p4

    .line 221
    :cond_3
    invoke-interface {v2}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->newWebSocketEncoder()Lio/netty/handler/codec/http/websocketx/WebSocketFrameEncoder;

    move-result-object v6

    invoke-interface {v1, v5, v3, v6}, Lio/netty/channel/ChannelPipeline;->addBefore(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 222
    invoke-interface {v2}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->newWebsocketDecoder()Lio/netty/handler/codec/http/websocketx/WebSocketFrameDecoder;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lio/netty/channel/ChannelPipeline;->addBefore(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 223
    invoke-interface {v2}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v3

    .local v3, "encoderName":Ljava/lang/String;
    goto :goto_0

    .line 225
    .end local v3    # "encoderName":Ljava/lang/String;
    :cond_4
    invoke-interface {v2}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->newWebsocketDecoder()Lio/netty/handler/codec/http/websocketx/WebSocketFrameDecoder;

    move-result-object v6

    invoke-interface {v1, v5, v4, v6}, Lio/netty/channel/ChannelPipeline;->replace(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandler;

    .line 227
    const-class v4, Lio/netty/handler/codec/http/HttpResponseEncoder;

    invoke-interface {v1, v4}, Lio/netty/channel/ChannelPipeline;->context(Ljava/lang/Class;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "encoderName":Ljava/lang/String;
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->newWebSocketEncoder()Lio/netty/handler/codec/http/websocketx/WebSocketFrameEncoder;

    move-result-object v5

    invoke-interface {v1, v4, v3, v5}, Lio/netty/channel/ChannelPipeline;->addBefore(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-object v3, v4

    .line 230
    .end local v4    # "encoderName":Ljava/lang/String;
    .restart local v3    # "encoderName":Ljava/lang/String;
    :goto_0
    invoke-interface {p1, v0}, Lio/netty/channel/Channel;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v4

    new-instance v5, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$1;

    invoke-direct {v5, p0, v3, p4}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$1;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;Ljava/lang/String;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v4, v5}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 242
    return-object p4
.end method

.method public handshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/HttpRequest;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "req"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 257
    const/4 v0, 0x0

    invoke-interface {p1}, Lio/netty/channel/Channel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->handshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/HttpRequest;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final handshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/HttpRequest;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 6
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "req"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p3, "responseHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 278
    instance-of v0, p2, Lio/netty/handler/codec/http/FullHttpRequest;

    if-eqz v0, :cond_0

    .line 279
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/FullHttpRequest;

    invoke-virtual {p0, p1, v0, p3, p4}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->handshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/FullHttpRequest;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 282
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "{} WebSocket version {} server handshake"

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->version()Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    :cond_1
    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 287
    .local v0, "p":Lio/netty/channel/ChannelPipeline;
    const-class v1, Lio/netty/handler/codec/http/HttpRequestDecoder;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->context(Ljava/lang/Class;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    .line 288
    .local v1, "ctx":Lio/netty/channel/ChannelHandlerContext;
    if-nez v1, :cond_2

    .line 290
    const-class v2, Lio/netty/handler/codec/http/HttpServerCodec;

    invoke-interface {v0, v2}, Lio/netty/channel/ChannelPipeline;->context(Ljava/lang/Class;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    .line 291
    if-nez v1, :cond_2

    .line 292
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No HttpDecoder and no HttpServerCodec in the pipeline"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v2}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 294
    return-object p4

    .line 298
    :cond_2
    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "aggregatorCtx":Ljava/lang/String;
    invoke-static {p2}, Lio/netty/handler/codec/http/HttpUtil;->isContentLengthSet(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p2}, Lio/netty/handler/codec/http/HttpUtil;->isTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->version:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    sget-object v4, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V00:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne v3, v4, :cond_4

    .line 303
    :cond_3
    const-string v2, "httpAggregator"

    .line 304
    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/netty/handler/codec/http/HttpObjectAggregator;

    const/16 v5, 0x2000

    invoke-direct {v4, v5}, Lio/netty/handler/codec/http/HttpObjectAggregator;-><init>(I)V

    invoke-interface {v0, v3, v2, v4}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 307
    :cond_4
    new-instance v3, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;

    invoke-direct {v3, p0, p4, p1, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;Lio/netty/channel/ChannelPromise;Lio/netty/channel/Channel;Lio/netty/handler/codec/http/HttpHeaders;)V

    const-string v4, "handshaker"

    invoke-interface {v0, v2, v4, v3}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 388
    :try_start_0
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    goto :goto_0

    .line 389
    :catchall_0
    move-exception v3

    .line 390
    .local v3, "cause":Ljava/lang/Throwable;
    invoke-interface {p4, v3}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 392
    .end local v3    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-object p4
.end method

.method public maxFramePayloadLength()I
    .locals 1

    .line 153
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->decoderConfig:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->maxFramePayloadLength()I

    move-result v0

    return v0
.end method

.method protected abstract newHandshakeResponse(Lio/netty/handler/codec/http/FullHttpRequest;Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/FullHttpResponse;
.end method

.method protected abstract newWebSocketEncoder()Lio/netty/handler/codec/http/websocketx/WebSocketFrameEncoder;
.end method

.method protected abstract newWebsocketDecoder()Lio/netty/handler/codec/http/websocketx/WebSocketFrameDecoder;
.end method

.method protected selectSubprotocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "requestedSubprotocols"    # Ljava/lang/String;

    .line 473
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->subprotocols:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 477
    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, "requestedSubprotocolArray":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 479
    .local v5, "p":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 481
    .local v6, "requestedSubprotocol":Ljava/lang/String;
    iget-object v7, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->subprotocols:[Ljava/lang/String;

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, v7, v9

    .line 482
    .local v10, "supportedSubprotocol":Ljava/lang/String;
    const-string v11, "*"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 483
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    .line 481
    .end local v10    # "supportedSubprotocol":Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 484
    .restart local v10    # "supportedSubprotocol":Ljava/lang/String;
    :cond_2
    :goto_2
    iput-object v6, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->selectedSubprotocol:Ljava/lang/String;

    .line 485
    return-object v6

    .line 478
    .end local v5    # "p":Ljava/lang/String;
    .end local v6    # "requestedSubprotocol":Ljava/lang/String;
    .end local v10    # "supportedSubprotocol":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 491
    :cond_4
    return-object v0

    .line 474
    .end local v1    # "requestedSubprotocolArray":[Ljava/lang/String;
    :cond_5
    :goto_3
    return-object v0
.end method

.method public selectedSubprotocol()Ljava/lang/String;
    .locals 1

    .line 501
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->selectedSubprotocol:Ljava/lang/String;

    return-object v0
.end method

.method public subprotocols()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 136
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->subprotocols:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 137
    return-object v0
.end method

.method public uri()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public version()Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .locals 1

    .line 144
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->version:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    return-object v0
.end method
