.class final Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$14;
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
    value = "SMAP\nBridgeRouter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BridgeRouter.kt\ncom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$14\n+ 2 ApplicationCallPipeline.kt\nio/ktor/server/application/ApplicationCallPipelineKt\n+ 3 ApplicationResponseFunctions.kt\nio/ktor/server/response/ApplicationResponseFunctionsKt\n+ 4 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,349:1\n75#2:350\n26#3,2:351\n29#3,2:356\n17#4,3:353\n*S KotlinDebug\n*F\n+ 1 BridgeRouter.kt\ncom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$14\n*L\n142#1:350\n142#1:351,2\n142#1:356,2\n142#1:353,3\n*E\n"
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
    c = "com.hermesandroid.bridge.server.BridgeRouterKt$configureRouting$1$14"
    f = "BridgeRouter.kt"
    i = {}
    l = {
        0x164
    }
    m = "invokeSuspend"
    n = {}
    s = {}
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
            "Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$14;",
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

    new-instance v0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$14;

    invoke-direct {v0, p3}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$14;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$14;->L$0:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$14;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/util/pipeline/PipelineContext;

    check-cast p2, Lkotlin/Unit;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$14;->invoke(Lio/ktor/util/pipeline/PipelineContext;Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 140
    iget v1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$14;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$14;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$f$respondWithType":I
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$14;
    .end local v1    # "$i$f$respondWithType":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$14;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$14;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/util/pipeline/PipelineContext;

    .line 141
    .local v2, "$this$get":Lio/ktor/util/pipeline/PipelineContext;
    sget-object v3, Lcom/hermesandroid/bridge/executor/ActionExecutor;->INSTANCE:Lcom/hermesandroid/bridge/executor/ActionExecutor;

    invoke-virtual {v3}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->clipboardRead()Lcom/hermesandroid/bridge/model/ActionResult;

    move-result-object v3

    .line 142
    .local v3, "result":Lcom/hermesandroid/bridge/model/ActionResult;
    nop

    .local v2, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v4, 0x0

    .line 350
    .local v4, "$i$f$getCall":I
    invoke-virtual {v2}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lio/ktor/server/application/ApplicationCall;

    .line 142
    .end local v4    # "$i$f$getCall":I
    .local v2, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v4, 0x0

    .line 351
    .local v4, "$i$f$respondWithType":I
    instance-of v5, v3, Lio/ktor/http/content/OutgoingContent;

    if-nez v5, :cond_0

    instance-of v5, v3, [B

    if-nez v5, :cond_0

    .line 352
    invoke-interface {v2}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v5

    const/4 v6, 0x0

    .local v6, "$i$f$typeInfo":I
    const-class v7, Lcom/hermesandroid/bridge/model/ActionResult;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v7

    .line 353
    nop

    .line 354
    .local v7, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v7}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 355
    .local v8, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v9, Lcom/hermesandroid/bridge/model/ActionResult;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v6

    .line 352
    .end local v6    # "$i$f$typeInfo":I
    .end local v7    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v8    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v5, v6}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 356
    :cond_0
    invoke-interface {v2}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v5

    invoke-interface {v5}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v3

    check-cast v6, Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    const/4 v8, 0x1

    iput v8, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$14;->label:I

    invoke-virtual {v5, v2, v6, v7}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v3    # "result":Lcom/hermesandroid/bridge/model/ActionResult;
    if-ne v2, v0, :cond_1

    .line 140
    return-object v0

    .line 356
    :cond_1
    move-object v0, v1

    move v1, v4

    .line 357
    .end local v4    # "$i$f$respondWithType":I
    .restart local v0    # "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$14;
    .local v1, "$i$f$respondWithType":I
    :goto_0
    nop

    .line 143
    .end local v1    # "$i$f$respondWithType":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
