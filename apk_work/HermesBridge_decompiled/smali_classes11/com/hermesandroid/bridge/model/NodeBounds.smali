.class public final Lcom/hermesandroid/bridge/model/NodeBounds;
.super Ljava/lang/Object;
.source "ScreenNode.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u000c\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\t\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/hermesandroid/bridge/model/NodeBounds;",
        "",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "(IIII)V",
        "getBottom",
        "()I",
        "centerX",
        "getCenterX",
        "centerY",
        "getCenterY",
        "getLeft",
        "getRight",
        "getTop",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
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
.field private final bottom:I

.field private final left:I

.field private final right:I

.field private final top:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->left:I

    iput p2, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->top:I

    iput p3, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->right:I

    iput p4, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->bottom:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermesandroid/bridge/model/NodeBounds;IIIIILjava/lang/Object;)Lcom/hermesandroid/bridge/model/NodeBounds;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->left:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->top:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->right:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->bottom:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hermesandroid/bridge/model/NodeBounds;->copy(IIII)Lcom/hermesandroid/bridge/model/NodeBounds;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->left:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->top:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->right:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->bottom:I

    return v0
.end method

.method public final copy(IIII)Lcom/hermesandroid/bridge/model/NodeBounds;
    .locals 1

    new-instance v0, Lcom/hermesandroid/bridge/model/NodeBounds;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/hermesandroid/bridge/model/NodeBounds;-><init>(IIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermesandroid/bridge/model/NodeBounds;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hermesandroid/bridge/model/NodeBounds;

    iget v3, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->left:I

    iget v4, v1, Lcom/hermesandroid/bridge/model/NodeBounds;->left:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->top:I

    iget v4, v1, Lcom/hermesandroid/bridge/model/NodeBounds;->top:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->right:I

    iget v4, v1, Lcom/hermesandroid/bridge/model/NodeBounds;->right:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->bottom:I

    iget v1, v1, Lcom/hermesandroid/bridge/model/NodeBounds;->bottom:I

    if-eq v3, v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBottom()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->bottom:I

    return v0
.end method

.method public final getCenterX()I
    .locals 2

    .line 19
    iget v0, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->left:I

    iget v1, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getCenterY()I
    .locals 2

    .line 20
    iget v0, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->top:I

    iget v1, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->bottom:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getLeft()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->left:I

    return v0
.end method

.method public final getRight()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->right:I

    return v0
.end method

.method public final getTop()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->top:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->left:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->bottom:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->left:I

    iget v1, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->top:I

    iget v2, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->right:I

    iget v3, p0, Lcom/hermesandroid/bridge/model/NodeBounds;->bottom:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NodeBounds(left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", top="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
