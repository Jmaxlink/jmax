.class public final Lio/ktor/server/engine/DefaultEnginePipelineKt;
.super Ljava/lang/Object;
.source "DefaultEnginePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultEnginePipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultEnginePipeline.kt\nio/ktor/server/engine/DefaultEnginePipelineKt\n+ 2 ApplicationResponseFunctions.kt\nio/ktor/server/response/ApplicationResponseFunctionsKt\n+ 3 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,121:1\n26#2,2:122\n29#2,2:127\n17#3,3:124\n*S KotlinDebug\n*F\n+ 1 DefaultEnginePipeline.kt\nio/ktor/server/engine/DefaultEnginePipelineKt\n*L\n85#1:122,2\n85#1:127,2\n85#1:124,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u001a!\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u001a!\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u001a!\u0010\u000f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0005H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011\u001a\u001c\u0010\u0012\u001a\u00020\t*\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0013"
    }
    d2 = {
        "defaultEnginePipeline",
        "Lio/ktor/server/engine/EnginePipeline;",
        "environment",
        "Lio/ktor/server/application/ApplicationEnvironment;",
        "defaultExceptionStatusCode",
        "Lio/ktor/http/HttpStatusCode;",
        "cause",
        "",
        "handleFailure",
        "",
        "call",
        "Lio/ktor/server/application/ApplicationCall;",
        "error",
        "(Lio/ktor/server/application/ApplicationCall;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "logError",
        "tryRespondError",
        "statusCode",
        "(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/HttpStatusCode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "logFailure",
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
.method public static final synthetic access$logFailure(Lio/ktor/server/application/ApplicationEnvironment;Lio/ktor/server/application/ApplicationCall;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "$receiver"    # Lio/ktor/server/application/ApplicationEnvironment;
    .param p1, "call"    # Lio/ktor/server/application/ApplicationCall;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/server/engine/DefaultEnginePipelineKt;->logFailure(Lio/ktor/server/application/ApplicationEnvironment;Lio/ktor/server/application/ApplicationCall;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$tryRespondError(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/HttpStatusCode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "call"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "statusCode"    # Lio/ktor/http/HttpStatusCode;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/server/engine/DefaultEnginePipelineKt;->tryRespondError(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/HttpStatusCode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final defaultEnginePipeline(Lio/ktor/server/application/ApplicationEnvironment;)Lio/ktor/server/engine/EnginePipeline;
    .locals 4
    .param p0, "environment"    # Lio/ktor/server/application/ApplicationEnvironment;

    const-string v0, "environment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lio/ktor/server/engine/EnginePipeline;

    invoke-interface {p0}, Lio/ktor/server/application/ApplicationEnvironment;->getDevelopmentMode()Z

    move-result v1

    invoke-direct {v0, v1}, Lio/ktor/server/engine/EnginePipeline;-><init>(Z)V

    .line 30
    .local v0, "pipeline":Lio/ktor/server/engine/EnginePipeline;
    invoke-static {p0, v0}, Lio/ktor/server/engine/internal/ApplicationUtilsJvmKt;->configureShutdownUrl(Lio/ktor/server/application/ApplicationEnvironment;Lio/ktor/server/engine/EnginePipeline;)V

    .line 32
    sget-object v1, Lio/ktor/server/engine/EnginePipeline;->Companion:Lio/ktor/server/engine/EnginePipeline$Companion;

    invoke-virtual {v1}, Lio/ktor/server/engine/EnginePipeline$Companion;->getCall()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v1

    new-instance v2, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/ktor/server/engine/DefaultEnginePipelineKt$defaultEnginePipeline$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1, v2}, Lio/ktor/server/engine/EnginePipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 49
    return-object v0
.end method

.method public static final defaultExceptionStatusCode(Ljava/lang/Throwable;)Lio/ktor/http/HttpStatusCode;
    .locals 1
    .param p0, "cause"    # Ljava/lang/Throwable;

    const-string v0, "cause"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    nop

    .line 74
    instance-of v0, p0, Lio/ktor/server/plugins/BadRequestException;

    if-eqz v0, :cond_0

    sget-object v0, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpStatusCode$Companion;->getBadRequest()Lio/ktor/http/HttpStatusCode;

    move-result-object v0

    goto :goto_1

    .line 75
    :cond_0
    instance-of v0, p0, Lio/ktor/server/plugins/NotFoundException;

    if-eqz v0, :cond_1

    sget-object v0, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpStatusCode$Companion;->getNotFound()Lio/ktor/http/HttpStatusCode;

    move-result-object v0

    goto :goto_1

    .line 76
    :cond_1
    instance-of v0, p0, Lio/ktor/server/plugins/UnsupportedMediaTypeException;

    if-eqz v0, :cond_2

    sget-object v0, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpStatusCode$Companion;->getUnsupportedMediaType()Lio/ktor/http/HttpStatusCode;

    move-result-object v0

    goto :goto_1

    .line 77
    :cond_2
    instance-of v0, p0, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    :goto_0
    if-eqz v0, :cond_4

    sget-object v0, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpStatusCode$Companion;->getGatewayTimeout()Lio/ktor/http/HttpStatusCode;

    move-result-object v0

    goto :goto_1

    .line 78
    :cond_4
    const/4 v0, 0x0

    .line 73
    :goto_1
    return-object v0
.end method

.method public static final handleFailure(Lio/ktor/server/application/ApplicationCall;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/server/engine/DefaultEnginePipelineKt$handleFailure$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/server/engine/DefaultEnginePipelineKt$handleFailure$1;

    iget v1, v0, Lio/ktor/server/engine/DefaultEnginePipelineKt$handleFailure$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/server/engine/DefaultEnginePipelineKt$handleFailure$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/server/engine/DefaultEnginePipelineKt$handleFailure$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/engine/DefaultEnginePipelineKt$handleFailure$1;

    invoke-direct {v0, p2}, Lio/ktor/server/engine/DefaultEnginePipelineKt$handleFailure$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/server/engine/DefaultEnginePipelineKt$handleFailure$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 55
    iget v2, p2, Lio/ktor/server/engine/DefaultEnginePipelineKt$handleFailure$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    iget-object p0, p2, Lio/ktor/server/engine/DefaultEnginePipelineKt$handleFailure$1;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    .local p0, "error":Ljava/lang/Throwable;
    iget-object p1, p2, Lio/ktor/server/engine/DefaultEnginePipelineKt$handleFailure$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/server/application/ApplicationCall;

    .local p1, "call":Lio/ktor/server/application/ApplicationCall;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "error":Ljava/lang/Throwable;
    .end local p1    # "call":Lio/ktor/server/application/ApplicationCall;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    .local p0, "call":Lio/ktor/server/application/ApplicationCall;
    .local p1, "error":Ljava/lang/Throwable;
    iput-object p0, p2, Lio/ktor/server/engine/DefaultEnginePipelineKt$handleFailure$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lio/ktor/server/engine/DefaultEnginePipelineKt$handleFailure$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p2, Lio/ktor/server/engine/DefaultEnginePipelineKt$handleFailure$1;->label:I

    invoke-static {p0, p1, p2}, Lio/ktor/server/engine/DefaultEnginePipelineKt;->logError(Lio/ktor/server/application/ApplicationCall;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 55
    return-object v1

    .line 56
    :cond_1
    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    .line 57
    .local p0, "error":Ljava/lang/Throwable;
    .local p1, "call":Lio/ktor/server/application/ApplicationCall;
    :goto_1
    invoke-static {p0}, Lio/ktor/server/engine/DefaultEnginePipelineKt;->defaultExceptionStatusCode(Ljava/lang/Throwable;)Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    .end local p0    # "error":Ljava/lang/Throwable;
    .end local p1    # "call":Lio/ktor/server/application/ApplicationCall;
    if-nez p0, :cond_2

    sget-object p0, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {p0}, Lio/ktor/http/HttpStatusCode$Companion;->getInternalServerError()Lio/ktor/http/HttpStatusCode;

    move-result-object p0

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p2, Lio/ktor/server/engine/DefaultEnginePipelineKt$handleFailure$1;->L$0:Ljava/lang/Object;

    iput-object v2, p2, Lio/ktor/server/engine/DefaultEnginePipelineKt$handleFailure$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, p2, Lio/ktor/server/engine/DefaultEnginePipelineKt$handleFailure$1;->label:I

    invoke-static {p1, p0, p2}, Lio/ktor/server/engine/DefaultEnginePipelineKt;->tryRespondError(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/HttpStatusCode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    .line 55
    return-object v1

    .line 58
    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final logError(Lio/ktor/server/application/ApplicationCall;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "call"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 64
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/server/logging/LoggingKt;->getMdcProvider(Lio/ktor/server/application/Application;)Lio/ktor/server/logging/MDCProvider;

    move-result-object v0

    new-instance v1, Lio/ktor/server/engine/DefaultEnginePipelineKt$logError$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/ktor/server/engine/DefaultEnginePipelineKt$logError$2;-><init>(Lio/ktor/server/application/ApplicationCall;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p0, v1, p2}, Lio/ktor/server/logging/MDCProvider;->withMDCBlock(Lio/ktor/server/application/ApplicationCall;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 67
    return-object v0
.end method

.method private static final logFailure(Lio/ktor/server/application/ApplicationEnvironment;Lio/ktor/server/application/ApplicationCall;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "$this$logFailure"    # Lio/ktor/server/application/ApplicationEnvironment;
    .param p1, "call"    # Lio/ktor/server/application/ApplicationCall;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 92
    const-string v0, ": "

    .line 93
    :try_start_0
    invoke-interface {p1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v1

    invoke-interface {v1}, Lio/ktor/server/response/ApplicationResponse;->status()Lio/ktor/http/HttpStatusCode;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Unhandled"

    :goto_0
    check-cast v1, Ljava/lang/Comparable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .local v1, "status":Ljava/lang/Comparable;
    nop

    .line 95
    :try_start_1
    invoke-interface {p1}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v2

    invoke-static {v2}, Lio/ktor/server/logging/LoggingKt;->toLogString(Lio/ktor/server/request/ApplicationRequest;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 96
    :catchall_0
    move-exception v2

    .line 97
    .local v2, "cause":Ljava/lang/Throwable;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(request error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 94
    .end local v2    # "cause":Ljava/lang/Throwable;
    :goto_1
    nop

    .line 100
    .local v2, "logString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "infoString":Ljava/lang/String;
    nop

    .line 108
    nop

    .line 107
    nop

    .line 106
    nop

    .line 105
    nop

    .line 104
    nop

    .line 103
    nop

    .line 102
    instance-of v4, p2, Ljava/util/concurrent/CancellationException;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_2

    .line 103
    :cond_1
    instance-of v4, p2, Ljava/nio/channels/ClosedChannelException;

    :goto_2
    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_3

    .line 104
    :cond_2
    instance-of v4, p2, Lio/ktor/util/cio/ChannelIOException;

    :goto_3
    if-eqz v4, :cond_3

    move v4, v5

    goto :goto_4

    .line 105
    :cond_3
    instance-of v4, p2, Ljava/io/IOException;

    :goto_4
    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_5

    .line 106
    :cond_4
    instance-of v4, p2, Lio/ktor/server/plugins/BadRequestException;

    :goto_5
    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_6

    .line 107
    :cond_5
    instance-of v4, p2, Lio/ktor/server/plugins/NotFoundException;

    :goto_6
    if-eqz v4, :cond_6

    goto :goto_7

    .line 108
    :cond_6
    instance-of v5, p2, Lio/ktor/server/plugins/UnsupportedMediaTypeException;

    :goto_7
    if-eqz v5, :cond_7

    invoke-interface {p0}, Lio/ktor/server/application/ApplicationEnvironment;->getLog()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, v3, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 109
    :cond_7
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationEnvironment;->getLog()Lorg/slf4j/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1    # "status":Ljava/lang/Comparable;
    .end local v2    # "logString":Ljava/lang/String;
    .end local v3    # "infoString":Ljava/lang/String;
    goto :goto_8

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "oom":Ljava/lang/OutOfMemoryError;
    nop

    .line 113
    :try_start_3
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationEnvironment;->getLog()Lorg/slf4j/Logger;

    move-result-object v1

    invoke-static {v1, p2}, Lio/ktor/util/logging/LoggerKt;->error(Lorg/slf4j/Logger;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8

    .line 114
    :catch_1
    move-exception v1

    .line 115
    .local v1, "oomAttempt2":Ljava/lang/OutOfMemoryError;
    const-string v2, "OutOfMemoryError: "

    invoke-static {v2}, Lio/ktor/server/engine/internal/ApplicationUtilsJvmKt;->printError(Ljava/lang/Object;)V

    .line 116
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/ktor/server/engine/internal/ApplicationUtilsJvmKt;->printError(Ljava/lang/Object;)V

    .line 117
    const-string v2, "\n"

    invoke-static {v2}, Lio/ktor/server/engine/internal/ApplicationUtilsJvmKt;->printError(Ljava/lang/Object;)V

    .line 120
    .end local v0    # "oom":Ljava/lang/OutOfMemoryError;
    .end local v1    # "oomAttempt2":Ljava/lang/OutOfMemoryError;
    :goto_8
    return-void
.end method

.method private static final tryRespondError(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/HttpStatusCode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lio/ktor/http/HttpStatusCode;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/server/engine/DefaultEnginePipelineKt$tryRespondError$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/server/engine/DefaultEnginePipelineKt$tryRespondError$1;

    iget v1, v0, Lio/ktor/server/engine/DefaultEnginePipelineKt$tryRespondError$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/server/engine/DefaultEnginePipelineKt$tryRespondError$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/server/engine/DefaultEnginePipelineKt$tryRespondError$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/engine/DefaultEnginePipelineKt$tryRespondError$1;

    invoke-direct {v0, p2}, Lio/ktor/server/engine/DefaultEnginePipelineKt$tryRespondError$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/server/engine/DefaultEnginePipelineKt$tryRespondError$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 82
    iget v2, p2, Lio/ktor/server/engine/DefaultEnginePipelineKt$tryRespondError$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$respondWithType":I
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lio/ktor/server/engine/BaseApplicationResponse$ResponseAlreadySentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local p0    # "$i$f$respondWithType":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 83
    .local p0, "call":Lio/ktor/server/application/ApplicationCall;
    .local p1, "statusCode":Lio/ktor/http/HttpStatusCode;
    nop

    .line 84
    :try_start_1
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v2

    invoke-interface {v2}, Lio/ktor/server/response/ApplicationResponse;->status()Lio/ktor/http/HttpStatusCode;

    move-result-object v2

    if-nez v2, :cond_3

    .line 85
    nop

    .local p0, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 122
    .local v2, "$i$f$respondWithType":I
    instance-of v3, p1, Lio/ktor/http/content/OutgoingContent;

    if-nez v3, :cond_1

    instance-of v3, p1, [B

    if-nez v3, :cond_1

    .line 123
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    const/4 v4, 0x0

    .local v4, "$i$f$typeInfo":I
    const-class v5, Lio/ktor/http/HttpStatusCode;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 124
    nop

    .line 125
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 126
    .local v6, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v7, Lio/ktor/http/HttpStatusCode;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v7

    .line 123
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v3, v7}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 127
    :cond_1
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, p2, Lio/ktor/server/engine/DefaultEnginePipelineKt$tryRespondError$1;->label:I

    invoke-virtual {v3, p0, v4, p2}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Lio/ktor/server/engine/BaseApplicationResponse$ResponseAlreadySentException; {:try_start_1 .. :try_end_1} :catch_0

    .end local p0    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local p1    # "statusCode":Lio/ktor/http/HttpStatusCode;
    if-ne v3, v1, :cond_2

    .line 82
    return-object v1

    .line 127
    :cond_2
    move p0, v2

    .line 128
    .end local v2    # "$i$f$respondWithType":I
    .local p0, "$i$f$respondWithType":I
    :goto_1
    goto :goto_2

    .line 87
    .end local p0    # "$i$f$respondWithType":I
    :catch_0
    move-exception p0

    .line 89
    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
