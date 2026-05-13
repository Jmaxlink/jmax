.class final Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultEnginePipeline.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/DefaultEnginePipelineKt;->defaultEnginePipeline(Lio/ktor/server/application/ApplicationEnvironment;)Lio/ktor/server/engine/EnginePipeline;
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
    value = "SMAP\nDefaultEnginePipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultEnginePipeline.kt\nio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1\n+ 2 ApplicationCallPipeline.kt\nio/ktor/server/application/ApplicationCallPipelineKt\n+ 3 Pipeline.kt\nio/ktor/util/pipeline/PipelineKt\n*L\n1#1,121:1\n75#2:122\n75#2:127\n75#2:128\n75#2:129\n75#2:130\n75#2:131\n477#3,4:123\n*S KotlinDebug\n*F\n+ 1 DefaultEnginePipeline.kt\nio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1\n*L\n34#1:122\n43#1:127\n36#1:128\n43#1:129\n40#1:130\n43#1:131\n34#1:123,4\n*E\n"
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
    c = "io.ktor.server.engine.DefaultEnginePipelineKt$defaultEnginePipeline$1"
    f = "DefaultEnginePipeline.kt"
    i = {
        0x0,
        0x2,
        0x4
    }
    l = {
        0x7b,
        0x2b,
        0x24,
        0x2b,
        0x28,
        0x2b,
        0x2b
    }
    m = "invokeSuspend"
    n = {
        "$this$intercept",
        "$this$intercept",
        "$this$intercept"
    }
    s = {
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;

    invoke-direct {v0, p3}, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->L$0:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/util/pipeline/PipelineContext;

    check-cast p2, Lkotlin/Unit;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->invoke(Lio/ktor/util/pipeline/PipelineContext;Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 32
    iget v1, p0, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    .line 44
    :catchall_0
    move-exception v2

    goto/16 :goto_8

    .line 32
    .end local v0    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v0, p0

    .restart local v0    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    .line 44
    :catchall_1
    move-exception v1

    goto/16 :goto_2

    .line 32
    .end local v0    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object v1, p0

    .local v1, "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/util/pipeline/PipelineContext;

    .local v3, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto/16 :goto_3

    .end local v1    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .end local v3    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_3
    move-object v0, p0

    .restart local v0    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_1

    .line 44
    :catchall_2
    move-exception v1

    goto/16 :goto_2

    .line 32
    .end local v0    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_4
    move-object v1, p0

    .restart local v1    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/util/pipeline/PipelineContext;

    .restart local v3    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :try_start_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/16 :goto_4

    .line 42
    :catchall_3
    move-exception v2

    goto/16 :goto_6

    .line 32
    .end local v1    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .end local v3    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_5
    move-object v0, p0

    .restart local v0    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :try_start_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto/16 :goto_1

    .line 44
    :catchall_4
    move-exception v1

    goto/16 :goto_2

    .line 32
    .end local v0    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_6
    move-object v1, p0

    .restart local v1    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "$i$f$execute":I
    iget-object v4, v1, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/util/pipeline/PipelineContext;

    .local v4, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :try_start_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catch Lio/ktor/util/cio/ChannelIOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_0

    .end local v1    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .end local v3    # "$i$f$execute":I
    .end local v4    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->L$0:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lio/ktor/util/pipeline/PipelineContext;

    .line 33
    .restart local v4    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    nop

    .line 34
    move-object v3, v4

    .local v3, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v5, 0x0

    .line 122
    .local v5, "$i$f$getCall":I
    :try_start_7
    invoke-virtual {v3}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/ktor/server/application/ApplicationCall;

    .line 34
    .end local v3    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v5    # "$i$f$getCall":I
    invoke-interface {v6}, Lio/ktor/server/application/ApplicationCall;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v3

    check-cast v3, Lio/ktor/util/pipeline/Pipeline;

    move-object v5, v4

    .local v5, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v6, 0x0

    .line 122
    .local v6, "$i$f$getCall":I
    invoke-virtual {v5}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/ktor/server/application/ApplicationCall;

    .end local v5    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v6    # "$i$f$getCall":I
    .local v3, "$this$execute$iv":Lio/ktor/util/pipeline/Pipeline;
    move-object v5, v7

    .line 34
    .local v5, "context$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 123
    .local v6, "$i$f$execute":I
    new-instance v7, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$invokeSuspend$$inlined$execute$1;

    invoke-direct {v7, v3, v5, v2}, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$invokeSuspend$$inlined$execute$1;-><init>(Lio/ktor/util/pipeline/Pipeline;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->L$0:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v1, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->label:I

    invoke-static {v7, v8}, Lio/ktor/util/debug/ContextUtilsKt;->initContextInDebugMode(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_7
    .catch Lio/ktor/util/cio/ChannelIOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .end local v3    # "$this$execute$iv":Lio/ktor/util/pipeline/Pipeline;
    .end local v5    # "context$iv":Ljava/lang/Object;
    if-ne v7, v0, :cond_0

    .line 32
    return-object v0

    .line 123
    :cond_0
    move v3, v6

    .line 126
    .end local v6    # "$i$f$execute":I
    .local v3, "$i$f$execute":I
    :goto_0
    nop

    .line 42
    .end local v3    # "$i$f$execute":I
    nop

    .line 43
    move-object v3, v4

    .end local v4    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .local v3, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v4, 0x0

    .line 127
    .local v4, "$i$f$getCall":I
    :try_start_8
    invoke-virtual {v3}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/ktor/server/application/ApplicationCall;

    .line 43
    .end local v3    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v4    # "$i$f$getCall":I
    invoke-interface {v5}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/request/ApplicationRequest;->receiveChannel()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v1, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->label:I

    invoke-static {v3, v4}, Lio/ktor/utils/io/ByteReadChannelKt;->discard(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-ne v2, v0, :cond_1

    .line 32
    return-object v0

    .line 43
    :cond_1
    move-object v0, v1

    .end local v1    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .restart local v0    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    :goto_1
    goto :goto_2

    .line 44
    .end local v0    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .restart local v1    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    :catchall_5
    move-exception v0

    move-object v0, v1

    .line 46
    .end local v1    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .restart local v0    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    :goto_2
    goto/16 :goto_5

    .line 39
    .end local v0    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .restart local v1    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .local v4, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :catchall_6
    move-exception v3

    .line 40
    .local v3, "error":Ljava/lang/Throwable;
    move-object v5, v4

    .local v5, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v6, 0x0

    .line 130
    .local v6, "$i$f$getCall":I
    :try_start_9
    invoke-virtual {v5}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/ktor/server/application/ApplicationCall;

    .line 40
    .end local v5    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v6    # "$i$f$getCall":I
    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x5

    iput v6, v1, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->label:I

    invoke-static {v7, v3, v5}, Lio/ktor/server/engine/DefaultEnginePipelineKt;->handleFailure(Lio/ktor/server/application/ApplicationCall;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .end local v3    # "error":Ljava/lang/Throwable;
    if-ne v5, v0, :cond_2

    .line 32
    return-object v0

    .line 40
    :cond_2
    move-object v3, v4

    .line 42
    .end local v4    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .local v3, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :goto_3
    nop

    .line 43
    nop

    .local v3, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v4, 0x0

    .line 131
    .local v4, "$i$f$getCall":I
    :try_start_a
    invoke-virtual {v3}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/ktor/server/application/ApplicationCall;

    .line 43
    .end local v3    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v4    # "$i$f$getCall":I
    invoke-interface {v5}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/request/ApplicationRequest;->receiveChannel()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, v1, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->label:I

    invoke-static {v3, v4}, Lio/ktor/utils/io/ByteReadChannelKt;->discard(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-ne v2, v0, :cond_3

    .line 32
    return-object v0

    .line 43
    :cond_3
    move-object v0, v1

    goto :goto_1

    .line 44
    :catchall_7
    move-exception v0

    move-object v0, v1

    goto :goto_2

    .line 35
    .local v4, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :catch_0
    move-exception v3

    .line 36
    .local v3, "error":Lio/ktor/util/cio/ChannelIOException;
    move-object v5, v4

    .restart local v5    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v6, 0x0

    .line 128
    .restart local v6    # "$i$f$getCall":I
    :try_start_b
    invoke-virtual {v5}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/ktor/server/application/ApplicationCall;

    .line 36
    .end local v5    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v6    # "$i$f$getCall":I
    invoke-interface {v7}, Lio/ktor/server/application/ApplicationCall;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v5

    invoke-static {v5}, Lio/ktor/server/logging/LoggingKt;->getMdcProvider(Lio/ktor/server/application/Application;)Lio/ktor/server/logging/MDCProvider;

    move-result-object v5

    move-object v6, v4

    .local v6, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v7, 0x0

    .line 128
    .local v7, "$i$f$getCall":I
    invoke-virtual {v6}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/ktor/server/application/ApplicationCall;

    .line 36
    .end local v6    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v7    # "$i$f$getCall":I
    new-instance v6, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1;

    invoke-direct {v6, v4, v3, v2}, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1;-><init>(Lio/ktor/util/pipeline/PipelineContext;Lio/ktor/util/cio/ChannelIOException;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->L$0:Ljava/lang/Object;

    const/4 v9, 0x3

    iput v9, v1, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->label:I

    invoke-interface {v5, v8, v6, v7}, Lio/ktor/server/logging/MDCProvider;->withMDCBlock(Lio/ktor/server/application/ApplicationCall;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .end local v3    # "error":Lio/ktor/util/cio/ChannelIOException;
    if-ne v5, v0, :cond_4

    .line 32
    return-object v0

    .line 36
    :cond_4
    move-object v3, v4

    .line 42
    .end local v4    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .local v3, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :goto_4
    nop

    .line 43
    nop

    .local v3, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v4, 0x0

    .line 129
    .local v4, "$i$f$getCall":I
    :try_start_c
    invoke-virtual {v3}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/ktor/server/application/ApplicationCall;

    .line 43
    .end local v3    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v4    # "$i$f$getCall":I
    invoke-interface {v5}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/request/ApplicationRequest;->receiveChannel()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v1, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->label:I

    invoke-static {v3, v4}, Lio/ktor/utils/io/ByteReadChannelKt;->discard(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-ne v2, v0, :cond_5

    .line 32
    return-object v0

    .line 43
    :cond_5
    move-object v0, v1

    goto/16 :goto_1

    .line 44
    :catchall_8
    move-exception v0

    move-object v0, v1

    goto/16 :goto_2

    .line 47
    .end local v1    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .restart local v0    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    :goto_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 42
    .end local v0    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .restart local v1    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .local v4, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :catchall_9
    move-exception v2

    move-object v3, v4

    .line 43
    .end local v4    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .local v3, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :goto_6
    nop

    .local v3, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v4, 0x0

    .line 131
    .local v4, "$i$f$getCall":I
    :try_start_d
    invoke-virtual {v3}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/ktor/server/application/ApplicationCall;

    .line 43
    .end local v3    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v4    # "$i$f$getCall":I
    invoke-interface {v5}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/request/ApplicationRequest;->receiveChannel()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x7

    iput v5, v1, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->label:I

    invoke-static {v3, v4}, Lio/ktor/utils/io/ByteReadChannelKt;->discard(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    if-ne v3, v0, :cond_6

    .line 32
    return-object v0

    .line 43
    :cond_6
    move-object v0, v1

    move-object v1, v2

    .end local v1    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .restart local v0    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    :goto_7
    goto :goto_8

    .line 44
    .end local v0    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .restart local v1    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    :catchall_a
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    .end local v1    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    .restart local v0    # "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;
    :goto_8
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
