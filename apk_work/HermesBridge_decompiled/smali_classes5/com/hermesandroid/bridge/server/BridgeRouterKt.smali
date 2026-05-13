.class public final Lcom/hermesandroid/bridge/server/BridgeRouterKt;
.super Ljava/lang/Object;
.source "BridgeRouter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\u0016\u0010\u0004\u001a\u00020\u00012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002\u001a\n\u0010\u0008\u001a\u00020\t*\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "countNodeChildren",
        "",
        "node",
        "Lcom/hermesandroid/bridge/model/ScreenNode;",
        "countNodes",
        "nodes",
        "",
        "",
        "configureRouting",
        "",
        "Lio/ktor/server/application/Application;",
        "app_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$countNodes(Ljava/util/List;)I
    .locals 1
    .param p0, "nodes"    # Ljava/util/List;

    .line 1
    invoke-static {p0}, Lcom/hermesandroid/bridge/server/BridgeRouterKt;->countNodes(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public static final configureRouting(Lio/ktor/server/application/Application;)V
    .locals 1
    .param p0, "$this$configureRouting"    # Lio/ktor/server/application/Application;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1;->INSTANCE:Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Lio/ktor/server/routing/RoutingKt;->routing(Lio/ktor/server/application/Application;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Routing;

    .line 329
    return-void
.end method

.method private static final countNodeChildren(Lcom/hermesandroid/bridge/model/ScreenNode;)I
    .locals 4
    .param p0, "node"    # Lcom/hermesandroid/bridge/model/ScreenNode;

    .line 343
    invoke-virtual {p0}, Lcom/hermesandroid/bridge/model/ScreenNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 344
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/hermesandroid/bridge/model/ScreenNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hermesandroid/bridge/model/ScreenNode;

    .line 345
    .local v2, "child":Lcom/hermesandroid/bridge/model/ScreenNode;
    invoke-static {v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt;->countNodeChildren(Lcom/hermesandroid/bridge/model/ScreenNode;)I

    move-result v3

    add-int/2addr v0, v3

    .end local v2    # "child":Lcom/hermesandroid/bridge/model/ScreenNode;
    goto :goto_0

    .line 347
    :cond_0
    return v0
.end method

.method private static final countNodes(Ljava/util/List;)I
    .locals 4
    .param p0, "nodes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "count":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 334
    .local v2, "node":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    .line 335
    instance-of v3, v2, Lcom/hermesandroid/bridge/model/ScreenNode;

    if-eqz v3, :cond_0

    .line 336
    move-object v3, v2

    check-cast v3, Lcom/hermesandroid/bridge/model/ScreenNode;

    invoke-static {v3}, Lcom/hermesandroid/bridge/server/BridgeRouterKt;->countNodeChildren(Lcom/hermesandroid/bridge/model/ScreenNode;)I

    move-result v3

    add-int/2addr v0, v3

    .end local v2    # "node":Ljava/lang/Object;
    goto :goto_0

    .line 339
    :cond_1
    return v0
.end method
