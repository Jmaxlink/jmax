.class public final Lio/ktor/server/routing/RegexRoutingKt$patch$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RegexRouting.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/routing/RegexRoutingKt;->patchTypedPath(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;Lkotlin/jvm/functions/Function3;)Lio/ktor/server/routing/Route;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
    value = "SMAP\nRegexRouting.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegexRouting.kt\nio/ktor/server/routing/RegexRoutingKt$patch$2\n+ 2 ApplicationCallPipeline.kt\nio/ktor/server/application/ApplicationCallPipelineKt\n+ 3 ApplicationReceiveFunctions.kt\nio/ktor/server/request/ApplicationReceiveFunctionsKt\n+ 4 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,285:1\n75#2:286\n68#3:287\n69#3:291\n17#4,3:288\n*S KotlinDebug\n*F\n+ 1 RegexRouting.kt\nio/ktor/server/routing/RegexRoutingKt$patch$2\n*L\n197#1:286\n197#1:287\n197#1:291\n197#1:288,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
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
    xi = 0xb0
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.server.routing.RegexRoutingKt$patch$2"
    f = "RegexRouting.kt"
    i = {}
    l = {
        0x11f,
        0xc5
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $body:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;TR;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-TR;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/routing/RegexRoutingKt$patch$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/routing/RegexRoutingKt$patch$2;->$body:Lkotlin/jvm/functions/Function3;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lio/ktor/server/routing/RegexRoutingKt$patch$2;

    iget-object v1, p0, Lio/ktor/server/routing/RegexRoutingKt$patch$2;->$body:Lkotlin/jvm/functions/Function3;

    invoke-direct {v0, v1, p3}, Lio/ktor/server/routing/RegexRoutingKt$patch$2;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/server/routing/RegexRoutingKt$patch$2;->L$0:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/routing/RegexRoutingKt$patch$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/util/pipeline/PipelineContext;

    check-cast p2, Lkotlin/Unit;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/server/routing/RegexRoutingKt$patch$2;->invoke(Lio/ktor/util/pipeline/PipelineContext;Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 196
    move-object/from16 v1, p0

    iget v2, v1, Lio/ktor/server/routing/RegexRoutingKt$patch$2;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v6, "R"

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v0, p0

    .local v0, "this":Lio/ktor/server/routing/RegexRoutingKt$patch$2;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v0    # "this":Lio/ktor/server/routing/RegexRoutingKt$patch$2;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v2, p0

    .local v2, "this":Lio/ktor/server/routing/RegexRoutingKt$patch$2;
    move-object/from16 v7, p1

    .local v7, "$result":Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "$i$f$receive":I
    iget-object v9, v2, Lio/ktor/server/routing/RegexRoutingKt$patch$2;->L$1:Ljava/lang/Object;

    check-cast v9, Lio/ktor/util/pipeline/PipelineContext;

    iget-object v10, v2, Lio/ktor/server/routing/RegexRoutingKt$patch$2;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function3;

    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v11, v8

    move-object v8, v7

    goto :goto_0

    .end local v2    # "this":Lio/ktor/server/routing/RegexRoutingKt$patch$2;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v8    # "$i$f$receive":I
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/server/routing/RegexRoutingKt$patch$2;
    move-object/from16 v7, p1

    .restart local v7    # "$result":Ljava/lang/Object;
    iget-object v8, v2, Lio/ktor/server/routing/RegexRoutingKt$patch$2;->L$0:Ljava/lang/Object;

    move-object v9, v8

    check-cast v9, Lio/ktor/util/pipeline/PipelineContext;

    .line 197
    .local v9, "$this$patch":Lio/ktor/util/pipeline/PipelineContext;
    iget-object v10, v2, Lio/ktor/server/routing/RegexRoutingKt$patch$2;->$body:Lkotlin/jvm/functions/Function3;

    move-object v8, v9

    .end local v9    # "$this$patch":Lio/ktor/util/pipeline/PipelineContext;
    .local v8, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v11, 0x0

    .line 286
    .local v11, "$i$f$getCall":I
    invoke-virtual {v8}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v12

    move-object v8, v12

    check-cast v8, Lio/ktor/server/application/ApplicationCall;

    .line 197
    .end local v11    # "$i$f$getCall":I
    .local v8, "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v11, 0x0

    .line 287
    .local v11, "$i$f$receive":I
    const/4 v12, 0x0

    .end local v8    # "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    .local v12, "$i$f$typeInfo":I
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 288
    move-object v13, v5

    .line 289
    .local v13, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v13}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v14

    .line 290
    .local v14, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v15, Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    invoke-static {v14, v15, v13}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v12

    .line 287
    .end local v12    # "$i$f$typeInfo":I
    .end local v13    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v14    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    move-object v13, v2

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput-object v10, v2, Lio/ktor/server/routing/RegexRoutingKt$patch$2;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/server/routing/RegexRoutingKt$patch$2;->L$1:Ljava/lang/Object;

    const/4 v14, 0x1

    iput v14, v2, Lio/ktor/server/routing/RegexRoutingKt$patch$2;->label:I

    invoke-static {v8, v12, v13}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->receiveNullable(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_0

    .line 196
    return-object v0

    .line 287
    :cond_0
    :goto_0
    if-eqz v8, :cond_2

    .line 197
    .end local v11    # "$i$f$receive":I
    iput-object v5, v2, Lio/ktor/server/routing/RegexRoutingKt$patch$2;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/server/routing/RegexRoutingKt$patch$2;->L$1:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v2, Lio/ktor/server/routing/RegexRoutingKt$patch$2;->label:I

    invoke-interface {v10, v9, v8, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1

    .line 196
    return-object v0

    .line 197
    :cond_1
    move-object v0, v2

    move-object v2, v7

    .line 198
    .end local v7    # "$result":Ljava/lang/Object;
    .restart local v0    # "this":Lio/ktor/server/routing/RegexRoutingKt$patch$2;
    .local v2, "$result":Ljava/lang/Object;
    :goto_1
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    .line 291
    .end local v0    # "this":Lio/ktor/server/routing/RegexRoutingKt$patch$2;
    .local v2, "this":Lio/ktor/server/routing/RegexRoutingKt$patch$2;
    .restart local v7    # "$result":Ljava/lang/Object;
    .restart local v11    # "$i$f$receive":I
    :cond_2
    new-instance v0, Lio/ktor/server/plugins/CannotTransformContentToTypeException;

    const/4 v8, 0x0

    .local v8, "$i$f$typeInfo":I
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 288
    move-object v4, v5

    .line 289
    .local v4, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v4}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 290
    .local v5, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v5, v3, v4}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v3

    .line 291
    .end local v4    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v5    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    .end local v8    # "$i$f$typeInfo":I
    invoke-virtual {v3}, Lio/ktor/util/reflect/TypeInfo;->getKotlinType()Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v3}, Lio/ktor/server/plugins/CannotTransformContentToTypeException;-><init>(Lkotlin/reflect/KType;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend$$forInline(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lio/ktor/server/routing/RegexRoutingKt$patch$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/util/pipeline/PipelineContext;

    .line 197
    .local v0, "$this$patch":Lio/ktor/util/pipeline/PipelineContext;
    iget-object v1, p0, Lio/ktor/server/routing/RegexRoutingKt$patch$2;->$body:Lkotlin/jvm/functions/Function3;

    move-object v2, v0

    .local v2, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v3, 0x0

    .line 286
    .local v3, "$i$f$getCall":I
    invoke-virtual {v2}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/ktor/server/application/ApplicationCall;

    .line 197
    .end local v2    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v3    # "$i$f$getCall":I
    move-object v2, v4

    .local v2, "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v3, 0x0

    .line 287
    .local v3, "$i$f$receive":I
    const/4 v4, 0x0

    .local v4, "$i$f$typeInfo":I
    const/4 v5, 0x6

    const-string v6, "R"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 288
    const/4 v7, 0x0

    move-object v8, v7

    .line 289
    .local v8, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v8}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 290
    .local v9, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const/4 v10, 0x4

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v11, Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v9, v11, v8}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v11

    .line 287
    .end local v4    # "$i$f$typeInfo":I
    .end local v8    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v9    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v8, 0x0

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {v2, v11, v4}, Lio/ktor/server/request/ApplicationReceiveFunctionsKt;->receiveNullable(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    const/4 v8, 0x1

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    if-eqz v4, :cond_0

    .line 291
    nop

    .line 197
    .end local v2    # "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v3    # "$i$f$receive":I
    invoke-interface {v1, v0, v4, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 291
    .restart local v2    # "$this$receive$iv":Lio/ktor/server/application/ApplicationCall;
    .restart local v3    # "$i$f$receive":I
    :cond_0
    new-instance v1, Lio/ktor/server/plugins/CannotTransformContentToTypeException;

    const/4 v4, 0x0

    .restart local v4    # "$i$f$typeInfo":I
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 288
    move-object v5, v7

    .line 289
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 290
    .local v7, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v6, Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v7, v6, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v6

    .line 291
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v7    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-virtual {v6}, Lio/ktor/util/reflect/TypeInfo;->getKotlinType()Lkotlin/reflect/KType;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v4}, Lio/ktor/server/plugins/CannotTransformContentToTypeException;-><init>(Lkotlin/reflect/KType;)V

    throw v1
.end method
