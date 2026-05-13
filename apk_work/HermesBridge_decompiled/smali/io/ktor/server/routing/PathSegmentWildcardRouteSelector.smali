.class public final Lio/ktor/server/routing/PathSegmentWildcardRouteSelector;
.super Lio/ktor/server/routing/RouteSelector;
.source "RouteSelector.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/ktor/server/routing/PathSegmentWildcardRouteSelector;",
        "Lio/ktor/server/routing/RouteSelector;",
        "()V",
        "evaluate",
        "Lio/ktor/server/routing/RouteSelectorEvaluation;",
        "context",
        "Lio/ktor/server/routing/RoutingResolveContext;",
        "segmentIndex",
        "",
        "toString",
        "",
        "ktor-server-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/server/routing/PathSegmentWildcardRouteSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/routing/PathSegmentWildcardRouteSelector;

    invoke-direct {v0}, Lio/ktor/server/routing/PathSegmentWildcardRouteSelector;-><init>()V

    sput-object v0, Lio/ktor/server/routing/PathSegmentWildcardRouteSelector;->INSTANCE:Lio/ktor/server/routing/PathSegmentWildcardRouteSelector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 415
    invoke-direct {p0}, Lio/ktor/server/routing/RouteSelector;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lio/ktor/server/routing/RoutingResolveContext;I)Lio/ktor/server/routing/RouteSelectorEvaluation;
    .locals 1
    .param p1, "context"    # Lio/ktor/server/routing/RoutingResolveContext;
    .param p2, "segmentIndex"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p1}, Lio/ktor/server/routing/RoutingResolveContext;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {p1}, Lio/ktor/server/routing/RoutingResolveContext;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 418
    sget-object v0, Lio/ktor/server/routing/RouteSelectorEvaluation;->Companion:Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;

    invoke-virtual {v0}, Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;->getWildcardPath()Lio/ktor/server/routing/RouteSelectorEvaluation;

    move-result-object v0

    return-object v0

    .line 420
    :cond_1
    sget-object v0, Lio/ktor/server/routing/RouteSelectorEvaluation;->Companion:Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;

    invoke-virtual {v0}, Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;->getFailedPath()Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    move-result-object v0

    check-cast v0, Lio/ktor/server/routing/RouteSelectorEvaluation;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 423
    const-string v0, "*"

    return-object v0
.end method
