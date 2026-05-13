.class final Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "NettyHttpResponsePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->respondWithBodyAndTrailerMessage(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;ILio/netty/channel/ChannelFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.server.netty.cio.NettyHttpResponsePipeline"
    f = "NettyHttpResponsePipeline.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0xf7,
        0xf8,
        0xf9
    }
    m = "respondWithBodyAndTrailerMessage"
    n = {
        "this",
        "call",
        "this",
        "call",
        "this",
        "call"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;


# direct methods
.method constructor <init>(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->this$0:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->result:Ljava/lang/Object;

    iget v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->label:I

    iget-object v1, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondWithBodyAndTrailerMessage$1;->this$0:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    const/4 v5, 0x0

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->access$respondWithBodyAndTrailerMessage(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;ILio/netty/channel/ChannelFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
