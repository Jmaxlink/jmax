.class final Lcom/hermesandroid/bridge/server/BridgeServer$start$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BridgeServer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/server/BridgeServer;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/server/application/Application;",
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
        "Lio/ktor/server/application/Application;",
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
.field public static final INSTANCE:Lcom/hermesandroid/bridge/server/BridgeServer$start$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hermesandroid/bridge/server/BridgeServer$start$1;

    invoke-direct {v0}, Lcom/hermesandroid/bridge/server/BridgeServer$start$1;-><init>()V

    sput-object v0, Lcom/hermesandroid/bridge/server/BridgeServer$start$1;->INSTANCE:Lcom/hermesandroid/bridge/server/BridgeServer$start$1;

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

    .line 18
    move-object v0, p1

    check-cast v0, Lio/ktor/server/application/Application;

    invoke-virtual {p0, v0}, Lcom/hermesandroid/bridge/server/BridgeServer$start$1;->invoke(Lio/ktor/server/application/Application;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lio/ktor/server/application/Application;)V
    .locals 3
    .param p1, "$this$embeddedServer"    # Lio/ktor/server/application/Application;

    const-string v0, "$this$embeddedServer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    move-object v0, p1

    check-cast v0, Lio/ktor/util/pipeline/Pipeline;

    invoke-static {}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationKt;->getContentNegotiation()Lio/ktor/server/application/RouteScopedPlugin;

    move-result-object v1

    check-cast v1, Lio/ktor/server/application/Plugin;

    sget-object v2, Lcom/hermesandroid/bridge/server/BridgeServer$start$1$1;->INSTANCE:Lcom/hermesandroid/bridge/server/BridgeServer$start$1$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lio/ktor/server/application/ApplicationPluginKt;->install(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/Plugin;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lio/ktor/server/application/ApplicationCallPipeline;->ApplicationPhase:Lio/ktor/server/application/ApplicationCallPipeline$ApplicationPhase;

    invoke-virtual {v0}, Lio/ktor/server/application/ApplicationCallPipeline$ApplicationPhase;->getPlugins()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v0

    new-instance v1, Lcom/hermesandroid/bridge/server/BridgeServer$start$1$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/hermesandroid/bridge/server/BridgeServer$start$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p1, v0, v1}, Lio/ktor/server/application/Application;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 41
    invoke-static {p1}, Lcom/hermesandroid/bridge/server/BridgeRouterKt;->configureRouting(Lio/ktor/server/application/Application;)V

    .line 42
    return-void
.end method
