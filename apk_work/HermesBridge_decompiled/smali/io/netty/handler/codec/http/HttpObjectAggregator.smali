.class public Lio/netty/handler/codec/http/HttpObjectAggregator;
.super Lio/netty/handler/codec/MessageAggregator;
.source "HttpObjectAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;,
        Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpRequest;,
        Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageAggregator<",
        "Lio/netty/handler/codec/http/HttpObject;",
        "Lio/netty/handler/codec/http/HttpMessage;",
        "Lio/netty/handler/codec/http/HttpContent;",
        "Lio/netty/handler/codec/http/FullHttpMessage;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CONTINUE:Lio/netty/handler/codec/http/FullHttpResponse;

.field private static final EXPECTATION_FAILED:Lio/netty/handler/codec/http/FullHttpResponse;

.field private static final TOO_LARGE:Lio/netty/handler/codec/http/FullHttpResponse;

.field private static final TOO_LARGE_CLOSE:Lio/netty/handler/codec/http/FullHttpResponse;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final closeOnExpectationFailed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 86
    nop

    .line 88
    const-class v0, Lio/netty/handler/codec/http/HttpObjectAggregator;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 89
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->CONTINUE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v3, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;)V

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->CONTINUE:Lio/netty/handler/codec/http/FullHttpResponse;

    .line 91
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->EXPECTATION_FAILED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v3, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;)V

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->EXPECTATION_FAILED:Lio/netty/handler/codec/http/FullHttpResponse;

    .line 93
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUEST_ENTITY_TOO_LARGE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v3, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;)V

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->TOO_LARGE_CLOSE:Lio/netty/handler/codec/http/FullHttpResponse;

    .line 95
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUEST_ENTITY_TOO_LARGE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v3, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;)V

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->TOO_LARGE:Lio/netty/handler/codec/http/FullHttpResponse;

    .line 99
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->EXPECTATION_FAILED:Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 100
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->TOO_LARGE:Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 102
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->TOO_LARGE_CLOSE:Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 103
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->TOO_LARGE_CLOSE:Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderValues;->CLOSE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 104
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxContentLength"    # I

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/HttpObjectAggregator;-><init>(IZ)V

    .line 116
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "maxContentLength"    # I
    .param p2, "closeOnExpectationFailed"    # Z

    .line 128
    invoke-direct {p0, p1}, Lio/netty/handler/codec/MessageAggregator;-><init>(I)V

    .line 129
    iput-boolean p2, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->closeOnExpectationFailed:Z

    .line 130
    return-void
.end method

.method static synthetic access$000()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 86
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method private static continueResponse(Lio/netty/handler/codec/http/HttpMessage;ILio/netty/channel/ChannelPipeline;)Ljava/lang/Object;
    .locals 4
    .param p0, "start"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "maxContentLength"    # I
    .param p2, "pipeline"    # Lio/netty/channel/ChannelPipeline;

    .line 162
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpUtil;->isUnsupportedExpectation(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lio/netty/handler/codec/http/HttpExpectationFailedEvent;->INSTANCE:Lio/netty/handler/codec/http/HttpExpectationFailedEvent;

    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 165
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->EXPECTATION_FAILED:Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpResponse;->retainedDuplicate()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpUtil;->is100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lio/netty/handler/codec/http/HttpUtil;->getContentLength(Lio/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 169
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->CONTINUE:Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpResponse;->retainedDuplicate()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0

    .line 171
    :cond_1
    sget-object v0, Lio/netty/handler/codec/http/HttpExpectationFailedEvent;->INSTANCE:Lio/netty/handler/codec/http/HttpExpectationFailedEvent;

    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 172
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->TOO_LARGE:Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpResponse;->retainedDuplicate()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0

    .line 175
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic aggregate(Lio/netty/buffer/ByteBufHolder;Lio/netty/buffer/ByteBufHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    check-cast p1, Lio/netty/handler/codec/http/FullHttpMessage;

    check-cast p2, Lio/netty/handler/codec/http/HttpContent;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpObjectAggregator;->aggregate(Lio/netty/handler/codec/http/FullHttpMessage;Lio/netty/handler/codec/http/HttpContent;)V

    return-void
.end method

.method protected aggregate(Lio/netty/handler/codec/http/FullHttpMessage;Lio/netty/handler/codec/http/HttpContent;)V
    .locals 2
    .param p1, "aggregated"    # Lio/netty/handler/codec/http/FullHttpMessage;
    .param p2, "content"    # Lio/netty/handler/codec/http/HttpContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 222
    instance-of v0, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v0, :cond_0

    .line 224
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    move-object v1, p2

    check-cast v1, Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {v1}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->setTrailingHeaders(Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 226
    :cond_0
    return-void
.end method

.method protected bridge synthetic beginAggregation(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    check-cast p1, Lio/netty/handler/codec/http/HttpMessage;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpObjectAggregator;->beginAggregation(Lio/netty/handler/codec/http/HttpMessage;Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object p1

    return-object p1
.end method

.method protected beginAggregation(Lio/netty/handler/codec/http/HttpMessage;Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 3
    .param p1, "start"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p2, "content"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    instance-of v0, p1, Lio/netty/handler/codec/http/FullHttpMessage;

    if-nez v0, :cond_2

    .line 207
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/netty/handler/codec/http/HttpUtil;->setTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;Z)V

    .line 210
    instance-of v0, p1, Lio/netty/handler/codec/http/HttpRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpRequest;

    move-object v2, p1

    check-cast v2, Lio/netty/handler/codec/http/HttpRequest;

    invoke-direct {v0, v2, p2, v1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpRequest;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;)V

    .local v0, "ret":Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;
    goto :goto_0

    .line 212
    .end local v0    # "ret":Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;
    :cond_0
    instance-of v0, p1, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_1

    .line 213
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;

    move-object v2, p1

    check-cast v2, Lio/netty/handler/codec/http/HttpResponse;

    invoke-direct {v0, v2, p2, v1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpResponse;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 217
    .restart local v0    # "ret":Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;
    :goto_0
    return-object v0

    .line 215
    .end local v0    # "ret":Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;
    :cond_1
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 205
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected closeAfterContinueResponse(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 191
    iget-boolean v0, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->closeOnExpectationFailed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator;->ignoreContentAfterContinueResponse(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected bridge synthetic finishAggregation(Lio/netty/buffer/ByteBufHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    check-cast p1, Lio/netty/handler/codec/http/FullHttpMessage;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator;->finishAggregation(Lio/netty/handler/codec/http/FullHttpMessage;)V

    return-void
.end method

.method protected finishAggregation(Lio/netty/handler/codec/http/FullHttpMessage;)V
    .locals 3
    .param p1, "aggregated"    # Lio/netty/handler/codec/http/FullHttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    invoke-static {p1}, Lio/netty/handler/codec/http/HttpUtil;->isContentLengthSet(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-interface {p1}, Lio/netty/handler/codec/http/FullHttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    .line 239
    invoke-interface {p1}, Lio/netty/handler/codec/http/FullHttpMessage;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 241
    :cond_0
    return-void
.end method

.method protected handleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "oversized"    # Lio/netty/handler/codec/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_2

    .line 250
    instance-of v0, p2, Lio/netty/handler/codec/http/FullHttpMessage;

    if-nez v0, :cond_1

    .line 251
    invoke-static {p2}, Lio/netty/handler/codec/http/HttpUtil;->is100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lio/netty/handler/codec/http/HttpUtil;->isKeepAlive(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->TOO_LARGE:Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpResponse;->retainedDuplicate()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/http/HttpObjectAggregator$2;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$2;-><init>(Lio/netty/handler/codec/http/HttpObjectAggregator;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    .line 252
    :cond_1
    :goto_0
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->TOO_LARGE_CLOSE:Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpResponse;->retainedDuplicate()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 253
    .local v0, "future":Lio/netty/channel/ChannelFuture;
    new-instance v1, Lio/netty/handler/codec/http/HttpObjectAggregator$1;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$1;-><init>(Lio/netty/handler/codec/http/HttpObjectAggregator;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 262
    .end local v0    # "future":Lio/netty/channel/ChannelFuture;
    nop

    .line 279
    :goto_1
    return-void

    .line 273
    :cond_2
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_3

    .line 274
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 275
    new-instance v0, Lio/netty/handler/codec/http/TooLongHttpContentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response entity too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/TooLongHttpContentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected bridge synthetic handleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    check-cast p2, Lio/netty/handler/codec/http/HttpMessage;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpObjectAggregator;->handleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpMessage;)V

    return-void
.end method

.method protected ignoreContentAfterContinueResponse(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "msg"    # Ljava/lang/Object;

    .line 196
    instance-of v0, p1, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_0

    .line 197
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/HttpResponse;

    .line 198
    .local v0, "httpResponse":Lio/netty/handler/codec/http/HttpResponse;
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->codeClass()Lio/netty/handler/codec/http/HttpStatusClass;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpStatusClass;->CLIENT_ERROR:Lio/netty/handler/codec/http/HttpStatusClass;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpStatusClass;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 200
    .end local v0    # "httpResponse":Lio/netty/handler/codec/http/HttpResponse;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isAggregated(Lio/netty/handler/codec/http/HttpObject;)Z
    .locals 1
    .param p1, "msg"    # Lio/netty/handler/codec/http/HttpObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    instance-of v0, p1, Lio/netty/handler/codec/http/FullHttpMessage;

    return v0
.end method

.method protected bridge synthetic isAggregated(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    check-cast p1, Lio/netty/handler/codec/http/HttpObject;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator;->isAggregated(Lio/netty/handler/codec/http/HttpObject;)Z

    move-result p1

    return p1
.end method

.method protected isContentLengthInvalid(Lio/netty/handler/codec/http/HttpMessage;I)Z
    .locals 5
    .param p1, "start"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p2, "maxContentLength"    # I

    .line 155
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v0, v1}, Lio/netty/handler/codec/http/HttpUtil;->getContentLength(Lio/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v3, p2

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v2
.end method

.method protected bridge synthetic isContentLengthInvalid(Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    check-cast p1, Lio/netty/handler/codec/http/HttpMessage;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpObjectAggregator;->isContentLengthInvalid(Lio/netty/handler/codec/http/HttpMessage;I)Z

    move-result p1

    return p1
.end method

.method protected isContentMessage(Lio/netty/handler/codec/http/HttpObject;)Z
    .locals 1
    .param p1, "msg"    # Lio/netty/handler/codec/http/HttpObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    instance-of v0, p1, Lio/netty/handler/codec/http/HttpContent;

    return v0
.end method

.method protected bridge synthetic isContentMessage(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    check-cast p1, Lio/netty/handler/codec/http/HttpObject;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator;->isContentMessage(Lio/netty/handler/codec/http/HttpObject;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic isLastContentMessage(Lio/netty/buffer/ByteBufHolder;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    check-cast p1, Lio/netty/handler/codec/http/HttpContent;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator;->isLastContentMessage(Lio/netty/handler/codec/http/HttpContent;)Z

    move-result p1

    return p1
.end method

.method protected isLastContentMessage(Lio/netty/handler/codec/http/HttpContent;)Z
    .locals 1
    .param p1, "msg"    # Lio/netty/handler/codec/http/HttpContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    instance-of v0, p1, Lio/netty/handler/codec/http/LastHttpContent;

    return v0
.end method

.method protected isStartMessage(Lio/netty/handler/codec/http/HttpObject;)Z
    .locals 1
    .param p1, "msg"    # Lio/netty/handler/codec/http/HttpObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    instance-of v0, p1, Lio/netty/handler/codec/http/HttpMessage;

    return v0
.end method

.method protected bridge synthetic isStartMessage(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    check-cast p1, Lio/netty/handler/codec/http/HttpObject;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator;->isStartMessage(Lio/netty/handler/codec/http/HttpObject;)Z

    move-result p1

    return p1
.end method

.method protected newContinueResponse(Lio/netty/handler/codec/http/HttpMessage;ILio/netty/channel/ChannelPipeline;)Ljava/lang/Object;
    .locals 3
    .param p1, "start"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p2, "maxContentLength"    # I
    .param p3, "pipeline"    # Lio/netty/channel/ChannelPipeline;

    .line 180
    invoke-static {p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectAggregator;->continueResponse(Lio/netty/handler/codec/http/HttpMessage;ILio/netty/channel/ChannelPipeline;)Ljava/lang/Object;

    move-result-object v0

    .line 183
    .local v0, "response":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 184
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->EXPECT:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 186
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic newContinueResponse(Ljava/lang/Object;ILio/netty/channel/ChannelPipeline;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    check-cast p1, Lio/netty/handler/codec/http/HttpMessage;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectAggregator;->newContinueResponse(Lio/netty/handler/codec/http/HttpMessage;ILio/netty/channel/ChannelPipeline;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
