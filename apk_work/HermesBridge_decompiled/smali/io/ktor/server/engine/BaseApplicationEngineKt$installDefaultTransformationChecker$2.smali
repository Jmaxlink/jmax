.class final Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BaseApplicationEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/BaseApplicationEngineKt;->installDefaultTransformationChecker(Lio/ktor/server/application/Application;)V
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
        "Ljava/lang/Object;",
        "Lio/ktor/server/application/ApplicationCall;",
        ">;",
        "Ljava/lang/Object;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0005\u001a\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/util/pipeline/PipelineContext;",
        "",
        "Lio/ktor/server/application/ApplicationCall;",
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
    c = "io.ktor.server.engine.BaseApplicationEngineKt$installDefaultTransformationChecker$2"
    f = "BaseApplicationEngine.kt"
    i = {}
    l = {
        0x86
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/util/pipeline/PipelineContext;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Ljava/lang/Object;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;

    invoke-direct {v0, p3}, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;->L$1:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/util/pipeline/PipelineContext;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;->invoke(Lio/ktor/util/pipeline/PipelineContext;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 132
    iget v1, p0, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/util/pipeline/PipelineContext;

    .local v2, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    iget-object v3, v1, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;->L$1:Ljava/lang/Object;

    .line 133
    .local v3, "subject":Ljava/lang/Object;
    instance-of v4, v3, Lio/ktor/http/content/OutgoingContent;

    if-nez v4, :cond_1

    .line 134
    .end local v3    # "subject":Ljava/lang/Object;
    new-instance v3, Lio/ktor/server/http/content/HttpStatusCodeContent;

    sget-object v4, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v4}, Lio/ktor/http/HttpStatusCode$Companion;->getNotAcceptable()Lio/ktor/http/HttpStatusCode;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/ktor/server/http/content/HttpStatusCodeContent;-><init>(Lio/ktor/http/HttpStatusCode;)V

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x0

    iput-object v5, v1, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v1, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;->label:I

    invoke-virtual {v2, v3, v4}, Lio/ktor/util/pipeline/PipelineContext;->proceedWith(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    if-ne v2, v0, :cond_0

    .line 132
    return-object v0

    .line 134
    :cond_0
    move-object v0, v1

    .line 136
    .end local v1    # "this":Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;
    .restart local v0    # "this":Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;
    :goto_0
    move-object v1, v0

    .end local v0    # "this":Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;
    .restart local v1    # "this":Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
