.class final Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ResponseConverter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lio/ktor/server/application/TransformBodyContext;",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResponseConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResponseConverter.kt\nio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n1789#2,3:121\n1360#2:124\n1446#2,2:125\n766#2:127\n857#2,2:128\n1448#2,3:130\n1#3:133\n*S KotlinDebug\n*F\n+ 1 ResponseConverter.kt\nio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2\n*L\n44#1:121,3\n53#1:124\n53#1:125,2\n54#1:127\n54#1:128,2\n53#1:130,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/server/application/TransformBodyContext;",
        "it"
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
    c = "io.ktor.server.plugins.contentnegotiation.ResponseConverterKt$convertResponseBody$1$2"
    f = "ResponseConverter.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x42
    }
    m = "invokeSuspend"
    n = {
        "acceptItems",
        "acceptCharset",
        "registration"
    }
    s = {
        "L$0",
        "L$1",
        "L$3"
    }
.end annotation


# instance fields
.field final synthetic $$this$onCallRespond:Lio/ktor/server/application/OnCallRespondContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/server/application/OnCallRespondContext<",
            "Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $call:Lio/ktor/server/application/ApplicationCall;

.field final synthetic $checkAcceptHeader:Z

.field final synthetic $registrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $responseType:Lio/ktor/util/reflect/TypeInfo;

.field final synthetic $subject:Ljava/lang/Object;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/server/application/ApplicationCall;Lio/ktor/server/application/OnCallRespondContext;Ljava/util/List;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;ZLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lio/ktor/server/application/OnCallRespondContext<",
            "Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;",
            ">;",
            "Ljava/util/List<",
            "Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;",
            ">;",
            "Lio/ktor/util/reflect/TypeInfo;",
            "Ljava/lang/Object;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$call:Lio/ktor/server/application/ApplicationCall;

    iput-object p2, p0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$$this$onCallRespond:Lio/ktor/server/application/OnCallRespondContext;

    iput-object p3, p0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$registrations:Ljava/util/List;

    iput-object p4, p0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$responseType:Lio/ktor/util/reflect/TypeInfo;

    iput-object p5, p0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$subject:Ljava/lang/Object;

    iput-boolean p6, p0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$checkAcceptHeader:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/server/application/TransformBodyContext;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/TransformBodyContext;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v8, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;

    iget-object v1, p0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$call:Lio/ktor/server/application/ApplicationCall;

    iget-object v2, p0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$$this$onCallRespond:Lio/ktor/server/application/OnCallRespondContext;

    iget-object v3, p0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$registrations:Ljava/util/List;

    iget-object v4, p0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$responseType:Lio/ktor/util/reflect/TypeInfo;

    iget-object v5, p0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$subject:Ljava/lang/Object;

    iget-boolean v6, p0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$checkAcceptHeader:Z

    move-object v0, v8

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;-><init>(Lio/ktor/server/application/ApplicationCall;Lio/ktor/server/application/OnCallRespondContext;Ljava/util/List;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;ZLkotlin/coroutines/Continuation;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v8, v0}, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/server/application/TransformBodyContext;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->invoke(Lio/ktor/server/application/TransformBodyContext;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 39
    move-object/from16 v1, p0

    iget v2, v1, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;
    move-object/from16 v5, p1

    .local v5, "$result":Ljava/lang/Object;
    iget-object v6, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->L$3:Ljava/lang/Object;

    check-cast v6, Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;

    .local v6, "registration":Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;
    iget-object v7, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->L$2:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/nio/charset/Charset;

    .local v8, "acceptCharset":Ljava/nio/charset/Charset;
    iget-object v9, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->L$0:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    .local v9, "acceptItems":Ljava/util/List;
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v8

    const/4 v3, 0x1

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    goto/16 :goto_a

    .end local v2    # "this":Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "registration":Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;
    .end local v8    # "acceptCharset":Ljava/nio/charset/Charset;
    .end local v9    # "acceptItems":Ljava/util/List;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;
    move-object/from16 v5, p1

    .line 40
    .restart local v5    # "$result":Ljava/lang/Object;
    iget-object v6, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$call:Lio/ktor/server/application/ApplicationCall;

    invoke-static {v6}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationUtilsKt;->parseAcceptHeader(Lio/ktor/server/application/ApplicationCall;)Ljava/util/List;

    move-result-object v6

    .line 42
    .local v6, "acceptHeader":Ljava/util/List;
    iget-object v7, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$$this$onCallRespond:Lio/ktor/server/application/OnCallRespondContext;

    invoke-virtual {v7}, Lio/ktor/server/application/OnCallRespondContext;->getPluginConfig()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;

    .line 43
    invoke-virtual {v7}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;->getAcceptContributors$ktor_server_content_negotiation()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 44
    .local v7, "$this$fold$iv":Ljava/lang/Iterable;
    iget-object v8, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$call:Lio/ktor/server/application/ApplicationCall;

    const/4 v9, 0x0

    .line 121
    .local v9, "$i$f$fold":I
    nop

    .line 122
    .local v6, "accumulator$iv":Ljava/lang/Object;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v7    # "$this$fold$iv":Ljava/lang/Iterable;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v11, v7

    check-cast v11, Lkotlin/jvm/functions/Function2;

    .local v11, "contributor":Lkotlin/jvm/functions/Function2;
    move-object v12, v6

    .local v12, "result":Ljava/util/List;
    const/4 v13, 0x0

    .line 44
    .local v13, "$i$a$-fold-ResponseConverterKt$convertResponseBody$1$2$acceptItems$1":I
    invoke-interface {v11, v8, v12}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 122
    .end local v11    # "contributor":Lkotlin/jvm/functions/Function2;
    .end local v12    # "result":Ljava/util/List;
    .end local v13    # "$i$a$-fold-ResponseConverterKt$convertResponseBody$1$2$acceptItems$1":I
    move-object v6, v14

    .end local v7    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 123
    :cond_0
    nop

    .end local v6    # "accumulator$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$fold":I
    check-cast v6, Ljava/lang/Iterable;

    .line 45
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    .line 46
    invoke-static {v6}, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt;->access$sortedByQuality(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 42
    nop

    .line 48
    .local v6, "acceptItems":Ljava/util/List;
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 50
    iget-object v7, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$registrations:Ljava/util/List;

    goto :goto_3

    .line 53
    :cond_1
    move-object v7, v6

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$flatMap$iv":Ljava/lang/Iterable;
    iget-object v8, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$registrations:Ljava/util/List;

    const/4 v9, 0x0

    .line 124
    .local v9, "$i$f$flatMap":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .local v7, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .local v10, "destination$iv$iv":Ljava/util/Collection;
    const/4 v11, 0x0

    .line 125
    .local v11, "$i$f$flatMapTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v7    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 126
    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v7

    check-cast v13, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;

    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 53
    .local v7, "$i$a$-flatMap-ResponseConverterKt$convertResponseBody$1$2$suitableConverters$1":I
    invoke-virtual {v13}, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->component1()Lio/ktor/http/ContentType;

    move-result-object v13

    .line 54
    .local v13, "contentType":Lio/ktor/http/ContentType;
    move-object v14, v8

    check-cast v14, Ljava/lang/Iterable;

    .local v14, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 127
    .local v15, "$i$f$filter":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, v16

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    .local v14, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/16 v16, 0x0

    .line 128
    .local v16, "$i$f$filterTo":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v14    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_2
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v14

    check-cast v18, Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;

    .local v18, "it":Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;
    const/16 v19, 0x0

    .line 54
    .local v19, "$i$a$-filter-ResponseConverterKt$convertResponseBody$1$2$suitableConverters$1$1":I
    invoke-virtual/range {v18 .. v18}, Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;->getContentType()Lio/ktor/http/ContentType;

    move-result-object v4

    invoke-virtual {v4, v13}, Lio/ktor/http/ContentType;->match(Lio/ktor/http/ContentType;)Z

    move-result v4

    .line 128
    .end local v18    # "it":Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;
    .end local v19    # "$i$a$-filter-ResponseConverterKt$convertResponseBody$1$2$suitableConverters$1$1":I
    if-eqz v4, :cond_2

    invoke-interface {v3, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 129
    .end local v14    # "element$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v16    # "$i$f$filterTo":I
    check-cast v3, Ljava/util/List;

    .line 127
    nop

    .line 54
    .end local v15    # "$i$f$filter":I
    nop

    .line 126
    .end local v7    # "$i$a$-flatMap-ResponseConverterKt$convertResponseBody$1$2$suitableConverters$1":I
    .end local v13    # "contentType":Lio/ktor/http/ContentType;
    check-cast v3, Ljava/lang/Iterable;

    .line 130
    .local v3, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v10, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 132
    .end local v3    # "list$iv$iv":Ljava/lang/Iterable;
    :cond_4
    nop

    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$i$f$flatMapTo":I
    move-object v3, v10

    check-cast v3, Ljava/util/List;

    .line 124
    nop

    .end local v9    # "$i$f$flatMap":I
    check-cast v3, Ljava/lang/Iterable;

    .line 55
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    .line 48
    :goto_3
    move-object v3, v7

    .line 58
    .local v3, "suitableConverters":Ljava/util/List;
    iget-object v4, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$call:Lio/ktor/server/application/ApplicationCall;

    invoke-interface {v4}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v4

    invoke-interface {v4}, Lio/ktor/server/request/ApplicationRequest;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v4, v8, v7, v8}, Lio/ktor/serialization/ContentConverterKt;->suitableCharsetOrNull$default(Lio/ktor/http/Headers;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/nio/charset/Charset;

    move-result-object v4

    .line 61
    .local v4, "acceptCharset":Ljava/nio/charset/Charset;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v9, v6

    .end local v3    # "suitableConverters":Ljava/util/List;
    .end local v6    # "acceptItems":Ljava/util/List;
    .local v9, "acceptItems":Ljava/util/List;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;

    .line 62
    .local v6, "registration":Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;
    if-eqz v4, :cond_5

    move-object v3, v4

    .local v3, "charset":Ljava/nio/charset/Charset;
    const/4 v10, 0x0

    .line 63
    .local v10, "$i$a$-let-ResponseConverterKt$convertResponseBody$1$2$contentType$1":I
    invoke-virtual {v6}, Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;->getContentType()Lio/ktor/http/ContentType;

    move-result-object v11

    invoke-static {v11, v3}, Lio/ktor/http/ContentTypesKt;->withCharset(Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;)Lio/ktor/http/ContentType;

    move-result-object v3

    .line 62
    .end local v3    # "charset":Ljava/nio/charset/Charset;
    .end local v10    # "$i$a$-let-ResponseConverterKt$convertResponseBody$1$2$contentType$1":I
    goto :goto_5

    :cond_5
    move-object v3, v8

    .line 66
    .local v3, "contentType":Lio/ktor/http/ContentType;
    :goto_5
    invoke-virtual {v6}, Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;->getConverter()Lio/ktor/serialization/ContentConverter;

    move-result-object v10

    .line 67
    if-nez v3, :cond_6

    .end local v3    # "contentType":Lio/ktor/http/ContentType;
    invoke-virtual {v6}, Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;->getContentType()Lio/ktor/http/ContentType;

    move-result-object v3

    move-object v11, v3

    goto :goto_6

    .restart local v3    # "contentType":Lio/ktor/http/ContentType;
    :cond_6
    move-object v11, v3

    .line 68
    .end local v3    # "contentType":Lio/ktor/http/ContentType;
    :goto_6
    if-nez v4, :cond_7

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object v12, v3

    goto :goto_7

    :cond_7
    move-object v12, v4

    .line 69
    :goto_7
    iget-object v13, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$responseType:Lio/ktor/util/reflect/TypeInfo;

    .line 70
    iget-object v3, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$subject:Ljava/lang/Object;

    move-object v14, v3

    .line 133
    .local v14, "it":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 70
    .local v15, "$i$a$-takeIf-ResponseConverterKt$convertResponseBody$1$2$result$1":I
    sget-object v8, Lio/ktor/http/content/NullBody;->INSTANCE:Lio/ktor/http/content/NullBody;

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v8, 0x1

    goto :goto_8

    .end local v14    # "it":Ljava/lang/Object;
    :cond_8
    const/4 v8, 0x0

    .end local v15    # "$i$a$-takeIf-ResponseConverterKt$convertResponseBody$1$2$result$1":I
    :goto_8
    if-eqz v8, :cond_9

    move-object v14, v3

    goto :goto_9

    :cond_9
    const/4 v14, 0x0

    :goto_9
    move-object v15, v2

    check-cast v15, Lkotlin/coroutines/Continuation;

    .line 66
    iput-object v9, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->L$2:Ljava/lang/Object;

    iput-object v6, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->L$3:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->label:I

    invoke-interface/range {v10 .. v15}, Lio/ktor/serialization/ContentConverter;->serializeNullable(Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_a

    .line 39
    return-object v0

    .line 66
    :cond_a
    move-object/from16 v20, v6

    move-object v6, v5

    move-object v5, v8

    move-object v8, v7

    move-object/from16 v7, v20

    .line 39
    .end local v5    # "$result":Ljava/lang/Object;
    .local v6, "$result":Ljava/lang/Object;
    .local v7, "registration":Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;
    :goto_a
    check-cast v5, Lio/ktor/http/content/OutgoingContent;

    .line 73
    .local v5, "result":Lio/ktor/http/content/OutgoingContent;
    const-string v10, " with "

    const-string v11, "Can\'t convert body "

    if-nez v5, :cond_b

    .line 74
    .end local v5    # "result":Lio/ktor/http/content/OutgoingContent;
    invoke-static {}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object v5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$subject:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;->getConverter()Lio/ktor/serialization/ContentConverter;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 75
    .end local v7    # "registration":Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;
    goto :goto_b

    .line 78
    .restart local v5    # "result":Lio/ktor/http/content/OutgoingContent;
    .restart local v7    # "registration":Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;
    :cond_b
    iget-object v12, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$call:Lio/ktor/server/application/ApplicationCall;

    invoke-static {v12, v5}, Lio/ktor/server/http/content/DefaultTransformKt;->transformDefaultContent(Lio/ktor/server/application/ApplicationCall;Ljava/lang/Object;)Lio/ktor/http/content/OutgoingContent;

    move-result-object v5

    .line 79
    .local v5, "transformedContent":Lio/ktor/http/content/OutgoingContent;
    if-nez v5, :cond_c

    .line 80
    .end local v5    # "transformedContent":Lio/ktor/http/content/OutgoingContent;
    invoke-static {}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object v5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$subject:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;->getConverter()Lio/ktor/serialization/ContentConverter;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 81
    .end local v7    # "registration":Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;
    nop

    .line 61
    :goto_b
    move-object v5, v6

    move-object v7, v8

    const/4 v8, 0x0

    goto/16 :goto_4

    .line 84
    .end local v4    # "acceptCharset":Ljava/nio/charset/Charset;
    .restart local v5    # "transformedContent":Lio/ktor/http/content/OutgoingContent;
    :cond_c
    iget-boolean v0, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$checkAcceptHeader:Z

    if-eqz v0, :cond_d

    invoke-virtual {v5}, Lio/ktor/http/content/OutgoingContent;->getContentType()Lio/ktor/http/ContentType;

    move-result-object v0

    invoke-static {v9, v0}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationUtilsKt;->checkAcceptHeader(Ljava/util/List;Lio/ktor/http/ContentType;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 85
    .end local v9    # "acceptItems":Ljava/util/List;
    invoke-static {}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object v0

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t send content with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lio/ktor/http/content/OutgoingContent;->getContentType()Lio/ktor/http/ContentType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to client because it is not acceptable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 85
    .end local v5    # "transformedContent":Lio/ktor/http/content/OutgoingContent;
    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt;->access$getNOT_ACCEPTABLE$p()Lio/ktor/server/http/content/HttpStatusCodeContent;

    move-result-object v0

    return-object v0

    .line 92
    .restart local v5    # "transformedContent":Lio/ktor/http/content/OutgoingContent;
    :cond_d
    return-object v5

    .line 95
    .end local v6    # "$result":Ljava/lang/Object;
    .local v5, "$result":Ljava/lang/Object;
    :cond_e
    invoke-static {}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object v0

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No suitable content converter found for response type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$responseType:Lio/ktor/util/reflect/TypeInfo;

    invoke-virtual {v4}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 97
    nop

    .line 96
    const-string v4, " and body "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 97
    iget-object v4, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$subject:Ljava/lang/Object;

    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 99
    iget-object v0, v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1$2;->$subject:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
