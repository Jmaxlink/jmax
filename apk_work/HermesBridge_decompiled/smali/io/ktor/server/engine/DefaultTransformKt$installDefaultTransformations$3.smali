.class final Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultTransform.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/DefaultTransformKt;->installDefaultTransformations(Lio/ktor/server/request/ApplicationReceivePipeline;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultTransform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultTransform.kt\nio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3\n+ 2 ApplicationCallPipeline.kt\nio/ktor/server/application/ApplicationCallPipelineKt\n+ 3 DefaultTransform.kt\nio/ktor/server/engine/DefaultTransformKt\n*L\n1#1,127:1\n75#2:128\n75#2:129\n98#3,8:130\n*S KotlinDebug\n*F\n+ 1 DefaultTransform.kt\nio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3\n*L\n85#1:128\n86#1:129\n86#1:130,8\n*E\n"
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
        "body"
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
    c = "io.ktor.server.engine.DefaultTransformKt$installDefaultTransformations$3"
    f = "DefaultTransform.kt"
    i = {
        0x0
    }
    l = {
        0x57,
        0x58
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
            "Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;",
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

    new-instance v0, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;

    invoke-direct {v0, p3}, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;->L$1:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/util/pipeline/PipelineContext;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;->invoke(Lio/ktor/util/pipeline/PipelineContext;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 83
    iget v1, p0, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v0    # "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/util/pipeline/PipelineContext;

    .local v3, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v1

    move-object v1, p1

    goto/16 :goto_1

    .end local v1    # "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;
    .end local v3    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/util/pipeline/PipelineContext;

    .restart local v3    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    iget-object v4, v1, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;->L$1:Ljava/lang/Object;

    .line 84
    .local v4, "body":Ljava/lang/Object;
    instance-of v5, v4, Lio/ktor/utils/io/ByteReadChannel;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lio/ktor/utils/io/ByteReadChannel;

    goto :goto_0

    :cond_0
    move-object v5, v2

    .end local v4    # "body":Ljava/lang/Object;
    :goto_0
    if-nez v5, :cond_1

    .end local v3    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .restart local v3    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :cond_1
    move-object v4, v5

    .line 85
    .local v4, "channel":Lio/ktor/utils/io/ByteReadChannel;
    move-object v5, v3

    .local v5, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v6, 0x0

    .line 128
    .local v6, "$i$f$getCall":I
    invoke-virtual {v5}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/ktor/server/application/ApplicationCall;

    .line 85
    .end local v5    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v6    # "$i$f$getCall":I
    invoke-static {v7}, Lio/ktor/server/application/ApplicationCallKt;->getReceiveType(Lio/ktor/server/application/ApplicationCall;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v5

    invoke-virtual {v5}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 86
    :cond_2
    move-object v5, v3

    .restart local v5    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v6, 0x0

    .line 129
    .restart local v6    # "$i$f$getCall":I
    invoke-virtual {v5}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/ktor/server/application/ApplicationCall;

    .line 86
    .end local v5    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v6    # "$i$f$getCall":I
    move-object v5, v7

    .local v5, "call$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v6, 0x0

    .line 130
    .local v6, "$i$f$withContentType":I
    nop

    .line 131
    const/4 v7, 0x0

    .line 86
    .local v7, "$i$a$-withContentType-DefaultTransformKt$installDefaultTransformations$3$charset$1":I
    move-object v8, v3

    .local v8, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v9, 0x0

    .line 129
    .local v9, "$i$f$getCall":I
    :try_start_0
    invoke-virtual {v8}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/ktor/server/application/ApplicationCall;

    .line 86
    .end local v8    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v9    # "$i$f$getCall":I
    invoke-interface {v10}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v8

    invoke-static {v8}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->contentCharset(Lio/ktor/server/request/ApplicationRequest;)Ljava/nio/charset/Charset;

    move-result-object v8
    :try_end_0
    .catch Lio/ktor/http/BadContentTypeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v7    # "$i$a$-withContentType-DefaultTransformKt$installDefaultTransformations$3$charset$1":I
    nop

    .line 137
    nop

    .line 86
    .end local v5    # "call$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v6    # "$i$f$withContentType":I
    if-nez v8, :cond_3

    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_3
    move-object v5, v8

    .line 87
    .local v5, "charset":Ljava/nio/charset/Charset;
    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;->L$0:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v1, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;->label:I

    invoke-static {v4, v5, v6}, Lio/ktor/server/engine/DefaultTransformKt;->readText(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "channel":Lio/ktor/utils/io/ByteReadChannel;
    .end local v5    # "charset":Ljava/nio/charset/Charset;
    if-ne v4, v0, :cond_4

    .line 83
    return-object v0

    .line 87
    :cond_4
    move-object v11, v1

    move-object v1, p1

    move-object p1, v4

    move-object v4, v3

    move-object v3, v11

    .line 83
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v3, "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;
    .local v4, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 88
    .local p1, "text":Ljava/lang/String;
    move-object v5, v3

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v2, v3, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;->L$0:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v3, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;->label:I

    invoke-virtual {v4, p1, v5}, Lio/ktor/util/pipeline/PipelineContext;->proceedWith(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v4    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .end local p1    # "text":Ljava/lang/String;
    if-ne p1, v0, :cond_5

    .line 83
    return-object v0

    .line 88
    :cond_5
    move-object p1, v1

    move-object v0, v3

    .line 89
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v3    # "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;
    .restart local v0    # "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;
    .local p1, "$result":Ljava/lang/Object;
    :goto_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 132
    .end local v0    # "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;
    .local v1, "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$3;
    .local v5, "call$iv":Lio/ktor/server/application/ApplicationCall;
    .restart local v6    # "$i$f$withContentType":I
    :catch_0
    move-exception v0

    .line 133
    .local v0, "parseFailure$iv":Lio/ktor/http/BadContentTypeFormatException;
    new-instance v2, Lio/ktor/server/plugins/BadRequestException;

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal Content-Type header format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v4

    invoke-interface {v4}, Lio/ktor/server/request/ApplicationRequest;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v4

    sget-object v7, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v7}, Lio/ktor/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lio/ktor/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    .line 133
    invoke-direct {v2, v3, v4}, Lio/ktor/server/plugins/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
