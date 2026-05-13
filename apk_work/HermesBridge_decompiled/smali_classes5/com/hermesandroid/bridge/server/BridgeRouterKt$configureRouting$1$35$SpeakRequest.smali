.class public final Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;
.super Ljava/lang/Object;
.source "BridgeRouter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeakRequest"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\u008a\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\"\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "com/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest",
        "",
        "text",
        "",
        "queue",
        "",
        "(Ljava/lang/String;I)V",
        "getQueue",
        "()I",
        "getText",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "copy",
        "(Ljava/lang/String;I)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;",
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
.field private final queue:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "queue"    # I

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;->text:Ljava/lang/String;

    iput p2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;->queue:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 318
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;Ljava/lang/String;IILjava/lang/Object;)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;->text:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;->queue:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;->copy(Ljava/lang/String;I)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;->queue:I

    return v0
.end method

.method public final copy(Ljava/lang/String;I)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;

    invoke-direct {v0, p1, p2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;

    iget-object v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;->text:Ljava/lang/String;

    iget-object v4, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;->text:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;->queue:I

    iget v1, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;->queue:I

    if-eq v3, v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getQueue()I
    .locals 1

    .line 318
    iget v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;->queue:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;->queue:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;->text:Ljava/lang/String;

    iget v1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35$SpeakRequest;->queue:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpeakRequest(text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", queue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
