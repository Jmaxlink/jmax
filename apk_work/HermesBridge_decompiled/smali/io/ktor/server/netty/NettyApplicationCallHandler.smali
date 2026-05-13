.class public final Lio/ktor/server/netty/NettyApplicationCallHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "NettyApplicationCallHandler.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/netty/NettyApplicationCallHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00192\u00020\u00012\u00020\u0002:\u0001\u0019B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0016H\u0002J\u0019\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0016H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018R\u0014\u0010\u0008\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/ktor/server/netty/NettyApplicationCallHandler;",
        "Lio/netty/channel/ChannelInboundHandlerAdapter;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "userCoroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "enginePipeline",
        "Lio/ktor/server/engine/EnginePipeline;",
        "(Lkotlin/coroutines/CoroutineContext;Lio/ktor/server/engine/EnginePipeline;)V",
        "coroutineContext",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "channelRead",
        "",
        "ctx",
        "Lio/netty/channel/ChannelHandlerContext;",
        "msg",
        "",
        "handleRequest",
        "context",
        "call",
        "Lio/ktor/server/application/ApplicationCall;",
        "logCause",
        "Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;",
        "respondError400BadRequest",
        "(Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
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


# static fields
.field private static final CallHandlerCoroutineName:Lkotlinx/coroutines/CoroutineName;

.field public static final Companion:Lio/ktor/server/netty/NettyApplicationCallHandler$Companion;


# instance fields
.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final enginePipeline:Lio/ktor/server/engine/EnginePipeline;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/server/netty/NettyApplicationCallHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/server/netty/NettyApplicationCallHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/server/netty/NettyApplicationCallHandler;->Companion:Lio/ktor/server/netty/NettyApplicationCallHandler$Companion;

    .line 70
    new-instance v0, Lkotlinx/coroutines/CoroutineName;

    const-string v1, "call-handler"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/netty/NettyApplicationCallHandler;->CallHandlerCoroutineName:Lkotlinx/coroutines/CoroutineName;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lio/ktor/server/engine/EnginePipeline;)V
    .locals 1
    .param p1, "userCoroutineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "enginePipeline"    # Lio/ktor/server/engine/EnginePipeline;

    const-string v0, "userCoroutineContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enginePipeline"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 23
    iput-object p2, p0, Lio/ktor/server/netty/NettyApplicationCallHandler;->enginePipeline:Lio/ktor/server/engine/EnginePipeline;

    .line 25
    iput-object p1, p0, Lio/ktor/server/netty/NettyApplicationCallHandler;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 21
    return-void
.end method

.method public static final synthetic access$getCallHandlerCoroutineName$cp()Lkotlinx/coroutines/CoroutineName;
    .locals 1

    .line 21
    sget-object v0, Lio/ktor/server/netty/NettyApplicationCallHandler;->CallHandlerCoroutineName:Lkotlinx/coroutines/CoroutineName;

    return-object v0
.end method

.method public static final synthetic access$getEnginePipeline$p(Lio/ktor/server/netty/NettyApplicationCallHandler;)Lio/ktor/server/engine/EnginePipeline;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/NettyApplicationCallHandler;

    .line 21
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationCallHandler;->enginePipeline:Lio/ktor/server/engine/EnginePipeline;

    return-object v0
.end method

.method public static final synthetic access$respondError400BadRequest(Lio/ktor/server/netty/NettyApplicationCallHandler;Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/NettyApplicationCallHandler;
    .param p1, "call"    # Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 21
    invoke-direct {p0, p1, p2}, Lio/ktor/server/netty/NettyApplicationCallHandler;->respondError400BadRequest(Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final handleRequest(Lio/netty/channel/ChannelHandlerContext;Lio/ktor/server/application/ApplicationCall;)V
    .locals 5
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "call"    # Lio/ktor/server/application/ApplicationCall;

    .line 35
    sget-object v0, Lio/ktor/server/netty/NettyApplicationCallHandler;->CallHandlerCoroutineName:Lkotlinx/coroutines/CoroutineName;

    new-instance v1, Lio/ktor/server/netty/NettyDispatcher$CurrentContext;

    invoke-direct {v1, p1}, Lio/ktor/server/netty/NettyDispatcher$CurrentContext;-><init>(Lio/netty/channel/ChannelHandlerContext;)V

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CoroutineName;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 37
    .local v0, "callContext":Lkotlin/coroutines/CoroutineContext;
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    sget-object v2, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v3, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;

    const/4 v4, 0x0

    invoke-direct {v3, p2, p0, v4}, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;-><init>(Lio/ktor/server/application/ApplicationCall;Lio/ktor/server/netty/NettyApplicationCallHandler;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v0, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 50
    return-void
.end method

.method private final logCause(Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;)V
    .locals 3
    .param p1, "call"    # Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;

    .line 63
    invoke-virtual {p1}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/server/application/ApplicationKt;->getLog(Lio/ktor/server/application/Application;)Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {p1}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->getRequest()Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;->getHttpRequest()Lio/netty/handler/codec/http/HttpRequest;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/handler/codec/DecoderResult;->cause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 65
    .local v0, "cause":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {p1}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v1

    invoke-static {v1}, Lio/ktor/server/application/ApplicationKt;->getLog(Lio/ktor/server/application/Application;)Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Failed to decode request"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method private final respondError400BadRequest(Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1, "call"    # Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lio/ktor/server/netty/NettyApplicationCallHandler;->logCause(Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;)V

    .line 55
    invoke-virtual {p1}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->getResponse()Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    move-result-object v0

    sget-object v1, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getBadRequest()Lio/ktor/http/HttpStatusCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->status(Lio/ktor/http/HttpStatusCode;)V

    .line 56
    invoke-virtual {p1}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->getResponse()Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->getHeaders()Lio/ktor/server/response/ResponseHeaders;

    move-result-object v0

    sget-object v1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lio/ktor/server/response/ResponseHeaders;->append(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    invoke-virtual {p1}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->getResponse()Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->getHeaders()Lio/ktor/server/response/ResponseHeaders;

    move-result-object v0

    sget-object v1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getConnection()Ljava/lang/String;

    move-result-object v1

    const-string v2, "close"

    invoke-virtual {v0, v1, v2, v3}, Lio/ktor/server/response/ResponseHeaders;->append(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    invoke-virtual {p1}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->getResponse()Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    move-result-object v0

    sget-object v1, Lio/ktor/utils/io/ByteReadChannel;->Companion:Lio/ktor/utils/io/ByteReadChannel$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/ByteReadChannel$Companion;->getEmpty()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->sendResponse$ktor_server_netty(ZLio/ktor/utils/io/ByteReadChannel;)V

    .line 59
    invoke-virtual {p1, p2}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->finish$ktor_server_netty(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 60
    return-object v0
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    nop

    .line 29
    instance-of v0, p2, Lio/ktor/server/application/ApplicationCall;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/server/application/ApplicationCall;

    invoke-direct {p0, p1, v0}, Lio/ktor/server/netty/NettyApplicationCallHandler;->handleRequest(Lio/netty/channel/ChannelHandlerContext;Lio/ktor/server/application/ApplicationCall;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 32
    :goto_0
    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 25
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationCallHandler;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method
