.class final Lio/ktor/server/netty/NettyChannelInitializer$NegotiatedPipelineInitializer;
.super Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;
.source "NettyChannelInitializer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/netty/NettyChannelInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NegotiatedPipelineInitializer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0014J\u001a\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/ktor/server/netty/NettyChannelInitializer$NegotiatedPipelineInitializer;",
        "Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;",
        "(Lio/ktor/server/netty/NettyChannelInitializer;)V",
        "configurePipeline",
        "",
        "ctx",
        "Lio/netty/channel/ChannelHandlerContext;",
        "protocol",
        "",
        "handshakeFailure",
        "cause",
        "",
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
.field final synthetic this$0:Lio/ktor/server/netty/NettyChannelInitializer;


# direct methods
.method public constructor <init>(Lio/ktor/server/netty/NettyChannelInitializer;)V
    .locals 1
    .param p1, "this$0"    # Lio/ktor/server/netty/NettyChannelInitializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lio/ktor/server/netty/NettyChannelInitializer$NegotiatedPipelineInitializer;->this$0:Lio/ktor/server/netty/NettyChannelInitializer;

    .line 168
    const-string v0, "http/1.1"

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;-><init>(Ljava/lang/String;)V

    .line 167
    return-void
.end method


# virtual methods
.method protected configurePipeline(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "protocol"    # Ljava/lang/String;

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lio/ktor/server/netty/NettyChannelInitializer$NegotiatedPipelineInitializer;->this$0:Lio/ktor/server/netty/NettyChannelInitializer;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    const-string v2, "ctx.pipeline()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p2}, Lio/ktor/server/netty/NettyChannelInitializer;->access$configurePipeline(Lio/ktor/server/netty/NettyChannelInitializer;Lio/netty/channel/ChannelPipeline;Ljava/lang/String;)V

    return-void
.end method

.method protected handshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    instance-of v0, p2, Ljava/nio/channels/ClosedChannelException;

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 177
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/handler/ssl/ApplicationProtocolNegotiationHandler;->handshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 179
    :goto_0
    return-void
.end method
