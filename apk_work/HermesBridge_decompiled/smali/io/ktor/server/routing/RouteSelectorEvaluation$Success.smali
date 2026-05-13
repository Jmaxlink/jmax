.class public final Lio/ktor/server/routing/RouteSelectorEvaluation$Success;
.super Lio/ktor/server/routing/RouteSelectorEvaluation;
.source "RouteSelector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/routing/RouteSelectorEvaluation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/ktor/server/routing/RouteSelectorEvaluation$Success;",
        "Lio/ktor/server/routing/RouteSelectorEvaluation;",
        "quality",
        "",
        "parameters",
        "Lio/ktor/http/Parameters;",
        "segmentIncrement",
        "",
        "(DLio/ktor/http/Parameters;I)V",
        "getParameters",
        "()Lio/ktor/http/Parameters;",
        "getQuality",
        "()D",
        "getSegmentIncrement",
        "()I",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
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
.field private final parameters:Lio/ktor/http/Parameters;

.field private final quality:D

.field private final segmentIncrement:I


# direct methods
.method public constructor <init>(DLio/ktor/http/Parameters;I)V
    .locals 2
    .param p1, "quality"    # D
    .param p3, "parameters"    # Lio/ktor/http/Parameters;
    .param p4, "segmentIncrement"    # I

    const-string v0, "parameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/ktor/server/routing/RouteSelectorEvaluation;-><init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    iput-wide p1, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->quality:D

    .line 29
    iput-object p3, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->parameters:Lio/ktor/http/Parameters;

    .line 30
    iput p4, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->segmentIncrement:I

    .line 27
    return-void
.end method

.method public synthetic constructor <init>(DLio/ktor/http/Parameters;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 27
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 29
    sget-object p3, Lio/ktor/http/Parameters;->Companion:Lio/ktor/http/Parameters$Companion;

    invoke-virtual {p3}, Lio/ktor/http/Parameters$Companion;->getEmpty()Lio/ktor/http/Parameters;

    move-result-object p3

    .line 27
    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 30
    const/4 p4, 0x0

    .line 27
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;-><init>(DLio/ktor/http/Parameters;I)V

    .line 31
    return-void
.end method

.method public static synthetic copy$default(Lio/ktor/server/routing/RouteSelectorEvaluation$Success;DLio/ktor/http/Parameters;IILjava/lang/Object;)Lio/ktor/server/routing/RouteSelectorEvaluation$Success;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->quality:D

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p3, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->parameters:Lio/ktor/http/Parameters;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget p4, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->segmentIncrement:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->copy(DLio/ktor/http/Parameters;I)Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->quality:D

    return-wide v0
.end method

.method public final component2()Lio/ktor/http/Parameters;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->parameters:Lio/ktor/http/Parameters;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->segmentIncrement:I

    return v0
.end method

.method public final copy(DLio/ktor/http/Parameters;I)Lio/ktor/server/routing/RouteSelectorEvaluation$Success;
    .locals 1

    const-string v0, "parameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;-><init>(DLio/ktor/http/Parameters;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    iget-wide v3, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->quality:D

    iget-wide v5, v1, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->quality:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->parameters:Lio/ktor/http/Parameters;

    iget-object v4, v1, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->parameters:Lio/ktor/http/Parameters;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->segmentIncrement:I

    iget v1, v1, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->segmentIncrement:I

    if-eq v3, v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getParameters()Lio/ktor/http/Parameters;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->parameters:Lio/ktor/http/Parameters;

    return-object v0
.end method

.method public final getQuality()D
    .locals 2

    .line 28
    iget-wide v0, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->quality:D

    return-wide v0
.end method

.method public final getSegmentIncrement()I
    .locals 1

    .line 30
    iget v0, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->segmentIncrement:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->quality:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->parameters:Lio/ktor/http/Parameters;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->segmentIncrement:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Success(quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->quality:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->parameters:Lio/ktor/http/Parameters;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", segmentIncrement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->segmentIncrement:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
