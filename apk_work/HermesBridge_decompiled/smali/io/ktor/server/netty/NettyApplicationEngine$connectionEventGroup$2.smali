.class final Lio/ktor/server/netty/NettyApplicationEngine$connectionEventGroup$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NettyApplicationEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/netty/NettyApplicationEngine;-><init>(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/netty/channel/EventLoopGroup;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lio/netty/channel/EventLoopGroup;",
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
.field final synthetic this$0:Lio/ktor/server/netty/NettyApplicationEngine;


# direct methods
.method constructor <init>(Lio/ktor/server/netty/NettyApplicationEngine;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/netty/NettyApplicationEngine$connectionEventGroup$2;->this$0:Lio/ktor/server/netty/NettyApplicationEngine;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/netty/channel/EventLoopGroup;
    .locals 2

    .line 119
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$connectionEventGroup$2;->this$0:Lio/ktor/server/netty/NettyApplicationEngine;

    invoke-static {v0}, Lio/ktor/server/netty/NettyApplicationEngine;->access$getCustomBootstrap(Lio/ktor/server/netty/NettyApplicationEngine;)Lio/netty/bootstrap/ServerBootstrap;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/bootstrap/ServerBootstrap;->config()Lio/netty/bootstrap/ServerBootstrapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/bootstrap/ServerBootstrapConfig;->group()Lio/netty/channel/EventLoopGroup;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lio/ktor/server/netty/EventLoopGroupProxy;->Companion:Lio/ktor/server/netty/EventLoopGroupProxy$Companion;

    iget-object v1, p0, Lio/ktor/server/netty/NettyApplicationEngine$connectionEventGroup$2;->this$0:Lio/ktor/server/netty/NettyApplicationEngine;

    invoke-static {v1}, Lio/ktor/server/netty/NettyApplicationEngine;->access$getConfiguration$p(Lio/ktor/server/netty/NettyApplicationEngine;)Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->getConnectionGroupSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/ktor/server/netty/EventLoopGroupProxy$Companion;->create(I)Lio/ktor/server/netty/EventLoopGroupProxy;

    move-result-object v0

    check-cast v0, Lio/netty/channel/EventLoopGroup;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationEngine$connectionEventGroup$2;->invoke()Lio/netty/channel/EventLoopGroup;

    move-result-object v0

    return-object v0
.end method
