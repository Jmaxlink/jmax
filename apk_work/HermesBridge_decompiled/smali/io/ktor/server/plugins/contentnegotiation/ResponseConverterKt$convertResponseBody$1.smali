.class final Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ResponseConverter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt;->convertResponseBody(Lio/ktor/server/application/PluginBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Lio/ktor/server/application/OnCallRespondContext<",
        "Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;",
        ">;",
        "Lio/ktor/server/application/ApplicationCall;",
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
    value = "SMAP\nResponseConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResponseConverter.kt\nio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,120:1\n1747#2,3:121\n*S KotlinDebug\n*F\n+ 1 ResponseConverter.kt\nio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1\n*L\n24#1:121,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/server/application/OnCallRespondContext;",
        "Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;",
        "call",
        "Lio/ktor/server/application/ApplicationCall;",
        "subject",
        ""
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
    c = "io.ktor.server.plugins.contentnegotiation.ResponseConverterKt$convertResponseBody$1"
    f = "ResponseConverter.kt"
    i = {}
    l = {
        0x27
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/server/application/OnCallRespondContext;Lio/ktor/server/application/ApplicationCall;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/OnCallRespondContext<",
            "Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;",
            ">;",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;

    invoke-direct {v0, p4}, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;->L$2:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/server/application/OnCallRespondContext;

    check-cast p2, Lio/ktor/server/application/ApplicationCall;

    check-cast p4, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;->invoke(Lio/ktor/server/application/OnCallRespondContext;Lio/ktor/server/application/ApplicationCall;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 18
    iget v1, p0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v0    # "this":Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/server/application/OnCallRespondContext;

    .local v2, "$this$onCallRespond":Lio/ktor/server/application/OnCallRespondContext;
    iget-object v3, v1, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;->L$1:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lio/ktor/server/application/ApplicationCall;

    .local v4, "call":Lio/ktor/server/application/ApplicationCall;
    iget-object v8, v1, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;->L$2:Ljava/lang/Object;

    .line 19
    .local v8, "subject":Ljava/lang/Object;
    instance-of v3, v8, Lio/ktor/http/content/OutgoingContent;

    if-eqz v3, :cond_0

    .line 20
    .end local v2    # "$this$onCallRespond":Lio/ktor/server/application/OnCallRespondContext;
    .end local v4    # "call":Lio/ktor/server/application/ApplicationCall;
    .end local v8    # "subject":Ljava/lang/Object;
    invoke-static {}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v2, "Skipping because body is already converted."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 21
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 24
    .restart local v2    # "$this$onCallRespond":Lio/ktor/server/application/OnCallRespondContext;
    .restart local v4    # "call":Lio/ktor/server/application/ApplicationCall;
    .restart local v8    # "subject":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2}, Lio/ktor/server/application/OnCallRespondContext;->getPluginConfig()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;

    invoke-virtual {v3}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->getIgnoredTypes$ktor_server_content_negotiation()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 121
    .local v5, "$i$f$any":I
    instance-of v6, v3, Ljava/util/Collection;

    const/4 v11, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_1

    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v9

    goto :goto_0

    .line 122
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v3    # "$this$any$iv":Ljava/lang/Iterable;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v7, v3

    check-cast v7, Lkotlin/reflect/KClass;

    .local v7, "it":Lkotlin/reflect/KClass;
    const/4 v10, 0x0

    .line 24
    .local v10, "$i$a$-any-ResponseConverterKt$convertResponseBody$1$1":I
    invoke-interface {v7, v8}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    .line 122
    .end local v7    # "it":Lkotlin/reflect/KClass;
    .end local v10    # "$i$a$-any-ResponseConverterKt$convertResponseBody$1$1":I
    if-eqz v7, :cond_2

    move v3, v11

    goto :goto_0

    .line 123
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_3
    move v3, v9

    .line 24
    .end local v5    # "$i$f$any":I
    :goto_0
    if-eqz v3, :cond_4

    .line 25
    .end local v2    # "$this$onCallRespond":Lio/ktor/server/application/OnCallRespondContext;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 26
    .end local v8    # "subject":Ljava/lang/Object;
    .local v0, "sourceClass":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v3

    invoke-static {v3}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->getHttpMethod(Lio/ktor/server/request/ApplicationRequest;)Lio/ktor/http/HttpMethod;

    move-result-object v3

    invoke-virtual {v3}, Lio/ktor/http/HttpMethod;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v3

    invoke-static {v3}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->getUri(Lio/ktor/server/request/ApplicationRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    .end local v4    # "call":Lio/ktor/server/application/ApplicationCall;
    .local v2, "requestInfo":Ljava/lang/String;
    invoke-static {}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object v3

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping response body transformation from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to OutgoingContent for the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " request because the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 30
    nop

    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 30
    nop

    .line 29
    const-string v5, " type is ignored. See [ContentNegotiationConfig::ignoreType]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 32
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    .line 35
    .end local v0    # "sourceClass":Ljava/lang/String;
    .local v2, "$this$onCallRespond":Lio/ktor/server/application/OnCallRespondContext;
    .restart local v4    # "call":Lio/ktor/server/application/ApplicationCall;
    .restart local v8    # "subject":Ljava/lang/Object;
    :cond_4
    invoke-interface {v4}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    invoke-static {v3}, Lio/ktor/server/response/ResponseTypeKt;->getResponseType(Lio/ktor/server/response/ApplicationResponse;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v7

    if-nez v7, :cond_5

    .end local v2    # "$this$onCallRespond":Lio/ktor/server/application/OnCallRespondContext;
    .end local v4    # "call":Lio/ktor/server/application/ApplicationCall;
    .end local v8    # "subject":Ljava/lang/Object;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 36
    .restart local v2    # "$this$onCallRespond":Lio/ktor/server/application/OnCallRespondContext;
    .restart local v4    # "call":Lio/ktor/server/application/ApplicationCall;
    .local v7, "responseType":Lio/ktor/util/reflect/TypeInfo;
    .restart local v8    # "subject":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v2}, Lio/ktor/server/application/OnCallRespondContext;->getPluginConfig()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;

    invoke-virtual {v3}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->getRegistrations$ktor_server_content_negotiation()Ljava/util/List;

    move-result-object v6

    .line 37
    .local v6, "registrations":Ljava/util/List;
    invoke-virtual {v2}, Lio/ktor/server/application/OnCallRespondContext;->getPluginConfig()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;

    invoke-virtual {v3}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->getCheckAcceptHeaderCompliance()Z

    move-result v3

    .line 39
    .local v3, "checkAcceptHeader":Z
    new-instance v12, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;

    if-eqz v3, :cond_6

    move v9, v11

    nop

    .end local v2    # "$this$onCallRespond":Lio/ktor/server/application/OnCallRespondContext;
    .end local v3    # "checkAcceptHeader":Z
    .end local v4    # "call":Lio/ktor/server/application/ApplicationCall;
    .end local v6    # "registrations":Ljava/util/List;
    .end local v7    # "responseType":Lio/ktor/util/reflect/TypeInfo;
    .end local v8    # "subject":Ljava/lang/Object;
    :cond_6
    const/4 v10, 0x0

    move-object v3, v12

    move-object v5, v2

    invoke-direct/range {v3 .. v10}, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;-><init>(Lio/ktor/server/application/ApplicationCall;Lio/ktor/server/application/OnCallRespondContext;Ljava/util/List;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;ZLkotlin/coroutines/Continuation;)V

    check-cast v12, Lkotlin/jvm/functions/Function3;

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x0

    iput-object v4, v1, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;->L$1:Ljava/lang/Object;

    iput v11, v1, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;->label:I

    invoke-virtual {v2, v12, v3}, Lio/ktor/server/application/OnCallRespondContext;->transformBody(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_7

    .line 18
    return-object v0

    .line 39
    :cond_7
    move-object v0, v1

    .line 101
    .end local v1    # "this":Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;
    .local v0, "this":Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
