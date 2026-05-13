.class public final Lio/ktor/server/response/ApplicationResponseFunctionsKt;
.super Ljava/lang/Object;
.source "ApplicationResponseFunctions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApplicationResponseFunctions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplicationResponseFunctions.kt\nio/ktor/server/response/ApplicationResponseFunctionsKt\n+ 2 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n+ 3 URLBuilder.kt\nio/ktor/server/util/URLBuilderKt\n*L\n1#1,218:1\n26#1,2:225\n29#1,2:230\n48#1,2:232\n51#1,2:237\n26#1,2:239\n29#1,2:244\n26#1,2:247\n29#1,2:252\n26#1,2:254\n29#1,2:259\n26#1,2:261\n29#1,2:266\n26#1,2:268\n29#1,2:273\n26#1,2:275\n29#1,2:280\n17#2,3:219\n17#2,3:222\n17#2,3:227\n17#2,3:234\n17#2,3:241\n17#2,3:249\n17#2,3:256\n17#2,3:263\n17#2,3:270\n17#2,3:277\n38#3:246\n*S KotlinDebug\n*F\n+ 1 ApplicationResponseFunctions.kt\nio/ktor/server/response/ApplicationResponseFunctionsKt\n*L\n61#1:225,2\n61#1:230,2\n83#1:232,2\n83#1:237,2\n92#1:239,2\n92#1:244,2\n125#1:247,2\n125#1:252,2\n140#1:254,2\n140#1:259,2\n154#1:261,2\n154#1:266,2\n169#1:268,2\n169#1:273,2\n184#1:275,2\n184#1:280,2\n27#1:219,3\n49#1:222,3\n61#1:227,3\n83#1:234,3\n92#1:241,3\n125#1:249,3\n140#1:256,3\n154#1:263,3\n169#1:270,3\n184#1:277,3\n109#1:246\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0001\u001a+\u0010\u0004\u001a\u00020\u0005\"\n\u0008\u0000\u0010\u0006\u0018\u0001*\u00020\u0007*\u00020\u00022\u0006\u0010\u0008\u001a\u0002H\u0006H\u0087H\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\n\u001a3\u0010\u0004\u001a\u00020\u0005\"\n\u0008\u0000\u0010\u0006\u0018\u0001*\u00020\u0007*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u0002H\u0006H\u0087H\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\r\u001a/\u0010\u0004\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010\u001a\'\u0010\u0004\u001a\u00020\u0005*\u00020\u00022\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011\u001aK\u0010\u0012\u001a\u00020\u0005*\u00020\u00022\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u001c\u0010\u0013\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0014H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017\u001aP\u0010\u0012\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00162\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0019\u0008\u0002\u0010\u0019\u001a\u0013\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00050\u0014\u00a2\u0006\u0002\u0008\u001bH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001c\u001ab\u0010\u001d\u001a\u00020\u0005*\u00020\u00022\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\'\u0010 \u001a#\u0008\u0001\u0012\u0004\u0012\u00020\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00070!\u00a2\u0006\u0002\u0008\u001bH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#\u001a%\u0010$\u001a\u00020\u0005\"\u0006\u0008\u0000\u0010\u0006\u0018\u0001*\u00020\u00022\u0006\u0010\u0008\u001a\u0002H\u0006H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u001a-\u0010$\u001a\u00020\u0005\"\u0006\u0008\u0000\u0010\u0006\u0018\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u0002H\u0006H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u001a\'\u0010%\u001a\u00020\u0005*\u00020\u00022\u0006\u0010&\u001a\u00020\'2\u0008\u0008\u0002\u0010(\u001a\u00020)H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010*\u001a8\u0010%\u001a\u00020\u0005*\u00020\u00022\u0008\u0008\u0002\u0010(\u001a\u00020)2\u0017\u0010+\u001a\u0013\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u00050\u0014\u00a2\u0006\u0002\u0008\u001bH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010-\u001a\'\u0010%\u001a\u00020\u0005*\u00020\u00022\u0006\u0010&\u001a\u00020.2\u0008\u0008\u0002\u0010(\u001a\u00020)H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010/\u001aK\u00100\u001a\u00020\u0005*\u00020\u00022\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u001c\u0010\u0013\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020.0\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0014H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017\u001aP\u00100\u001a\u00020\u0005*\u00020\u00022\u0006\u00101\u001a\u00020.2\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0019\u0008\u0002\u0010\u0019\u001a\u0013\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00050\u0014\u00a2\u0006\u0002\u0008\u001bH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00102\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00063"
    }
    d2 = {
        "defaultTextContentType",
        "Lio/ktor/http/ContentType;",
        "Lio/ktor/server/application/ApplicationCall;",
        "contentType",
        "respond",
        "",
        "T",
        "",
        "message",
        "respondWithType",
        "(Lio/ktor/server/application/ApplicationCall;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "status",
        "Lio/ktor/http/HttpStatusCode;",
        "(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/HttpStatusCode;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "messageType",
        "Lio/ktor/util/reflect/TypeInfo;",
        "(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/HttpStatusCode;Ljava/lang/Object;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "(Lio/ktor/server/application/ApplicationCall;Ljava/lang/Object;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "respondBytes",
        "provider",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "bytes",
        "configure",
        "Lio/ktor/http/content/OutgoingContent;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lio/ktor/server/application/ApplicationCall;[BLio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "respondBytesWriter",
        "contentLength",
        "",
        "producer",
        "Lkotlin/Function2;",
        "Lio/ktor/utils/io/ByteWriteChannel;",
        "(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "respondNullable",
        "respondRedirect",
        "url",
        "Lio/ktor/http/Url;",
        "permanent",
        "",
        "(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/Url;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "block",
        "Lio/ktor/http/URLBuilder;",
        "(Lio/ktor/server/application/ApplicationCall;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "respondText",
        "text",
        "(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ktor-server-core"
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
.method public static final defaultTextContentType(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;)Lio/ktor/http/ContentType;
    .locals 5
    .param p0, "$this$defaultTextContentType"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "contentType"    # Lio/ktor/http/ContentType;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    nop

    .line 198
    if-nez p1, :cond_1

    .line 199
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/response/ApplicationResponse;->getHeaders()Lio/ktor/server/response/ResponseHeaders;

    move-result-object v0

    sget-object v1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/ktor/server/response/ResponseHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "headersContentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 201
    .local v2, "$i$a$-let-ApplicationResponseFunctionsKt$defaultTextContentType$result$1":I
    nop

    .line 202
    :try_start_0
    sget-object v3, Lio/ktor/http/ContentType;->Companion:Lio/ktor/http/ContentType$Companion;

    invoke-virtual {v3, v0}, Lio/ktor/http/ContentType$Companion;->parse(Ljava/lang/String;)Lio/ktor/http/ContentType;

    move-result-object v3
    :try_end_0
    .catch Lio/ktor/http/BadContentTypeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v3

    .line 204
    .local v3, "_":Lio/ktor/http/BadContentTypeFormatException;
    const/4 v4, 0x0

    move-object v3, v4

    .line 201
    .end local v3    # "_":Lio/ktor/http/BadContentTypeFormatException;
    :goto_0
    nop

    .line 200
    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-ApplicationResponseFunctionsKt$defaultTextContentType$result$1":I
    if-nez v3, :cond_2

    .line 206
    :cond_0
    sget-object v1, Lio/ktor/http/ContentType$Text;->INSTANCE:Lio/ktor/http/ContentType$Text;

    invoke-virtual {v1}, Lio/ktor/http/ContentType$Text;->getPlain()Lio/ktor/http/ContentType;

    move-result-object v3

    .end local v0    # "headersContentType":Ljava/lang/String;
    goto :goto_1

    .line 209
    :cond_1
    move-object v3, p1

    .line 197
    :cond_2
    :goto_1
    move-object v0, v3

    .line 212
    .local v0, "result":Lio/ktor/http/ContentType;
    move-object v1, v0

    check-cast v1, Lio/ktor/http/HeaderValueWithParameters;

    invoke-static {v1}, Lio/ktor/http/ContentTypesKt;->charset(Lio/ktor/http/HeaderValueWithParameters;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v1, Lio/ktor/http/ContentType$Text;->INSTANCE:Lio/ktor/http/ContentType$Text;

    invoke-virtual {v1}, Lio/ktor/http/ContentType$Text;->getAny()Lio/ktor/http/ContentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/ktor/http/ContentType;->match(Lio/ktor/http/ContentType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 213
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lio/ktor/http/ContentTypesKt;->withCharset(Lio/ktor/http/ContentType;Ljava/nio/charset/Charset;)Lio/ktor/http/ContentType;

    move-result-object v1

    goto :goto_2

    .line 215
    :cond_3
    move-object v1, v0

    .line 212
    :goto_2
    return-object v1
.end method

.method public static final respond(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/HttpStatusCode;Ljava/lang/Object;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$respond"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "status"    # Lio/ktor/http/HttpStatusCode;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "messageType"    # Lio/ktor/util/reflect/TypeInfo;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lio/ktor/http/HttpStatusCode;",
            "Ljava/lang/Object;",
            "Lio/ktor/util/reflect/TypeInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 73
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/ktor/server/response/ApplicationResponse;->status(Lio/ktor/http/HttpStatusCode;)V

    .line 74
    invoke-static {p0, p2, p3, p4}, Lio/ktor/server/response/ApplicationResponseFunctionsKt;->respond(Lio/ktor/server/application/ApplicationCall;Ljava/lang/Object;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 75
    return-object v0
.end method

.method public static final respond(Lio/ktor/server/application/ApplicationCall;Ljava/lang/Object;Lio/ktor/util/reflect/TypeInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$respond"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "messageType"    # Lio/ktor/util/reflect/TypeInfo;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/Object;",
            "Lio/ktor/util/reflect/TypeInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 38
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v0

    invoke-static {v0, p2}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 39
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v0

    if-nez p1, :cond_0

    sget-object v1, Lio/ktor/http/content/NullBody;->INSTANCE:Lio/ktor/http/content/NullBody;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, p0, v1, p3}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 40
    return-object v0
.end method

.method public static final respondBytes(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lio/ktor/http/ContentType;",
            "Lio/ktor/http/HttpStatusCode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$1;

    iget v1, v0, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$1;

    invoke-direct {v0, p4}, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 149
    iget v2, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$respondWithType":I
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local p0    # "$i$f$respondWithType":I
    :pswitch_1
    iget-object p0, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lio/ktor/server/application/ApplicationCall;

    .local p0, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    iget-object p1, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/http/HttpStatusCode;

    .local p1, "status":Lio/ktor/http/HttpStatusCode;
    iget-object p2, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/http/ContentType;

    .local p2, "contentType":Lio/ktor/http/ContentType;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, v0

    goto :goto_1

    .end local p0    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local p1    # "status":Lio/ktor/http/HttpStatusCode;
    .end local p2    # "contentType":Lio/ktor/http/ContentType;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 154
    .local p0, "$this$respondBytes":Lio/ktor/server/application/ApplicationCall;
    .local p1, "contentType":Lio/ktor/http/ContentType;
    .local p2, "status":Lio/ktor/http/HttpStatusCode;
    .local p3, "provider":Lkotlin/jvm/functions/Function1;
    iput-object p1, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$1;->L$0:Ljava/lang/Object;

    iput-object p2, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$1;->L$1:Ljava/lang/Object;

    iput-object p0, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$1;->L$2:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$1;->label:I

    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .end local p0    # "$this$respondBytes":Lio/ktor/server/application/ApplicationCall;
    .end local p3    # "provider":Lkotlin/jvm/functions/Function1;
    if-ne p3, v1, :cond_1

    .line 149
    return-object v1

    .line 154
    :cond_1
    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    .local p0, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .local p1, "status":Lio/ktor/http/HttpStatusCode;
    .local p2, "contentType":Lio/ktor/http/ContentType;
    :goto_1
    check-cast p3, [B

    new-instance v2, Lio/ktor/http/content/ByteArrayContent;

    invoke-direct {v2, p3, p2, p1}, Lio/ktor/http/content/ByteArrayContent;-><init>([BLio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;)V

    move-object p1, v2

    .end local p2    # "contentType":Lio/ktor/http/ContentType;
    .local p1, "message$iv":Ljava/lang/Object;
    const/4 p2, 0x0

    .line 261
    .local p2, "$i$f$respondWithType":I
    instance-of p3, p1, Lio/ktor/http/content/OutgoingContent;

    if-nez p3, :cond_2

    instance-of p3, p1, [B

    if-nez p3, :cond_2

    .line 262
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object p3

    const/4 v2, 0x0

    .local v2, "$i$f$typeInfo":I
    const-class v3, Lio/ktor/http/content/ByteArrayContent;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3

    .line 263
    nop

    .line 264
    .local v3, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v3}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 265
    .local v4, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v5, Lio/ktor/http/content/ByteArrayContent;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v2

    .line 262
    .end local v2    # "$i$f$typeInfo":I
    .end local v3    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v4    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {p3, v2}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 266
    :cond_2
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object p3

    invoke-interface {p3}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object p3

    move-object v2, p1

    check-cast v2, Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$1;->L$0:Ljava/lang/Object;

    iput-object v3, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$1;->L$1:Ljava/lang/Object;

    iput-object v3, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$1;->L$2:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$1;->label:I

    invoke-virtual {p3, p0, v2, p4}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local p1    # "message$iv":Ljava/lang/Object;
    if-ne p0, v1, :cond_3

    .line 149
    return-object v1

    .line 266
    :cond_3
    move p0, p2

    .line 267
    .end local p2    # "$i$f$respondWithType":I
    .local p0, "$i$f$respondWithType":I
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 155
    .end local p0    # "$i$f$respondWithType":I
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final respondBytes(Lio/ktor/server/application/ApplicationCall;[BLio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$respondBytes"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "bytes"    # [B
    .param p2, "contentType"    # Lio/ktor/http/ContentType;
    .param p3, "status"    # Lio/ktor/http/HttpStatusCode;
    .param p4, "configure"    # Lkotlin/jvm/functions/Function1;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "[B",
            "Lio/ktor/http/ContentType;",
            "Lio/ktor/http/HttpStatusCode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/http/content/OutgoingContent;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 169
    new-instance v0, Lio/ktor/http/content/ByteArrayContent;

    invoke-direct {v0, p1, p2, p3}, Lio/ktor/http/content/ByteArrayContent;-><init>([BLio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;)V

    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p0

    .local v0, "message$iv":Ljava/lang/Object;
    .local v1, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 268
    .local v2, "$i$f$respondWithType":I
    instance-of v3, v0, Lio/ktor/http/content/OutgoingContent;

    if-nez v3, :cond_0

    instance-of v3, v0, [B

    if-nez v3, :cond_0

    .line 269
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    const/4 v4, 0x0

    .local v4, "$i$f$typeInfo":I
    const-class v5, Lio/ktor/http/content/ByteArrayContent;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 270
    nop

    .line 271
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 272
    .local v6, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v7, Lio/ktor/http/content/ByteArrayContent;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v4

    .line 269
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v3, v4}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 273
    :cond_0
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/lang/Object;

    invoke-virtual {v3, v1, v4, p5}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    return-object v3

    .line 274
    :cond_1
    nop

    .end local v0    # "message$iv":Ljava/lang/Object;
    .end local v1    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v2    # "$i$f$respondWithType":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 170
    return-object v0
.end method

.method public static synthetic respondBytes$default(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 149
    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 150
    move-object p1, v0

    .line 149
    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    .line 151
    move-object p2, v0

    .line 149
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/server/response/ApplicationResponseFunctionsKt;->respondBytes(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic respondBytes$default(Lio/ktor/server/application/ApplicationCall;[BLio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 163
    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 165
    move-object v3, v0

    goto :goto_0

    .line 163
    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 166
    move-object v4, v0

    goto :goto_1

    .line 163
    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    .line 167
    sget-object p2, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$3;->INSTANCE:Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondBytes$3;

    move-object p4, p2

    check-cast p4, Lkotlin/jvm/functions/Function1;

    move-object v5, p4

    goto :goto_2

    .line 163
    :cond_2
    move-object v5, p4

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/ktor/server/response/ApplicationResponseFunctionsKt;->respondBytes(Lio/ktor/server/application/ApplicationCall;[BLio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final respondBytesWriter(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$respondBytesWriter"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "contentType"    # Lio/ktor/http/ContentType;
    .param p2, "status"    # Lio/ktor/http/HttpStatusCode;
    .param p3, "contentLength"    # Ljava/lang/Long;
    .param p4, "producer"    # Lkotlin/jvm/functions/Function2;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lio/ktor/http/ContentType;",
            "Lio/ktor/http/HttpStatusCode;",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
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

    .line 184
    new-instance v0, Lio/ktor/http/content/ChannelWriterContent;

    if-nez p1, :cond_0

    sget-object v1, Lio/ktor/http/ContentType$Application;->INSTANCE:Lio/ktor/http/ContentType$Application;

    invoke-virtual {v1}, Lio/ktor/http/ContentType$Application;->getOctetStream()Lio/ktor/http/ContentType;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-direct {v0, p4, v1, p2, p3}, Lio/ktor/http/content/ChannelWriterContent;-><init>(Lkotlin/jvm/functions/Function2;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Ljava/lang/Long;)V

    .local v0, "message$iv":Ljava/lang/Object;
    move-object v1, p0

    .local v1, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 275
    .local v2, "$i$f$respondWithType":I
    instance-of v3, v0, Lio/ktor/http/content/OutgoingContent;

    if-nez v3, :cond_1

    instance-of v3, v0, [B

    if-nez v3, :cond_1

    .line 276
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    const/4 v4, 0x0

    .local v4, "$i$f$typeInfo":I
    const-class v5, Lio/ktor/http/content/ChannelWriterContent;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 277
    nop

    .line 278
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 279
    .local v6, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v7, Lio/ktor/http/content/ChannelWriterContent;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v4

    .line 276
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v3, v4}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 280
    :cond_1
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/lang/Object;

    invoke-virtual {v3, v1, v4, p5}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2

    return-object v3

    .line 281
    :cond_2
    nop

    .end local v0    # "message$iv":Ljava/lang/Object;
    .end local v1    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v2    # "$i$f$respondWithType":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 185
    return-object v0
.end method

.method public static synthetic respondBytesWriter$default(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 178
    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 179
    move-object v2, v0

    goto :goto_0

    .line 178
    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    .line 180
    move-object v3, v0

    goto :goto_1

    .line 178
    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    .line 181
    move-object v4, v0

    goto :goto_2

    .line 178
    :cond_2
    move-object v4, p3

    :goto_2
    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/ktor/server/response/ApplicationResponseFunctionsKt;->respondBytesWriter(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic respondNullable(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/HttpStatusCode;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p0, "$this$respondNullable"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "status"    # Lio/ktor/http/HttpStatusCode;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lio/ktor/http/HttpStatusCode;",
            "TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 82
    .local v0, "$i$f$respondNullable":I
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/ktor/server/response/ApplicationResponse;->status(Lio/ktor/http/HttpStatusCode;)V

    .line 83
    move-object v1, p0

    .local v1, "$this$respondNullable$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 232
    .local v2, "$i$f$respondNullable":I
    instance-of v3, p2, Lio/ktor/http/content/OutgoingContent;

    if-nez v3, :cond_0

    instance-of v3, p2, [B

    if-nez v3, :cond_0

    .line 233
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    const/4 v4, 0x0

    .local v4, "$i$f$typeInfo":I
    const/4 v5, 0x6

    const-string v6, "T"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 234
    const/4 v5, 0x0

    .line 235
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 236
    .local v7, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const/4 v8, 0x4

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v6, Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v7, v6, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v6

    .line 233
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v7    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v3, v6}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 237
    :cond_0
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v3

    if-eqz p2, :cond_1

    move-object v4, p2

    goto :goto_0

    :cond_1
    sget-object v4, Lio/ktor/http/content/NullBody;->INSTANCE:Lio/ktor/http/content/NullBody;

    :goto_0
    const/4 v5, 0x0

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-virtual {v3, v1, v4, p3}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 238
    nop

    .end local v1    # "$this$respondNullable$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v2    # "$i$f$respondNullable":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 84
    return-object v1
.end method

.method public static final synthetic respondNullable(Lio/ktor/server/application/ApplicationCall;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this$respondNullable"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/application/ApplicationCall;",
            "TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    .local v0, "$i$f$respondNullable":I
    instance-of v1, p1, Lio/ktor/http/content/OutgoingContent;

    if-nez v1, :cond_0

    instance-of v1, p1, [B

    if-nez v1, :cond_0

    .line 49
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v1

    const/4 v2, 0x0

    .local v2, "$i$f$typeInfo":I
    const/4 v3, 0x6

    const-string v4, "T"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 222
    const/4 v3, 0x0

    .line 223
    .local v3, "kType$iv":Lkotlin/reflect/KType;
    invoke-static {v3}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 224
    .local v5, "reifiedType$iv":Ljava/lang/reflect/Type;
    const/4 v6, 0x4

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v5, v4, v3}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v4

    .line 49
    .end local v2    # "$i$f$typeInfo":I
    .end local v3    # "kType$iv":Lkotlin/reflect/KType;
    .end local v5    # "reifiedType$iv":Ljava/lang/reflect/Type;
    invoke-static {v1, v4}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 51
    :cond_0
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v1

    invoke-interface {v1}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v1

    if-eqz p1, :cond_1

    move-object v2, p1

    goto :goto_0

    :cond_1
    sget-object v2, Lio/ktor/http/content/NullBody;->INSTANCE:Lio/ktor/http/content/NullBody;

    :goto_0
    const/4 v3, 0x0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-virtual {v1, p0, v2, p2}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 52
    return-object v1
.end method

.method public static final respondRedirect(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/Url;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$respondRedirect"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "url"    # Lio/ktor/http/Url;
    .param p2, "permanent"    # Z
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lio/ktor/http/Url;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lio/ktor/http/Url;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lio/ktor/server/response/ApplicationResponseFunctionsKt;->respondRedirect(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 101
    return-object v0
.end method

.method public static final respondRedirect(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$respondRedirect"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "permanent"    # Z
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 91
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/response/ApplicationResponse;->getHeaders()Lio/ktor/server/response/ResponseHeaders;

    move-result-object v1

    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lio/ktor/server/response/ResponseHeaders;->append$default(Lio/ktor/server/response/ResponseHeaders;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 92
    sget-object v0, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lio/ktor/http/HttpStatusCode$Companion;->getMovedPermanently()Lio/ktor/http/HttpStatusCode;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/ktor/http/HttpStatusCode$Companion;->getFound()Lio/ktor/http/HttpStatusCode;

    move-result-object v0

    .local v0, "message$iv":Ljava/lang/Object;
    :goto_0
    move-object v1, p0

    .local v1, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 239
    .local v2, "$i$f$respondWithType":I
    instance-of v3, v0, Lio/ktor/http/content/OutgoingContent;

    if-nez v3, :cond_1

    instance-of v3, v0, [B

    if-nez v3, :cond_1

    .line 240
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    const/4 v4, 0x0

    .local v4, "$i$f$typeInfo":I
    const-class v5, Lio/ktor/http/HttpStatusCode;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 241
    nop

    .line 242
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 243
    .local v6, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v7, Lio/ktor/http/HttpStatusCode;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v4

    .line 240
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v3, v4}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 244
    :cond_1
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Ljava/lang/Object;

    invoke-virtual {v3, v1, v4, p3}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2

    return-object v3

    .line 245
    :cond_2
    nop

    .end local v0    # "message$iv":Ljava/lang/Object;
    .end local v1    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v2    # "$i$f$respondWithType":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 93
    return-object v0
.end method

.method public static final respondRedirect(Lio/ktor/server/application/ApplicationCall;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this$respondRedirect"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "permanent"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/http/URLBuilder;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    .local v0, "$i$f$respondRedirect":I
    move-object v1, p0

    .local v1, "$this$url$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 246
    .local v2, "$i$f$url":I
    sget-object v3, Lio/ktor/http/URLBuilder;->Companion:Lio/ktor/http/URLBuilder$Companion;

    invoke-static {v3, v1}, Lio/ktor/server/util/URLBuilderKt;->createFromCall(Lio/ktor/http/URLBuilder$Companion;Lio/ktor/server/application/ApplicationCall;)Lio/ktor/http/URLBuilder;

    move-result-object v3

    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lio/ktor/http/URLBuilder;->buildString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .end local v1    # "$this$url$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v2    # "$i$f$url":I
    invoke-static {p0, v1, p1, p3}, Lio/ktor/server/response/ApplicationResponseFunctionsKt;->respondRedirect(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 110
    return-object v1
.end method

.method private static final respondRedirect$$forInline(Lio/ktor/server/application/ApplicationCall;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p0, "$this$respondRedirect"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "permanent"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/http/URLBuilder;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    .local v0, "$i$f$respondRedirect":I
    move-object v1, p0

    .local v1, "$this$url$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 246
    .local v2, "$i$f$url":I
    sget-object v3, Lio/ktor/http/URLBuilder;->Companion:Lio/ktor/http/URLBuilder$Companion;

    invoke-static {v3, v1}, Lio/ktor/server/util/URLBuilderKt;->createFromCall(Lio/ktor/http/URLBuilder$Companion;Lio/ktor/server/application/ApplicationCall;)Lio/ktor/http/URLBuilder;

    move-result-object v3

    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lio/ktor/http/URLBuilder;

    invoke-virtual {v3}, Lio/ktor/http/URLBuilder;->buildString()Ljava/lang/String;

    move-result-object v3

    .line 109
    .end local v1    # "$this$url$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v2    # "$i$f$url":I
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, v3, p1, p3}, Lio/ktor/server/response/ApplicationResponseFunctionsKt;->respondRedirect(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 110
    return-object v1
.end method

.method public static synthetic respondRedirect$default(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/Url;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 99
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/server/response/ApplicationResponseFunctionsKt;->respondRedirect(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/Url;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic respondRedirect$default(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 90
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/server/response/ApplicationResponseFunctionsKt;->respondRedirect(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic respondRedirect$default(Lio/ktor/server/application/ApplicationCall;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$respondRedirect_u24default"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "permanent"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 108
    const/4 p5, 0x1

    and-int/2addr p4, p5

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/4 p4, 0x0

    .line 109
    .local p4, "$i$f$respondRedirect":I
    move-object v0, p0

    .local v0, "$this$url$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v1, 0x0

    .line 246
    .local v1, "$i$f$url":I
    sget-object v2, Lio/ktor/http/URLBuilder;->Companion:Lio/ktor/http/URLBuilder$Companion;

    invoke-static {v2, v0}, Lio/ktor/server/util/URLBuilderKt;->createFromCall(Lio/ktor/http/URLBuilder$Companion;Lio/ktor/server/application/ApplicationCall;)Lio/ktor/http/URLBuilder;

    move-result-object v2

    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lio/ktor/http/URLBuilder;->buildString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .end local v0    # "$this$url$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v1    # "$i$f$url":I
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, v0, p1, p3}, Lio/ktor/server/response/ApplicationResponseFunctionsKt;->respondRedirect(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    invoke-static {p5}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    sget-object p5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 110
    return-object p5
.end method

.method public static final respondText(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lio/ktor/http/ContentType;",
            "Lio/ktor/http/HttpStatusCode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
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

    instance-of v0, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$3;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$3;

    iget v1, v0, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$3;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$3;

    invoke-direct {v0, p4}, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$3;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 134
    iget v2, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$3;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$respondWithType":I
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local p0    # "$i$f$respondWithType":I
    :pswitch_1
    iget-object p0, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$3;->L$2:Ljava/lang/Object;

    check-cast p0, Lio/ktor/http/HttpStatusCode;

    .local p0, "status":Lio/ktor/http/HttpStatusCode;
    iget-object p1, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$3;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/http/ContentType;

    .local p1, "contentType":Lio/ktor/http/ContentType;
    iget-object p2, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$3;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/server/application/ApplicationCall;

    .local p2, "$this$respondText":Lio/ktor/server/application/ApplicationCall;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, v0

    goto :goto_1

    .end local p0    # "status":Lio/ktor/http/HttpStatusCode;
    .end local p1    # "contentType":Lio/ktor/http/ContentType;
    .end local p2    # "$this$respondText":Lio/ktor/server/application/ApplicationCall;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 139
    .local p0, "$this$respondText":Lio/ktor/server/application/ApplicationCall;
    .restart local p1    # "contentType":Lio/ktor/http/ContentType;
    .local p2, "status":Lio/ktor/http/HttpStatusCode;
    .local p3, "provider":Lkotlin/jvm/functions/Function1;
    iput-object p0, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$3;->L$0:Ljava/lang/Object;

    iput-object p1, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$3;->L$1:Ljava/lang/Object;

    iput-object p2, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$3;->L$2:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$3;->label:I

    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "provider":Lkotlin/jvm/functions/Function1;
    if-ne p3, v1, :cond_1

    .line 134
    return-object v1

    .line 139
    :cond_1
    move-object v6, p2

    move-object p2, p0

    move-object p0, v6

    .local p0, "status":Lio/ktor/http/HttpStatusCode;
    .local p2, "$this$respondText":Lio/ktor/server/application/ApplicationCall;
    :goto_1
    check-cast p3, Ljava/lang/String;

    invoke-static {p2, p1}, Lio/ktor/server/response/ApplicationResponseFunctionsKt;->defaultTextContentType(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;)Lio/ktor/http/ContentType;

    move-result-object v2

    new-instance v3, Lio/ktor/http/content/TextContent;

    invoke-direct {v3, p3, v2, p0}, Lio/ktor/http/content/TextContent;-><init>(Ljava/lang/String;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;)V

    move-object p0, v3

    .line 140
    .end local p1    # "contentType":Lio/ktor/http/ContentType;
    .local p0, "message":Lio/ktor/http/content/TextContent;
    move-object p1, p2

    .end local p2    # "$this$respondText":Lio/ktor/server/application/ApplicationCall;
    .local p1, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 p2, 0x0

    .line 254
    .local p2, "$i$f$respondWithType":I
    instance-of p3, p0, Lio/ktor/http/content/OutgoingContent;

    if-nez p3, :cond_2

    instance-of p3, p0, [B

    if-nez p3, :cond_2

    .line 255
    invoke-interface {p1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object p3

    const/4 v2, 0x0

    .local v2, "$i$f$typeInfo":I
    const-class v3, Lio/ktor/http/content/TextContent;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3

    .line 256
    nop

    .line 257
    .local v3, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v3}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 258
    .local v4, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v5, Lio/ktor/http/content/TextContent;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v2

    .line 255
    .end local v2    # "$i$f$typeInfo":I
    .end local v3    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v4    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {p3, v2}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 259
    :cond_2
    invoke-interface {p1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object p3

    invoke-interface {p3}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object p3

    move-object v2, p0

    check-cast v2, Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$3;->L$0:Ljava/lang/Object;

    iput-object v3, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$3;->L$1:Ljava/lang/Object;

    iput-object v3, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$3;->L$2:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p4, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$3;->label:I

    invoke-virtual {p3, p1, v2, p4}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "message":Lio/ktor/http/content/TextContent;
    .end local p1    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    if-ne p0, v1, :cond_3

    .line 134
    return-object v1

    .line 259
    :cond_3
    move p0, p2

    .line 260
    .end local p2    # "$i$f$respondWithType":I
    .local p0, "$i$f$respondWithType":I
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 141
    .end local p0    # "$i$f$respondWithType":I
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final respondText(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$respondText"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "contentType"    # Lio/ktor/http/ContentType;
    .param p3, "status"    # Lio/ktor/http/HttpStatusCode;
    .param p4, "configure"    # Lkotlin/jvm/functions/Function1;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/String;",
            "Lio/ktor/http/ContentType;",
            "Lio/ktor/http/HttpStatusCode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/http/content/OutgoingContent;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 124
    new-instance v0, Lio/ktor/http/content/TextContent;

    invoke-static {p0, p2}, Lio/ktor/server/response/ApplicationResponseFunctionsKt;->defaultTextContentType(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;)Lio/ktor/http/ContentType;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3}, Lio/ktor/http/content/TextContent;-><init>(Ljava/lang/String;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;)V

    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .local v0, "message":Lio/ktor/http/content/TextContent;
    move-object v1, p0

    .local v1, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 247
    .local v2, "$i$f$respondWithType":I
    instance-of v3, v0, Lio/ktor/http/content/OutgoingContent;

    if-nez v3, :cond_0

    instance-of v3, v0, [B

    if-nez v3, :cond_0

    .line 248
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    const/4 v4, 0x0

    .local v4, "$i$f$typeInfo":I
    const-class v5, Lio/ktor/http/content/TextContent;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    .line 249
    nop

    .line 250
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 251
    .local v6, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const-class v7, Lio/ktor/http/content/TextContent;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v4

    .line 248
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v6    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v3, v4}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 252
    :cond_0
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/lang/Object;

    invoke-virtual {v3, v1, v4, p5}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    return-object v3

    .line 253
    :cond_1
    nop

    .end local v1    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v2    # "$i$f$respondWithType":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 126
    return-object v1
.end method

.method public static synthetic respondText$default(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 134
    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 135
    move-object p1, v0

    .line 134
    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    .line 136
    move-object p2, v0

    .line 134
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/server/response/ApplicationResponseFunctionsKt;->respondText(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic respondText$default(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 118
    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 120
    move-object v3, v0

    goto :goto_0

    .line 118
    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 121
    move-object v4, v0

    goto :goto_1

    .line 118
    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    .line 122
    sget-object p2, Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$2;->INSTANCE:Lio/ktor/server/response/ApplicationResponseFunctionsKt$respondText$2;

    move-object p4, p2

    check-cast p4, Lkotlin/jvm/functions/Function1;

    move-object v5, p4

    goto :goto_2

    .line 118
    :cond_2
    move-object v5, p4

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/ktor/server/response/ApplicationResponseFunctionsKt;->respondText(Lio/ktor/server/application/ApplicationCall;Ljava/lang/String;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic respondWithType(Lio/ktor/server/application/ApplicationCall;Lio/ktor/http/HttpStatusCode;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p0, "$this$respond"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "status"    # Lio/ktor/http/HttpStatusCode;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lio/ktor/http/HttpStatusCode;",
            "TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 60
    .local v0, "$i$f$respondWithType":I
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/ktor/server/response/ApplicationResponse;->status(Lio/ktor/http/HttpStatusCode;)V

    .line 61
    move-object v1, p0

    .local v1, "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v2, 0x0

    .line 225
    .local v2, "$i$f$respondWithType":I
    instance-of v3, p2, Lio/ktor/http/content/OutgoingContent;

    if-nez v3, :cond_0

    instance-of v3, p2, [B

    if-nez v3, :cond_0

    .line 226
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    const/4 v4, 0x0

    .local v4, "$i$f$typeInfo":I
    const/4 v5, 0x6

    const-string v6, "T"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 227
    const/4 v5, 0x0

    .line 228
    .local v5, "kType$iv$iv":Lkotlin/reflect/KType;
    invoke-static {v5}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 229
    .local v7, "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    const/4 v8, 0x4

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v6, Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v7, v6, v5}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v6

    .line 226
    .end local v4    # "$i$f$typeInfo":I
    .end local v5    # "kType$iv$iv":Lkotlin/reflect/KType;
    .end local v7    # "reifiedType$iv$iv":Ljava/lang/reflect/Type;
    invoke-static {v3, v6}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 230
    :cond_0
    invoke-interface {v1}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p2

    check-cast v4, Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-virtual {v3, v1, v4, p3}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 231
    nop

    .end local v1    # "$this$respond$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v2    # "$i$f$respondWithType":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 62
    return-object v1
.end method

.method public static final synthetic respondWithType(Lio/ktor/server/application/ApplicationCall;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this$respond"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/application/ApplicationCall;",
            "TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    .local v0, "$i$f$respondWithType":I
    instance-of v1, p1, Lio/ktor/http/content/OutgoingContent;

    if-nez v1, :cond_0

    instance-of v1, p1, [B

    if-nez v1, :cond_0

    .line 27
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v1

    const/4 v2, 0x0

    .local v2, "$i$f$typeInfo":I
    const/4 v3, 0x6

    const-string v4, "T"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 219
    const/4 v3, 0x0

    .line 220
    .local v3, "kType$iv":Lkotlin/reflect/KType;
    invoke-static {v3}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 221
    .local v5, "reifiedType$iv":Ljava/lang/reflect/Type;
    const/4 v6, 0x4

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v5, v4, v3}, Lio/ktor/util/reflect/TypeInfoJvmKt;->typeInfoImpl(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lio/ktor/util/reflect/TypeInfo;

    move-result-object v4

    .line 27
    .end local v2    # "$i$f$typeInfo":I
    .end local v3    # "kType$iv":Lkotlin/reflect/KType;
    .end local v5    # "reifiedType$iv":Ljava/lang/reflect/Type;
    invoke-static {v1, v4}, Lio/ktor/server/response/ResponseTypeKt;->setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V

    .line 29
    :cond_0
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v1

    invoke-interface {v1}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-virtual {v1, p0, v2, p2}, Lio/ktor/server/response/ApplicationSendPipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    return-object v1
.end method
