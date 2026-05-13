.class public final Lio/ktor/server/routing/LocalPortRouteSelector;
.super Lio/ktor/server/routing/RouteSelector;
.source "LocalPortRoutingBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/routing/LocalPortRouteSelector$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0003H\u0016J\t\u0010\u0012\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/ktor/server/routing/LocalPortRouteSelector;",
        "Lio/ktor/server/routing/RouteSelector;",
        "port",
        "",
        "(I)V",
        "getPort",
        "()I",
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
        "hashCode",
        "toString",
        "",
        "Companion",
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
.field public static final Companion:Lio/ktor/server/routing/LocalPortRouteSelector$Companion;

.field public static final LocalPortParameter:Ljava/lang/String; = "$LocalPort"


# instance fields
.field private final port:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/server/routing/LocalPortRouteSelector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/server/routing/LocalPortRouteSelector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/server/routing/LocalPortRouteSelector;->Companion:Lio/ktor/server/routing/LocalPortRouteSelector$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "port"    # I

    .line 36
    invoke-direct {p0}, Lio/ktor/server/routing/RouteSelector;-><init>()V

    iput p1, p0, Lio/ktor/server/routing/LocalPortRouteSelector;->port:I

    return-void
.end method

.method public static synthetic copy$default(Lio/ktor/server/routing/LocalPortRouteSelector;IILjava/lang/Object;)Lio/ktor/server/routing/LocalPortRouteSelector;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lio/ktor/server/routing/LocalPortRouteSelector;->port:I

    :cond_0
    invoke-virtual {p0, p1}, Lio/ktor/server/routing/LocalPortRouteSelector;->copy(I)Lio/ktor/server/routing/LocalPortRouteSelector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lio/ktor/server/routing/LocalPortRouteSelector;->port:I

    return v0
.end method

.method public final copy(I)Lio/ktor/server/routing/LocalPortRouteSelector;
    .locals 1

    new-instance v0, Lio/ktor/server/routing/LocalPortRouteSelector;

    invoke-direct {v0, p1}, Lio/ktor/server/routing/LocalPortRouteSelector;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ktor/server/routing/LocalPortRouteSelector;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/ktor/server/routing/LocalPortRouteSelector;

    iget v3, p0, Lio/ktor/server/routing/LocalPortRouteSelector;->port:I

    iget v1, v1, Lio/ktor/server/routing/LocalPortRouteSelector;->port:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public evaluate(Lio/ktor/server/routing/RoutingResolveContext;I)Lio/ktor/server/routing/RouteSelectorEvaluation;
    .locals 9
    .param p1, "context"    # Lio/ktor/server/routing/RoutingResolveContext;
    .param p2, "segmentIndex"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lio/ktor/server/routing/RoutingResolveContext;->getCall()Lio/ktor/server/application/ApplicationCall;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/request/ApplicationRequest;->getLocal()Lio/ktor/http/RequestConnectionPoint;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/http/RequestConnectionPoint;->getLocalPort()I

    move-result v0

    iget v1, p0, Lio/ktor/server/routing/LocalPortRouteSelector;->port:I

    if-ne v0, v1, :cond_0

    .line 40
    iget v0, p0, Lio/ktor/server/routing/LocalPortRouteSelector;->port:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$LocalPort"

    invoke-static {v1, v0}, Lio/ktor/http/ParametersKt;->parametersOf(Ljava/lang/String;Ljava/lang/String;)Lio/ktor/http/Parameters;

    move-result-object v0

    .line 41
    .local v0, "parameters":Lio/ktor/http/Parameters;
    new-instance v1, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x0

    move-object v2, v1

    move-object v5, v0

    invoke-direct/range {v2 .. v8}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;-><init>(DLio/ktor/http/Parameters;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .end local v0    # "parameters":Lio/ktor/http/Parameters;
    check-cast v1, Lio/ktor/server/routing/RouteSelectorEvaluation;

    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Lio/ktor/server/routing/RouteSelectorEvaluation;->Companion:Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;

    invoke-virtual {v0}, Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;->getFailed()Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/ktor/server/routing/RouteSelectorEvaluation;

    .line 44
    :goto_0
    return-object v1
.end method

.method public final getPort()I
    .locals 1

    .line 36
    iget v0, p0, Lio/ktor/server/routing/LocalPortRouteSelector;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lio/ktor/server/routing/LocalPortRouteSelector;->port:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalPortRouteSelector(port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/ktor/server/routing/LocalPortRouteSelector;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
