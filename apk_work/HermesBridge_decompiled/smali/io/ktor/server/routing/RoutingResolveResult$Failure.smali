.class public final Lio/ktor/server/routing/RoutingResolveResult$Failure;
.super Lio/ktor/server/routing/RoutingResolveResult;
.source "RoutingResolveResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/routing/RoutingResolveResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failure"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0001\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0017\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u001f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0012\u001a\u00020\u0005H\u0016R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/ktor/server/routing/RoutingResolveResult$Failure;",
        "Lio/ktor/server/routing/RoutingResolveResult;",
        "route",
        "Lio/ktor/server/routing/Route;",
        "reason",
        "",
        "(Lio/ktor/server/routing/Route;Ljava/lang/String;)V",
        "errorStatusCode",
        "Lio/ktor/http/HttpStatusCode;",
        "(Lio/ktor/server/routing/Route;Ljava/lang/String;Lio/ktor/http/HttpStatusCode;)V",
        "getErrorStatusCode",
        "()Lio/ktor/http/HttpStatusCode;",
        "parameters",
        "",
        "getParameters",
        "()Ljava/lang/Void;",
        "getReason",
        "()Ljava/lang/String;",
        "toString",
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
.field private final errorStatusCode:Lio/ktor/http/HttpStatusCode;

.field private final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/ktor/server/routing/Route;Ljava/lang/String;)V
    .locals 1
    .param p1, "route"    # Lio/ktor/server/routing/Route;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation runtime Lkotlin/Deprecated;
        message = "This will become internal in future releases."
    .end annotation

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpStatusCode$Companion;->getNotFound()Lio/ktor/http/HttpStatusCode;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/ktor/server/routing/RoutingResolveResult$Failure;-><init>(Lio/ktor/server/routing/Route;Ljava/lang/String;Lio/ktor/http/HttpStatusCode;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/server/routing/Route;Ljava/lang/String;Lio/ktor/http/HttpStatusCode;)V
    .locals 1
    .param p1, "route"    # Lio/ktor/server/routing/Route;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "errorStatusCode"    # Lio/ktor/http/HttpStatusCode;

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorStatusCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/ktor/server/routing/RoutingResolveResult;-><init>(Lio/ktor/server/routing/Route;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    iput-object p2, p0, Lio/ktor/server/routing/RoutingResolveResult$Failure;->reason:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lio/ktor/server/routing/RoutingResolveResult$Failure;->errorStatusCode:Lio/ktor/http/HttpStatusCode;

    .line 39
    return-void
.end method


# virtual methods
.method public final getErrorStatusCode()Lio/ktor/http/HttpStatusCode;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveResult$Failure;->errorStatusCode:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lio/ktor/http/Parameters;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lio/ktor/server/routing/RoutingResolveResult$Failure;->getParameters()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lio/ktor/http/Parameters;

    return-object v0
.end method

.method public getParameters()Ljava/lang/Void;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parameters are available only when routing resolve succeeds"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getReason()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveResult$Failure;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FAILURE \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/routing/RoutingResolveResult$Failure;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/server/routing/RoutingResolveResult$Failure;->getRoute()Lio/ktor/server/routing/Route;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
