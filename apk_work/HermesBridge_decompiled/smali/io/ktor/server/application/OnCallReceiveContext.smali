.class public final Lio/ktor/server/application/OnCallReceiveContext;
.super Lio/ktor/server/application/CallContext;
.source "KtorCallContexts.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PluginConfig:",
        "Ljava/lang/Object;",
        ">",
        "Lio/ktor/server/application/CallContext<",
        "TPluginConfig;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKtorCallContexts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KtorCallContexts.kt\nio/ktor/server/application/OnCallReceiveContext\n+ 2 ApplicationCallPipeline.kt\nio/ktor/server/application/ApplicationCallPipelineKt\n+ 3 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,89:1\n75#2:90\n17#3,3:91\n*S KotlinDebug\n*F\n+ 1 KtorCallContexts.kt\nio/ktor/server/application/OnCallReceiveContext\n*L\n61#1:90\n62#1:91,3\n*E\n"
.end annotation

.annotation runtime Lio/ktor/util/KtorDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B#\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0010\u0008JO\u0010\u000b\u001a\u00020\u000c2<\u0010\r\u001a8\u0008\u0001\u0012\u0004\u0012\u00020\u000f\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0013\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000e\u00a2\u0006\u0002\u0008\u0015H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016R \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u0006X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0017"
    }
    d2 = {
        "Lio/ktor/server/application/OnCallReceiveContext;",
        "PluginConfig",
        "",
        "Lio/ktor/server/application/CallContext;",
        "pluginConfig",
        "context",
        "Lio/ktor/util/pipeline/PipelineContext;",
        "Lio/ktor/server/application/ApplicationCall;",
        "(Ljava/lang/Object;Lio/ktor/util/pipeline/PipelineContext;)V",
        "getContext",
        "()Lio/ktor/util/pipeline/PipelineContext;",
        "transformBody",
        "",
        "transform",
        "Lkotlin/Function3;",
        "Lio/ktor/server/application/TransformBodyContext;",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "Lkotlin/ParameterName;",
        "name",
        "body",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ktor-server-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Lio/ktor/util/pipeline/PipelineContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Ljava/lang/Object;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/ktor/util/pipeline/PipelineContext;)V
    .locals 1
    .param p1, "pluginConfig"    # Ljava/lang/Object;
    .param p2, "context"    # Lio/ktor/util/pipeline/PipelineContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPluginConfig;",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Ljava/lang/Object;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pluginConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p1, p2}, Lio/ktor/server/application/CallContext;-><init>(Ljava/lang/Object;Lio/ktor/util/pipeline/PipelineContext;)V

    .line 53
    iput-object p2, p0, Lio/ktor/server/application/OnCallReceiveContext;->context:Lio/ktor/util/pipeline/PipelineContext;

    .line 51
    return-void
.end method


# virtual methods
.method protected getContext()Lio/ktor/util/pipeline/PipelineContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Ljava/lang/Object;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lio/ktor/server/application/OnCallReceiveContext;->context:Lio/ktor/util/pipeline/PipelineContext;

    return-object v0
.end method

.method public final transformBody(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/server/application/TransformBodyContext;",
            "-",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/server/application/OnCallReceiveContext$transformBody$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/server/application/OnCallReceiveContext$transformBody$1;

    iget v1, v0, Lio/ktor/server/application/OnCallReceiveContext$transformBody$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/server/application/OnCallReceiveContext$transformBody$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/server/application/OnCallReceiveContext$transformBody$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/application/OnCallReceiveContext$transformBody$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/server/application/OnCallReceiveContext$transformBody$1;-><init>(Lio/ktor/server/application/OnCallReceiveContext;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/server/application/OnCallReceiveContext$transformBody$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 59
    iget v2, p2, Lio/ktor/server/application/OnCallReceiveContext$transformBody$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p2, Lio/ktor/server/application/OnCallReceiveContext$transformBody$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/util/pipeline/PipelineContext;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_2

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 60
    .local v2, "this":Lio/ktor/server/application/OnCallReceiveContext;
    .local p1, "transform":Lkotlin/jvm/functions/Function3;
    invoke-virtual {v2}, Lio/ktor/server/application/OnCallReceiveContext;->getContext()Lio/ktor/util/pipeline/PipelineContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/ktor/util/pipeline/PipelineContext;->getSubject()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lio/ktor/utils/io/ByteReadChannel;

    if-eqz v4, :cond_1

    check-cast v3, Lio/ktor/utils/io/ByteReadChannel;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .end local v2    # "this":Lio/ktor/server/application/OnCallReceiveContext;
    .end local p1    # "transform":Lkotlin/jvm/functions/Function3;
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 61
    .restart local v2    # "this":Lio/ktor/server/application/OnCallReceiveContext;
    .local v3, "receiveBody":Lio/ktor/utils/io/ByteReadChannel;
    .restart local p1    # "transform":Lkotlin/jvm/functions/Function3;
    :cond_2
    invoke-virtual {v2}, Lio/ktor/server/application/OnCallReceiveContext;->getContext()Lio/ktor/util/pipeline/PipelineContext;

    move-result-object v4

    .local v4, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v5, 0x0

    .line 90
    .local v5, "$i$f$getCall":I
    invoke-virtual {v4}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/ktor/server/application/ApplicationCall;

    .line 61
    .end local v4    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v5    # "$i$f$getCall":I
    invoke-static {v6}, Lio/ktor/server/application/ApplicationCallKt;->getReceiveType(Lio/ktor/server/application/ApplicationCall;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v4

    .line 62
    .local v4, "typeInfo":Lio/ktor/util/reflect/TypeInfo;
    const/4 v5, 0x0

    .local v5, "$i$f$typeInfo":I
    const-class v6, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v6

    .line 91
    nop

    .line 92
    .local v6, "kType$iv":Lkotlin/reflect/KType;
    invoke-static {v6}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 93
    .local v7, "reifiedType$iv":Ljava/lang/reflect/Type;
    const-class v8, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v5

    .line 62
    .end local v5    # "$i$f$typeInfo":I
    .end local v6    # "kType$iv":Lkotlin/reflect/KType;
    .end local v7    # "reifiedType$iv":Ljava/lang/reflect/Type;
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 64
    :cond_3
    new-instance v5, Lio/ktor/server/application/TransformBodyContext;

    invoke-direct {v5, v4}, Lio/ktor/server/application/TransformBodyContext;-><init>(Lio/ktor/util/reflect/TypeInfo;)V

    move-object v4, v5

    .line 65
    .local v4, "transformContext":Lio/ktor/server/application/TransformBodyContext;
    invoke-virtual {v2}, Lio/ktor/server/application/OnCallReceiveContext;->getContext()Lio/ktor/util/pipeline/PipelineContext;

    move-result-object v5

    iput-object v5, p2, Lio/ktor/server/application/OnCallReceiveContext$transformBody$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, p2, Lio/ktor/server/application/OnCallReceiveContext$transformBody$1;->label:I

    invoke-interface {p1, v4, v3, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Lio/ktor/server/application/OnCallReceiveContext;
    .end local v3    # "receiveBody":Lio/ktor/utils/io/ByteReadChannel;
    .end local v4    # "transformContext":Lio/ktor/server/application/TransformBodyContext;
    .end local p1    # "transform":Lkotlin/jvm/functions/Function3;
    if-ne p1, v1, :cond_4

    .line 59
    return-object v1

    .line 65
    :cond_4
    move-object v1, p1

    move-object p1, v5

    :goto_2
    invoke-virtual {p1, v1}, Lio/ktor/util/pipeline/PipelineContext;->setSubject(Ljava/lang/Object;)V

    .line 66
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
