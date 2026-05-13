.class final Lio/ktor/server/plugins/OriginConnectionPointKt$mutableOriginConnectionPoint$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OriginConnectionPoint.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/plugins/OriginConnectionPointKt;->getMutableOriginConnectionPoint(Lio/ktor/server/application/ApplicationCall;)Lio/ktor/server/plugins/MutableOriginConnectionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/ktor/server/plugins/MutableOriginConnectionPoint;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lio/ktor/server/plugins/MutableOriginConnectionPoint;",
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
.field final synthetic $this_mutableOriginConnectionPoint:Lio/ktor/server/application/ApplicationCall;


# direct methods
.method constructor <init>(Lio/ktor/server/application/ApplicationCall;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/plugins/OriginConnectionPointKt$mutableOriginConnectionPoint$1;->$this_mutableOriginConnectionPoint:Lio/ktor/server/application/ApplicationCall;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/ktor/server/plugins/MutableOriginConnectionPoint;
    .locals 3

    .line 130
    new-instance v0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;

    new-instance v1, Lio/ktor/server/plugins/OriginConnectionPoint;

    iget-object v2, p0, Lio/ktor/server/plugins/OriginConnectionPointKt$mutableOriginConnectionPoint$1;->$this_mutableOriginConnectionPoint:Lio/ktor/server/application/ApplicationCall;

    invoke-direct {v1, v2}, Lio/ktor/server/plugins/OriginConnectionPoint;-><init>(Lio/ktor/server/application/ApplicationCall;)V

    check-cast v1, Lio/ktor/http/RequestConnectionPoint;

    invoke-direct {v0, v1}, Lio/ktor/server/plugins/MutableOriginConnectionPoint;-><init>(Lio/ktor/http/RequestConnectionPoint;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lio/ktor/server/plugins/OriginConnectionPointKt$mutableOriginConnectionPoint$1;->invoke()Lio/ktor/server/plugins/MutableOriginConnectionPoint;

    move-result-object v0

    return-object v0
.end method
