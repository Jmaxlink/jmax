.class public final Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
.super Ljava/lang/Object;
.source "NettyHttpResponsePipeline.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0003\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\u0008\u0000\u0018\u00002\u00020NB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u0010\u001a\u00020\u000bH\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ)\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0018J\u0017\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u0018J+\u0010\"\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010#J+\u0010$\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008$\u0010#Jc\u0010-\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\t26\u0010,\u001a2\u0012\u0013\u0012\u00110&\u00a2\u0006\u000c\u0008\'\u0012\u0008\u0008(\u0012\u0004\u0008\u0008()\u0012\u0013\u0012\u00110*\u00a2\u0006\u000c\u0008\'\u0012\u0008\u0008(\u0012\u0004\u0008\u0008(+\u0012\u0004\u0012\u00020\u00190%H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008-\u0010.J3\u00100\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010/\u001a\u00020*2\u0006\u0010!\u001a\u00020\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00080\u00101J\u001f\u00102\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u00082\u00103J\u001f\u00106\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u00105\u001a\u000204H\u0002\u00a2\u0006\u0004\u00086\u00107J\u0017\u00109\u001a\u00020\t2\u0006\u00108\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u00089\u0010:J+\u0010<\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010;\u001a\u00020*H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008<\u0010=J\u001f\u0010>\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u00108\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008>\u0010?J\u000f\u0010@\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008@\u0010\u000fJ%\u0010C\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u000b0AH\u0002\u00a2\u0006\u0004\u0008C\u0010DR\u0014\u0010\u0002\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0002\u0010ER\u001a\u0010\u0006\u001a\u00020\u00058\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010F\u001a\u0004\u0008G\u0010HR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010IR\u0016\u0010K\u001a\u00020J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010L\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006M"
    }
    d2 = {
        "Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;",
        "Lio/netty/channel/ChannelHandlerContext;",
        "context",
        "Lio/ktor/server/netty/NettyHttpHandlerState;",
        "httpHandlerState",
        "Lkotlin/coroutines/CoroutineContext;",
        "coroutineContext",
        "<init>",
        "(Lio/netty/channel/ChannelHandlerContext;Lio/ktor/server/netty/NettyHttpHandlerState;Lkotlin/coroutines/CoroutineContext;)V",
        "Lio/netty/channel/ChannelFuture;",
        "lastFuture",
        "",
        "close",
        "(Lio/netty/channel/ChannelFuture;)V",
        "flushIfNeeded$ktor_server_netty",
        "()V",
        "flushIfNeeded",
        "Lio/ktor/server/netty/NettyApplicationCall;",
        "call",
        "",
        "lastMessage",
        "handleLastResponseMessage",
        "(Lio/ktor/server/netty/NettyApplicationCall;Ljava/lang/Object;Lio/netty/channel/ChannelFuture;)V",
        "handleRequestMessage",
        "(Lio/ktor/server/netty/NettyApplicationCall;)V",
        "",
        "isHeaderFlushNeeded",
        "()Z",
        "processElement",
        "processResponse$ktor_server_netty",
        "processResponse",
        "Lio/ktor/server/netty/NettyApplicationResponse;",
        "response",
        "requestMessageFuture",
        "respondBodyWithFlushOnLimit",
        "(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;Lio/netty/channel/ChannelFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "respondBodyWithFlushOnLimitOrEmptyChannel",
        "Lkotlin/Function2;",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "Lkotlin/ParameterName;",
        "name",
        "channel",
        "",
        "unflushedBytes",
        "shouldFlush",
        "respondWithBigBody",
        "(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;Lio/netty/channel/ChannelFuture;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "bodySize",
        "respondWithBodyAndTrailerMessage",
        "(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;ILio/netty/channel/ChannelFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "respondWithEmptyBody",
        "(Lio/ktor/server/netty/NettyApplicationCall;Lio/netty/channel/ChannelFuture;)V",
        "",
        "actualException",
        "respondWithFailure",
        "(Lio/ktor/server/netty/NettyApplicationCall;Ljava/lang/Throwable;)V",
        "responseMessage",
        "respondWithHeader",
        "(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;",
        "size",
        "respondWithSmallBody",
        "(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "respondWithUpgrade",
        "(Lio/ktor/server/netty/NettyApplicationCall;Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;",
        "scheduleFlush",
        "Lkotlin/Function0;",
        "block",
        "setOnResponseReadyHandler",
        "(Lio/ktor/server/netty/NettyApplicationCall;Lkotlin/jvm/functions/Function0;)V",
        "Lio/netty/channel/ChannelHandlerContext;",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "Lio/ktor/server/netty/NettyHttpHandlerState;",
        "Lio/netty/channel/ChannelPromise;",
        "previousCallHandled",
        "Lio/netty/channel/ChannelPromise;",
        "ktor-server-netty",
        "Lkotlinx/coroutines/CoroutineScope;"
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
.field static final synthetic isDataNotFlushed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final context:Lio/netty/channel/ChannelHandlerContext;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final httpHandlerState:Lio/ktor/server/netty/NettyHttpHandlerState;

.field volatile synthetic isDataNotFlushed:I

.field private previousCallHandled:Lio/netty/channel/ChannelPromise;


# direct methods
.method public static synthetic $r8$lambda$6y7F-4PEanX7Y2DfBRdCvzut-rg(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/ktor/server/netty/NettyApplicationCall;Lio/netty/util/concurrent/Future;Lkotlin/jvm/functions/Function0;Lio/netty/util/concurrent/Future;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->setOnResponseReadyHandler$lambda$2$lambda$1(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/ktor/server/netty/NettyApplicationCall;Lio/netty/util/concurrent/Future;Lkotlin/jvm/functions/Function0;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AxZehNiDlvnVzHelINf0gj3mHG0(ZLio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/netty/channel/ChannelFuture;Lio/netty/util/concurrent/Future;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->handleLastResponseMessage$lambda$3(ZLio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/netty/channel/ChannelFuture;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BkMQtLZbRTKtbNNuhIo8GIWASMI(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lkotlin/jvm/functions/Function0;Lio/netty/util/concurrent/Future;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->setOnResponseReadyHandler$lambda$2(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lkotlin/jvm/functions/Function0;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jA1rOG0VrVlOhkDMFDY-tV94ptU(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/netty/util/concurrent/Future;)V
    .locals 0

    invoke-static {p0, p1}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->close$lambda$4(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tA1Bn6GjukFTHSddZLhZ2KtUgyw(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;)V
    .locals 0

    invoke-static {p0}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->scheduleFlush$lambda$5(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    const-string v1, "isDataNotFlushed"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->isDataNotFlushed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/ChannelHandlerContext;Lio/ktor/server/netty/NettyHttpHandlerState;Lkotlin/coroutines/CoroutineContext;)V
    .locals 3
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "httpHandlerState"    # Lio/ktor/server/netty/NettyHttpHandlerState;
    .param p3, "coroutineContext"    # Lkotlin/coroutines/CoroutineContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpHandlerState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->context:Lio/netty/channel/ChannelHandlerContext;

    .line 28
    iput-object p2, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->httpHandlerState:Lio/ktor/server/netty/NettyHttpHandlerState;

    .line 29
    iput-object p3, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->isDataNotFlushed:I

    .line 41
    iget-object v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    move-object v1, v0

    .local v1, "it":Lio/netty/channel/ChannelPromise;
    const/4 v2, 0x0

    .line 42
    .local v2, "$i$a$-also-NettyHttpResponsePipeline$previousCallHandled$1":I
    invoke-interface {v1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 43
    nop

    .line 41
    .end local v1    # "it":Lio/netty/channel/ChannelPromise;
    .end local v2    # "$i$a$-also-NettyHttpResponsePipeline$previousCallHandled$1":I
    const-string v1, "context.newPromise().als\u2026    it.setSuccess()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->previousCallHandled:Lio/netty/channel/ChannelPromise;

    .line 26
    return-void
.end method

.method public static final synthetic access$getContext$p(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    .line 26
    iget-object v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->context:Lio/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method public static final synthetic access$handleRequestMessage(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/ktor/server/netty/NettyApplicationCall;)V
    .locals 0
    .param p0, "$this"    # Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    .param p1, "call"    # Lio/ktor/server/netty/NettyApplicationCall;

    .line 26
    invoke-direct {p0, p1}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->handleRequestMessage(Lio/ktor/server/netty/NettyApplicationCall;)V

    return-void
.end method

.method public static final synthetic access$respondBodyWithFlushOnLimit(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;Lio/netty/channel/ChannelFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    .param p1, "call"    # Lio/ktor/server/netty/NettyApplicationCall;
    .param p2, "response"    # Lio/ktor/server/netty/NettyApplicationResponse;
    .param p3, "requestMessageFuture"    # Lio/netty/channel/ChannelFuture;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->respondBodyWithFlushOnLimit(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;Lio/netty/channel/ChannelFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$respondBodyWithFlushOnLimitOrEmptyChannel(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;Lio/netty/channel/ChannelFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    .param p1, "call"    # Lio/ktor/server/netty/NettyApplicationCall;
    .param p2, "response"    # Lio/ktor/server/netty/NettyApplicationResponse;
    .param p3, "requestMessageFuture"    # Lio/netty/channel/ChannelFuture;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->respondBodyWithFlushOnLimitOrEmptyChannel(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;Lio/netty/channel/ChannelFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$respondWithBigBody(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;Lio/netty/channel/ChannelFuture;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    .param p1, "call"    # Lio/ktor/server/netty/NettyApplicationCall;
    .param p2, "response"    # Lio/ktor/server/netty/NettyApplicationResponse;
    .param p3, "requestMessageFuture"    # Lio/netty/channel/ChannelFuture;
    .param p4, "shouldFlush"    # Lkotlin/jvm/functions/Function2;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 26
    invoke-direct/range {p0 .. p5}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->respondWithBigBody(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;Lio/netty/channel/ChannelFuture;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$respondWithBodyAndTrailerMessage(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;ILio/netty/channel/ChannelFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    .param p1, "call"    # Lio/ktor/server/netty/NettyApplicationCall;
    .param p2, "response"    # Lio/ktor/server/netty/NettyApplicationResponse;
    .param p3, "bodySize"    # I
    .param p4, "requestMessageFuture"    # Lio/netty/channel/ChannelFuture;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 26
    invoke-direct/range {p0 .. p5}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->respondWithBodyAndTrailerMessage(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;ILio/netty/channel/ChannelFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$respondWithFailure(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/ktor/server/netty/NettyApplicationCall;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "$this"    # Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    .param p1, "call"    # Lio/ktor/server/netty/NettyApplicationCall;
    .param p2, "actualException"    # Ljava/lang/Throwable;

    .line 26
    invoke-direct {p0, p1, p2}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->respondWithFailure(Lio/ktor/server/netty/NettyApplicationCall;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$respondWithSmallBody(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    .param p1, "call"    # Lio/ktor/server/netty/NettyApplicationCall;
    .param p2, "response"    # Lio/ktor/server/netty/NettyApplicationResponse;
    .param p3, "size"    # I
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->respondWithSmallBody(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final close$lambda$4(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/netty/util/concurrent/Future;)V
    .locals 1
    .param p0, "this$0"    # Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    .param p1, "it"    # Lio/netty/util/concurrent/Future;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 163
    return-void
.end method

.method private final handleLastResponseMessage(Lio/ktor/server/netty/NettyApplicationCall;Ljava/lang/Object;Lio/netty/channel/ChannelFuture;)V
    .locals 5
    .param p1, "call"    # Lio/ktor/server/netty/NettyApplicationCall;
    .param p2, "lastMessage"    # Ljava/lang/Object;
    .param p3, "lastFuture"    # Lio/netty/channel/ChannelFuture;

    .line 131
    invoke-virtual {p1}, Lio/ktor/server/netty/NettyApplicationCall;->isContextCloseRequired$ktor_server_netty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p1}, Lio/ktor/server/netty/NettyApplicationCall;->getRequest()Lio/ktor/server/netty/NettyApplicationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/server/netty/NettyApplicationRequest;->getKeepAlive$ktor_server_netty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/ktor/server/netty/NettyApplicationCall;->getResponse()Lio/ktor/server/netty/NettyApplicationResponse;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/server/netty/cio/NettyHttpResponsePipelineKt;->access$isUpgradeResponse(Lio/ktor/server/netty/NettyApplicationResponse;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 131
    :goto_0
    nop

    .line 134
    .local v0, "prepareForClose":Z
    if-eqz p2, :cond_2

    .line 135
    iget-object v3, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v3, p2}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v3

    .line 136
    .local v3, "future":Lio/netty/channel/ChannelFuture;
    sget-object v4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->isDataNotFlushed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 137
    nop

    .end local v3    # "future":Lio/netty/channel/ChannelFuture;
    goto :goto_1

    .line 139
    :cond_2
    const/4 v3, 0x0

    .line 134
    :goto_1
    move-object v1, v3

    .line 142
    .local v1, "lastMessageFuture":Lio/netty/channel/ChannelFuture;
    iget-object v2, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->httpHandlerState:Lio/ktor/server/netty/NettyHttpHandlerState;

    iget-object v3, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {v2, v3}, Lio/ktor/server/netty/NettyHttpHandlerState;->onLastResponseMessage$ktor_server_netty(Lio/netty/channel/ChannelHandlerContext;)V

    .line 143
    invoke-virtual {p1}, Lio/ktor/server/netty/NettyApplicationCall;->getFinishedEvent$ktor_server_netty()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 145
    if-eqz v1, :cond_3

    new-instance v2, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, p0, p3}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda4;-><init>(ZLio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/netty/channel/ChannelFuture;)V

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 151
    :cond_3
    if-eqz v0, :cond_4

    .line 152
    invoke-virtual {p0, p3}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->close(Lio/netty/channel/ChannelFuture;)V

    .line 153
    return-void

    .line 155
    :cond_4
    invoke-direct {p0}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->scheduleFlush()V

    .line 156
    return-void
.end method

.method private static final handleLastResponseMessage$lambda$3(ZLio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/netty/channel/ChannelFuture;Lio/netty/util/concurrent/Future;)V
    .locals 1
    .param p0, "$prepareForClose"    # Z
    .param p1, "this$0"    # Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    .param p2, "$lastFuture"    # Lio/netty/channel/ChannelFuture;
    .param p3, "it"    # Lio/netty/util/concurrent/Future;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$lastFuture"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p1, p2}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->close(Lio/netty/channel/ChannelFuture;)V

    .line 148
    return-void

    .line 150
    :cond_0
    return-void
.end method

.method private final handleRequestMessage(Lio/ktor/server/netty/NettyApplicationCall;)V
    .locals 17
    .param p1, "call"    # Lio/ktor/server/netty/NettyApplicationCall;

    .line 176
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Lio/ktor/server/netty/NettyApplicationCall;->getResponse()Lio/ktor/server/netty/NettyApplicationResponse;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/server/netty/NettyApplicationResponse;->getResponseMessage()Ljava/lang/Object;

    move-result-object v9

    .line 177
    .local v9, "responseMessage":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lio/ktor/server/netty/NettyApplicationCall;->getResponse()Lio/ktor/server/netty/NettyApplicationResponse;

    move-result-object v10

    .line 179
    .local v10, "response":Lio/ktor/server/netty/NettyApplicationResponse;
    invoke-static {v10}, Lio/ktor/server/netty/cio/NettyHttpResponsePipelineKt;->access$isUpgradeResponse(Lio/ktor/server/netty/NettyApplicationResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {v7, v8, v9}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->respondWithUpgrade(Lio/ktor/server/netty/NettyApplicationCall;Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_0
    invoke-direct {v7, v9}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->respondWithHeader(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 179
    :goto_0
    move-object v11, v0

    .line 185
    .local v11, "requestMessageFuture":Lio/netty/channel/ChannelFuture;
    instance-of v0, v9, Lio/netty/handler/codec/http/FullHttpResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 186
    invoke-direct {v7, v8, v1, v11}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->handleLastResponseMessage(Lio/ktor/server/netty/NettyApplicationCall;Ljava/lang/Object;Lio/netty/channel/ChannelFuture;)V

    return-void

    .line 187
    :cond_1
    instance-of v0, v9, Lio/netty/handler/codec/http2/Http2HeadersFrame;

    if-eqz v0, :cond_2

    move-object v0, v9

    check-cast v0, Lio/netty/handler/codec/http2/Http2HeadersFrame;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->isEndStream()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    invoke-direct {v7, v8, v1, v11}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->handleLastResponseMessage(Lio/ktor/server/netty/NettyApplicationCall;Ljava/lang/Object;Lio/netty/channel/ChannelFuture;)V

    return-void

    .line 191
    :cond_2
    invoke-virtual {v10}, Lio/ktor/server/netty/NettyApplicationResponse;->getResponseChannel$ktor_server_netty()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v12

    .line 192
    .local v12, "responseChannel":Lio/ktor/utils/io/ByteReadChannel;
    nop

    .line 193
    sget-object v0, Lio/ktor/utils/io/ByteReadChannel;->Companion:Lio/ktor/utils/io/ByteReadChannel$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteReadChannel$Companion;->getEmpty()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    if-ne v12, v0, :cond_3

    const/4 v0, 0x0

    move v4, v0

    goto :goto_1

    .line 194
    :cond_3
    instance-of v0, v9, Lio/netty/handler/codec/http/HttpResponse;

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    move-object v0, v9

    check-cast v0, Lio/netty/handler/codec/http/HttpResponse;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    const-string v2, "Content-Length"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v1}, Lio/netty/handler/codec/http/HttpHeaders;->getInt(Ljava/lang/CharSequence;I)I

    move-result v0

    move v4, v0

    goto :goto_1

    .line 195
    :cond_4
    instance-of v0, v9, Lio/netty/handler/codec/http2/Http2HeadersFrame;

    if-eqz v0, :cond_5

    move-object v0, v9

    check-cast v0, Lio/netty/handler/codec/http2/Http2HeadersFrame;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->headers()Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v0

    const-string v2, "content-length"

    invoke-interface {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Headers;->getInt(Ljava/lang/Object;I)I

    move-result v0

    move v4, v0

    goto :goto_1

    .line 196
    :cond_5
    move v4, v1

    .line 192
    :goto_1
    nop

    .line 199
    .local v4, "bodySize":I
    move-object v13, v7

    check-cast v13, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, v7, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    const-string v1, "context.executor()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lkotlin/coroutines/CoroutineContext;

    sget-object v15, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v16, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$handleRequestMessage$1;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$handleRequestMessage$1;-><init>(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;ILio/netty/channel/ChannelFuture;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v14, v15, v0}, Lkotlinx/coroutines/BuildersKt;->launch(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 207
    return-void
.end method

.method private final isHeaderFlushNeeded()Z
    .locals 4

    .line 229
    iget-object v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->httpHandlerState:Lio/ktor/server/netty/NettyHttpHandlerState;

    iget-wide v0, v0, Lio/ktor/server/netty/NettyHttpHandlerState;->activeRequests$internal:J

    .line 230
    .local v0, "activeRequestsValue":J
    iget-object v2, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->httpHandlerState:Lio/ktor/server/netty/NettyHttpHandlerState;

    iget v2, v2, Lio/ktor/server/netty/NettyHttpHandlerState;->isChannelReadCompleted$internal:I

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->httpHandlerState:Lio/ktor/server/netty/NettyHttpHandlerState;

    iget v2, v2, Lio/ktor/server/netty/NettyHttpHandlerState;->isCurrentRequestFullyRead$internal:I

    if-nez v2, :cond_0

    .line 232
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 230
    :goto_0
    return v2
.end method

.method private final processElement(Lio/ktor/server/netty/NettyApplicationCall;)V
    .locals 1
    .param p1, "call"    # Lio/ktor/server/netty/NettyApplicationCall;

    .line 69
    new-instance v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$processElement$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$processElement$1;-><init>(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/ktor/server/netty/NettyApplicationCall;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, v0}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->setOnResponseReadyHandler(Lio/ktor/server/netty/NettyApplicationCall;Lkotlin/jvm/functions/Function0;)V

    .line 77
    return-void
.end method

.method private final respondBodyWithFlushOnLimit(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;Lio/netty/channel/ChannelFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "call"    # Lio/ktor/server/netty/NettyApplicationCall;
    .param p2, "response"    # Lio/ktor/server/netty/NettyApplicationResponse;
    .param p3, "requestMessageFuture"    # Lio/netty/channel/ChannelFuture;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/netty/NettyApplicationCall;",
            "Lio/ktor/server/netty/NettyApplicationResponse;",
            "Lio/netty/channel/ChannelFuture;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 295
    sget-object v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondBodyWithFlushOnLimit$2;->INSTANCE:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondBodyWithFlushOnLimit$2;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->respondWithBigBody(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;Lio/netty/channel/ChannelFuture;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 297
    return-object v0
.end method

.method private final respondBodyWithFlushOnLimitOrEmptyChannel(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;Lio/netty/channel/ChannelFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "call"    # Lio/ktor/server/netty/NettyApplicationCall;
    .param p2, "response"    # Lio/ktor/server/netty/NettyApplicationResponse;
    .param p3, "requestMessageFuture"    # Lio/netty/channel/ChannelFuture;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/netty/NettyApplicationCall;",
            "Lio/ktor/server/netty/NettyApplicationResponse;",
            "Lio/netty/channel/ChannelFuture;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 308
    sget-object v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondBodyWithFlushOnLimitOrEmptyChannel$2;->INSTANCE:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondBodyWithFlushOnLimitOrEmptyChannel$2;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->respondWithBigBody(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;Lio/netty/channel/ChannelFuture;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 310
    return-object v0
.end method

.method private final respondWithBigBody(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;Lio/netty/channel/ChannelFuture;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/netty/NettyApplicationCall;",
            "Lio/ktor/server/netty/NettyApplicationResponse;",
            "Lio/netty/channel/ChannelFuture;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$1;

    iget v2, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$1;-><init>(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 312
    iget v4, v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$1;->label:I

    packed-switch v4, :pswitch_data_0

    move-object/from16 p5, v1

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v3, v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v3, "lastFuture":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v4, v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lio/ktor/server/netty/NettyApplicationResponse;

    .local v4, "response":Lio/ktor/server/netty/NettyApplicationResponse;
    iget-object v5, v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lio/ktor/server/netty/NettyApplicationCall;

    .local v5, "call":Lio/ktor/server/netty/NettyApplicationCall;
    iget-object v6, v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    .local v6, "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 p5, v1

    goto :goto_1

    .end local v3    # "lastFuture":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "response":Lio/ktor/server/netty/NettyApplicationResponse;
    .end local v5    # "call":Lio/ktor/server/netty/NettyApplicationCall;
    .end local v6    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v6, p0

    .restart local v6    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    move-object/from16 v4, p2

    .restart local v4    # "response":Lio/ktor/server/netty/NettyApplicationResponse;
    move-object/from16 v11, p4

    .local v11, "shouldFlush":Lkotlin/jvm/functions/Function2;
    move-object/from16 v5, p1

    .restart local v5    # "call":Lio/ktor/server/netty/NettyApplicationCall;
    move-object/from16 v7, p3

    .line 318
    .local v7, "requestMessageFuture":Lio/netty/channel/ChannelFuture;
    invoke-virtual {v4}, Lio/ktor/server/netty/NettyApplicationResponse;->getResponseChannel$ktor_server_netty()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v15

    .line 320
    .local v15, "channel":Lio/ktor/utils/io/ByteReadChannel;
    new-instance v9, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 321
    .local v9, "unflushedBytes":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v14, v8

    .local v14, "lastFuture":Lkotlin/jvm/internal/Ref$ObjectRef;
    iput-object v7, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 324
    .end local v7    # "requestMessageFuture":Lio/netty/channel/ChannelFuture;
    new-instance v16, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;

    const/16 v17, 0x0

    move-object/from16 v7, v16

    move-object v8, v6

    move-object v10, v5

    move-object v12, v15

    move-object v13, v14

    move-object/from16 p5, v1

    move-object v1, v14

    .end local v14    # "lastFuture":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v1, "lastFuture":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local p5, "$result":Ljava/lang/Object;
    move-object/from16 v14, v17

    invoke-direct/range {v7 .. v14}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$2;-><init>(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lkotlin/jvm/internal/Ref$IntRef;Lio/ktor/server/netty/NettyApplicationCall;Lkotlin/jvm/functions/Function2;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v7, v16

    check-cast v7, Lkotlin/jvm/functions/Function2;

    iput-object v6, v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$1;->L$2:Ljava/lang/Object;

    iput-object v1, v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$1;->L$3:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBigBody$1;->label:I

    invoke-interface {v15, v7, v0}, Lio/ktor/utils/io/ByteReadChannel;->lookAheadSuspend(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    .end local v9    # "unflushedBytes":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v11    # "shouldFlush":Lkotlin/jvm/functions/Function2;
    .end local v15    # "channel":Lio/ktor/utils/io/ByteReadChannel;
    if-ne v7, v3, :cond_1

    .line 312
    return-object v3

    .line 324
    :cond_1
    move-object v3, v1

    .line 357
    .end local v1    # "lastFuture":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v3    # "lastFuture":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_1
    invoke-virtual {v4}, Lio/ktor/server/netty/NettyApplicationResponse;->prepareTrailerMessage$ktor_server_netty()Ljava/lang/Object;

    move-result-object v1

    .end local v4    # "response":Lio/ktor/server/netty/NettyApplicationResponse;
    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lio/ktor/server/netty/NettyApplicationCall;->prepareEndOfStreamMessage$ktor_server_netty(Z)Ljava/lang/Object;

    move-result-object v1

    .line 358
    .local v1, "lastMessage":Ljava/lang/Object;
    :cond_2
    iget-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lio/netty/channel/ChannelFuture;

    invoke-direct {v6, v5, v1, v4}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->handleLastResponseMessage(Lio/ktor/server/netty/NettyApplicationCall;Ljava/lang/Object;Lio/netty/channel/ChannelFuture;)V

    .line 359
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final respondWithBodyAndTrailerMessage(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;ILio/netty/channel/ChannelFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/netty/NettyApplicationCall;",
            "Lio/ktor/server/netty/NettyApplicationResponse;",
            "I",
            "Lio/netty/channel/ChannelFuture;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;

    iget v1, v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p5, v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->label:I

    sub-int/2addr p5, v2

    iput p5, v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;

    invoke-direct {v0, p0, p5}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;-><init>(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p5, v0

    .local p5, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p5, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 238
    iget v2, p5, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p5    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p5    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p5, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/server/netty/NettyApplicationCall;

    .local p1, "call":Lio/ktor/server/netty/NettyApplicationCall;
    iget-object p2, p5, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    .local p2, "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .end local p1    # "call":Lio/ktor/server/netty/NettyApplicationCall;
    .end local p2    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    :pswitch_1
    iget-object p1, p5, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/server/netty/NettyApplicationCall;

    .restart local p1    # "call":Lio/ktor/server/netty/NettyApplicationCall;
    iget-object p2, p5, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    .restart local p2    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local p1    # "call":Lio/ktor/server/netty/NettyApplicationCall;
    .end local p2    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    :pswitch_2
    iget-object p1, p5, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/server/netty/NettyApplicationCall;

    .restart local p1    # "call":Lio/ktor/server/netty/NettyApplicationCall;
    iget-object p2, p5, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    .restart local p2    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 251
    :catchall_0
    move-exception p3

    goto :goto_4

    .line 238
    .end local p1    # "call":Lio/ktor/server/netty/NettyApplicationCall;
    .end local p2    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    :pswitch_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 244
    .local v2, "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    .restart local p1    # "call":Lio/ktor/server/netty/NettyApplicationCall;
    .local p2, "response":Lio/ktor/server/netty/NettyApplicationResponse;
    .local p3, "bodySize":I
    .local p4, "requestMessageFuture":Lio/netty/channel/ChannelFuture;
    nop

    .line 245
    nop

    .line 246
    if-nez p3, :cond_1

    :try_start_3
    invoke-direct {v2, p1, p4}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->respondWithEmptyBody(Lio/ktor/server/netty/NettyApplicationCall;Lio/netty/channel/ChannelFuture;)V

    goto :goto_5

    .line 251
    .end local p2    # "response":Lio/ktor/server/netty/NettyApplicationResponse;
    .end local p3    # "bodySize":I
    .end local p4    # "requestMessageFuture":Lio/netty/channel/ChannelFuture;
    :catchall_1
    move-exception p3

    move-object p2, v2

    goto :goto_4

    .line 247
    .restart local p2    # "response":Lio/ktor/server/netty/NettyApplicationResponse;
    .restart local p3    # "bodySize":I
    .restart local p4    # "requestMessageFuture":Lio/netty/channel/ChannelFuture;
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v4, p3, :cond_2

    const v5, 0x10001

    if-ge p3, v5, :cond_2

    move v3, v4

    :cond_2
    if-eqz v3, :cond_4

    iput-object v2, p5, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->L$0:Ljava/lang/Object;

    iput-object p1, p5, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->L$1:Ljava/lang/Object;

    iput v4, p5, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->label:I

    invoke-direct {v2, p1, p2, p3, p5}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->respondWithSmallBody(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local p2    # "response":Lio/ktor/server/netty/NettyApplicationResponse;
    .end local p3    # "bodySize":I
    .end local p4    # "requestMessageFuture":Lio/netty/channel/ChannelFuture;
    if-ne v3, v1, :cond_3

    .line 238
    return-object v1

    .line 247
    :cond_3
    move-object p2, v2

    .end local v2    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    .local p2, "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    :goto_1
    goto :goto_5

    .line 248
    .restart local v2    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    .local p2, "response":Lio/ktor/server/netty/NettyApplicationResponse;
    .restart local p4    # "requestMessageFuture":Lio/netty/channel/ChannelFuture;
    :cond_4
    const/4 v3, -0x1

    if-ne p3, v3, :cond_6

    iput-object v2, p5, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->L$0:Ljava/lang/Object;

    iput-object p1, p5, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->L$1:Ljava/lang/Object;

    const/4 p3, 0x2

    iput p3, p5, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->label:I

    invoke-direct {v2, p1, p2, p4, p5}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->respondBodyWithFlushOnLimitOrEmptyChannel(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;Lio/netty/channel/ChannelFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    .end local p2    # "response":Lio/ktor/server/netty/NettyApplicationResponse;
    .end local p4    # "requestMessageFuture":Lio/netty/channel/ChannelFuture;
    if-ne p3, v1, :cond_5

    .line 238
    return-object v1

    .line 248
    :cond_5
    move-object p2, v2

    .end local v2    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    .local p2, "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    :goto_2
    goto :goto_5

    .line 249
    .restart local v2    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    .local p2, "response":Lio/ktor/server/netty/NettyApplicationResponse;
    .restart local p4    # "requestMessageFuture":Lio/netty/channel/ChannelFuture;
    :cond_6
    iput-object v2, p5, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->L$0:Ljava/lang/Object;

    iput-object p1, p5, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->L$1:Ljava/lang/Object;

    const/4 p3, 0x3

    iput p3, p5, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->label:I

    invoke-direct {v2, p1, p2, p4, p5}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->respondBodyWithFlushOnLimit(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;Lio/netty/channel/ChannelFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p2    # "response":Lio/ktor/server/netty/NettyApplicationResponse;
    .end local p4    # "requestMessageFuture":Lio/netty/channel/ChannelFuture;
    if-ne p3, v1, :cond_7

    .line 238
    return-object v1

    .line 249
    :cond_7
    move-object p2, v2

    .end local v2    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    .local p2, "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    :goto_3
    goto :goto_5

    .line 252
    .local p3, "actualException":Ljava/lang/Throwable;
    :goto_4
    invoke-direct {p2, p1, p3}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->respondWithFailure(Lio/ktor/server/netty/NettyApplicationCall;Ljava/lang/Throwable;)V

    .line 254
    .end local p1    # "call":Lio/ktor/server/netty/NettyApplicationCall;
    .end local p2    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    .end local p3    # "actualException":Ljava/lang/Throwable;
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final respondWithEmptyBody(Lio/ktor/server/netty/NettyApplicationCall;Lio/netty/channel/ChannelFuture;)V
    .locals 1
    .param p1, "call"    # Lio/ktor/server/netty/NettyApplicationCall;
    .param p2, "lastFuture"    # Lio/netty/channel/ChannelFuture;

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/ktor/server/netty/NettyApplicationCall;->prepareEndOfStreamMessage$ktor_server_netty(Z)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->handleLastResponseMessage(Lio/ktor/server/netty/NettyApplicationCall;Ljava/lang/Object;Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

.method private final respondWithFailure(Lio/ktor/server/netty/NettyApplicationCall;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "call"    # Lio/ktor/server/netty/NettyApplicationCall;
    .param p2, "actualException"    # Ljava/lang/Throwable;

    .line 100
    nop

    .line 101
    instance-of v0, p2, Ljava/io/IOException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lio/ktor/util/cio/ChannelIOException;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lio/ktor/util/cio/ChannelWriteException;

    invoke-direct {v0, v2, p2, v1, v2}, Lio/ktor/util/cio/ChannelWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_0

    .line 103
    :cond_0
    move-object v0, p2

    .line 100
    :goto_0
    nop

    .line 106
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lio/ktor/server/netty/NettyApplicationCall;->getResponse()Lio/ktor/server/netty/NettyApplicationResponse;

    move-result-object v3

    invoke-virtual {v3}, Lio/ktor/server/netty/NettyApplicationResponse;->getResponseChannel$ktor_server_netty()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v3

    invoke-interface {v3, v0}, Lio/ktor/utils/io/ByteReadChannel;->cancel(Ljava/lang/Throwable;)Z

    .line 107
    invoke-virtual {p1}, Lio/ktor/server/netty/NettyApplicationCall;->getResponseWriteJob()Lkotlinx/coroutines/Job;

    move-result-object v3

    invoke-static {v3, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 108
    invoke-virtual {p1}, Lio/ktor/server/netty/NettyApplicationCall;->getResponse()Lio/ktor/server/netty/NettyApplicationResponse;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/server/netty/NettyApplicationResponse;->cancel()V

    .line 109
    invoke-virtual {p1}, Lio/ktor/server/netty/NettyApplicationCall;->dispose$ktor_server_netty()V

    .line 110
    invoke-virtual {p1}, Lio/ktor/server/netty/NettyApplicationCall;->getFinishedEvent$ktor_server_netty()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 111
    return-void
.end method

.method private final respondWithHeader(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 5
    .param p1, "responseMessage"    # Ljava/lang/Object;

    .line 214
    invoke-direct {p0}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->isHeaderFlushNeeded()Z

    move-result v0

    const-string v1, "{\n            val future\u2026         future\n        }"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 216
    .local v0, "future":Lio/netty/channel/ChannelFuture;
    sget-object v4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->isDataNotFlushed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 217
    nop

    .line 214
    .end local v0    # "future":Lio/netty/channel/ChannelFuture;
    nop

    .line 216
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 220
    .restart local v0    # "future":Lio/netty/channel/ChannelFuture;
    sget-object v4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->isDataNotFlushed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 221
    nop

    .line 218
    .end local v0    # "future":Lio/netty/channel/ChannelFuture;
    nop

    .line 220
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    :goto_0
    return-object v0
.end method

.method private final respondWithSmallBody(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/netty/NettyApplicationCall;",
            "Lio/ktor/server/netty/NettyApplicationResponse;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;

    iget v1, v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;

    invoke-direct {v0, p0, p4}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;-><init>(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 267
    iget v2, p4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget p1, p4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;->I$1:I

    .local p1, "start":I
    iget p2, p4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;->I$0:I

    .local p2, "size":I
    iget-object p3, p4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;->L$3:Ljava/lang/Object;

    check-cast p3, Lio/netty/buffer/ByteBuf;

    .local p3, "buffer":Lio/netty/buffer/ByteBuf;
    iget-object v1, p4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lio/ktor/server/netty/NettyApplicationResponse;

    .local v1, "response":Lio/ktor/server/netty/NettyApplicationResponse;
    iget-object v2, p4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/server/netty/NettyApplicationCall;

    .local v2, "call":Lio/ktor/server/netty/NettyApplicationCall;
    iget-object v4, p4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    .local v4, "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "response":Lio/ktor/server/netty/NettyApplicationResponse;
    .end local v2    # "call":Lio/ktor/server/netty/NettyApplicationCall;
    .end local v4    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    .end local p1    # "start":I
    .end local p2    # "size":I
    .end local p3    # "buffer":Lio/netty/buffer/ByteBuf;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p0

    .restart local v4    # "this":Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    .local p2, "response":Lio/ktor/server/netty/NettyApplicationResponse;
    move-object v2, p1

    .restart local v2    # "call":Lio/ktor/server/netty/NettyApplicationCall;
    move p1, p3

    .line 272
    .local p1, "size":I
    iget-object p3, v4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p3}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p3

    invoke-interface {p3, p1}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p3

    .line 273
    .restart local p3    # "buffer":Lio/netty/buffer/ByteBuf;
    invoke-virtual {p2}, Lio/ktor/server/netty/NettyApplicationResponse;->getResponseChannel$ktor_server_netty()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v5

    .line 274
    .local v5, "channel":Lio/ktor/utils/io/ByteReadChannel;
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v6

    .line 276
    .local v6, "start":I
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v7

    .end local v5    # "channel":Lio/ktor/utils/io/ByteReadChannel;
    const-string v8, "buffer.nioBuffer(start, buffer.writableBytes())"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, p4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;->L$0:Ljava/lang/Object;

    iput-object v2, p4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;->L$1:Ljava/lang/Object;

    iput-object p2, p4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;->L$2:Ljava/lang/Object;

    iput-object p3, p4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;->L$3:Ljava/lang/Object;

    iput p1, p4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;->I$0:I

    iput v6, p4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;->I$1:I

    iput v3, p4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithSmallBody$1;->label:I

    invoke-interface {v5, v7, p4}, Lio/ktor/utils/io/ByteReadChannel;->readFully(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_1

    .line 267
    return-object v1

    .line 276
    :cond_1
    move-object v1, p2

    move p2, p1

    move p1, v6

    .line 277
    .end local v6    # "start":I
    .restart local v1    # "response":Lio/ktor/server/netty/NettyApplicationResponse;
    .local p1, "start":I
    .local p2, "size":I
    :goto_1
    add-int v5, p1, p2

    invoke-virtual {p3, v5}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 279
    .end local p1    # "start":I
    .end local p2    # "size":I
    iget-object p1, v4, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->context:Lio/netty/channel/ChannelHandlerContext;

    const-string p2, "buffer"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p3, v3}, Lio/ktor/server/netty/NettyApplicationCall;->prepareMessage$ktor_server_netty(Lio/netty/buffer/ByteBuf;Z)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    .line 280
    .end local p3    # "buffer":Lio/netty/buffer/ByteBuf;
    .local p1, "future":Lio/netty/channel/ChannelFuture;
    sget-object p2, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->isDataNotFlushed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 p3, 0x0

    invoke-virtual {p2, v4, p3, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 282
    invoke-virtual {v1}, Lio/ktor/server/netty/NettyApplicationResponse;->prepareTrailerMessage$ktor_server_netty()Ljava/lang/Object;

    move-result-object p2

    .end local v1    # "response":Lio/ktor/server/netty/NettyApplicationResponse;
    if-nez p2, :cond_2

    invoke-virtual {v2, v3}, Lio/ktor/server/netty/NettyApplicationCall;->prepareEndOfStreamMessage$ktor_server_netty(Z)Ljava/lang/Object;

    move-result-object p2

    .line 284
    .local p2, "lastMessage":Ljava/lang/Object;
    :cond_2
    const-string p3, "future"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v2, p2, p1}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->handleLastResponseMessage(Lio/ktor/server/netty/NettyApplicationCall;Ljava/lang/Object;Lio/netty/channel/ChannelFuture;)V

    .line 285
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final respondWithUpgrade(Lio/ktor/server/netty/NettyApplicationCall;Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 4
    .param p1, "call"    # Lio/ktor/server/netty/NettyApplicationCall;
    .param p2, "responseMessage"    # Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p2}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 115
    .local v0, "future":Lio/netty/channel/ChannelFuture;
    iget-object v1, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {p1, v1}, Lio/ktor/server/netty/NettyApplicationCall;->upgrade$ktor_server_netty(Lio/netty/channel/ChannelHandlerContext;)V

    .line 116
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lio/ktor/server/netty/NettyApplicationCall;->setByteBufferContent$ktor_server_netty(Z)V

    .line 118
    iget-object v2, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v2}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 119
    sget-object v2, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->isDataNotFlushed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 120
    const-string v1, "future"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final scheduleFlush()V
    .locals 2

    .line 167
    iget-object v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    new-instance v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda1;-><init>(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method private static final scheduleFlush$lambda$5(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;)V
    .locals 1
    .param p0, "this$0"    # Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->flushIfNeeded$ktor_server_netty()V

    .line 169
    return-void
.end method

.method private final setOnResponseReadyHandler(Lio/ktor/server/netty/NettyApplicationCall;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1, "call"    # Lio/ktor/server/netty/NettyApplicationCall;
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/netty/NettyApplicationCall;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-virtual {p1}, Lio/ktor/server/netty/NettyApplicationCall;->getResponse()Lio/ktor/server/netty/NettyApplicationResponse;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/server/netty/NettyApplicationResponse;->getResponseReady$ktor_server_netty()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    new-instance v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p0, p2}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda3;-><init>(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 97
    return-void
.end method

.method private static final setOnResponseReadyHandler$lambda$2(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lkotlin/jvm/functions/Function0;Lio/netty/util/concurrent/Future;)V
    .locals 2
    .param p0, "$call"    # Lio/ktor/server/netty/NettyApplicationCall;
    .param p1, "this$0"    # Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    .param p2, "$block"    # Lkotlin/jvm/functions/Function0;
    .param p3, "responseFlagResult"    # Lio/netty/util/concurrent/Future;

    const-string v0, "$call"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationCall;->getPreviousCallFinished$ktor_server_netty()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    new-instance v1, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0, p3, p2}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda2;-><init>(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/ktor/server/netty/NettyApplicationCall;Lio/netty/util/concurrent/Future;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 96
    return-void
.end method

.method private static final setOnResponseReadyHandler$lambda$2$lambda$1(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/ktor/server/netty/NettyApplicationCall;Lio/netty/util/concurrent/Future;Lkotlin/jvm/functions/Function0;Lio/netty/util/concurrent/Future;)V
    .locals 2
    .param p0, "this$0"    # Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;
    .param p1, "$call"    # Lio/ktor/server/netty/NettyApplicationCall;
    .param p2, "$responseFlagResult"    # Lio/netty/util/concurrent/Future;
    .param p3, "$block"    # Lkotlin/jvm/functions/Function0;
    .param p4, "previousCallResult"    # Lio/netty/util/concurrent/Future;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-interface {p4}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-interface {p4}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "previousCallResult.cause()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->respondWithFailure(Lio/ktor/server/netty/NettyApplicationCall;Ljava/lang/Throwable;)V

    .line 88
    return-void

    .line 90
    :cond_0
    invoke-interface {p2}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-interface {p2}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "responseFlagResult.cause()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->respondWithFailure(Lio/ktor/server/netty/NettyApplicationCall;Ljava/lang/Throwable;)V

    .line 92
    return-void

    .line 94
    :cond_1
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 95
    return-void
.end method


# virtual methods
.method public final close(Lio/netty/channel/ChannelFuture;)V
    .locals 3
    .param p1, "lastFuture"    # Lio/netty/channel/ChannelFuture;

    const-string v0, "lastFuture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 160
    sget-object v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->isDataNotFlushed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 161
    new-instance v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda0;-><init>(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;)V

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 164
    return-void
.end method

.method public final flushIfNeeded$ktor_server_netty()V
    .locals 4

    .line 51
    nop

    .line 52
    iget v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->isDataNotFlushed:I

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->httpHandlerState:Lio/ktor/server/netty/NettyHttpHandlerState;

    iget v0, v0, Lio/ktor/server/netty/NettyHttpHandlerState;->isChannelReadCompleted$internal:I

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->httpHandlerState:Lio/ktor/server/netty/NettyHttpHandlerState;

    iget-wide v0, v0, Lio/ktor/server/netty/NettyHttpHandlerState;->activeRequests$internal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 57
    sget-object v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->isDataNotFlushed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 59
    :cond_0
    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final processResponse$ktor_server_netty(Lio/ktor/server/netty/NettyApplicationCall;)V
    .locals 2
    .param p1, "call"    # Lio/ktor/server/netty/NettyApplicationCall;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->previousCallHandled:Lio/netty/channel/ChannelPromise;

    invoke-virtual {p1, v0}, Lio/ktor/server/netty/NettyApplicationCall;->setPreviousCallFinished$ktor_server_netty(Lio/netty/channel/ChannelPromise;)V

    .line 63
    iget-object v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    const-string v1, "context.newPromise()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/ktor/server/netty/NettyApplicationCall;->setFinishedEvent$ktor_server_netty(Lio/netty/channel/ChannelPromise;)V

    .line 64
    invoke-virtual {p1}, Lio/ktor/server/netty/NettyApplicationCall;->getFinishedEvent$ktor_server_netty()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->previousCallHandled:Lio/netty/channel/ChannelPromise;

    .line 66
    invoke-direct {p0, p1}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->processElement(Lio/ktor/server/netty/NettyApplicationCall;)V

    .line 67
    return-void
.end method
