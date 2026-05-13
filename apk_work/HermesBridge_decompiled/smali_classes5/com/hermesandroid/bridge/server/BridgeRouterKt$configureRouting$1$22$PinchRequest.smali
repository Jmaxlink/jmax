.class public final Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;
.super Ljava/lang/Object;
.source "BridgeRouter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PinchRequest"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\u008a\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0008H\u00c6\u0003J6\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000f\u00a8\u0006\u001d"
    }
    d2 = {
        "com/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest",
        "",
        "x",
        "",
        "y",
        "scale",
        "",
        "duration",
        "",
        "(IIFJ)V",
        "getDuration",
        "()J",
        "getScale",
        "()F",
        "getX",
        "()I",
        "getY",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(IIFJ)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;",
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

.field private final scale:F

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(IIFJ)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "scale"    # F
    .param p4, "duration"    # J

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->x:I

    iput p2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->y:I

    iput p3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->scale:F

    iput-wide p4, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->duration:J

    return-void
.end method

.method public synthetic constructor <init>(IIFJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 215
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/high16 p3, 0x3fc00000    # 1.5f

    :cond_0
    move v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const-wide/16 p4, 0x12c

    :cond_1
    move-wide v4, p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;-><init>(IIFJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;IIFJILjava/lang/Object;)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->x:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->y:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->scale:F

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->duration:J

    :cond_3
    move-wide v1, p4

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move-wide p6, v1

    invoke-virtual/range {p2 .. p7}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->copy(IIFJ)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->x:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->y:I

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->scale:F

    return v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->duration:J

    return-wide v0
.end method

.method public final copy(IIFJ)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;
    .locals 7

    new-instance v6, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;-><init>(IIFJ)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;

    iget v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->x:I

    iget v4, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->x:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->y:I

    iget v4, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->y:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->scale:F

    iget v4, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->scale:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->duration:J

    iget-wide v5, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->duration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDuration()J
    .locals 2

    .line 215
    iget-wide v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->duration:J

    return-wide v0
.end method

.method public final getScale()F
    .locals 1

    .line 215
    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->scale:F

    return v0
.end method

.method public final getX()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->x:I

    return v0
.end method

.method public final getY()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->y:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->scale:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->x:I

    iget v1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->y:I

    iget v2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->scale:F

    iget-wide v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22$PinchRequest;->duration:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PinchRequest(x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", y="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
