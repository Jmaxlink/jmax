.class final Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PluginBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1;->invoke(Lio/ktor/util/pipeline/Pipeline;)V
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
        "TT;",
        "Lio/ktor/server/application/ApplicationCall;",
        ">;TT;",
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
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u000e\u0008\u0001\u0010\u0004*\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0008\u0008\u0002\u0010\u0006*\u00020\u0003*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u0002H\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "",
        "ContextT",
        "Lio/ktor/server/application/CallContext;",
        "PluginConfig",
        "Lio/ktor/util/pipeline/PipelineContext;",
        "Lio/ktor/server/application/ApplicationCall;",
        "it"
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
    c = "io.ktor.server.application.PluginBuilder$onDefaultPhaseWithMessage$1$1"
    f = "PluginBuilder.kt"
    i = {}
    l = {
        0xc2
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "TContextT;",
            "Lio/ktor/server/application/ApplicationCall;",
            "TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $contextInit:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TPluginConfig;",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "TT;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;TContextT;>;"
        }
    .end annotation
.end field

.field final synthetic $handlerName:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ktor/server/application/PluginBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/server/application/PluginBuilder<",
            "TPluginConfig;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/ktor/server/application/PluginBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/PluginBuilder<",
            "TPluginConfig;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function4<",
            "-TContextT;-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-TPluginConfig;-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "TT;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;+TContextT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;->this$0:Lio/ktor/server/application/PluginBuilder;

    iput-object p2, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;->$handlerName:Ljava/lang/String;

    iput-object p3, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;->$block:Lkotlin/jvm/functions/Function4;

    iput-object p4, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;->$contextInit:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/util/pipeline/PipelineContext;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "TT;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v6, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;

    iget-object v1, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;->this$0:Lio/ktor/server/application/PluginBuilder;

    iget-object v2, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;->$handlerName:Ljava/lang/String;

    iget-object v3, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;->$block:Lkotlin/jvm/functions/Function4;

    iget-object v4, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;->$contextInit:Lkotlin/jvm/functions/Function2;

    move-object v0, v6

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;-><init>(Lio/ktor/server/application/PluginBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;->L$0:Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v6, v0}, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/util/pipeline/PipelineContext;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;->invoke(Lio/ktor/util/pipeline/PipelineContext;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 190
    move-object/from16 v1, p0

    iget v2, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "this":Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    iget-object v4, v2, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/util/pipeline/PipelineContext;

    .line 192
    .local v4, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    iget-object v5, v2, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;->this$0:Lio/ktor/server/application/PluginBuilder;

    invoke-virtual {v5}, Lio/ktor/server/application/PluginBuilder;->getKey$ktor_server_core()Lio/ktor/util/AttributeKey;

    move-result-object v13

    .line 193
    .local v13, "key":Lio/ktor/util/AttributeKey;
    iget-object v5, v2, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;->this$0:Lio/ktor/server/application/PluginBuilder;

    invoke-virtual {v5}, Lio/ktor/server/application/PluginBuilder;->getPluginConfig()Ljava/lang/Object;

    move-result-object v14

    .line 194
    .local v14, "pluginConfig":Ljava/lang/Object;
    invoke-virtual {v13}, Lio/ktor/util/AttributeKey;->getName()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;

    iget-object v7, v2, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;->$handlerName:Ljava/lang/String;

    iget-object v8, v2, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;->$block:Lkotlin/jvm/functions/Function4;

    iget-object v9, v2, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;->$contextInit:Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x0

    move-object/from16 v5, v16

    move-object v6, v13

    move-object v10, v14

    move-object v11, v4

    invoke-direct/range {v5 .. v12}, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;-><init>(Lio/ktor/util/AttributeKey;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lio/ktor/util/pipeline/PipelineContext;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v5, v16

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x1

    iput v7, v2, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;->label:I

    invoke-static {v15, v5, v6}, Lio/ktor/util/debug/ContextUtilsKt;->addToContextInDebugMode(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .end local v13    # "key":Lio/ktor/util/AttributeKey;
    .end local v14    # "pluginConfig":Ljava/lang/Object;
    if-ne v4, v0, :cond_0

    .line 190
    return-object v0

    .line 194
    :cond_0
    move-object v0, v2

    move-object v2, v3

    .line 202
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v0    # "this":Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;
    .local v2, "$result":Ljava/lang/Object;
    :goto_0
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
