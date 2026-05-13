.class final Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ApplicationPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/application/ApplicationPluginKt;->addAllInterceptors(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/BaseRouteScopedPlugin;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lio/ktor/util/pipeline/PipelineContext<",
        "TTSubject;TTContext;>;TTSubject;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u0008\u0008\u0001\u0010\u0004*\u00020\u0003\"\u0004\u0008\u0002\u0010\u0005\"\u0004\u0008\u0003\u0010\u0006\"\u0014\u0008\u0004\u0010\u0007*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u0008*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\t2\u0006\u0010\n\u001a\u0002H\u0005H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "B",
        "",
        "F",
        "TSubject",
        "TContext",
        "P",
        "Lio/ktor/util/pipeline/Pipeline;",
        "Lio/ktor/util/pipeline/PipelineContext;",
        "subject"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.server.application.ApplicationPluginKt$addAllInterceptors$1$1$1"
    f = "ApplicationPlugin.kt"
    i = {}
    l = {
        0xa9
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $interceptor:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "TTSubject;TTContext;>;TTSubject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $plugin:Lio/ktor/server/application/BaseRouteScopedPlugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/server/application/BaseRouteScopedPlugin<",
            "TB;TF;>;"
        }
    .end annotation
.end field

.field final synthetic $pluginInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/server/application/BaseRouteScopedPlugin;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/BaseRouteScopedPlugin<",
            "TB;TF;>;TF;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "TTSubject;TTContext;>;-TTSubject;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;->$plugin:Lio/ktor/server/application/BaseRouteScopedPlugin;

    iput-object p2, p0, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;->$pluginInstance:Ljava/lang/Object;

    iput-object p3, p0, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;->$interceptor:Lkotlin/jvm/functions/Function3;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/util/pipeline/PipelineContext;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "TTSubject;TTContext;>;TTSubject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;

    iget-object v1, p0, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;->$plugin:Lio/ktor/server/application/BaseRouteScopedPlugin;

    iget-object v2, p0, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;->$pluginInstance:Ljava/lang/Object;

    iget-object v3, p0, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;->$interceptor:Lkotlin/jvm/functions/Function3;

    invoke-direct {v0, v1, v2, v3, p3}, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;-><init>(Lio/ktor/server/application/BaseRouteScopedPlugin;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;->L$1:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/util/pipeline/PipelineContext;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;->invoke(Lio/ktor/util/pipeline/PipelineContext;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 166
    iget v1, p0, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/util/pipeline/PipelineContext;

    .local v2, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    iget-object v3, v1, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;->L$1:Ljava/lang/Object;

    .line 167
    .local v3, "subject":Ljava/lang/Object;
    invoke-virtual {v2}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v4

    .line 168
    .local v4, "call":Ljava/lang/Object;
    instance-of v5, v4, Lio/ktor/server/routing/RoutingApplicationCall;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lio/ktor/server/routing/RoutingApplicationCall;

    invoke-virtual {v5}, Lio/ktor/server/routing/RoutingApplicationCall;->getRoute()Lio/ktor/server/routing/Route;

    move-result-object v5

    iget-object v6, v1, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;->$plugin:Lio/ktor/server/application/BaseRouteScopedPlugin;

    check-cast v6, Lio/ktor/server/application/Plugin;

    invoke-static {v5, v6}, Lio/ktor/server/application/RouteScopedPluginKt;->findPluginInRoute(Lio/ktor/server/routing/Route;Lio/ktor/server/application/Plugin;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v1, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;->$pluginInstance:Ljava/lang/Object;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 169
    .end local v4    # "call":Ljava/lang/Object;
    iget-object v4, v1, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;->$interceptor:Lkotlin/jvm/functions/Function3;

    const/4 v5, 0x0

    iput-object v5, v1, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v1, Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;->label:I

    invoke-interface {v4, v2, v3, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .end local v3    # "subject":Ljava/lang/Object;
    if-ne v2, v0, :cond_0

    .line 166
    return-object v0

    .line 169
    :cond_0
    move-object v0, v1

    .line 171
    .end local v1    # "this":Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;
    .restart local v0    # "this":Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;
    :goto_0
    move-object v1, v0

    .end local v0    # "this":Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;
    .restart local v1    # "this":Lio/ktor/server/application/ApplicationPluginKt$addAllInterceptors$1$1$1;
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
