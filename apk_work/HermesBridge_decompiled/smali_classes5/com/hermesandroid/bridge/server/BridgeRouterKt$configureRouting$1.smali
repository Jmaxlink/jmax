.class final Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BridgeRouter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/server/BridgeRouterKt;->configureRouting(Lio/ktor/server/application/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/server/routing/Routing;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/server/routing/Routing;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1;

    invoke-direct {v0}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1;-><init>()V

    sput-object v0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1;->INSTANCE:Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 21
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Routing;

    invoke-virtual {p0, v0}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1;->invoke(Lio/ktor/server/routing/Routing;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lio/ktor/server/routing/Routing;)V
    .locals 4
    .param p1, "$this$routing"    # Lio/ktor/server/routing/Routing;

    const-string v0, "$this$routing"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/ping"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->get(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 36
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$2;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/screen"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->get(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 44
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$3;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$3;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/tap"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 53
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$4;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$4;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/tap_text"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 62
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$5;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$5;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/type"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 71
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$6;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$6;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/swipe"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 80
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$7;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$7;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/open_app"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 87
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$8;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$8;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/press_key"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 94
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$9;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$9;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/screenshot"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->get(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 101
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$10;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$10;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/scroll"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 110
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$11;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/wait"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 121
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$12;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$12;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/apps"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->get(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 128
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$13;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$13;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/current_app"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->get(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 140
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$14;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$14;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/clipboard"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->get(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 145
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$15;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$15;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 152
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$16;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$16;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/notifications"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->get(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 169
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$17;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$17;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/long_press"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 178
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$18;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/drag"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 187
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$19;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$19;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/describe_node"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 196
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$20;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/find_nodes"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 205
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$21;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$21;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/diff_screen"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 214
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$22;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/pinch"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 223
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$23;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$23;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/screen_hash"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->get(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 230
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$24;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$24;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/location"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->get(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 235
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$25;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$25;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/send_sms"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 242
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$26;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$26;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/call"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 249
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$27;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$27;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/media"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 256
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/contacts"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->get(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 265
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$29;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$29;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/intent"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 272
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$30;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$30;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/events"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->get(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 288
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$31;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$31;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/events/stream"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 295
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/broadcast"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 302
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$33;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/screen_record"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 310
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$34;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$34;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/widgets"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->get(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 317
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$35;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v3, "/speak"

    invoke-static {v0, v3, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 324
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$36;

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$36;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v2, "/stop_speaking"

    invoke-static {v0, v2, v1}, Lio/ktor/server/routing/RoutingBuilderKt;->post(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;

    .line 328
    return-void
.end method
