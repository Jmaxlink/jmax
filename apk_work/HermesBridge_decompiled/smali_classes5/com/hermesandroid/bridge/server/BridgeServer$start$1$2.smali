.class final Lcom/hermesandroid/bridge/server/BridgeServer$start$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BridgeServer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/server/BridgeServer$start$1;->invoke(Lio/ktor/server/application/Application;)V
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
    value = "SMAP\nBridgeServer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BridgeServer.kt\ncom/hermesandroid/bridge/server/BridgeServer$start$1$2\n+ 2 ApplicationCallPipeline.kt\nio/ktor/server/application/ApplicationCallPipelineKt\n+ 3 ApplicationResponseFunctions.kt\nio/ktor/server/response/ApplicationResponseFunctionsKt\n+ 4 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,50:1\n75#2:51\n75#2:52\n75#2:53\n60#3,2:54\n26#3,2:56\n29#3,2:61\n62#3:63\n17#4,3:58\n*S KotlinDebug\n*F\n+ 1 BridgeServer.kt\ncom/hermesandroid/bridge/server/BridgeServer$start$1$2\n*L\n27#1:51\n32#1:52\n34#1:53\n34#1:54,2\n34#1:56,2\n34#1:61,2\n34#1:63\n34#1:58,3\n*E\n"
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
    c = "com.hermesandroid.bridge.server.BridgeServer$start$1$2"
    f = "BridgeServer.kt"
    i = {
        0x0
    }
    l = {
        0x3d
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
            "Lcom/hermesandroid/bridge/server/BridgeServer$start$1$2;",
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

    new-instance v0, Lcom/hermesandroid/bridge/server/BridgeServer$start$1$2;

    invoke-direct {v0, p3}, Lcom/hermesandroid/bridge/server/BridgeServer$start$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/hermesandroid/bridge/server/BridgeServer$start$1$2;->L$0:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/server/BridgeServer$start$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/util/pipeline/PipelineContext;

    check-cast p2, Lkotlin/Unit;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hermesandroid/bridge/server/BridgeServer$start$1$2;->invoke(Lio/ktor/util/pipeline/PipelineContext;Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 26
    iget v1, p0, Lcom/hermesandroid/bridge/server/BridgeServer$start$1$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/hermesandroid/bridge/server/BridgeServer$start$1$2;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$f$respondWithType":I
    const/4 v2, 0x0

    .local v2, "$i$f$respondWithType":I
    iget-object v3, v0, Lcom/hermesandroid/bridge/server/BridgeServer$start$1$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/util/pipeline/PipelineContext;

    .local v3, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_0

    .end local v0    # "this":Lcom/hermesandroid/bridge/server/BridgeServer$start$1$2;
    .end local v1    # "$i$f$respondWithType":I
    .end local v2    # "$i$f$respondWithType":I
    .end local v3    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lcom/hermesandroid/bridge/server/BridgeServer$start$1$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/hermesandroid/bridge/server/BridgeServer$start$1$2;->L$0:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lio/ktor/util/pipeline/PipelineContext;

    .line 27
    .restart local v3    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    move-object v2, v3

    .local v2, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v4, 0x0

    .line 51
    .local v4, "$i$f$getCall":I
    invoke-virtual {v2}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/ktor/server/application/ApplicationCall;

    .line 27
    .end local v2    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v4    # "$i$f$getCall":I
    invoke-interface {v5}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v2

    invoke-static {v2}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->path(Lio/ktor/server/request/ApplicationRequest;)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "path":Ljava/lang/String;
    const-string v4, "/ping"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 32
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    move-object v2, v3

    .local v2, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v4, 0x0

    .line 52
    .restart local v4    # "$i$f$getCall":I
    invoke-virtual {v2}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/ktor/server/application/ApplicationCall;

    .line 32
    .end local v2    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v4    # "$i$f$getCall":I
    invoke-interface {v5}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v2

    sget-object v4, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v4}, Lio/ktor/http/HttpHeaders;->getAuthorization()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->header(Lio/ktor/server/request/ApplicationRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "authHeader":Ljava/lang/String;
    sget-object v4, Lcom/hermesandroid/bridge/auth/PairingManager;->INSTANCE:Lcom/hermesandroid/bridge/auth/PairingManager;

    invoke-virtual {v4, v2}, Lcom/hermesandroid/bridge/auth/PairingManager;->validateToken(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 34
    .end local v2    # "authHeader":Ljava/lang/String;
    move-object v2, v3

    .local v2, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v4, 0x0

    .line 53
    .restart local v4    # "$i$f$getCall":I
    invoke-virtual {v2}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lio/ktor/server/application/ApplicationCall;

    .line 34
    .end local v4    # "$i$f$getCall":I
    .local v2, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    sget-object v4, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v4}, Lio/ktor/http/HttpStatusCode$Companion;->getUnauthorized()Lio/ktor/http/HttpStatusCode;

    move-result-object v4

    .line 35
    .local v4, "status$iv":Lio/ktor/http/HttpStatusCode;
    const-string v5, "error"

    const-string v6, "Invalid or missing pairing code"

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 36
    const-string v6, "hint"

    const-string v7, "Set ANDROID_BRIDGE_TOKEN to the code shown in the Hermes Bridge app"

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Lkotlin/Pair;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v5, 0x1

    aput-object v6, v7, v5

    .line 35
    nop

    .line 34
    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    .local v6, "message$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 54
    .local v7, "$i$f$respondWithType":I
    invoke-interface {v2}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v8

    invoke-interface {v8, v4}, Lio/ktor/server/response/ApplicationResponse;->status(Lio/ktor/http/HttpStatusCode;)V

    .line 55
    .end local v4    # "status$iv":Lio/ktor/http/HttpStatusCode;
    nop

    .local v2, "$this$respond$iv$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v4, 0x0

    .line 56
    .local v4, "$i$f$respondWithType":I
    instance-of v8, v6, Lio/ktor/http/content/OutgoingContent;

    if-nez v8, :cond_1

    instance-of v8, v6, [B

    if-nez v8, :cond_1

    .line 57
    invoke-interface {v2}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v8

    const/4 v9, 0x0

    .local v9, "$i$f$typeInfo":I
    const-class v10, Ljava/util/Map;

    sget-object v11, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v12

    invoke-virtual {v11, v12}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v11

    sget-object v12, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v13

    invoke-virtual {v12, v13}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v10

    .line 58
    nop

    .line 59
    .local v10, "kType$iv$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v10}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v11

    .line 60
    .local v11, "reifiedType$iv$iv$iv":Ljava/lang/reflect/Type;
    const-class v12, Ljava/util/Map;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v11, v12, v10}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v9

    .line 57
    .end local v9    # "$i$f$typeInfo":I
    .end local v10    # "kType$iv$iv$iv":Lkotlin/reflect/KType;
    .end local v11    # "reifiedType$iv$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v8, v9}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 61
    :cond_1
    invoke-interface {v2}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v8

    invoke-interface {v8}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v6

    check-cast v9, Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Lcom/hermesandroid/bridge/server/BridgeServer$start$1$2;->L$0:Ljava/lang/Object;

    iput v5, v1, Lcom/hermesandroid/bridge/server/BridgeServer$start$1$2;->label:I

    invoke-virtual {v8, v2, v9, v10}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$respond$iv$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v6    # "message$iv":Ljava/lang/Object;
    if-ne v2, v0, :cond_2

    .line 26
    return-object v0

    .line 61
    :cond_2
    move-object v0, v1

    move v2, v4

    move v1, v7

    .line 62
    .end local v4    # "$i$f$respondWithType":I
    .end local v7    # "$i$f$respondWithType":I
    .restart local v0    # "this":Lcom/hermesandroid/bridge/server/BridgeServer$start$1$2;
    .local v1, "$i$f$respondWithType":I
    .local v2, "$i$f$respondWithType":I
    :goto_0
    nop

    .line 63
    .end local v2    # "$i$f$respondWithType":I
    nop

    .line 38
    .end local v1    # "$i$f$respondWithType":I
    invoke-virtual {v3}, Lio/ktor/util/pipeline/PipelineContext;->finish()V

    move-object v1, v0

    .line 40
    .end local v0    # "this":Lcom/hermesandroid/bridge/server/BridgeServer$start$1$2;
    .end local v3    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .local v1, "this":Lcom/hermesandroid/bridge/server/BridgeServer$start$1$2;
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
