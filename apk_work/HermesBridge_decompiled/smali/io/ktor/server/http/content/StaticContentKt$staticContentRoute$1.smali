.class final Lio/ktor/server/http/content/StaticContentKt$staticContentRoute$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StaticContent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/http/content/StaticContentKt;->staticContentRoute(Lio/ktor/server/routing/Route;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)Lio/ktor/server/routing/Route;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/server/routing/Route;",
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
        "Lio/ktor/server/routing/Route;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $autoHead:Z

.field final synthetic $handler:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lio/ktor/server/http/content/StaticContentKt$staticContentRoute$1;->$autoHead:Z

    iput-object p2, p0, Lio/ktor/server/http/content/StaticContentKt$staticContentRoute$1;->$handler:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 426
    move-object v0, p1

    check-cast v0, Lio/ktor/server/routing/Route;

    invoke-virtual {p0, v0}, Lio/ktor/server/http/content/StaticContentKt$staticContentRoute$1;->invoke(Lio/ktor/server/routing/Route;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lio/ktor/server/routing/Route;)V
    .locals 3
    .param p1, "$this$route"    # Lio/ktor/server/routing/Route;

    const-string v0, "$this$route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    new-instance v0, Lio/ktor/server/http/content/StaticContentKt$staticContentRoute$1$1;

    iget-boolean v1, p0, Lio/ktor/server/http/content/StaticContentKt$staticContentRoute$1;->$autoHead:Z

    iget-object v2, p0, Lio/ktor/server/http/content/StaticContentKt$staticContentRoute$1;->$handler:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2}, Lio/ktor/server/http/content/StaticContentKt$staticContentRoute$1$1;-><init>(ZLkotlin/jvm/functions/Function2;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "{static-content-path-parameter...}"

    invoke-static {p1, v1, v0}, Lio/ktor/server/routing/RoutingBuilderKt;->route(Lio/ktor/server/routing/Route;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    .line 440
    return-void
.end method
