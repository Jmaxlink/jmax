.class final Lio/ktor/server/routing/RoutingResolveTrace$buildText$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RoutingResolveTrace.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/routing/RoutingResolveTrace$buildText$1$2;->invoke(Ljava/util/List;)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/server/routing/RoutingResolveResult$Success;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lio/ktor/server/routing/RoutingResolveResult$Success;",
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


# static fields
.field public static final INSTANCE:Lio/ktor/server/routing/RoutingResolveTrace$buildText$1$2$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/routing/RoutingResolveTrace$buildText$1$2$1;

    invoke-direct {v0}, Lio/ktor/server/routing/RoutingResolveTrace$buildText$1$2$1;-><init>()V

    sput-object v0, Lio/ktor/server/routing/RoutingResolveTrace$buildText$1$2$1;->INSTANCE:Lio/ktor/server/routing/RoutingResolveTrace$buildText$1$2$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/server/routing/RoutingResolveResult$Success;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "it"    # Lio/ktor/server/routing/RoutingResolveResult$Success;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lio/ktor/server/routing/RoutingResolveResult$Success;->getRoute()Lio/ktor/server/routing/Route;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/server/routing/Route;->getSelector()Lio/ktor/server/routing/RouteSelector;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 109
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/RoutingResolveResult$Success;

    invoke-virtual {p0, v0}, Lio/ktor/server/routing/RoutingResolveTrace$buildText$1$2$1;->invoke(Lio/ktor/server/routing/RoutingResolveResult$Success;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
