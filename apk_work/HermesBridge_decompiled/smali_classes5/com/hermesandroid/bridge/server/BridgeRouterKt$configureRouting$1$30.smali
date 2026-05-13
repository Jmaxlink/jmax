.class final Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$30;
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
    value = "SMAP\nBridgeRouter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BridgeRouter.kt\ncom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$30\n+ 2 ApplicationCallPipeline.kt\nio/ktor/server/application/ApplicationCallPipelineKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ApplicationResponseFunctions.kt\nio/ktor/server/response/ApplicationResponseFunctionsKt\n+ 5 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,349:1\n75#2:350\n75#2:351\n75#2:356\n1549#3:352\n1620#3,3:353\n26#4,2:357\n29#4,2:362\n17#5,3:359\n*S KotlinDebug\n*F\n+ 1 BridgeRouter.kt\ncom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$30\n*L\n273#1:350\n274#1:351\n281#1:356\n280#1:352\n280#1:353,3\n281#1:357,2\n281#1:362,2\n281#1:359,3\n*E\n"
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
    c = "com.hermesandroid.bridge.server.BridgeRouterKt$configureRouting$1$30"
    f = "BridgeRouter.kt"
    i = {}
    l = {
        0x16a
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
            "Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$30;",
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

    new-instance v0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$30;

    invoke-direct {v0, p3}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$30;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$30;->L$0:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$30;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/util/pipeline/PipelineContext;

    check-cast p2, Lkotlin/Unit;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$30;->invoke(Lio/ktor/util/pipeline/PipelineContext;Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 272
    iget v1, p0, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$30;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$30;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$f$respondWithType":I
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .end local v0    # "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$30;
    .end local v1    # "$i$f$respondWithType":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$30;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$30;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/util/pipeline/PipelineContext;

    .line 273
    .local v2, "$this$get":Lio/ktor/util/pipeline/PipelineContext;
    move-object v3, v2

    .local v3, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v4, 0x0

    .line 350
    .local v4, "$i$f$getCall":I
    invoke-virtual {v3}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/ktor/server/application/ApplicationCall;

    .line 273
    .end local v3    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v4    # "$i$f$getCall":I
    invoke-interface {v5}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/request/ApplicationRequest;->getQueryParameters()Lio/ktor/http/Parameters;

    move-result-object v3

    const-string v4, "limit"

    invoke-interface {v3, v4}, Lio/ktor/http/Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_0
    const/16 v3, 0x32

    .line 274
    .local v3, "limit":I
    :goto_0
    move-object v4, v2

    .local v4, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v5, 0x0

    .line 351
    .local v5, "$i$f$getCall":I
    invoke-virtual {v4}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/ktor/server/application/ApplicationCall;

    .line 274
    .end local v4    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v5    # "$i$f$getCall":I
    invoke-interface {v6}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v4

    invoke-interface {v4}, Lio/ktor/server/request/ApplicationRequest;->getQueryParameters()Lio/ktor/http/Parameters;

    move-result-object v4

    const-string v5, "since"

    invoke-interface {v4, v5}, Lio/ktor/http/Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_1

    invoke-static {v4}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_1

    :cond_1
    move-wide v7, v5

    .line 275
    .local v7, "since":J
    :goto_1
    cmp-long v4, v7, v5

    if-lez v4, :cond_2

    .line 276
    sget-object v4, Lcom/hermesandroid/bridge/event/EventStore;->INSTANCE:Lcom/hermesandroid/bridge/event/EventStore;

    invoke-virtual {v4, v7, v8, v3}, Lcom/hermesandroid/bridge/event/EventStore;->getSince(JI)Ljava/util/List;

    move-result-object v4

    goto :goto_2

    .line 278
    .end local v7    # "since":J
    :cond_2
    sget-object v4, Lcom/hermesandroid/bridge/event/EventStore;->INSTANCE:Lcom/hermesandroid/bridge/event/EventStore;

    invoke-virtual {v4, v3}, Lcom/hermesandroid/bridge/event/EventStore;->getAll(I)Ljava/util/List;

    move-result-object v4

    .line 275
    .end local v3    # "limit":I
    :goto_2
    move-object v3, v4

    .line 280
    .local v3, "entries":Ljava/util/List;
    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 352
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .local v5, "destination$iv$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 353
    .local v6, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 354
    .local v3, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v3

    check-cast v8, Lcom/hermesandroid/bridge/event/AccessibilityEventData;

    .local v8, "it":Lcom/hermesandroid/bridge/event/AccessibilityEventData;
    const/4 v9, 0x0

    .line 280
    .local v9, "$i$a$-map-BridgeRouterKt$configureRouting$1$30$mapped$1":I
    sget-object v10, Lcom/hermesandroid/bridge/event/EventStore;->INSTANCE:Lcom/hermesandroid/bridge/event/EventStore;

    invoke-virtual {v10, v8}, Lcom/hermesandroid/bridge/event/EventStore;->toMap(Lcom/hermesandroid/bridge/event/AccessibilityEventData;)Ljava/util/Map;

    move-result-object v8

    .line 354
    .end local v8    # "it":Lcom/hermesandroid/bridge/event/AccessibilityEventData;
    .end local v9    # "$i$a$-map-BridgeRouterKt$configureRouting$1$30$mapped$1":I
    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 355
    .end local v3    # "item$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$i$f$mapTo":I
    move-object v3, v5

    check-cast v3, Ljava/util/List;

    .line 352
    nop

    .line 280
    .end local v4    # "$i$f$map":I
    nop

    .line 281
    .local v3, "mapped":Ljava/util/List;
    nop

    .local v2, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v4, 0x0

    .line 356
    .local v4, "$i$f$getCall":I
    invoke-virtual {v2}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lio/ktor/server/application/ApplicationCall;

    .line 282
    .end local v4    # "$i$f$getCall":I
    .local v2, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const-string v4, "events"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 283
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "count"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 282
    .end local v3    # "mapped":Ljava/util/List;
    nop

    .line 284
    sget-object v3, Lcom/hermesandroid/bridge/event/EventStore;->INSTANCE:Lcom/hermesandroid/bridge/event/EventStore;

    invoke-virtual {v3}, Lcom/hermesandroid/bridge/event/EventStore;->getStreamingEnabled()Z

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v6, "streaming"

    invoke-static {v6, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v6, 0x3

    new-array v6, v6, [Lkotlin/Pair;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    const/4 v5, 0x2

    aput-object v3, v6, v5

    .line 282
    nop

    .line 281
    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    .local v3, "message$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 357
    .local v5, "$i$f$respondWithType":I
    instance-of v6, v3, Lio/ktor/http/content/OutgoingContent;

    if-nez v6, :cond_4

    instance-of v6, v3, [B

    if-nez v6, :cond_4

    .line 358
    invoke-interface {v2}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v6

    const/4 v7, 0x0

    .local v7, "$i$f$typeInfo":I
    const-class v8, Ljava/util/Map;

    sget-object v9, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v10

    invoke-virtual {v9, v10}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v9

    sget-object v10, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v11, Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v11

    invoke-virtual {v10, v11}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v8

    .line 359
    nop

    .line 360
    .local v8, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v8}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 361
    .local v9, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v10, Ljava/util/Map;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v9, v10, v8}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v7

    .line 358
    .end local v7    # "$i$f$typeInfo":I
    .end local v8    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v9    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v6, v7}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 362
    :cond_4
    invoke-interface {v2}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v6

    invoke-interface {v6}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v3

    check-cast v7, Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput v4, v1, Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$30;->label:I

    invoke-virtual {v6, v2, v7, v8}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v3    # "message$iv":Ljava/lang/Object;
    if-ne v2, v0, :cond_5

    .line 272
    return-object v0

    .line 362
    :cond_5
    move-object v0, v1

    move v1, v5

    .line 363
    .end local v5    # "$i$f$respondWithType":I
    .restart local v0    # "this":Lcom/hermesandroid/bridge/server/BridgeRouterKt$configureRouting$1$30;
    .local v1, "$i$f$respondWithType":I
    :goto_4
    nop

    .line 286
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
