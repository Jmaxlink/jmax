.class public final Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;
.super Ljava/lang/Object;
.source "BridgeRouter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WaitRequest"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\u008a\u0008\u0018\u00002\u00020\u0001B\'\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0006H\u00c6\u0003J0\u0010\u0010\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0011J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "com/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest",
        "",
        "text",
        "",
        "className",
        "timeoutMs",
        "",
        "(Ljava/lang/String;Ljava/lang/String;I)V",
        "getClassName",
        "()Ljava/lang/String;",
        "getText",
        "getTimeoutMs",
        "()I",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;I)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;",
        "equals",
        "",
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

.field private final text:Ljava/lang/String;

.field private final timeoutMs:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "timeoutMs"    # I

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->text:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->className:Ljava/lang/String;

    .line 114
    iput p3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->timeoutMs:I

    .line 111
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 111
    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 112
    move-object p1, v0

    .line 111
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 113
    move-object p2, v0

    .line 111
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 114
    const/16 p3, 0x1388

    .line 111
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    return-void
.end method

.method public static synthetic copy$default(Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->text:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->className:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->timeoutMs:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->copy(Ljava/lang/String;Ljava/lang/String;I)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->className:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->timeoutMs:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;I)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;
    .locals 1

    new-instance v0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;

    iget-object v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->text:Ljava/lang/String;

    iget-object v4, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->text:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->className:Ljava/lang/String;

    iget-object v4, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->className:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->timeoutMs:I

    iget v1, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->timeoutMs:I

    if-eq v3, v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->className:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeoutMs()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->timeoutMs:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->text:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->className:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->className:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    mul-int/lit8 v0, v2, 0x1f

    iget v1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->timeoutMs:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->className:Ljava/lang/String;

    iget v2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11$WaitRequest;->timeoutMs:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WaitRequest(text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", className="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
