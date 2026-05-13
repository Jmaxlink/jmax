.class final Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RequestConverter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lio/ktor/utils/io/ByteReadChannel;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/server/application/TransformBodyContext;",
        "body",
        "Lio/ktor/utils/io/ByteReadChannel;"
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
    c = "io.ktor.server.plugins.contentnegotiation.RequestConverterKt$convertRequestBody$1$1"
    f = "RequestConverter.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x28
    }
    m = "invokeSuspend"
    n = {
        "body",
        "requestContentType",
        "charset"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $call:Lio/ktor/server/application/ApplicationCall;

.field final synthetic $registrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $requestedType:Lio/ktor/util/reflect/TypeInfo;

.field synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/server/application/ApplicationCall;Ljava/util/List;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/util/List<",
            "Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;",
            ">;",
            "Lio/ktor/util/reflect/TypeInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->$call:Lio/ktor/server/application/ApplicationCall;

    iput-object p2, p0, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->$registrations:Ljava/util/List;

    iput-object p3, p0, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->$requestedType:Lio/ktor/util/reflect/TypeInfo;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/server/application/TransformBodyContext;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/TransformBodyContext;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;

    iget-object v1, p0, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->$call:Lio/ktor/server/application/ApplicationCall;

    iget-object v2, p0, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->$registrations:Ljava/util/List;

    iget-object v3, p0, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->$requestedType:Lio/ktor/util/reflect/TypeInfo;

    invoke-direct {v0, v1, v2, v3, p3}, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;-><init>(Lio/ktor/server/application/ApplicationCall;Ljava/util/List;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->L$0:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/server/application/TransformBodyContext;

    check-cast p2, Lio/ktor/utils/io/ByteReadChannel;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->invoke(Lio/ktor/server/application/TransformBodyContext;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 28
    iget v1, p0, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v1, p0

    .local v1, "this":Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v2, v1, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v3, v1, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/nio/charset/Charset;

    .local v3, "charset":Ljava/nio/charset/Charset;
    iget-object v4, v1, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lio/ktor/http/ContentType;

    .local v4, "requestContentType":Lio/ktor/http/ContentType;
    iget-object v5, v1, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/ByteReadChannel;

    .local v5, "body":Lio/ktor/utils/io/ByteReadChannel;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_1

    .end local v1    # "this":Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;
    .end local v3    # "charset":Ljava/nio/charset/Charset;
    .end local v4    # "requestContentType":Lio/ktor/http/ContentType;
    .end local v5    # "body":Lio/ktor/utils/io/ByteReadChannel;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteReadChannel;

    .line 29
    .local v2, "body":Lio/ktor/utils/io/ByteReadChannel;
    nop

    .line 30
    :try_start_0
    iget-object v3, v1, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->$call:Lio/ktor/server/application/ApplicationCall;

    invoke-interface {v3}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v3

    invoke-static {v3}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->contentType(Lio/ktor/server/request/ApplicationRequest;)Lio/ktor/http/ContentType;

    move-result-object v3

    invoke-virtual {v3}, Lio/ktor/http/ContentType;->withoutParameters()Lio/ktor/http/ContentType;

    move-result-object v3
    :try_end_0
    .catch Lio/ktor/http/BadContentTypeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    nop

    .line 38
    .local v3, "requestContentType":Lio/ktor/http/ContentType;
    iget-object v4, v1, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->$call:Lio/ktor/server/application/ApplicationCall;

    invoke-interface {v4}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v4

    invoke-static {v4}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->contentCharset(Lio/ktor/server/request/ApplicationRequest;)Ljava/nio/charset/Charset;

    move-result-object v4

    if-nez v4, :cond_0

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 39
    .local v4, "charset":Ljava/nio/charset/Charset;
    :cond_0
    iget-object v5, v1, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->$registrations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v11, v2

    move-object v10, v3

    move-object v9, v4

    move-object v2, v5

    .end local v2    # "body":Lio/ktor/utils/io/ByteReadChannel;
    .end local v3    # "requestContentType":Lio/ktor/http/ContentType;
    .end local v4    # "charset":Ljava/nio/charset/Charset;
    .local v9, "charset":Ljava/nio/charset/Charset;
    .local v10, "requestContentType":Lio/ktor/http/ContentType;
    .local v11, "body":Lio/ktor/utils/io/ByteReadChannel;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;

    .line 40
    .local v12, "registration":Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;
    iget-object v6, v1, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->$requestedType:Lio/ktor/util/reflect/TypeInfo;

    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v11, v1, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->L$0:Ljava/lang/Object;

    iput-object v10, v1, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->L$1:Ljava/lang/Object;

    iput-object v9, v1, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->L$2:Ljava/lang/Object;

    iput-object v2, v1, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->L$3:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v1, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->label:I

    move-object v3, v11

    move-object v4, v9

    move-object v5, v12

    move-object v7, v10

    invoke-static/range {v3 .. v8}, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt;->access$convertBody(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/charset/Charset;Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;Lio/ktor/util/reflect/TypeInfo;Lio/ktor/http/ContentType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v12    # "registration":Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;
    if-ne v3, v0, :cond_1

    .line 28
    return-object v0

    .line 40
    :cond_1
    move-object v13, v0

    move-object v0, p1

    move-object p1, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v13

    .end local v1    # "this":Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v2, "this":Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;
    :goto_1
    if-nez p1, :cond_2

    .line 41
    move-object p1, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    .line 40
    :cond_2
    return-object p1

    .line 44
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;
    .restart local v1    # "this":Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_3
    invoke-static {}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No suitable content converter found for request type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->$requestedType:Lio/ktor/util/reflect/TypeInfo;

    invoke-virtual {v3}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 45
    return-object v11

    .line 31
    .end local v9    # "charset":Ljava/nio/charset/Charset;
    .end local v10    # "requestContentType":Lio/ktor/http/ContentType;
    .end local v11    # "body":Lio/ktor/utils/io/ByteReadChannel;
    :catch_0
    move-exception v0

    .line 32
    .local v0, "parseFailure":Lio/ktor/http/BadContentTypeFormatException;
    new-instance v2, Lio/ktor/server/plugins/BadRequestException;

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal Content-Type header format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1$1;->$call:Lio/ktor/server/application/ApplicationCall;

    invoke-interface {v4}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v4

    invoke-interface {v4}, Lio/ktor/server/request/ApplicationRequest;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v4

    sget-object v5, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v5}, Lio/ktor/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/ktor/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 34
    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    .line 32
    invoke-direct {v2, v3, v4}, Lio/ktor/server/plugins/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
