.class public final Lio/ktor/server/routing/AndRouteSelector;
.super Lio/ktor/server/routing/RouteSelector;
.source "RouteSelector.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0008\u001a\u00020\u0001H\u00c6\u0003J\t\u0010\t\u001a\u00020\u0001H\u00c6\u0003J\u001d\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0001H\u00c6\u0001J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\t\u0010\u0015\u001a\u00020\u0014H\u00d6\u0001J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u0011\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0003\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0006\u00a8\u0006\u0018"
    }
    d2 = {
        "Lio/ktor/server/routing/AndRouteSelector;",
        "Lio/ktor/server/routing/RouteSelector;",
        "first",
        "second",
        "(Lio/ktor/server/routing/RouteSelector;Lio/ktor/server/routing/RouteSelector;)V",
        "getFirst",
        "()Lio/ktor/server/routing/RouteSelector;",
        "getSecond",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "evaluate",
        "Lio/ktor/server/routing/RouteSelectorEvaluation;",
        "context",
        "Lio/ktor/server/routing/RoutingResolveContext;",
        "segmentIndex",
        "",
        "hashCode",
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


# instance fields
.field private final first:Lio/ktor/server/routing/RouteSelector;

.field private final second:Lio/ktor/server/routing/RouteSelector;


# direct methods
.method public constructor <init>(Lio/ktor/server/routing/RouteSelector;Lio/ktor/server/routing/RouteSelector;)V
    .locals 1
    .param p1, "first"    # Lio/ktor/server/routing/RouteSelector;
    .param p2, "second"    # Lio/ktor/server/routing/RouteSelector;

    const-string v0, "first"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    invoke-direct {p0}, Lio/ktor/server/routing/RouteSelector;-><init>()V

    .line 514
    iput-object p1, p0, Lio/ktor/server/routing/AndRouteSelector;->first:Lio/ktor/server/routing/RouteSelector;

    .line 515
    iput-object p2, p0, Lio/ktor/server/routing/AndRouteSelector;->second:Lio/ktor/server/routing/RouteSelector;

    .line 513
    return-void
.end method

.method public static synthetic copy$default(Lio/ktor/server/routing/AndRouteSelector;Lio/ktor/server/routing/RouteSelector;Lio/ktor/server/routing/RouteSelector;ILjava/lang/Object;)Lio/ktor/server/routing/AndRouteSelector;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lio/ktor/server/routing/AndRouteSelector;->first:Lio/ktor/server/routing/RouteSelector;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lio/ktor/server/routing/AndRouteSelector;->second:Lio/ktor/server/routing/RouteSelector;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/ktor/server/routing/AndRouteSelector;->copy(Lio/ktor/server/routing/RouteSelector;Lio/ktor/server/routing/RouteSelector;)Lio/ktor/server/routing/AndRouteSelector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/ktor/server/routing/RouteSelector;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/AndRouteSelector;->first:Lio/ktor/server/routing/RouteSelector;

    return-object v0
.end method

.method public final component2()Lio/ktor/server/routing/RouteSelector;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/AndRouteSelector;->second:Lio/ktor/server/routing/RouteSelector;

    return-object v0
.end method

.method public final copy(Lio/ktor/server/routing/RouteSelector;Lio/ktor/server/routing/RouteSelector;)Lio/ktor/server/routing/AndRouteSelector;
    .locals 1

    const-string v0, "first"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/ktor/server/routing/AndRouteSelector;

    invoke-direct {v0, p1, p2}, Lio/ktor/server/routing/AndRouteSelector;-><init>(Lio/ktor/server/routing/RouteSelector;Lio/ktor/server/routing/RouteSelector;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ktor/server/routing/AndRouteSelector;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/ktor/server/routing/AndRouteSelector;

    iget-object v3, p0, Lio/ktor/server/routing/AndRouteSelector;->first:Lio/ktor/server/routing/RouteSelector;

    iget-object v4, v1, Lio/ktor/server/routing/AndRouteSelector;->first:Lio/ktor/server/routing/RouteSelector;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lio/ktor/server/routing/AndRouteSelector;->second:Lio/ktor/server/routing/RouteSelector;

    iget-object v1, v1, Lio/ktor/server/routing/AndRouteSelector;->second:Lio/ktor/server/routing/RouteSelector;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public evaluate(Lio/ktor/server/routing/RoutingResolveContext;I)Lio/ktor/server/routing/RouteSelectorEvaluation;
    .locals 8
    .param p1, "context"    # Lio/ktor/server/routing/RoutingResolveContext;
    .param p2, "segmentIndex"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lio/ktor/server/routing/AndRouteSelector;->first:Lio/ktor/server/routing/RouteSelector;

    invoke-virtual {v0, p1, p2}, Lio/ktor/server/routing/RouteSelector;->evaluate(Lio/ktor/server/routing/RoutingResolveContext;I)Lio/ktor/server/routing/RouteSelectorEvaluation;

    move-result-object v0

    .line 520
    .local v0, "result1":Lio/ktor/server/routing/RouteSelectorEvaluation;
    instance-of v1, v0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    if-nez v1, :cond_0

    .line 521
    return-object v0

    .line 523
    :cond_0
    iget-object v1, p0, Lio/ktor/server/routing/AndRouteSelector;->second:Lio/ktor/server/routing/RouteSelector;

    move-object v2, v0

    check-cast v2, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    invoke-virtual {v2}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->getSegmentIncrement()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, p1, v2}, Lio/ktor/server/routing/RouteSelector;->evaluate(Lio/ktor/server/routing/RoutingResolveContext;I)Lio/ktor/server/routing/RouteSelectorEvaluation;

    move-result-object v1

    .line 524
    .local v1, "result2":Lio/ktor/server/routing/RouteSelectorEvaluation;
    instance-of v2, v1, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    if-nez v2, :cond_1

    .line 525
    return-object v1

    .line 527
    :cond_1
    move-object v2, v0

    check-cast v2, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    invoke-virtual {v2}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->getParameters()Lio/ktor/http/Parameters;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    invoke-virtual {v3}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->getParameters()Lio/ktor/http/Parameters;

    move-result-object v3

    invoke-static {v2, v3}, Lio/ktor/http/ParametersKt;->plus(Lio/ktor/http/Parameters;Lio/ktor/http/Parameters;)Lio/ktor/http/Parameters;

    move-result-object v2

    .line 528
    .local v2, "resultValues":Lio/ktor/http/Parameters;
    new-instance v3, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    .line 529
    move-object v4, v0

    check-cast v4, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    invoke-virtual {v4}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->getQuality()D

    move-result-wide v4

    move-object v6, v1

    check-cast v6, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    invoke-virtual {v6}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->getQuality()D

    move-result-wide v6

    mul-double/2addr v4, v6

    .line 530
    nop

    .line 531
    move-object v6, v0

    check-cast v6, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    invoke-virtual {v6}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->getSegmentIncrement()I

    move-result v6

    move-object v7, v1

    check-cast v7, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    invoke-virtual {v7}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->getSegmentIncrement()I

    move-result v7

    add-int/2addr v6, v7

    .line 528
    invoke-direct {v3, v4, v5, v2, v6}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;-><init>(DLio/ktor/http/Parameters;I)V

    check-cast v3, Lio/ktor/server/routing/RouteSelectorEvaluation;

    return-object v3
.end method

.method public final getFirst()Lio/ktor/server/routing/RouteSelector;
    .locals 1

    .line 514
    iget-object v0, p0, Lio/ktor/server/routing/AndRouteSelector;->first:Lio/ktor/server/routing/RouteSelector;

    return-object v0
.end method

.method public final getSecond()Lio/ktor/server/routing/RouteSelector;
    .locals 1

    .line 515
    iget-object v0, p0, Lio/ktor/server/routing/AndRouteSelector;->second:Lio/ktor/server/routing/RouteSelector;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/ktor/server/routing/AndRouteSelector;->first:Lio/ktor/server/routing/RouteSelector;

    invoke-virtual {v0}, Lio/ktor/server/routing/RouteSelector;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/ktor/server/routing/AndRouteSelector;->second:Lio/ktor/server/routing/RouteSelector;

    invoke-virtual {v2}, Lio/ktor/server/routing/RouteSelector;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/routing/AndRouteSelector;->first:Lio/ktor/server/routing/RouteSelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " & "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/routing/AndRouteSelector;->second:Lio/ktor/server/routing/RouteSelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
