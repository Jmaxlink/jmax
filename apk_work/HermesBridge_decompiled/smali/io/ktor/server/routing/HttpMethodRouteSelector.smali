.class public final Lio/ktor/server/routing/HttpMethodRouteSelector;
.super Lio/ktor/server/routing/RouteSelector;
.source "RouteSelector.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\t\u0010\u0013\u001a\u00020\u0012H\u00d6\u0001J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/ktor/server/routing/HttpMethodRouteSelector;",
        "Lio/ktor/server/routing/RouteSelector;",
        "method",
        "Lio/ktor/http/HttpMethod;",
        "(Lio/ktor/http/HttpMethod;)V",
        "getMethod",
        "()Lio/ktor/http/HttpMethod;",
        "component1",
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
.field private final method:Lio/ktor/http/HttpMethod;


# direct methods
.method public constructor <init>(Lio/ktor/http/HttpMethod;)V
    .locals 1
    .param p1, "method"    # Lio/ktor/http/HttpMethod;

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    invoke-direct {p0}, Lio/ktor/server/routing/RouteSelector;-><init>()V

    .line 543
    iput-object p1, p0, Lio/ktor/server/routing/HttpMethodRouteSelector;->method:Lio/ktor/http/HttpMethod;

    .line 542
    return-void
.end method

.method public static synthetic copy$default(Lio/ktor/server/routing/HttpMethodRouteSelector;Lio/ktor/http/HttpMethod;ILjava/lang/Object;)Lio/ktor/server/routing/HttpMethodRouteSelector;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lio/ktor/server/routing/HttpMethodRouteSelector;->method:Lio/ktor/http/HttpMethod;

    :cond_0
    invoke-virtual {p0, p1}, Lio/ktor/server/routing/HttpMethodRouteSelector;->copy(Lio/ktor/http/HttpMethod;)Lio/ktor/server/routing/HttpMethodRouteSelector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/ktor/http/HttpMethod;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/HttpMethodRouteSelector;->method:Lio/ktor/http/HttpMethod;

    return-object v0
.end method

.method public final copy(Lio/ktor/http/HttpMethod;)Lio/ktor/server/routing/HttpMethodRouteSelector;
    .locals 1

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/ktor/server/routing/HttpMethodRouteSelector;

    invoke-direct {v0, p1}, Lio/ktor/server/routing/HttpMethodRouteSelector;-><init>(Lio/ktor/http/HttpMethod;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ktor/server/routing/HttpMethodRouteSelector;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/ktor/server/routing/HttpMethodRouteSelector;

    iget-object v3, p0, Lio/ktor/server/routing/HttpMethodRouteSelector;->method:Lio/ktor/http/HttpMethod;

    iget-object v1, v1, Lio/ktor/server/routing/HttpMethodRouteSelector;->method:Lio/ktor/http/HttpMethod;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public evaluate(Lio/ktor/server/routing/RoutingResolveContext;I)Lio/ktor/server/routing/RouteSelectorEvaluation;
    .locals 2
    .param p1, "context"    # Lio/ktor/server/routing/RoutingResolveContext;
    .param p2, "segmentIndex"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p1}, Lio/ktor/server/routing/RoutingResolveContext;->getCall()Lio/ktor/server/application/ApplicationCall;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->getHttpMethod(Lio/ktor/server/request/ApplicationRequest;)Lio/ktor/http/HttpMethod;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/routing/HttpMethodRouteSelector;->method:Lio/ktor/http/HttpMethod;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    sget-object v0, Lio/ktor/server/routing/RouteSelectorEvaluation;->Companion:Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;

    invoke-virtual {v0}, Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;->getConstant()Lio/ktor/server/routing/RouteSelectorEvaluation;

    move-result-object v0

    return-object v0

    .line 550
    :cond_0
    sget-object v0, Lio/ktor/server/routing/RouteSelectorEvaluation;->Companion:Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;

    invoke-virtual {v0}, Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;->getFailedMethod()Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    move-result-object v0

    check-cast v0, Lio/ktor/server/routing/RouteSelectorEvaluation;

    return-object v0
.end method

.method public final getMethod()Lio/ktor/http/HttpMethod;
    .locals 1

    .line 543
    iget-object v0, p0, Lio/ktor/server/routing/HttpMethodRouteSelector;->method:Lio/ktor/http/HttpMethod;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/HttpMethodRouteSelector;->method:Lio/ktor/http/HttpMethod;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(method:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/routing/HttpMethodRouteSelector;->method:Lio/ktor/http/HttpMethod;

    invoke-virtual {v1}, Lio/ktor/http/HttpMethod;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
