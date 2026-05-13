.class final Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BridgeRouter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1;->invoke(Lio/ktor/server/routing/Routing;)V
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
    value = "SMAP\nBridgeRouter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BridgeRouter.kt\ncom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28\n+ 2 ApplicationCallPipeline.kt\nio/ktor/server/application/ApplicationCallPipelineKt\n+ 3 ApplicationResponseFunctions.kt\nio/ktor/server/response/ApplicationResponseFunctionsKt\n+ 4 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,349:1\n75#2:350\n75#2:351\n75#2:352\n26#3,2:353\n29#3,2:358\n17#4,3:355\n*S KotlinDebug\n*F\n+ 1 BridgeRouter.kt\ncom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28\n*L\n257#1:350\n258#1:351\n262#1:352\n262#1:353,2\n262#1:358,2\n262#1:355,3\n*E\n"
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
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.hermesandroid.bridge.server.BridgeRouterKt$configureRouting$1$28"
    f = "BridgeRouter.kt"
    i = {
        0x0
    }
    l = {
        0x103,
        0x166
    }
    m = "invokeSuspend"
    n = {
        "$this$get"
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
            "Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;",
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

    new-instance v0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;

    invoke-direct {v0, p3}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;->L$0:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/util/pipeline/PipelineContext;

    check-cast p2, Lkotlin/Unit;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;->invoke(Lio/ktor/util/pipeline/PipelineContext;Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 256
    iget v1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$f$respondWithType":I
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v0    # "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;
    .end local v1    # "$i$f$respondWithType":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/util/pipeline/PipelineContext;

    .local v3, "$this$get":Lio/ktor/util/pipeline/PipelineContext;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v1

    move-object v1, p1

    goto/16 :goto_1

    .end local v1    # "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;
    .end local v3    # "$this$get":Lio/ktor/util/pipeline/PipelineContext;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/util/pipeline/PipelineContext;

    .line 257
    .restart local v3    # "$this$get":Lio/ktor/util/pipeline/PipelineContext;
    move-object v4, v3

    .local v4, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v5, 0x0

    .line 350
    .local v5, "$i$f$getCall":I
    invoke-virtual {v4}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/ktor/server/application/ApplicationCall;

    .line 257
    .end local v4    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v5    # "$i$f$getCall":I
    invoke-interface {v6}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v4

    invoke-interface {v4}, Lio/ktor/server/request/ApplicationRequest;->getQueryParameters()Lio/ktor/http/Parameters;

    move-result-object v4

    const-string v5, "query"

    invoke-interface {v4, v5}, Lio/ktor/http/Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, ""

    .line 258
    .local v4, "query":Ljava/lang/String;
    :cond_0
    move-object v5, v3

    .local v5, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v6, 0x0

    .line 351
    .local v6, "$i$f$getCall":I
    invoke-virtual {v5}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/ktor/server/application/ApplicationCall;

    .line 258
    .end local v5    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v6    # "$i$f$getCall":I
    invoke-interface {v7}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v5

    invoke-interface {v5}, Lio/ktor/server/request/ApplicationRequest;->getQueryParameters()Lio/ktor/http/Parameters;

    move-result-object v5

    const-string v6, "limit"

    invoke-interface {v5, v6}, Lio/ktor/http/Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    :cond_1
    const/16 v5, 0x14

    .line 259
    .local v5, "limit":I
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v6

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28$result$1;

    invoke-direct {v7, v4, v5, v2}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28$result$1;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;->L$0:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;->label:I

    invoke-static {v6, v7, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "query":Ljava/lang/String;
    .end local v5    # "limit":I
    if-ne v4, v0, :cond_2

    .line 256
    return-object v0

    .line 259
    :cond_2
    move-object v11, v1

    move-object v1, p1

    move-object p1, v4

    move-object v4, v3

    move-object v3, v11

    .line 256
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v3, "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;
    .local v4, "$this$get":Lio/ktor/util/pipeline/PipelineContext;
    :goto_1
    check-cast p1, Lcom/hermesandroid/bridge/model/ActionResult;

    .line 262
    .local p1, "result":Lcom/hermesandroid/bridge/model/ActionResult;
    nop

    .local v4, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v5, 0x0

    .line 352
    .local v5, "$i$f$getCall":I
    invoke-virtual {v4}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lio/ktor/server/application/ApplicationCall;

    .line 262
    .end local v5    # "$i$f$getCall":I
    .local v4, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v5, 0x0

    .line 353
    .local v5, "$i$f$respondWithType":I
    instance-of v6, p1, Lio/ktor/http/content/OutgoingContent;

    if-nez v6, :cond_3

    instance-of v6, p1, [B

    if-nez v6, :cond_3

    .line 354
    invoke-interface {v4}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v6

    const/4 v7, 0x0

    .local v7, "$i$f$typeInfo":I
    const-class v8, Lcom/hermesandroid/bridge/model/ActionResult;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v8

    .line 355
    nop

    .line 356
    .local v8, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v8}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 357
    .local v9, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v10, Lcom/hermesandroid/bridge/model/ActionResult;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v9, v10, v8}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v7

    .line 354
    .end local v7    # "$i$f$typeInfo":I
    .end local v8    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v9    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v6, v7}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 358
    :cond_3
    invoke-interface {v4}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v6

    invoke-interface {v6}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, p1

    check-cast v7, Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v2, v3, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;->L$0:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v3, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;->label:I

    invoke-virtual {v6, v4, v7, v8}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v4    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local p1    # "result":Lcom/hermesandroid/bridge/model/ActionResult;
    if-ne p1, v0, :cond_4

    .line 256
    return-object v0

    .line 358
    :cond_4
    move-object p1, v1

    move-object v0, v3

    move v1, v5

    .line 359
    .end local v3    # "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;
    .end local v5    # "$i$f$respondWithType":I
    .restart local v0    # "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$28;
    .local v1, "$i$f$respondWithType":I
    .local p1, "$result":Ljava/lang/Object;
    :goto_2
    nop

    .line 263
    .end local v1    # "$i$f$respondWithType":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
