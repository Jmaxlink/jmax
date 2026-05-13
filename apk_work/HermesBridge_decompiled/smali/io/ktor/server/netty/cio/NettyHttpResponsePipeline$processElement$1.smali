.class final Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$processElement$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NettyHttpResponsePipeline.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->processElement(Lio/ktor/server/netty/NettyApplicationCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $call:Lio/ktor/server/netty/NettyApplicationCall;

.field final synthetic this$0:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;


# direct methods
.method constructor <init>(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/ktor/server/netty/NettyApplicationCall;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$processElement$1;->this$0:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    iput-object p2, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$processElement$1;->$call:Lio/ktor/server/netty/NettyApplicationCall;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$processElement$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 70
    nop

    .line 71
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$processElement$1;->this$0:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    iget-object v3, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$processElement$1;->$call:Lio/ktor/server/netty/NettyApplicationCall;

    invoke-static {v2, v3}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->access$handleRequestMessage(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/ktor/server/netty/NettyApplicationCall;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_0
    iget-object v2, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$processElement$1;->$call:Lio/ktor/server/netty/NettyApplicationCall;

    invoke-virtual {v2}, Lio/ktor/server/netty/NettyApplicationCall;->getResponseWriteJob()Lkotlinx/coroutines/Job;

    move-result-object v2

    invoke-static {v2, v1, v0, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 76
    goto :goto_1

    .line 72
    :catchall_0
    move-exception v2

    .line 73
    .local v2, "actualException":Ljava/lang/Throwable;
    :try_start_1
    iget-object v3, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$processElement$1;->this$0:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    iget-object v4, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$processElement$1;->$call:Lio/ktor/server/netty/NettyApplicationCall;

    invoke-static {v3, v4, v2}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->access$respondWithFailure(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/ktor/server/netty/NettyApplicationCall;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v2    # "actualException":Ljava/lang/Throwable;
    goto :goto_0

    .line 77
    :goto_1
    return-void

    .line 75
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$processElement$1;->$call:Lio/ktor/server/netty/NettyApplicationCall;

    invoke-virtual {v3}, Lio/ktor/server/netty/NettyApplicationCall;->getResponseWriteJob()Lkotlinx/coroutines/Job;

    move-result-object v3

    invoke-static {v3, v1, v0, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    throw v2
.end method
