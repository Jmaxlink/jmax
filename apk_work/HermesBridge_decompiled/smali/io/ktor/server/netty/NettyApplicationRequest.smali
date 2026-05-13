.class public abstract Lio/ktor/server/netty/NettyApplicationRequest;
.super Lio/ktor/server/engine/BaseApplicationRequest;
.source "NettyApplicationRequest.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B5\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ\u0006\u0010$\u001a\u00020%J\u0008\u0010&\u001a\u00020\'H$J\u0008\u0010(\u001a\u00020\nH\u0016R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u0013X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\r\u001a\u00020\u000eX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u001b\u0010\u001e\u001a\u00020\u001b8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\u001f\u0010\u001dR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000cX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#\u00a8\u0006)"
    }
    d2 = {
        "Lio/ktor/server/netty/NettyApplicationRequest;",
        "Lio/ktor/server/engine/BaseApplicationRequest;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "call",
        "Lio/ktor/server/application/ApplicationCall;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Lio/netty/channel/ChannelHandlerContext;",
        "requestBodyChannel",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "uri",
        "",
        "keepAlive",
        "",
        "(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/CoroutineContext;Lio/netty/channel/ChannelHandlerContext;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/String;Z)V",
        "getContext",
        "()Lio/netty/channel/ChannelHandlerContext;",
        "cookies",
        "Lio/ktor/server/request/RequestCookies;",
        "getCookies",
        "()Lio/ktor/server/request/RequestCookies;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "getKeepAlive$ktor_server_netty",
        "()Z",
        "queryParameters",
        "Lio/ktor/http/Parameters;",
        "getQueryParameters",
        "()Lio/ktor/http/Parameters;",
        "rawQueryParameters",
        "getRawQueryParameters",
        "rawQueryParameters$delegate",
        "Lkotlin/Lazy;",
        "getUri",
        "()Ljava/lang/String;",
        "close",
        "",
        "newDecoder",
        "Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;",
        "receiveChannel",
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
.field private final context:Lio/netty/channel/ChannelHandlerContext;

.field private final cookies:Lio/ktor/server/request/RequestCookies;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final keepAlive:Z

.field private final queryParameters:Lio/ktor/http/Parameters;

.field private final rawQueryParameters$delegate:Lkotlin/Lazy;

.field private final requestBodyChannel:Lio/ktor/utils/io/ByteReadChannel;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/CoroutineContext;Lio/netty/channel/ChannelHandlerContext;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "call"    # Lio/ktor/server/application/ApplicationCall;
    .param p2, "coroutineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p3, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p4, "requestBodyChannel"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p5, "uri"    # Ljava/lang/String;
    .param p6, "keepAlive"    # Z

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestBodyChannel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Lio/ktor/server/engine/BaseApplicationRequest;-><init>(Lio/ktor/server/application/ApplicationCall;)V

    .line 20
    iput-object p2, p0, Lio/ktor/server/netty/NettyApplicationRequest;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 21
    iput-object p3, p0, Lio/ktor/server/netty/NettyApplicationRequest;->context:Lio/netty/channel/ChannelHandlerContext;

    .line 22
    iput-object p4, p0, Lio/ktor/server/netty/NettyApplicationRequest;->requestBodyChannel:Lio/ktor/utils/io/ByteReadChannel;

    .line 23
    iput-object p5, p0, Lio/ktor/server/netty/NettyApplicationRequest;->uri:Ljava/lang/String;

    .line 24
    iput-boolean p6, p0, Lio/ktor/server/netty/NettyApplicationRequest;->keepAlive:Z

    .line 27
    new-instance v0, Lio/ktor/server/netty/NettyApplicationRequest$queryParameters$1;

    invoke-direct {v0, p0}, Lio/ktor/server/netty/NettyApplicationRequest$queryParameters$1;-><init>(Lio/ktor/server/netty/NettyApplicationRequest;)V

    check-cast v0, Lio/ktor/http/Parameters;

    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequest;->queryParameters:Lio/ktor/http/Parameters;

    .line 36
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lio/ktor/server/netty/NettyApplicationRequest$rawQueryParameters$2;

    invoke-direct {v1, p0}, Lio/ktor/server/netty/NettyApplicationRequest$rawQueryParameters$2;-><init>(Lio/ktor/server/netty/NettyApplicationRequest;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequest;->rawQueryParameters$delegate:Lkotlin/Lazy;

    .line 41
    new-instance v0, Lio/ktor/server/netty/NettyApplicationRequestCookies;

    move-object v1, p0

    check-cast v1, Lio/ktor/server/request/ApplicationRequest;

    invoke-direct {v0, v1}, Lio/ktor/server/netty/NettyApplicationRequestCookies;-><init>(Lio/ktor/server/request/ApplicationRequest;)V

    check-cast v0, Lio/ktor/server/request/RequestCookies;

    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequest;->cookies:Lio/ktor/server/request/RequestCookies;

    .line 18
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 47
    return-void
.end method

.method public final getContext()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 21
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequest;->context:Lio/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method public getCookies()Lio/ktor/server/request/RequestCookies;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequest;->cookies:Lio/ktor/server/request/RequestCookies;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequest;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final getKeepAlive$ktor_server_netty()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lio/ktor/server/netty/NettyApplicationRequest;->keepAlive:Z

    return v0
.end method

.method public final getQueryParameters()Lio/ktor/http/Parameters;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequest;->queryParameters:Lio/ktor/http/Parameters;

    return-object v0
.end method

.method public getRawQueryParameters()Lio/ktor/http/Parameters;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequest;->rawQueryParameters$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/http/Parameters;

    return-object v0
.end method

.method protected final getUri()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequest;->uri:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract newDecoder()Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;
.end method

.method public receiveChannel()Lio/ktor/utils/io/ByteReadChannel;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequest;->requestBodyChannel:Lio/ktor/utils/io/ByteReadChannel;

    return-object v0
.end method
