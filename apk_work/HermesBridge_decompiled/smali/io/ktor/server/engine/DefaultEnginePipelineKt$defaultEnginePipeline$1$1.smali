.class final Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultEnginePipeline.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nDefaultEnginePipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultEnginePipeline.kt\nio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1\n+ 2 ApplicationCallPipeline.kt\nio/ktor/server/application/ApplicationCallPipelineKt\n*L\n1#1,121:1\n75#2:122\n*S KotlinDebug\n*F\n+ 1 DefaultEnginePipeline.kt\nio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1\n*L\n37#1:122\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        ""
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
    c = "io.ktor.server.engine.DefaultEnginePipelineKt$defaultEnginePipeline$1$1"
    f = "DefaultEnginePipeline.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $$this$intercept:Lio/ktor/util/pipeline/PipelineContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $error:Lio/ktor/util/cio/ChannelIOException;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/util/pipeline/PipelineContext;Lio/ktor/util/cio/ChannelIOException;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;",
            "Lio/ktor/util/cio/ChannelIOException;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1;->$$this$intercept:Lio/ktor/util/pipeline/PipelineContext;

    iput-object p2, p0, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1;->$error:Lio/ktor/util/cio/ChannelIOException;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1;

    iget-object v1, p0, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1;->$$this$intercept:Lio/ktor/util/pipeline/PipelineContext;

    iget-object v2, p0, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1;->$error:Lio/ktor/util/cio/ChannelIOException;

    invoke-direct {v0, v1, v2, p1}, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1;-><init>(Lio/ktor/util/pipeline/PipelineContext;Lio/ktor/util/cio/ChannelIOException;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 36
    iget v0, p0, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 37
    .local v0, "this":Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1;->$$this$intercept:Lio/ktor/util/pipeline/PipelineContext;

    .local v1, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v2, 0x0

    .line 122
    .local v2, "$i$f$getCall":I
    invoke-virtual {v1}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/ktor/server/application/ApplicationCall;

    .line 37
    .end local v1    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v2    # "$i$f$getCall":I
    invoke-interface {v3}, Lio/ktor/server/application/ApplicationCall;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/server/application/Application;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object v1

    iget-object v2, v0, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1;->$$this$intercept:Lio/ktor/util/pipeline/PipelineContext;

    .local v2, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v3, 0x0

    .line 122
    .local v3, "$i$f$getCall":I
    invoke-virtual {v2}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/ktor/server/application/ApplicationCall;

    .line 37
    .end local v2    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v3    # "$i$f$getCall":I
    iget-object v2, v0, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1$1;->$error:Lio/ktor/util/cio/ChannelIOException;

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v1, v4, v2}, Lio/ktor/server/engine/DefaultEnginePipelineKt;->access$logFailure(Lio/ktor/server/application/ApplicationEnvironment;Lio/ktor/server/application/ApplicationCall;Ljava/lang/Throwable;)V

    .line 38
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
