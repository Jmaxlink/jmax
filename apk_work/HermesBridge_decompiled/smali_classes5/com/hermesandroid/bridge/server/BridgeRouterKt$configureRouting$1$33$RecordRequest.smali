.class public final Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest;
.super Ljava/lang/Object;
.source "BridgeRouter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecordRequest"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\u008a\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0018\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010\tJ\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "com/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest",
        "",
        "durationMs",
        "",
        "(J)V",
        "getDurationMs",
        "()J",
        "component1",
        "copy",
        "(J)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field private final durationMs:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "durationMs"    # J

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest;->durationMs:J

    return-void
.end method

.method public synthetic constructor <init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 303
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x1388

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest;-><init>(J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest;JILjava/lang/Object;)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-wide p1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest;->durationMs:J

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest;->copy(J)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest;->durationMs:J

    return-wide v0
.end method

.method public final copy(J)Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest;
    .locals 1

    new-instance v0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest;

    invoke-direct {v0, p1, p2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest;-><init>(J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest;

    iget-wide v3, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest;->durationMs:J

    iget-wide v5, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest;->durationMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getDurationMs()J
    .locals 2

    .line 303
    iget-wide v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest;->durationMs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest;->durationMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33$RecordRequest;->durationMs:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecordRequest(durationMs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
