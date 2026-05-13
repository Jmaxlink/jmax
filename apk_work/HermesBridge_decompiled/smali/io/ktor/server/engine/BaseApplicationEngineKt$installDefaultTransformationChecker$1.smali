.class final Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;
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
    value = "SMAP\nBaseApplicationEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseApplicationEngine.kt\nio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1\n+ 2 ApplicationCallPipeline.kt\nio/ktor/server/application/ApplicationCallPipelineKt\n+ 3 ApplicationResponseFunctions.kt\nio/ktor/server/response/ApplicationResponseFunctionsKt\n+ 4 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,138:1\n75#2:139\n26#3,2:140\n29#3,2:145\n17#4,3:142\n*S KotlinDebug\n*F\n+ 1 BaseApplicationEngine.kt\nio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1\n*L\n126#1:139\n126#1:140,2\n126#1:145,2\n126#1:142,3\n*E\n"
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
    c = "io.ktor.server.engine.BaseApplicationEngineKt$installDefaultTransformationChecker$1"
    f = "BaseApplicationEngine.kt"
    i = {
        0x0
    }
    l = {
        0x7c,
        0x91
    }
    m = "invokeSuspend"
    n = {
        "$this$intercept"
    }
    s = {
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
            "Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;",
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

    new-instance v0, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;

    invoke-direct {v0, p3}, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;->L$0:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/util/pipeline/PipelineContext;

    check-cast p2, Lkotlin/Unit;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;->invoke(Lio/ktor/util/pipeline/PipelineContext;Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 122
    iget v1, p0, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$f$respondWithType":I
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v0    # "this":Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;
    .end local v1    # "$i$f$respondWithType":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/util/pipeline/PipelineContext;

    .local v2, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lio/ktor/server/plugins/CannotTransformContentToTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "this":Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;
    .end local v2    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/util/pipeline/PipelineContext;

    .line 123
    .restart local v2    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    nop

    .line 124
    :try_start_1
    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v1, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;->label:I

    invoke-virtual {v2, v3}, Lio/ktor/util/pipeline/PipelineContext;->proceed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Lio/ktor/server/plugins/CannotTransformContentToTypeException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v3, v0, :cond_0

    .line 122
    return-object v0

    .line 124
    :cond_0
    :goto_0
    goto :goto_2

    .line 125
    :catch_0
    move-exception v3

    .line 126
    nop

    .local v2, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v3, 0x0

    .line 139
    .local v3, "$i$f$getCall":I
    invoke-virtual {v2}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lio/ktor/server/application/ApplicationCall;

    .line 126
    .end local v3    # "$i$f$getCall":I
    .local v2, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    sget-object v3, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v3}, Lio/ktor/http/HttpStatusCode$Companion;->getUnsupportedMediaType()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    .local v3, "message$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 140
    .local v4, "$i$f$respondWithType":I
    instance-of v5, v3, Lio/ktor/http/content/OutgoingContent;

    if-nez v5, :cond_1

    instance-of v5, v3, [B

    if-nez v5, :cond_1

    .line 141
    invoke-interface {v2}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v5

    const/4 v6, 0x0

    .local v6, "$i$f$typeInfo":I
    const-class v7, Lio/ktor/http/HttpStatusCode;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v7

    .line 142
    nop

    .line 143
    .local v7, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v7}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 144
    .local v8, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v9, Lio/ktor/http/HttpStatusCode;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v6

    .line 141
    .end local v6    # "$i$f$typeInfo":I
    .end local v7    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v8    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v5, v6}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 145
    :cond_1
    invoke-interface {v2}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v5

    invoke-interface {v5}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x0

    iput-object v7, v1, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v1, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;->label:I

    invoke-virtual {v5, v2, v3, v6}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v3    # "message$iv":Ljava/lang/Object;
    if-ne v2, v0, :cond_2

    .line 122
    return-object v0

    .line 145
    :cond_2
    move-object v0, v1

    move v1, v4

    .line 146
    .end local v4    # "$i$f$respondWithType":I
    .restart local v0    # "this":Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;
    .local v1, "$i$f$respondWithType":I
    :goto_1
    move-object v1, v0

    .line 128
    .end local v0    # "this":Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;
    .local v1, "this":Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
