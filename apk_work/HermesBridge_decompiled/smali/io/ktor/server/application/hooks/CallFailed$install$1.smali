.class final Lio/ktor/server/application/hooks/CallFailed$install$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CommonHooks.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/application/hooks/CallFailed;->install(Lio/ktor/server/application/ApplicationCallPipeline;Lkotlin/jvm/functions/Function3;)V
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
        "Lkotlin/Unit;",
        "Lio/ktor/server/application/ApplicationCall;",
        ">;",
        "Lkotlin/Unit;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonHooks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonHooks.kt\nio/ktor/server/application/hooks/CallFailed$install$1\n+ 2 ApplicationCallPipeline.kt\nio/ktor/server/application/ApplicationCallPipelineKt\n*L\n1#1,154:1\n75#2:155\n75#2:156\n*S KotlinDebug\n*F\n+ 1 CommonHooks.kt\nio/ktor/server/application/hooks/CallFailed$install$1\n*L\n48#1:155\n49#1:156\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "io.ktor.server.application.hooks.CallFailed$install$1"
    f = "CommonHooks.kt"
    i = {
        0x0,
        0x1,
        0x1
    }
    l = {
        0x2c,
        0x30
    }
    m = "invokeSuspend"
    n = {
        "$this$intercept",
        "$this$intercept",
        "cause"
    }
    s = {
        "L$0",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $handler:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/server/application/ApplicationCall;",
            "-",
            "Ljava/lang/Throwable;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/application/hooks/CallFailed$install$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/application/hooks/CallFailed$install$1;->$handler:Lkotlin/jvm/functions/Function3;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/util/pipeline/PipelineContext;Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;",
            "Lkotlin/Unit;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lio/ktor/server/application/hooks/CallFailed$install$1;

    iget-object v1, p0, Lio/ktor/server/application/hooks/CallFailed$install$1;->$handler:Lkotlin/jvm/functions/Function3;

    invoke-direct {v0, v1, p3}, Lio/ktor/server/application/hooks/CallFailed$install$1;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/server/application/hooks/CallFailed$install$1;->L$0:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/application/hooks/CallFailed$install$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/util/pipeline/PipelineContext;

    check-cast p2, Lkotlin/Unit;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/server/application/hooks/CallFailed$install$1;->invoke(Lio/ktor/util/pipeline/PipelineContext;Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 42
    iget v1, p0, Lio/ktor/server/application/hooks/CallFailed$install$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/server/application/hooks/CallFailed$install$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lio/ktor/server/application/hooks/CallFailed$install$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    .local v1, "cause":Ljava/lang/Throwable;
    iget-object v2, v0, Lio/ktor/server/application/hooks/CallFailed$install$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/util/pipeline/PipelineContext;

    .local v2, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v0    # "this":Lio/ktor/server/application/hooks/CallFailed$install$1;
    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local v2    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lio/ktor/server/application/hooks/CallFailed$install$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lio/ktor/server/application/hooks/CallFailed$install$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/util/pipeline/PipelineContext;

    .restart local v2    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v1    # "this":Lio/ktor/server/application/hooks/CallFailed$install$1;
    .end local v2    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lio/ktor/server/application/hooks/CallFailed$install$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lio/ktor/server/application/hooks/CallFailed$install$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/util/pipeline/PipelineContext;

    .line 43
    .restart local v2    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    nop

    .line 44
    :try_start_1
    new-instance v3, Lio/ktor/server/application/hooks/CallFailed$install$1$1;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lio/ktor/server/application/hooks/CallFailed$install$1$1;-><init>(Lio/ktor/util/pipeline/PipelineContext;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Lio/ktor/server/application/hooks/CallFailed$install$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v1, Lio/ktor/server/application/hooks/CallFailed$install$1;->label:I

    invoke-static {v3, v4}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, v0, :cond_0

    .line 42
    return-object v0

    .line 44
    :cond_0
    :goto_0
    goto :goto_2

    .line 47
    :catchall_0
    move-exception v3

    .line 48
    .local v3, "cause":Ljava/lang/Throwable;
    iget-object v4, v1, Lio/ktor/server/application/hooks/CallFailed$install$1;->$handler:Lkotlin/jvm/functions/Function3;

    move-object v5, v2

    .local v5, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v6, 0x0

    .line 155
    .local v6, "$i$f$getCall":I
    invoke-virtual {v5}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/ktor/server/application/ApplicationCall;

    .line 48
    .end local v5    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v6    # "$i$f$getCall":I
    iput-object v2, v1, Lio/ktor/server/application/hooks/CallFailed$install$1;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lio/ktor/server/application/hooks/CallFailed$install$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v1, Lio/ktor/server/application/hooks/CallFailed$install$1;->label:I

    invoke-interface {v4, v7, v3, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_1

    .line 42
    return-object v0

    .line 48
    :cond_1
    move-object v0, v1

    move-object v1, v3

    .line 49
    .end local v3    # "cause":Ljava/lang/Throwable;
    .restart local v0    # "this":Lio/ktor/server/application/hooks/CallFailed$install$1;
    .local v1, "cause":Ljava/lang/Throwable;
    :goto_1
    nop

    .local v2, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v3, 0x0

    .line 156
    .local v3, "$i$f$getCall":I
    invoke-virtual {v2}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/ktor/server/application/ApplicationCall;

    .line 49
    .end local v2    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v3    # "$i$f$getCall":I
    invoke-interface {v4}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v2

    invoke-interface {v2}, Lio/ktor/server/response/ApplicationResponse;->isSent()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 51
    .end local v0    # "this":Lio/ktor/server/application/hooks/CallFailed$install$1;
    .local v1, "this":Lio/ktor/server/application/hooks/CallFailed$install$1;
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 49
    .restart local v0    # "this":Lio/ktor/server/application/hooks/CallFailed$install$1;
    .local v1, "cause":Ljava/lang/Throwable;
    :cond_2
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
