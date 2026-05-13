.class final Lio/ktor/server/netty/NettyApplicationEngine$workerEventGroup$2;
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

    iput-object p1, p0, Lio/ktor/server/netty/NettyApplicationEngine$workerEventGroup$2;->this$0:Lio/ktor/server/netty/NettyApplicationEngine;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/netty/channel/EventLoopGroup;
    .locals 3

    .line 126
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$workerEventGroup$2;->this$0:Lio/ktor/server/netty/NettyApplicationEngine;

    invoke-static {v0}, Lio/ktor/server/netty/NettyApplicationEngine;->access$getCustomBootstrap(Lio/ktor/server/netty/NettyApplicationEngine;)Lio/netty/bootstrap/ServerBootstrap;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/bootstrap/ServerBootstrap;->config()Lio/netty/bootstrap/ServerBootstrapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/bootstrap/ServerBootstrapConfig;->childGroup()Lio/netty/channel/EventLoopGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Lio/netty/channel/EventLoopGroup;
    const/4 v1, 0x0

    .line 127
    .local v1, "$i$a$-let-NettyApplicationEngine$workerEventGroup$2$1":I
    return-object v0

    .line 129
    .end local v0    # "it":Lio/netty/channel/EventLoopGroup;
    .end local v1    # "$i$a$-let-NettyApplicationEngine$workerEventGroup$2$1":I
    :cond_0
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$workerEventGroup$2;->this$0:Lio/ktor/server/netty/NettyApplicationEngine;

    invoke-static {v0}, Lio/ktor/server/netty/NettyApplicationEngine;->access$getConfiguration$p(Lio/ktor/server/netty/NettyApplicationEngine;)Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->getShareWorkGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    sget-object v0, Lio/ktor/server/netty/EventLoopGroupProxy;->Companion:Lio/ktor/server/netty/EventLoopGroupProxy$Companion;

    iget-object v1, p0, Lio/ktor/server/netty/NettyApplicationEngine$workerEventGroup$2;->this$0:Lio/ktor/server/netty/NettyApplicationEngine;

    invoke-static {v1}, Lio/ktor/server/netty/NettyApplicationEngine;->access$getConfiguration$p(Lio/ktor/server/netty/NettyApplicationEngine;)Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->getWorkerGroupSize()I

    move-result v1

    iget-object v2, p0, Lio/ktor/server/netty/NettyApplicationEngine$workerEventGroup$2;->this$0:Lio/ktor/server/netty/NettyApplicationEngine;

    invoke-static {v2}, Lio/ktor/server/netty/NettyApplicationEngine;->access$getConfiguration$p(Lio/ktor/server/netty/NettyApplicationEngine;)Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->getCallGroupSize()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lio/ktor/server/netty/EventLoopGroupProxy$Companion;->create(I)Lio/ktor/server/netty/EventLoopGroupProxy;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_1
    sget-object v0, Lio/ktor/server/netty/EventLoopGroupProxy;->Companion:Lio/ktor/server/netty/EventLoopGroupProxy$Companion;

    iget-object v1, p0, Lio/ktor/server/netty/NettyApplicationEngine$workerEventGroup$2;->this$0:Lio/ktor/server/netty/NettyApplicationEngine;

    invoke-static {v1}, Lio/ktor/server/netty/NettyApplicationEngine;->access$getConfiguration$p(Lio/ktor/server/netty/NettyApplicationEngine;)Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->getWorkerGroupSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/ktor/server/netty/EventLoopGroupProxy$Companion;->create(I)Lio/ktor/server/netty/EventLoopGroupProxy;

    move-result-object v0

    :goto_0
    check-cast v0, Lio/netty/channel/EventLoopGroup;

    .line 129
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationEngine$workerEventGroup$2;->invoke()Lio/netty/channel/EventLoopGroup;

    move-result-object v0

    return-object v0
.end method
