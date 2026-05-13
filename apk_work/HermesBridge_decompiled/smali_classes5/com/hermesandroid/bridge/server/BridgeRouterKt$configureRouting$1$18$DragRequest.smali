.class public final Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;
.super Ljava/lang/Object;
.source "BridgeRouter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DragRequest"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\u008a\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0008H\u00c6\u0003J@\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\r\u00a8\u0006\u001e"
    }
    d2 = {
        "com/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest",
        "",
        "startX",
        "",
        "startY",
        "endX",
        "endY",
        "duration",
        "",
        "(IIIIJ)V",
        "getDuration",
        "()J",
        "getEndX",
        "()I",
        "getEndY",
        "getStartX",
        "getStartY",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "(IIIIJ)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final duration:J

.field private final endX:I

.field private final endY:I

.field private final startX:I

.field private final startY:I


# direct methods
.method public constructor <init>(IIIIJ)V
    .locals 0
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I
    .param p5, "duration"    # J

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->startX:I

    iput p2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->startY:I

    iput p3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->endX:I

    iput p4, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->endY:I

    iput-wide p5, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->duration:J

    return-void
.end method

.method public synthetic constructor <init>(IIIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    .line 179
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const-wide/16 p5, 0x1f4

    :cond_0
    move-wide v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;-><init>(IIIIJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;IIIIJILjava/lang/Object;)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->startX:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->startY:I

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->endX:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->endY:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-wide p5, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->duration:J

    :cond_4
    move-wide v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move-wide p7, v2

    invoke-virtual/range {p2 .. p8}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->copy(IIIIJ)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->startX:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->startY:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->endX:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->endY:I

    return v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->duration:J

    return-wide v0
.end method

.method public final copy(IIIIJ)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;
    .locals 8

    new-instance v7, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;-><init>(IIIIJ)V

    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;

    iget v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->startX:I

    iget v4, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->startX:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->startY:I

    iget v4, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->startY:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->endX:I

    iget v4, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->endX:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->endY:I

    iget v4, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->endY:I

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->duration:J

    iget-wide v5, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->duration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getDuration()J
    .locals 2

    .line 179
    iget-wide v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->duration:J

    return-wide v0
.end method

.method public final getEndX()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->endX:I

    return v0
.end method

.method public final getEndY()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->endY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->startX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->startY:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->startX:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->startY:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->endX:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->endY:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->startX:I

    iget v1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->startY:I

    iget v2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->endX:I

    iget v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->endY:I

    iget-wide v4, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18$DragRequest;->duration:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DragRequest(startX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", startY="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
