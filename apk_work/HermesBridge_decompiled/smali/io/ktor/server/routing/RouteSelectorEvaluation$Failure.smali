.class public final Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;
.super Lio/ktor/server/routing/RouteSelectorEvaluation;
.source "RouteSelector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/routing/RouteSelectorEvaluation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failure"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;",
        "Lio/ktor/server/routing/RouteSelectorEvaluation;",
        "quality",
        "",
        "failureStatusCode",
        "Lio/ktor/http/HttpStatusCode;",
        "(DLio/ktor/http/HttpStatusCode;)V",
        "getFailureStatusCode",
        "()Lio/ktor/http/HttpStatusCode;",
        "getQuality",
        "()D",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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


# instance fields
.field private final failureStatusCode:Lio/ktor/http/HttpStatusCode;

.field private final quality:D


# direct methods
.method public constructor <init>(DLio/ktor/http/HttpStatusCode;)V
    .locals 2
    .param p1, "quality"    # D
    .param p3, "failureStatusCode"    # Lio/ktor/http/HttpStatusCode;

    const-string v0, "failureStatusCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/ktor/server/routing/RouteSelectorEvaluation;-><init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    iput-wide p1, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->quality:D

    .line 42
    iput-object p3, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->failureStatusCode:Lio/ktor/http/HttpStatusCode;

    .line 40
    return-void
.end method

.method public static synthetic copy$default(Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;DLio/ktor/http/HttpStatusCode;ILjava/lang/Object;)Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->quality:D

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->failureStatusCode:Lio/ktor/http/HttpStatusCode;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->copy(DLio/ktor/http/HttpStatusCode;)Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->quality:D

    return-wide v0
.end method

.method public final component2()Lio/ktor/http/HttpStatusCode;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->failureStatusCode:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public final copy(DLio/ktor/http/HttpStatusCode;)Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;
    .locals 1

    const-string v0, "failureStatusCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    invoke-direct {v0, p1, p2, p3}, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;-><init>(DLio/ktor/http/HttpStatusCode;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    iget-wide v3, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->quality:D

    iget-wide v5, v1, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->quality:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->failureStatusCode:Lio/ktor/http/HttpStatusCode;

    iget-object v1, v1, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->failureStatusCode:Lio/ktor/http/HttpStatusCode;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFailureStatusCode()Lio/ktor/http/HttpStatusCode;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->failureStatusCode:Lio/ktor/http/HttpStatusCode;

    return-object v0
.end method

.method public final getQuality()D
    .locals 2

    .line 41
    iget-wide v0, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->quality:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->quality:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->failureStatusCode:Lio/ktor/http/HttpStatusCode;

    invoke-virtual {v2}, Lio/ktor/http/HttpStatusCode;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure(quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->quality:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failureStatusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->failureStatusCode:Lio/ktor/http/HttpStatusCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
