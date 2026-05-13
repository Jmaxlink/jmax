.class public final Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;
.super Lio/ktor/server/netty/NettyApplicationRequest;
.source "NettyHttp2ApplicationRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010&\u001a\u00020\'H\u0014R\u001d\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001b\u0010\u001a\u001a\u00020\u001b8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010 \u001a\u00020!X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%\u00a8\u0006("
    }
    d2 = {
        "Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;",
        "Lio/ktor/server/netty/NettyApplicationRequest;",
        "call",
        "Lio/ktor/server/application/ApplicationCall;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Lio/netty/channel/ChannelHandlerContext;",
        "nettyHeaders",
        "Lio/netty/handler/codec/http2/Http2Headers;",
        "contentByteChannel",
        "Lio/ktor/utils/io/ByteChannel;",
        "(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/CoroutineContext;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;Lio/ktor/utils/io/ByteChannel;)V",
        "contentActor",
        "Lkotlinx/coroutines/channels/SendChannel;",
        "Lio/netty/handler/codec/http2/Http2DataFrame;",
        "getContentActor$annotations",
        "()V",
        "getContentActor",
        "()Lkotlinx/coroutines/channels/SendChannel;",
        "getContentByteChannel",
        "()Lio/ktor/utils/io/ByteChannel;",
        "cookies",
        "Lio/ktor/server/request/RequestCookies;",
        "getCookies",
        "()Lio/ktor/server/request/RequestCookies;",
        "headers",
        "Lio/ktor/http/Headers;",
        "getHeaders",
        "()Lio/ktor/http/Headers;",
        "headers$delegate",
        "Lkotlin/Lazy;",
        "local",
        "Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;",
        "getLocal",
        "()Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;",
        "getNettyHeaders",
        "()Lio/netty/handler/codec/http2/Http2Headers;",
        "newDecoder",
        "Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;",
        "ktor-server-netty"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final contentActor:Lkotlinx/coroutines/channels/SendChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/SendChannel<",
            "Lio/netty/handler/codec/http2/Http2DataFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final contentByteChannel:Lio/ktor/utils/io/ByteChannel;

.field private final cookies:Lio/ktor/server/request/RequestCookies;

.field private final headers$delegate:Lkotlin/Lazy;

.field private final local:Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;

.field private final nettyHeaders:Lio/netty/handler/codec/http2/Http2Headers;


# direct methods
.method public constructor <init>(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/CoroutineContext;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;Lio/ktor/utils/io/ByteChannel;)V
    .locals 10
    .param p1, "call"    # Lio/ktor/server/application/ApplicationCall;
    .param p2, "coroutineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p3, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p4, "nettyHeaders"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p5, "contentByteChannel"    # Lio/ktor/utils/io/ByteChannel;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nettyHeaders"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentByteChannel"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    nop

    .line 32
    nop

    .line 33
    nop

    .line 34
    nop

    .line 35
    move-object v5, p5

    check-cast v5, Lio/ktor/utils/io/ByteReadChannel;

    .line 36
    const-string v0, ":path"

    invoke-interface {p4, v0}, Lio/netty/handler/codec/http2/Http2Headers;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "/"

    :cond_1
    move-object v6, v0

    .line 37
    nop

    .line 31
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lio/ktor/server/netty/NettyApplicationRequest;-><init>(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/CoroutineContext;Lio/netty/channel/ChannelHandlerContext;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/String;Z)V

    .line 29
    iput-object p4, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->nettyHeaders:Lio/netty/handler/codec/http2/Http2Headers;

    .line 30
    iput-object p5, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->contentByteChannel:Lio/ktor/utils/io/ByteChannel;

    .line 40
    new-instance v0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$headers$2;

    invoke-direct {v0, p0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$headers$2;-><init>(Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->headers$delegate:Lkotlin/Lazy;

    .line 54
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 55
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    .line 56
    nop

    .line 54
    new-instance v0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;

    const/4 v9, 0x0

    invoke-direct {v0, p0, v9}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest$contentActor$1;-><init>(Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/16 v7, 0xc

    const/4 v8, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/ActorKt;->actor$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->contentActor:Lkotlinx/coroutines/channels/SendChannel;

    .line 61
    new-instance v0, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;

    .line 62
    iget-object v1, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->nettyHeaders:Lio/netty/handler/codec/http2/Http2Headers;

    .line 63
    invoke-interface {p3}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v2

    instance-of v3, v2, Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_2

    check-cast v2, Ljava/net/InetSocketAddress;

    goto :goto_0

    :cond_2
    move-object v2, v9

    .line 64
    :goto_0
    invoke-interface {p3}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    instance-of v4, v3, Ljava/net/InetSocketAddress;

    if-eqz v4, :cond_3

    move-object v9, v3

    check-cast v9, Ljava/net/InetSocketAddress;

    .line 61
    :cond_3
    invoke-direct {v0, v1, v2, v9}, Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;-><init>(Lio/netty/handler/codec/http2/Http2Headers;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    iput-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->local:Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;

    .line 67
    new-instance v0, Lio/ktor/server/netty/NettyApplicationRequestCookies;

    move-object v1, p0

    check-cast v1, Lio/ktor/server/request/ApplicationRequest;

    invoke-direct {v0, v1}, Lio/ktor/server/netty/NettyApplicationRequestCookies;-><init>(Lio/ktor/server/request/ApplicationRequest;)V

    check-cast v0, Lio/ktor/server/request/RequestCookies;

    iput-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->cookies:Lio/ktor/server/request/RequestCookies;

    .line 25
    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/CoroutineContext;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;Lio/ktor/utils/io/ByteChannel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 25
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 30
    const/4 p5, 0x1

    const/4 p6, 0x0

    const/4 p7, 0x0

    invoke-static {p7, p5, p6}, Lio/ktor/utils/io/ByteChannelKt;->ByteChannel$default(ZILjava/lang/Object;)Lio/ktor/utils/io/ByteChannel;

    move-result-object p5

    move-object v5, p5

    goto :goto_0

    .line 25
    :cond_0
    move-object v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;-><init>(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/CoroutineContext;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;Lio/ktor/utils/io/ByteChannel;)V

    .line 78
    return-void
.end method

.method public static synthetic getContentActor$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getContentActor()Lkotlinx/coroutines/channels/SendChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "Lio/netty/handler/codec/http2/Http2DataFrame;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->contentActor:Lkotlinx/coroutines/channels/SendChannel;

    return-object v0
.end method

.method public final getContentByteChannel()Lio/ktor/utils/io/ByteChannel;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->contentByteChannel:Lio/ktor/utils/io/ByteChannel;

    return-object v0
.end method

.method public getCookies()Lio/ktor/server/request/RequestCookies;
    .locals 1

    .line 67
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->cookies:Lio/ktor/server/request/RequestCookies;

    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/Headers;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->headers$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/http/Headers;

    return-object v0
.end method

.method public bridge synthetic getLocal()Lio/ktor/http/RequestConnectionPoint;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->getLocal()Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;

    move-result-object v0

    check-cast v0, Lio/ktor/http/RequestConnectionPoint;

    return-object v0
.end method

.method public getLocal()Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->local:Lio/ktor/server/netty/http2/Http2LocalConnectionPoint;

    return-object v0
.end method

.method public final getNettyHeaders()Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->nettyHeaders:Lio/netty/handler/codec/http2/Http2Headers;

    return-object v0
.end method

.method protected newDecoder()Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;
    .locals 6

    .line 70
    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>(Z)V

    .line 71
    .local v0, "hh":Lio/netty/handler/codec/http/DefaultHttpHeaders;
    iget-object v1, p0, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->nettyHeaders:Lio/netty/handler/codec/http2/Http2Headers;

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Headers;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "nettyHeaders"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .local v3, "name":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 72
    .local v2, "value":Ljava/lang/CharSequence;
    invoke-virtual {v0, v3, v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0

    .line 75
    .end local v2    # "value":Ljava/lang/CharSequence;
    .end local v3    # "name":Ljava/lang/CharSequence;
    :cond_0
    new-instance v1, Lio/netty/handler/codec/http/DefaultHttpRequest;

    sget-object v2, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v3, Lio/netty/handler/codec/http/HttpMethod;->POST:Lio/netty/handler/codec/http/HttpMethod;

    invoke-virtual {p0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->getUri()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Lio/netty/handler/codec/http/HttpHeaders;

    invoke-direct {v1, v2, v3, v4, v5}, Lio/netty/handler/codec/http/DefaultHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 76
    .local v1, "request":Lio/netty/handler/codec/http/DefaultHttpRequest;
    new-instance v2, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;

    move-object v3, v1

    check-cast v3, Lio/netty/handler/codec/http/HttpRequest;

    invoke-direct {v2, v3}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;-><init>(Lio/netty/handler/codec/http/HttpRequest;)V

    return-object v2
.end method
