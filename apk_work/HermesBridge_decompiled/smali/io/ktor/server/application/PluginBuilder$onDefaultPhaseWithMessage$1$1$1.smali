.class final Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PluginBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPluginBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginBuilder.kt\nio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1\n+ 2 ApplicationCallPipeline.kt\nio/ktor/server/application/ApplicationCallPipelineKt\n*L\n1#1,220:1\n75#2:221\n*S KotlinDebug\n*F\n+ 1 PluginBuilder.kt\nio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1\n*L\n198#1:221\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u000e\u0008\u0001\u0010\u0004*\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0008\u0008\u0002\u0010\u0006*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "",
        "ContextT",
        "Lio/ktor/server/application/CallContext;",
        "PluginConfig"
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
    c = "io.ktor.server.application.PluginBuilder$onDefaultPhaseWithMessage$1$1$1"
    f = "PluginBuilder.kt"
    i = {}
    l = {
        0xc3,
        0xc6,
        0xc8
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $$this$intercept:Lio/ktor/util/pipeline/PipelineContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/pipeline/PipelineContext<",
            "TT;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;"
        }
    .end annotation
.end field

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

.field final synthetic $key:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/server/application/PluginInstance;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pluginConfig:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPluginConfig;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/util/AttributeKey;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lio/ktor/util/pipeline/PipelineContext;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/server/application/PluginInstance;",
            ">;",
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
            ">;+TContextT;>;TPluginConfig;",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "TT;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$key:Lio/ktor/util/AttributeKey;

    iput-object p2, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$handlerName:Ljava/lang/String;

    iput-object p3, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$block:Lkotlin/jvm/functions/Function4;

    iput-object p4, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$contextInit:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$pluginConfig:Ljava/lang/Object;

    iput-object p6, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$$this$intercept:Lio/ktor/util/pipeline/PipelineContext;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v8, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;

    iget-object v1, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$key:Lio/ktor/util/AttributeKey;

    iget-object v2, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$handlerName:Ljava/lang/String;

    iget-object v3, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$block:Lkotlin/jvm/functions/Function4;

    iget-object v4, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$contextInit:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$pluginConfig:Ljava/lang/Object;

    iget-object v6, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$$this$intercept:Lio/ktor/util/pipeline/PipelineContext;

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;-><init>(Lio/ktor/util/AttributeKey;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lio/ktor/util/pipeline/PipelineContext;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/coroutines/Continuation;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 194
    iget v1, p0, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v0    # "this":Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object v1, p0

    .restart local v1    # "this":Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "this":Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 195
    .restart local v1    # "this":Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$key:Lio/ktor/util/AttributeKey;

    invoke-virtual {v2}, Lio/ktor/util/AttributeKey;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$handlerName:Ljava/lang/String;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->label:I

    invoke-static {v2, v3, v4}, Lio/ktor/server/application/debug/UtilsKt;->ijDebugReportHandlerStarted(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 194
    return-object v0

    .line 198
    :cond_0
    :goto_0
    iget-object v2, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$block:Lkotlin/jvm/functions/Function4;

    iget-object v3, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$contextInit:Lkotlin/jvm/functions/Function2;

    iget-object v4, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$pluginConfig:Ljava/lang/Object;

    iget-object v5, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$$this$intercept:Lio/ktor/util/pipeline/PipelineContext;

    invoke-interface {v3, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$$this$intercept:Lio/ktor/util/pipeline/PipelineContext;

    .local v4, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v5, 0x0

    .line 221
    .local v5, "$i$f$getCall":I
    invoke-virtual {v4}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/ktor/server/application/ApplicationCall;

    .line 198
    .end local v4    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v5    # "$i$f$getCall":I
    iget-object v4, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$$this$intercept:Lio/ktor/util/pipeline/PipelineContext;

    invoke-virtual {v4}, Lio/ktor/util/pipeline/PipelineContext;->getSubject()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    iput v5, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->label:I

    invoke-interface {v2, v3, v6, v4, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_1

    .line 194
    return-object v0

    .line 200
    :cond_1
    :goto_1
    iget-object v2, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$key:Lio/ktor/util/AttributeKey;

    invoke-virtual {v2}, Lio/ktor/util/AttributeKey;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->$handlerName:Ljava/lang/String;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x3

    iput v5, v1, Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;->label:I

    invoke-static {v2, v3, v4}, Lio/ktor/server/application/debug/UtilsKt;->ijDebugReportHandlerFinished(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    .line 194
    return-object v0

    .line 200
    :cond_2
    move-object v0, v1

    .line 201
    .end local v1    # "this":Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;
    .restart local v0    # "this":Lio/ktor/server/application/PluginBuilder$onDefaultPhaseWithMessage$1$1$1;
    :goto_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
