.class public final Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;
.super Ljava/lang/Object;
.source "BridgeRouter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FindNodesRequest"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0014*\u0001\u0000\u0008\u008a\u0008\u0018\u00002\u00020\u0001B3\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\rJ\t\u0010\u0015\u001a\u00020\u0008H\u00c6\u0003J<\u0010\u0016\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\u00062\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0008H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000b\u00a8\u0006\u001c"
    }
    d2 = {
        "com/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest",
        "",
        "text",
        "",
        "className",
        "clickable",
        "",
        "limit",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V",
        "getClassName",
        "()Ljava/lang/String;",
        "getClickable",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getLimit",
        "()I",
        "getText",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;",
        "equals",
        "other",
        "hashCode",
        "toString",
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
.field private final className:Ljava/lang/String;

.field private final clickable:Ljava/lang/Boolean;

.field private final limit:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "clickable"    # Ljava/lang/Boolean;
    .param p4, "limit"    # I

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->className:Ljava/lang/String;

    iput-object p3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->clickable:Ljava/lang/Boolean;

    iput p4, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->limit:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 197
    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/16 p4, 0x14

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;IILjava/lang/Object;)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->text:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->className:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->clickable:Ljava/lang/Boolean;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->limit:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->className:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->clickable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->limit:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;
    .locals 1

    new-instance v0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;

    iget-object v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->text:Ljava/lang/String;

    iget-object v4, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->text:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->className:Ljava/lang/String;

    iget-object v4, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->className:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->clickable:Ljava/lang/Boolean;

    iget-object v4, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->clickable:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->limit:I

    iget v1, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->limit:I

    if-eq v3, v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->className:Ljava/lang/String;

    return-object v0
.end method

.method public final getClickable()Ljava/lang/Boolean;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->clickable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLimit()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->limit:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->text:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->className:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->className:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->clickable:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->clickable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->className:Ljava/lang/String;

    iget-object v2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->clickable:Ljava/lang/Boolean;

    iget v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20$FindNodesRequest;->limit:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FindNodesRequest(text="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", className="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", limit="

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
