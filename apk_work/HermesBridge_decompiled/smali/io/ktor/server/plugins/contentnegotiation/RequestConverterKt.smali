.class public final Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt;
.super Ljava/lang/Object;
.source "RequestConverter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a?\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u001a\u0012\u0010\u000e\u001a\u00020\u000f*\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "convertBody",
        "",
        "body",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "charsets",
        "Ljava/nio/charset/Charset;",
        "Lio/ktor/utils/io/charsets/Charset;",
        "registration",
        "Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;",
        "receiveType",
        "Lio/ktor/util/reflect/TypeInfo;",
        "requestContentType",
        "Lio/ktor/http/ContentType;",
        "(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/charset/Charset;Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;Lio/ktor/util/reflect/TypeInfo;Lio/ktor/http/ContentType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "convertRequestBody",
        "",
        "Lio/ktor/server/application/PluginBuilder;",
        "Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;",
        "ktor-server-content-negotiation"
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
.method public static final synthetic access$convertBody(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/charset/Charset;Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;Lio/ktor/util/reflect/TypeInfo;Lio/ktor/http/ContentType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "body"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "charsets"    # Ljava/nio/charset/Charset;
    .param p2, "registration"    # Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;
    .param p3, "receiveType"    # Lio/ktor/util/reflect/TypeInfo;
    .param p4, "requestContentType"    # Lio/ktor/http/ContentType;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static/range {p0 .. p5}, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt;->convertBody(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/charset/Charset;Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;Lio/ktor/util/reflect/TypeInfo;Lio/ktor/http/ContentType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final convertBody(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/charset/Charset;Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;Lio/ktor/util/reflect/TypeInfo;Lio/ktor/http/ContentType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Ljava/nio/charset/Charset;",
            "Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;",
            "Lio/ktor/util/reflect/TypeInfo;",
            "Lio/ktor/http/ContentType;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertBody$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertBody$1;

    iget v1, v0, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertBody$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p5, v0, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertBody$1;->label:I

    sub-int/2addr p5, v2

    iput p5, v0, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertBody$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertBody$1;

    invoke-direct {v0, p5}, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertBody$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p5, v0

    .local p5, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p5, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertBody$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 50
    iget v2, p5, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertBody$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p5    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p5    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p5, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertBody$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lio/ktor/util/reflect/TypeInfo;

    .local p0, "receiveType":Lio/ktor/util/reflect/TypeInfo;
    iget-object p1, p5, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertBody$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/ByteReadChannel;

    .local p1, "body":Lio/ktor/utils/io/ByteReadChannel;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, v0

    goto :goto_1

    .line 68
    .end local p1    # "body":Lio/ktor/utils/io/ByteReadChannel;
    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 50
    .end local p0    # "receiveType":Lio/ktor/util/reflect/TypeInfo;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .local p0, "body":Lio/ktor/utils/io/ByteReadChannel;
    .local p1, "charsets":Ljava/nio/charset/Charset;
    .local p2, "registration":Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;
    .local p3, "receiveType":Lio/ktor/util/reflect/TypeInfo;
    .local p4, "requestContentType":Lio/ktor/http/ContentType;
    invoke-virtual {p2}, Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;->getContentType()Lio/ktor/http/ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/http/ContentType;->withoutParameters()Lio/ktor/http/ContentType;

    move-result-object v2

    invoke-virtual {p4, v2}, Lio/ktor/http/ContentType;->match(Lio/ktor/http/ContentType;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    .end local p1    # "charsets":Ljava/nio/charset/Charset;
    invoke-static {}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object p1

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping content converter for request type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because content type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    nop

    .line 59
    .end local p4    # "requestContentType":Lio/ktor/http/ContentType;
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 60
    nop

    .line 59
    const-string v1, " does not match "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 60
    invoke-virtual {p2}, Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;->getContentType()Lio/ktor/http/ContentType;

    move-result-object p2

    .line 59
    .end local p2    # "registration":Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 58
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 62
    return-object v4

    .line 65
    .restart local p1    # "charsets":Ljava/nio/charset/Charset;
    .restart local p2    # "registration":Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;
    :cond_1
    invoke-virtual {p2}, Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;->getConverter()Lio/ktor/serialization/ContentConverter;

    move-result-object p4

    .line 66
    .end local p2    # "registration":Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;
    .local p4, "converter":Lio/ktor/serialization/ContentConverter;
    nop

    .line 67
    :try_start_1
    iput-object p0, p5, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertBody$1;->L$0:Ljava/lang/Object;

    iput-object p3, p5, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertBody$1;->L$1:Ljava/lang/Object;

    iput v3, p5, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertBody$1;->label:I

    invoke-interface {p4, p1, p3, p0, p5}, Lio/ktor/serialization/ContentConverter;->deserialize(Ljava/nio/charset/Charset;Lio/ktor/util/reflect/TypeInfo;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local p1    # "charsets":Ljava/nio/charset/Charset;
    .end local p4    # "converter":Lio/ktor/serialization/ContentConverter;
    if-ne p2, v1, :cond_2

    .line 50
    return-object v1

    .line 67
    :cond_2
    move-object p1, p0

    move-object p0, p3

    .end local p3    # "receiveType":Lio/ktor/util/reflect/TypeInfo;
    .local p0, "receiveType":Lio/ktor/util/reflect/TypeInfo;
    .local p1, "body":Lio/ktor/utils/io/ByteReadChannel;
    :goto_1
    nop

    .line 66
    nop

    .line 72
    .local p2, "convertedBody":Ljava/lang/Object;
    nop

    .line 73
    if-nez p2, :cond_6

    .line 74
    .end local p2    # "convertedBody":Ljava/lang/Object;
    invoke-interface {p1}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_3

    .line 75
    .end local p1    # "body":Lio/ktor/utils/io/ByteReadChannel;
    :cond_3
    invoke-virtual {p0}, Lio/ktor/util/reflect/TypeInfo;->getKotlinType()Lkotlin/reflect/KType;

    move-result-object p0

    .end local p0    # "receiveType":Lio/ktor/util/reflect/TypeInfo;
    const/4 p1, 0x0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result p0

    if-ne p0, v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, p1

    :goto_2
    if-eqz v3, :cond_5

    sget-object v4, Lio/ktor/http/content/NullBody;->INSTANCE:Lio/ktor/http/content/NullBody;

    goto :goto_3

    .line 76
    :cond_5
    goto :goto_3

    .line 73
    .restart local p0    # "receiveType":Lio/ktor/util/reflect/TypeInfo;
    .restart local p1    # "body":Lio/ktor/utils/io/ByteReadChannel;
    .restart local p2    # "convertedBody":Ljava/lang/Object;
    :cond_6
    move-object v4, p2

    .line 72
    .end local p0    # "receiveType":Lio/ktor/util/reflect/TypeInfo;
    .end local p1    # "body":Lio/ktor/utils/io/ByteReadChannel;
    .end local p2    # "convertedBody":Ljava/lang/Object;
    :goto_3
    return-object v4

    .line 68
    .restart local p3    # "receiveType":Lio/ktor/util/reflect/TypeInfo;
    :catchall_1
    move-exception p1

    move-object p0, p3

    .line 69
    .end local p3    # "receiveType":Lio/ktor/util/reflect/TypeInfo;
    .restart local p0    # "receiveType":Lio/ktor/util/reflect/TypeInfo;
    .local p1, "cause":Ljava/lang/Throwable;
    :goto_4
    new-instance p2, Lio/ktor/server/plugins/BadRequestException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to convert request body to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lio/ktor/server/plugins/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final convertRequestBody(Lio/ktor/server/application/PluginBuilder;)V
    .locals 2
    .param p0, "$this$convertRequestBody"    # Lio/ktor/server/application/PluginBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/PluginBuilder<",
            "Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/server/plugins/contentnegotiation/RequestConverterKt$convertRequestBody$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p0, v0}, Lio/ktor/server/application/PluginBuilder;->onCallReceive(Lkotlin/jvm/functions/Function3;)V

    .line 48
    return-void
.end method
