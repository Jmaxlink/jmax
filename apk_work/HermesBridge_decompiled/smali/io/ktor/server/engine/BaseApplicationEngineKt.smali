.class public final Lio/ktor/server/engine/BaseApplicationEngineKt;
.super Ljava/lang/Object;
.source "BaseApplicationEngine.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseApplicationEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseApplicationEngine.kt\nio/ktor/server/engine/BaseApplicationEngineKt\n+ 2 ApplicationCallPipeline.kt\nio/ktor/server/application/ApplicationCallPipelineKt\n+ 3 ApplicationResponseFunctions.kt\nio/ktor/server/response/ApplicationResponseFunctionsKt\n+ 4 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,138:1\n75#2:139\n75#2:140\n26#3,2:141\n29#3,2:146\n17#4,3:143\n*S KotlinDebug\n*F\n+ 1 BaseApplicationEngine.kt\nio/ktor/server/engine/BaseApplicationEngineKt\n*L\n90#1:139\n92#1:140\n92#1:141,2\n92#1:146,2\n92#1:143,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002\u001a\u000c\u0010\u0003\u001a\u00020\u0001*\u00020\u0002H\u0002\u001a!\u0010\u0004\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00060\u0005H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0008"
    }
    d2 = {
        "installDefaultInterceptors",
        "",
        "Lio/ktor/server/application/Application;",
        "installDefaultTransformationChecker",
        "verifyHostHeader",
        "Lio/ktor/util/pipeline/PipelineContext;",
        "Lio/ktor/server/application/ApplicationCall;",
        "(Lio/ktor/util/pipeline/PipelineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ktor-server-host-common"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$installDefaultInterceptors(Lio/ktor/server/application/Application;)V
    .locals 0
    .param p0, "$receiver"    # Lio/ktor/server/application/Application;

    .line 1
    invoke-static {p0}, Lio/ktor/server/engine/BaseApplicationEngineKt;->installDefaultInterceptors(Lio/ktor/server/application/Application;)V

    return-void
.end method

.method public static final synthetic access$installDefaultTransformationChecker(Lio/ktor/server/application/Application;)V
    .locals 0
    .param p0, "$receiver"    # Lio/ktor/server/application/Application;

    .line 1
    invoke-static {p0}, Lio/ktor/server/engine/BaseApplicationEngineKt;->installDefaultTransformationChecker(Lio/ktor/server/application/Application;)V

    return-void
.end method

.method public static final synthetic access$verifyHostHeader(Lio/ktor/util/pipeline/PipelineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/util/pipeline/PipelineContext;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1}, Lio/ktor/server/engine/BaseApplicationEngineKt;->verifyHostHeader(Lio/ktor/util/pipeline/PipelineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final installDefaultInterceptors(Lio/ktor/server/application/Application;)V
    .locals 3
    .param p0, "$this$installDefaultInterceptors"    # Lio/ktor/server/application/Application;

    .line 104
    sget-object v0, Lio/ktor/server/application/ApplicationCallPipeline;->ApplicationPhase:Lio/ktor/server/application/ApplicationCallPipeline$ApplicationPhase;

    invoke-virtual {v0}, Lio/ktor/server/application/ApplicationCallPipeline$ApplicationPhase;->getFallback()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v0

    new-instance v1, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultInterceptors$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultInterceptors$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p0, v0, v1}, Lio/ktor/server/application/Application;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 114
    sget-object v0, Lio/ktor/server/application/ApplicationCallPipeline;->ApplicationPhase:Lio/ktor/server/application/ApplicationCallPipeline$ApplicationPhase;

    invoke-virtual {v0}, Lio/ktor/server/application/ApplicationCallPipeline$ApplicationPhase;->getCall()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v0

    new-instance v1, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultInterceptors$2;

    invoke-direct {v1, v2}, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultInterceptors$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p0, v0, v1}, Lio/ktor/server/application/Application;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 117
    return-void
.end method

.method private static final installDefaultTransformationChecker(Lio/ktor/server/application/Application;)V
    .locals 4
    .param p0, "$this$installDefaultTransformationChecker"    # Lio/ktor/server/application/Application;

    .line 122
    sget-object v0, Lio/ktor/server/application/ApplicationCallPipeline;->ApplicationPhase:Lio/ktor/server/application/ApplicationCallPipeline$ApplicationPhase;

    invoke-virtual {v0}, Lio/ktor/server/application/ApplicationCallPipeline$ApplicationPhase;->getPlugins()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v0

    new-instance v1, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p0, v0, v1}, Lio/ktor/server/application/Application;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 130
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "BodyTransformationCheckPostRender"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "checkBodyPhase":Lio/ktor/util/pipeline/PipelinePhase;
    invoke-virtual {p0}, Lio/ktor/server/application/Application;->getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v1

    sget-object v3, Lio/ktor/server/response/ApplicationSendPipeline;->Phases:Lio/ktor/server/response/ApplicationSendPipeline$Phases;

    invoke-virtual {v3}, Lio/ktor/server/response/ApplicationSendPipeline$Phases;->getRender()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lio/ktor/server/response/ApplicationSendPipeline;->insertPhaseAfter(Lio/ktor/util/pipeline/PipelinePhase;Lio/ktor/util/pipeline/PipelinePhase;)V

    .line 132
    invoke-virtual {p0}, Lio/ktor/server/application/Application;->getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v1

    new-instance v3, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;

    invoke-direct {v3, v2}, Lio/ktor/server/engine/BaseApplicationEngineKt$installDefaultTransformationChecker$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1, v0, v3}, Lio/ktor/server/response/ApplicationSendPipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 137
    return-void
.end method

.method private static final verifyHostHeader(Lio/ktor/util/pipeline/PipelineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/server/engine/BaseApplicationEngineKt$verifyHostHeader$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/server/engine/BaseApplicationEngineKt$verifyHostHeader$1;

    iget v1, v0, Lio/ktor/server/engine/BaseApplicationEngineKt$verifyHostHeader$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/server/engine/BaseApplicationEngineKt$verifyHostHeader$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/server/engine/BaseApplicationEngineKt$verifyHostHeader$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/engine/BaseApplicationEngineKt$verifyHostHeader$1;

    invoke-direct {v0, p1}, Lio/ktor/server/engine/BaseApplicationEngineKt$verifyHostHeader$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/server/engine/BaseApplicationEngineKt$verifyHostHeader$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 89
    iget v2, p1, Lio/ktor/server/engine/BaseApplicationEngineKt$verifyHostHeader$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$respondWithType":I
    iget-object v1, p1, Lio/ktor/server/engine/BaseApplicationEngineKt$verifyHostHeader$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/util/pipeline/PipelineContext;

    .local v1, "$this$verifyHostHeader":Lio/ktor/util/pipeline/PipelineContext;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v1    # "$this$verifyHostHeader":Lio/ktor/util/pipeline/PipelineContext;
    .end local p0    # "$i$f$respondWithType":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    .local p0, "$this$verifyHostHeader":Lio/ktor/util/pipeline/PipelineContext;
    move-object v2, p0

    .local v2, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v3, 0x0

    .line 139
    .local v3, "$i$f$getCall":I
    invoke-virtual {v2}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/ktor/server/application/ApplicationCall;

    .line 90
    .end local v2    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v3    # "$i$f$getCall":I
    invoke-interface {v4}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v2

    invoke-interface {v2}, Lio/ktor/server/request/ApplicationRequest;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v2

    sget-object v3, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v3}, Lio/ktor/http/HttpHeaders;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/ktor/http/Headers;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .end local p0    # "$this$verifyHostHeader":Lio/ktor/util/pipeline/PipelineContext;
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 91
    .local v2, "hostHeaders":Ljava/util/List;
    .restart local p0    # "$this$verifyHostHeader":Lio/ktor/util/pipeline/PipelineContext;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 92
    .end local v2    # "hostHeaders":Ljava/util/List;
    move-object v2, p0

    .local v2, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v3, 0x0

    .line 140
    .restart local v3    # "$i$f$getCall":I
    invoke-virtual {v2}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lio/ktor/server/application/ApplicationCall;

    .line 92
    .end local v3    # "$i$f$getCall":I
    .local v2, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    sget-object v3, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v3}, Lio/ktor/http/HttpStatusCode$Companion;->getBadRequest()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    .local v3, "message$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 141
    .local v5, "$i$f$respondWithType":I
    instance-of v6, v3, Lio/ktor/http/content/OutgoingContent;

    if-nez v6, :cond_2

    instance-of v6, v3, [B

    if-nez v6, :cond_2

    .line 142
    invoke-interface {v2}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v6

    const/4 v7, 0x0

    .local v7, "$i$f$typeInfo":I
    const-class v8, Lio/ktor/http/HttpStatusCode;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v8

    .line 143
    nop

    .line 144
    .local v8, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v8}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 145
    .local v9, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v10, Lio/ktor/http/HttpStatusCode;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v9, v10, v8}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v7

    .line 142
    .end local v7    # "$i$f$typeInfo":I
    .end local v8    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v9    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v6, v7}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 146
    :cond_2
    invoke-interface {v2}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v6

    invoke-interface {v6}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v3

    check-cast v7, Ljava/lang/Object;

    iput-object p0, p1, Lio/ktor/server/engine/BaseApplicationEngineKt$verifyHostHeader$1;->L$0:Ljava/lang/Object;

    iput v4, p1, Lio/ktor/server/engine/BaseApplicationEngineKt$verifyHostHeader$1;->label:I

    invoke-virtual {v6, v2, v7, p1}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v3    # "message$iv":Ljava/lang/Object;
    if-ne v2, v1, :cond_3

    .line 89
    return-object v1

    .line 146
    :cond_3
    move-object v1, p0

    move p0, v5

    .line 147
    .end local v5    # "$i$f$respondWithType":I
    .restart local v1    # "$this$verifyHostHeader":Lio/ktor/util/pipeline/PipelineContext;
    .local p0, "$i$f$respondWithType":I
    :goto_1
    nop

    .line 93
    .end local p0    # "$i$f$respondWithType":I
    invoke-virtual {v1}, Lio/ktor/util/pipeline/PipelineContext;->finish()V

    .line 95
    .end local v1    # "$this$verifyHostHeader":Lio/ktor/util/pipeline/PipelineContext;
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
