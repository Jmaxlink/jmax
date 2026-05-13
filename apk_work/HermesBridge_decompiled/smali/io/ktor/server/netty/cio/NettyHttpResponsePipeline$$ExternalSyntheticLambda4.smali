.class public final synthetic Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/netty/util/concurrent/GenericFutureListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

.field public final synthetic f$2:Lio/netty/channel/ChannelFuture;


# direct methods
.method public synthetic constructor <init>(ZLio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/netty/channel/ChannelFuture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda4;->f$0:Z

    iput-object p2, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda4;->f$1:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    iput-object p3, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda4;->f$2:Lio/netty/channel/ChannelFuture;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 3

    .line 0
    iget-boolean v0, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda4;->f$0:Z

    iget-object v1, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda4;->f$1:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    iget-object v2, p0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$$ExternalSyntheticLambda4;->f$2:Lio/netty/channel/ChannelFuture;

    invoke-static {v0, v1, v2, p1}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->$r8$lambda$AxZehNiDlvnVzHelINf0gj3mHG0(ZLio/ktor/server/netty/cio/NettyHttpResponsePipeline;Lio/netty/channel/ChannelFuture;Lio/netty/util/concurrent/Future;)V

    return-void
.end method
