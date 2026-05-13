.class public final synthetic Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/netty/util/concurrent/GenericFutureListener;


# instance fields
.field public final synthetic f$0:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

.field public final synthetic f$1:Lio/ktor/server/netty/NettyApplicationCall;

.field public final synthetic f$2:Lio/netty/util/concurrent/Future;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/ktor/server/netty/NettyApplicationCall;Lio/netty/util/concurrent/Future;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda2;->f$0:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    iput-object p2, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda2;->f$1:Lio/ktor/server/netty/NettyApplicationCall;

    iput-object p3, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda2;->f$2:Lio/netty/util/concurrent/Future;

    iput-object p4, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda2;->f$3:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda2;->f$0:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    iget-object v1, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda2;->f$1:Lio/ktor/server/netty/NettyApplicationCall;

    iget-object v2, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda2;->f$2:Lio/netty/util/concurrent/Future;

    iget-object v3, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda2;->f$3:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2, v3, p1}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->$r8$lambda$6y7F-4PEanX7Y2DfBRdCvzut-rg(Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/ktor/server/netty/NettyApplicationCall;Lio/netty/util/concurrent/Future;Lkotlin/jvm/functions/Function0;Lio/netty/util/concurrent/Future;)V

    return-void
.end method
