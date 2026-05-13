.class final Lio/ktor/server/netty/NettyApplicationEngine$start$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NettyApplicationEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/netty/NettyApplicationEngine;->start(Z)Lio/ktor/server/netty/NettyApplicationEngine;
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
.field final synthetic this$0:Lio/ktor/server/netty/NettyApplicationEngine;


# direct methods
.method constructor <init>(Lio/ktor/server/netty/NettyApplicationEngine;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/netty/NettyApplicationEngine$start$1;->this$0:Lio/ktor/server/netty/NettyApplicationEngine;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationEngine$start$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 213
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$start$1;->this$0:Lio/ktor/server/netty/NettyApplicationEngine;

    iget-object v1, p0, Lio/ktor/server/netty/NettyApplicationEngine$start$1;->this$0:Lio/ktor/server/netty/NettyApplicationEngine;

    invoke-static {v1}, Lio/ktor/server/netty/NettyApplicationEngine;->access$getConfiguration$p(Lio/ktor/server/netty/NettyApplicationEngine;)Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->getShutdownGracePeriod()J

    move-result-wide v1

    iget-object v3, p0, Lio/ktor/server/netty/NettyApplicationEngine$start$1;->this$0:Lio/ktor/server/netty/NettyApplicationEngine;

    invoke-static {v3}, Lio/ktor/server/netty/NettyApplicationEngine;->access$getConfiguration$p(Lio/ktor/server/netty/NettyApplicationEngine;)Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->getShutdownTimeout()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/ktor/server/netty/NettyApplicationEngine;->stop(JJ)V

    .line 214
    return-void
.end method
