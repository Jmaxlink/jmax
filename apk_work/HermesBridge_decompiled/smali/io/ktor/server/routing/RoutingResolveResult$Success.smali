.class public final Lio/ktor/server/routing/RoutingResolveResult$Success;
.super Lio/ktor/server/routing/RoutingResolveResult;
.source "RoutingResolveResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/routing/RoutingResolveResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u001f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0007\u001a\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/ktor/server/routing/RoutingResolveResult$Success;",
        "Lio/ktor/server/routing/RoutingResolveResult;",
        "route",
        "Lio/ktor/server/routing/Route;",
        "parameters",
        "Lio/ktor/http/Parameters;",
        "(Lio/ktor/server/routing/Route;Lio/ktor/http/Parameters;)V",
        "quality",
        "",
        "(Lio/ktor/server/routing/Route;Lio/ktor/http/Parameters;D)V",
        "getParameters",
        "()Lio/ktor/http/Parameters;",
        "getQuality$ktor_server_core",
        "()D",
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
.field private final parameters:Lio/ktor/http/Parameters;

.field private final quality:D


# direct methods
.method public constructor <init>(Lio/ktor/server/routing/Route;Lio/ktor/http/Parameters;)V
    .locals 2
    .param p1, "route"    # Lio/ktor/server/routing/Route;
    .param p2, "parameters"    # Lio/ktor/http/Parameters;
    .annotation runtime Lkotlin/Deprecated;
        message = "This will become internal in future releases."
    .end annotation

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/ktor/server/routing/RoutingResolveResult$Success;-><init>(Lio/ktor/server/routing/Route;Lio/ktor/http/Parameters;D)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/server/routing/Route;Lio/ktor/http/Parameters;D)V
    .locals 1
    .param p1, "route"    # Lio/ktor/server/routing/Route;
    .param p2, "parameters"    # Lio/ktor/http/Parameters;
    .param p3, "quality"    # D

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/ktor/server/routing/RoutingResolveResult;-><init>(Lio/ktor/server/routing/Route;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    iput-object p2, p0, Lio/ktor/server/routing/RoutingResolveResult$Success;->parameters:Lio/ktor/http/Parameters;

    .line 26
    iput-wide p3, p0, Lio/ktor/server/routing/RoutingResolveResult$Success;->quality:D

    .line 23
    return-void
.end method


# virtual methods
.method public getParameters()Lio/ktor/http/Parameters;
    .locals 1

    .line 25
    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveResult$Success;->parameters:Lio/ktor/http/Parameters;

    return-object v0
.end method

.method public final getQuality$ktor_server_core()D
    .locals 2

    .line 26
    iget-wide v0, p0, Lio/ktor/server/routing/RoutingResolveResult$Success;->quality:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/server/routing/RoutingResolveResult$Success;->getParameters()Lio/ktor/http/Parameters;

    move-result-object v1

    invoke-interface {v1}, Lio/ktor/http/Parameters;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/ktor/server/routing/RoutingResolveResult$Success;->getParameters()Lio/ktor/http/Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/server/routing/RoutingResolveResult$Success;->getRoute()Lio/ktor/server/routing/Route;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
