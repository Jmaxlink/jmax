.class final Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RequestConverter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt;->convertRequestBody(Lio/ktor/server/application/PluginBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lio/ktor/server/application/OnCallReceiveContext<",
        "Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;",
        ">;",
        "Lio/ktor/server/application/ApplicationCall;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/server/application/OnCallReceiveContext;",
        "Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;",
        "call",
        "Lio/ktor/server/application/ApplicationCall;"
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
    c = "io.ktor.server.plugins.contentnegotiation.RequestConverterKt$convertRequestBody$1"
    f = "RequestConverter.kt"
    i = {}
    l = {
        0x1c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
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
            "Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/server/application/OnCallReceiveContext;Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/OnCallReceiveContext<",
            "Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;",
            ">;",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;

    invoke-direct {v0, p3}, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;->L$1:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/server/application/OnCallReceiveContext;

    check-cast p2, Lio/ktor/server/application/ApplicationCall;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;->invoke(Lio/ktor/server/application/OnCallReceiveContext;Lio/ktor/server/application/ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 17
    iget v1, p0, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/server/application/OnCallReceiveContext;

    .local v2, "$this$onCallReceive":Lio/ktor/server/application/OnCallReceiveContext;
    iget-object v3, v1, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/ktor/server/application/ApplicationCall;

    .line 18
    .local v3, "call":Lio/ktor/server/application/ApplicationCall;
    invoke-virtual {v2}, Lio/ktor/server/application/OnCallReceiveContext;->getPluginConfig()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;

    invoke-virtual {v4}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->getRegistrations$ktor_server_content_negotiation()Ljava/util/List;

    move-result-object v4

    .line 19
    .local v4, "registrations":Ljava/util/List;
    invoke-static {v3}, Lio/ktor/server/application/ApplicationCallKt;->getReceiveType(Lio/ktor/server/application/ApplicationCall;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v5

    .line 21
    .local v5, "requestedType":Lio/ktor/util/reflect/TypeInfo;
    invoke-virtual {v2}, Lio/ktor/server/application/OnCallReceiveContext;->getPluginConfig()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;

    invoke-virtual {v6}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->getIgnoredTypes$ktor_server_content_negotiation()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 22
    .end local v2    # "$this$onCallReceive":Lio/ktor/server/application/OnCallReceiveContext;
    .end local v3    # "call":Lio/ktor/server/application/ApplicationCall;
    .end local v4    # "registrations":Ljava/util/List;
    invoke-static {}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object v0

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping for request type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because the type is ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 22
    .end local v5    # "requestedType":Lio/ktor/util/reflect/TypeInfo;
    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 28
    .restart local v2    # "$this$onCallReceive":Lio/ktor/server/application/OnCallReceiveContext;
    .restart local v3    # "call":Lio/ktor/server/application/ApplicationCall;
    .restart local v4    # "registrations":Ljava/util/List;
    .restart local v5    # "requestedType":Lio/ktor/util/reflect/TypeInfo;
    :cond_0
    new-instance v6, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v4, v5, v7}, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;-><init>(Lio/ktor/server/application/ApplicationCall;Ljava/util/List;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function3;

    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v7, v1, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v1, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;->label:I

    invoke-virtual {v2, v6, v8}, Lio/ktor/server/application/OnCallReceiveContext;->transformBody(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$onCallReceive":Lio/ktor/server/application/OnCallReceiveContext;
    .end local v3    # "call":Lio/ktor/server/application/ApplicationCall;
    .end local v4    # "registrations":Ljava/util/List;
    .end local v5    # "requestedType":Lio/ktor/util/reflect/TypeInfo;
    if-ne v2, v0, :cond_1

    .line 17
    return-object v0

    .line 28
    :cond_1
    move-object v0, v1

    .line 47
    .end local v1    # "this":Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;
    .restart local v0    # "this":Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
