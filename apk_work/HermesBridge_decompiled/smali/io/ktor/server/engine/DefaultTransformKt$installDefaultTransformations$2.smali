.class final Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;
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
    value = "SMAP\nDefaultTransform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultTransform.kt\nio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2\n+ 2 ApplicationCallPipeline.kt\nio/ktor/server/application/ApplicationCallPipelineKt\n+ 3 DefaultTransform.kt\nio/ktor/server/engine/DefaultTransformKt\n+ 4 Parameters.kt\nio/ktor/http/Parameters$Companion\n*L\n1#1,127:1\n75#2:128\n75#2:129\n75#2:138\n75#2:140\n75#2:141\n75#2:142\n98#3,8:130\n24#4:139\n*S KotlinDebug\n*F\n+ 1 DefaultTransform.kt\nio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2\n*L\n40#1:128\n44#1:129\n47#1:138\n72#1:140\n76#1:141\n77#1:142\n44#1:130,8\n52#1:139\n*E\n"
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
    c = "io.ktor.server.engine.DefaultTransformKt$installDefaultTransformations$2"
    f = "DefaultTransform.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2,
        0x3,
        0x3
    }
    l = {
        0x2a,
        0x2f,
        0x35,
        0x45,
        0x49
    }
    m = "invokeSuspend"
    n = {
        "$this$intercept",
        "body",
        "$this$intercept",
        "body",
        "$this$intercept",
        "body",
        "$this$intercept",
        "body"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;",
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

    new-instance v0, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;

    invoke-direct {v0, p3}, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$1:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/util/pipeline/PipelineContext;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->invoke(Lio/ktor/util/pipeline/PipelineContext;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 37
    move-object/from16 v1, p0

    iget v2, v1, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v0    # "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v2, p0

    .local v2, "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    iget-object v5, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$1:Ljava/lang/Object;

    .local v5, "body":Ljava/lang/Object;
    iget-object v6, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/util/pipeline/PipelineContext;

    .local v6, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    goto/16 :goto_4

    .end local v2    # "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "body":Ljava/lang/Object;
    .end local v6    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :pswitch_2
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "$i$f$build":I
    const/4 v6, 0x0

    .local v6, "$i$a$-build-DefaultTransformKt$installDefaultTransformations$2$transformed$1":I
    iget-object v7, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$2:Ljava/lang/Object;

    check-cast v7, Lio/ktor/http/ParametersBuilder;

    iget-object v8, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$1:Ljava/lang/Object;

    .local v8, "body":Ljava/lang/Object;
    iget-object v9, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$0:Ljava/lang/Object;

    check-cast v9, Lio/ktor/util/pipeline/PipelineContext;

    .local v9, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v2    # "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "$i$f$build":I
    .end local v6    # "$i$a$-build-DefaultTransformKt$installDefaultTransformations$2$transformed$1":I
    .end local v8    # "body":Ljava/lang/Object;
    .end local v9    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :pswitch_3
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget-object v5, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$1:Ljava/lang/Object;

    .local v5, "body":Ljava/lang/Object;
    iget-object v6, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/util/pipeline/PipelineContext;

    .local v6, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    goto/16 :goto_2

    .end local v2    # "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "body":Ljava/lang/Object;
    .end local v6    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :pswitch_4
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget-object v5, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$1:Ljava/lang/Object;

    .restart local v5    # "body":Ljava/lang/Object;
    iget-object v6, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/util/pipeline/PipelineContext;

    .restart local v6    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    goto/16 :goto_1

    .end local v2    # "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "body":Ljava/lang/Object;
    .end local v6    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget-object v5, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$0:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Lio/ktor/util/pipeline/PipelineContext;

    .restart local v6    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    iget-object v5, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$1:Ljava/lang/Object;

    .line 38
    .restart local v5    # "body":Ljava/lang/Object;
    instance-of v7, v5, Lio/ktor/utils/io/ByteReadChannel;

    if-eqz v7, :cond_0

    move-object v7, v5

    check-cast v7, Lio/ktor/utils/io/ByteReadChannel;

    goto :goto_0

    :cond_0
    move-object v7, v3

    :goto_0
    if-nez v7, :cond_1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 40
    .local v7, "channel":Lio/ktor/utils/io/ByteReadChannel;
    :cond_1
    move-object v8, v6

    .local v8, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v9, 0x0

    .line 128
    .local v9, "$i$f$getCall":I
    invoke-virtual {v8}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/ktor/server/application/ApplicationCall;

    .line 40
    .end local v8    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v9    # "$i$f$getCall":I
    invoke-static {v10}, Lio/ktor/server/application/ApplicationCallKt;->getReceiveType(Lio/ktor/server/application/ApplicationCall;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object v8

    .line 41
    const-class v9, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v7, v6

    move-object v6, v5

    move-object v5, v3

    goto/16 :goto_4

    .line 42
    :cond_2
    const-class v9, [B

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_4

    move-object v8, v2

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v6, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$1:Ljava/lang/Object;

    iput v11, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->label:I

    invoke-static {v7, v10, v8, v11, v3}, Lio/ktor/util/cio/ReadersKt;->toByteArray$default(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "channel":Lio/ktor/utils/io/ByteReadChannel;
    if-ne v7, v0, :cond_3

    .line 37
    return-object v0

    .line 42
    :cond_3
    move-object/from16 v16, v5

    move-object v5, v4

    move-object v4, v7

    move-object v7, v6

    move-object/from16 v6, v16

    .end local v4    # "$result":Ljava/lang/Object;
    .local v5, "$result":Ljava/lang/Object;
    .local v6, "body":Ljava/lang/Object;
    .local v7, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :goto_1
    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v4, v16

    goto/16 :goto_4

    .line 43
    .restart local v4    # "$result":Ljava/lang/Object;
    .local v5, "body":Ljava/lang/Object;
    .local v6, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .local v7, "channel":Lio/ktor/utils/io/ByteReadChannel;
    :cond_4
    const-class v9, Lio/ktor/http/Parameters;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 44
    move-object v8, v6

    .restart local v8    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v9, 0x0

    .line 129
    .restart local v9    # "$i$f$getCall":I
    invoke-virtual {v8}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v12

    move-object v8, v12

    check-cast v8, Lio/ktor/server/application/ApplicationCall;

    .line 44
    .end local v9    # "$i$f$getCall":I
    .local v8, "call$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v9, 0x0

    .line 130
    .local v9, "$i$f$withContentType":I
    nop

    .line 131
    const/4 v12, 0x0

    .line 44
    .local v12, "$i$a$-withContentType-DefaultTransformKt$installDefaultTransformations$2$transformed$contentType$1":I
    move-object v13, v6

    .local v13, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v14, 0x0

    .line 129
    .local v14, "$i$f$getCall":I
    :try_start_0
    invoke-virtual {v13}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lio/ktor/server/application/ApplicationCall;

    .line 44
    .end local v13    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v14    # "$i$f$getCall":I
    invoke-interface {v15}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v13

    invoke-static {v13}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->contentType(Lio/ktor/server/request/ApplicationRequest;)Lio/ktor/http/ContentType;

    move-result-object v13
    :try_end_0
    .catch Lio/ktor/http/BadContentTypeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v12    # "$i$a$-withContentType-DefaultTransformKt$installDefaultTransformations$2$transformed$contentType$1":I
    nop

    .line 137
    nop

    .line 44
    .end local v8    # "call$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v9    # "$i$f$withContentType":I
    move-object v8, v13

    .line 45
    .local v8, "contentType":Lio/ktor/http/ContentType;
    nop

    .line 46
    sget-object v9, Lio/ktor/http/ContentType$Application;->INSTANCE:Lio/ktor/http/ContentType$Application;

    invoke-virtual {v9}, Lio/ktor/http/ContentType$Application;->getFormUrlEncoded()Lio/ktor/http/ContentType;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/ktor/http/ContentType;->match(Lio/ktor/http/ContentType;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 47
    .end local v8    # "contentType":Lio/ktor/http/ContentType;
    move-object v8, v6

    .end local v7    # "channel":Lio/ktor/utils/io/ByteReadChannel;
    .local v8, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v9, 0x0

    .line 138
    .local v9, "$i$f$getCall":I
    invoke-virtual {v8}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/ktor/server/application/ApplicationCall;

    .line 47
    .end local v8    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v9    # "$i$f$getCall":I
    invoke-interface {v10}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v8

    invoke-static {v8}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->contentCharset(Lio/ktor/server/request/ApplicationRequest;)Ljava/nio/charset/Charset;

    move-result-object v8

    if-nez v8, :cond_5

    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_5
    move-object v9, v2

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v6, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$1:Ljava/lang/Object;

    const/4 v10, 0x2

    iput v10, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->label:I

    invoke-static {v7, v8, v9}, Lio/ktor/server/engine/DefaultTransformKt;->readText(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_6

    .line 37
    return-object v0

    .line 47
    :cond_6
    move-object/from16 v16, v5

    move-object v5, v4

    move-object v4, v7

    move-object v7, v6

    move-object/from16 v6, v16

    .line 37
    .end local v4    # "$result":Ljava/lang/Object;
    .local v5, "$result":Ljava/lang/Object;
    .local v6, "body":Ljava/lang/Object;
    .local v7, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :goto_2
    check-cast v4, Ljava/lang/String;

    .line 48
    .local v4, "string":Ljava/lang/String;
    const/16 v12, 0xe

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v4

    invoke-static/range {v8 .. v13}, Lio/ktor/http/QueryKt;->parseQueryString$default(Ljava/lang/String;IIZILjava/lang/Object;)Lio/ktor/http/Parameters;

    move-result-object v4

    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v4, v16

    .end local v4    # "string":Ljava/lang/String;
    goto/16 :goto_4

    .line 51
    .local v4, "$result":Ljava/lang/Object;
    .local v5, "body":Ljava/lang/Object;
    .local v6, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .local v7, "channel":Lio/ktor/utils/io/ByteReadChannel;
    .local v8, "contentType":Lio/ktor/http/ContentType;
    :cond_7
    sget-object v9, Lio/ktor/http/ContentType$MultiPart;->INSTANCE:Lio/ktor/http/ContentType$MultiPart;

    invoke-virtual {v9}, Lio/ktor/http/ContentType$MultiPart;->getFormData()Lio/ktor/http/ContentType;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/ktor/http/ContentType;->match(Lio/ktor/http/ContentType;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 52
    .end local v8    # "contentType":Lio/ktor/http/ContentType;
    sget-object v8, Lio/ktor/http/Parameters;->Companion:Lio/ktor/http/Parameters$Companion;

    const/4 v8, 0x0

    .line 139
    .local v8, "$i$f$build":I
    invoke-static {v10, v11, v3}, Lio/ktor/http/ParametersKt;->ParametersBuilder$default(IILjava/lang/Object;)Lio/ktor/http/ParametersBuilder;

    move-result-object v9

    move-object v10, v9

    .local v10, "$this$invokeSuspend_u24lambda_u241":Lio/ktor/http/ParametersBuilder;
    const/4 v11, 0x0

    .line 53
    .local v11, "$i$a$-build-DefaultTransformKt$installDefaultTransformations$2$transformed$1":I
    invoke-static {v6, v7}, Lio/ktor/server/engine/DefaultTransformJvmKt;->multiPartData(Lio/ktor/util/pipeline/PipelineContext;Lio/ktor/utils/io/ByteReadChannel;)Lio/ktor/http/content/MultiPartData;

    move-result-object v12

    new-instance v13, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2$transformed$1$1;

    invoke-direct {v13, v10, v3}, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2$transformed$1$1;-><init>(Lio/ktor/http/ParametersBuilder;Lkotlin/coroutines/Continuation;)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    iput-object v6, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$1:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$2:Ljava/lang/Object;

    const/4 v14, 0x3

    iput v14, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->label:I

    invoke-static {v12, v13, v2}, Lio/ktor/http/content/MultipartKt;->forEachPart(Lio/ktor/http/content/MultiPartData;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "channel":Lio/ktor/utils/io/ByteReadChannel;
    .end local v10    # "$this$invokeSuspend_u24lambda_u241":Lio/ktor/http/ParametersBuilder;
    if-ne v7, v0, :cond_8

    .line 37
    return-object v0

    .line 53
    :cond_8
    move-object v7, v9

    move-object v9, v6

    move v6, v11

    move/from16 v16, v8

    move-object v8, v5

    move/from16 v5, v16

    .line 62
    .end local v11    # "$i$a$-build-DefaultTransformKt$installDefaultTransformations$2$transformed$1":I
    .local v5, "$i$f$build":I
    .local v6, "$i$a$-build-DefaultTransformKt$installDefaultTransformations$2$transformed$1":I
    .local v8, "body":Ljava/lang/Object;
    .local v9, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :goto_3
    nop

    .line 139
    .end local v6    # "$i$a$-build-DefaultTransformKt$installDefaultTransformations$2$transformed$1":I
    invoke-interface {v7}, Lio/ktor/http/ParametersBuilder;->build()Lio/ktor/http/Parameters;

    move-result-object v5

    move-object v6, v8

    move-object v7, v9

    .end local v5    # "$i$f$build":I
    goto :goto_4

    .line 65
    .end local v8    # "body":Ljava/lang/Object;
    .end local v9    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .local v5, "body":Ljava/lang/Object;
    .local v6, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :cond_9
    move-object v7, v6

    move-object v6, v5

    move-object v5, v3

    goto :goto_4

    .line 132
    .end local v5    # "body":Ljava/lang/Object;
    .end local v6    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .local v8, "call$iv":Lio/ktor/server/application/ApplicationCall;
    .local v9, "$i$f$withContentType":I
    :catch_0
    move-exception v0

    .line 133
    .local v0, "parseFailure$iv":Lio/ktor/http/BadContentTypeFormatException;
    new-instance v3, Lio/ktor/server/plugins/BadRequestException;

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal Content-Type header format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v8}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v6

    invoke-interface {v6}, Lio/ktor/server/request/ApplicationRequest;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v6

    sget-object v7, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v7}, Lio/ktor/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lio/ktor/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    .line 133
    invoke-direct {v3, v5, v6}, Lio/ktor/server/plugins/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 69
    .end local v0    # "parseFailure$iv":Lio/ktor/http/BadContentTypeFormatException;
    .end local v8    # "call$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v9    # "$i$f$withContentType":I
    .restart local v5    # "body":Ljava/lang/Object;
    .restart local v6    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :cond_a
    move-object v7, v2

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v6, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$1:Ljava/lang/Object;

    const/4 v8, 0x4

    iput v8, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->label:I

    invoke-static {v6, v5, v7}, Lio/ktor/server/engine/DefaultTransformJvmKt;->defaultPlatformTransformations(Lio/ktor/util/pipeline/PipelineContext;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_b

    .line 37
    return-object v0

    .line 69
    :cond_b
    move-object/from16 v16, v6

    move-object v6, v5

    move-object v5, v7

    move-object/from16 v7, v16

    .line 40
    .end local v5    # "body":Ljava/lang/Object;
    .local v6, "body":Ljava/lang/Object;
    .local v7, "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :goto_4
    nop

    .line 71
    .local v5, "transformed":Ljava/lang/Object;
    if-eqz v5, :cond_d

    .line 72
    invoke-static {}, Lio/ktor/server/engine/DefaultTransformKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Transformed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v6, v7

    .local v6, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v10, 0x0

    .line 140
    .local v10, "$i$f$getCall":I
    invoke-virtual {v6}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/ktor/server/application/ApplicationCall;

    .line 72
    .end local v6    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v10    # "$i$f$getCall":I
    invoke-interface {v11}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v6

    invoke-static {v6}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->getUri(Lio/ktor/server/request/ApplicationRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 73
    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v3, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$0:Ljava/lang/Object;

    iput-object v3, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$1:Ljava/lang/Object;

    iput-object v3, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->L$2:Ljava/lang/Object;

    const/4 v3, 0x5

    iput v3, v2, Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;->label:I

    invoke-virtual {v7, v5, v6}, Lio/ktor/util/pipeline/PipelineContext;->proceedWith(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v5    # "transformed":Ljava/lang/Object;
    .end local v7    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    if-ne v3, v0, :cond_c

    .line 37
    return-object v0

    .line 73
    :cond_c
    move-object v0, v2

    move-object v2, v4

    .end local v4    # "$result":Ljava/lang/Object;
    .local v0, "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;
    .local v2, "$result":Ljava/lang/Object;
    :goto_5
    move-object v4, v2

    move-object v2, v0

    goto :goto_6

    .line 75
    .end local v0    # "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;
    .local v2, "this":Lio/ktor/server/engine/DefaultTransformKt$installDefaultTransformations$2;
    .restart local v4    # "$result":Ljava/lang/Object;
    .local v6, "body":Ljava/lang/Object;
    .restart local v7    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    :cond_d
    invoke-static {}, Lio/ktor/server/engine/DefaultTransformKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object v0

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Default Transformations found for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and expected type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v5, v7

    .end local v6    # "body":Ljava/lang/Object;
    .local v5, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v6, 0x0

    .line 141
    .local v6, "$i$f$getCall":I
    invoke-virtual {v5}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/ktor/server/application/ApplicationCall;

    .line 76
    .end local v5    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v6    # "$i$f$getCall":I
    invoke-static {v8}, Lio/ktor/server/application/ApplicationCallKt;->getReceiveType(Lio/ktor/server/application/ApplicationCall;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " for call "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 77
    move-object v5, v7

    .end local v7    # "$this$intercept":Lio/ktor/util/pipeline/PipelineContext;
    .restart local v5    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v6, 0x0

    .line 142
    .restart local v6    # "$i$f$getCall":I
    invoke-virtual {v5}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/ktor/server/application/ApplicationCall;

    .line 77
    .end local v5    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v6    # "$i$f$getCall":I
    invoke-interface {v7}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v5

    invoke-static {v5}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->getUri(Lio/ktor/server/request/ApplicationRequest;)Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 80
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
