.class final Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;
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
    value = "SMAP\nBridgeRouter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BridgeRouter.kt\ncom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32\n+ 2 ApplicationCallPipeline.kt\nio/ktor/server/application/ApplicationCallPipelineKt\n+ 3 ApplicationReceiveFunctions.kt\nio/ktor/server/request/ApplicationReceiveFunctionsKt\n+ 4 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n+ 5 ApplicationResponseFunctions.kt\nio/ktor/server/response/ApplicationResponseFunctionsKt\n*L\n1#1,349:1\n75#2:350\n75#2:356\n68#3:351\n69#3:355\n17#4,3:352\n17#4,3:359\n26#5,2:357\n29#5,2:362\n*S KotlinDebug\n*F\n+ 1 BridgeRouter.kt\ncom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32\n*L\n297#1:350\n299#1:356\n297#1:351\n297#1:355\n297#1:352,3\n299#1:359,3\n299#1:357,2\n299#1:362,2\n*E\n"
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
    c = "com.hermesandroid.bridge.server.BridgeRouterKt$configureRouting$1$32"
    f = "BridgeRouter.kt"
    i = {
        0x0
    }
    l = {
        0x15f,
        0x16a
    }
    m = "invokeSuspend"
    n = {
        "$this$post"
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
            "Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;",
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

    new-instance v0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;

    invoke-direct {v0, p3}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;->L$0:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/util/pipeline/PipelineContext;

    check-cast p2, Lkotlin/Unit;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;->invoke(Lio/ktor/util/pipeline/PipelineContext;Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 295
    iget v1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$f$respondWithType":I
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v0    # "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;
    .end local v1    # "$i$f$respondWithType":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;
    .restart local p1    # "$result":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "$i$f$receive":I
    iget-object v3, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/util/pipeline/PipelineContext;

    .local v3, "$this$post":Lio/ktor/util/pipeline/PipelineContext;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v4, v2

    move-object v2, v1

    move-object v1, p1

    goto :goto_0

    .end local v1    # "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;
    .end local v2    # "$i$f$receive":I
    .end local v3    # "$this$post":Lio/ktor/util/pipeline/PipelineContext;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;->L$0:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lio/ktor/util/pipeline/PipelineContext;

    .line 297
    .restart local v3    # "$this$post":Lio/ktor/util/pipeline/PipelineContext;
    move-object v2, v3

    .local v2, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v4, 0x0

    .line 350
    .local v4, "$i$f$getCall":I
    invoke-virtual {v2}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lio/ktor/server/application/ApplicationCall;

    .line 297
    .end local v4    # "$i$f$getCall":I
    .local v2, "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v4, 0x0

    .line 351
    .local v4, "$i$f$receive":I
    const/4 v5, 0x0

    .end local v2    # "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    .local v5, "$i$f$typeInfo":I
    const-class v6, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32$BroadcastRequest;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v6

    .line 352
    nop

    .line 353
    .local v6, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v6}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 354
    .local v7, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v8, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32$BroadcastRequest;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v5

    .line 351
    .end local v5    # "$i$f$typeInfo":I
    .end local v6    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v7    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;->L$0:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;->label:I

    invoke-static {v2, v5, v6}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->receiveNullable(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 295
    return-object v0

    .line 351
    :cond_0
    move-object v10, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v10

    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v2, "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;
    :goto_0
    if-eqz p1, :cond_3

    .line 297
    .end local v4    # "$i$f$receive":I
    check-cast p1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32$BroadcastRequest;

    .line 298
    .local p1, "req":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32$BroadcastRequest;
    sget-object v4, Lcom/hermesandroid/bridge/executor/ActionExecutor;->INSTANCE:Lcom/hermesandroid/bridge/executor/ActionExecutor;

    invoke-virtual {p1}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32$BroadcastRequest;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32$BroadcastRequest;->getExtras()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)Lcom/hermesandroid/bridge/model/ActionResult;

    move-result-object p1

    .line 299
    .local p1, "result":Lcom/hermesandroid/bridge/model/ActionResult;
    nop

    .local v3, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v4, 0x0

    .line 356
    .local v4, "$i$f$getCall":I
    invoke-virtual {v3}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lio/ktor/server/application/ApplicationCall;

    .line 299
    .end local v4    # "$i$f$getCall":I
    .local v3, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v4, 0x0

    .line 357
    .local v4, "$i$f$respondWithType":I
    instance-of v5, p1, Lio/ktor/http/content/OutgoingContent;

    if-nez v5, :cond_1

    instance-of v5, p1, [B

    if-nez v5, :cond_1

    .line 358
    invoke-interface {v3}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v5

    const/4 v6, 0x0

    .local v6, "$i$f$typeInfo":I
    const-class v7, Lcom/hermesandroid/bridge/model/ActionResult;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v7

    .line 359
    nop

    .line 360
    .local v7, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v7}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 361
    .local v8, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v9, Lcom/hermesandroid/bridge/model/ActionResult;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v6

    .line 358
    .end local v6    # "$i$f$typeInfo":I
    .end local v7    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v8    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v5, v6}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 362
    :cond_1
    invoke-interface {v3}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v5

    invoke-interface {v5}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, p1

    check-cast v6, Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lkotlin/coroutines/Continuation;

    const/4 v8, 0x0

    iput-object v8, v2, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;->L$0:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v2, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;->label:I

    invoke-virtual {v5, v3, v6, v7}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v3    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local p1    # "result":Lcom/hermesandroid/bridge/model/ActionResult;
    if-ne p1, v0, :cond_2

    .line 295
    return-object v0

    .line 362
    :cond_2
    move-object p1, v1

    move-object v0, v2

    move v1, v4

    .line 363
    .end local v2    # "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;
    .end local v4    # "$i$f$respondWithType":I
    .restart local v0    # "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;
    .local v1, "$i$f$respondWithType":I
    .local p1, "$result":Ljava/lang/Object;
    :goto_1
    nop

    .line 300
    .end local v1    # "$i$f$respondWithType":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 355
    .end local v0    # "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .restart local v2    # "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32;
    .local v4, "$i$f$receive":I
    :cond_3
    new-instance p1, Lio/ktor/server/plugins/CannotTransformContentToTypeException;

    const/4 v0, 0x0

    .local v0, "$i$f$typeInfo":I
    const-class v3, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32$BroadcastRequest;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3

    .line 352
    nop

    .line 353
    .local v3, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v3}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 354
    .local v5, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v6, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$32$BroadcastRequest;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v0

    .line 355
    .end local v0    # "$i$f$typeInfo":I
    .end local v3    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v5    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-virtual {v0}, Lio/ktor/util/reflect/TypeInfo;->getKotlinType()Lkotlin/reflect/KType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, v0}, Lio/ktor/server/plugins/CannotTransformContentToTypeException;-><init>(Lkotlin/reflect/KType;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
