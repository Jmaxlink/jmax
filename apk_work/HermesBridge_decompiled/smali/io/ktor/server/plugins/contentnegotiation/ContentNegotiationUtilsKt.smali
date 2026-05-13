.class public final Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationUtilsKt;
.super Ljava/lang/Object;
.source "ContentNegotiationUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentNegotiationUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentNegotiationUtils.kt\nio/ktor/server/plugins/contentnegotiation/ContentNegotiationUtilsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,37:1\n1549#2:38\n1620#2,3:39\n1747#2,3:42\n*S KotlinDebug\n*F\n+ 1 ContentNegotiationUtils.kt\nio/ktor/server/plugins/contentnegotiation/ContentNegotiationUtilsKt\n*L\n24#1:38\n24#1:39,3\n35#1:42,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0000\u001a\u0012\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003*\u00020\u0008H\u0000\u00a8\u0006\t"
    }
    d2 = {
        "checkAcceptHeader",
        "",
        "acceptItems",
        "",
        "Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "parseAcceptHeader",
        "Lio/ktor/server/application/ApplicationCall;",
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
.method public static final checkAcceptHeader(Ljava/util/List;Lio/ktor/http/ContentType;)Z
    .locals 9
    .param p0, "acceptItems"    # Ljava/util/List;
    .param p1, "contentType"    # Lio/ktor/http/ContentType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;",
            ">;",
            "Lio/ktor/http/ContentType;",
            ")Z"
        }
    .end annotation

    const-string v0, "acceptItems"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 42
    .local v2, "$i$f$any":I
    instance-of v3, v0, Ljava/util/Collection;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v4

    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;

    .local v6, "it":Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;
    const/4 v7, 0x0

    .line 35
    .local v7, "$i$a$-any-ContentNegotiationUtilsKt$checkAcceptHeader$1":I
    invoke-virtual {v6}, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->getContentType()Lio/ktor/http/ContentType;

    move-result-object v8

    invoke-virtual {p1, v8}, Lio/ktor/http/ContentType;->match(Lio/ktor/http/ContentType;)Z

    move-result v6

    .line 43
    .end local v6    # "it":Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;
    .end local v7    # "$i$a$-any-ContentNegotiationUtilsKt$checkAcceptHeader$1":I
    if-eqz v6, :cond_2

    goto :goto_0

    .line 44
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_3
    move v1, v4

    .line 35
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$any":I
    :goto_0
    return v1

    .line 34
    :cond_4
    :goto_1
    return v1
.end method

.method public static final parseAcceptHeader(Lio/ktor/server/application/ApplicationCall;)Ljava/util/List;
    .locals 14
    .param p0, "$this$parseAcceptHeader"    # Lio/ktor/server/application/ApplicationCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            ")",
            "Ljava/util/List<",
            "Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v0

    sget-object v1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getAccept()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->header(Lio/ktor/server/request/ApplicationRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "acceptHeaderContent":Ljava/lang/String;
    nop

    .line 24
    :try_start_0
    invoke-static {v0}, Lio/ktor/http/HttpHeaderValueParserKt;->parseHeaderValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 38
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 39
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 40
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lio/ktor/http/HeaderValue;

    .local v8, "it":Lio/ktor/http/HeaderValue;
    const/4 v9, 0x0

    .line 24
    .local v9, "$i$a$-map-ContentNegotiationUtilsKt$parseAcceptHeader$1":I
    new-instance v10, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;

    sget-object v11, Lio/ktor/http/ContentType;->Companion:Lio/ktor/http/ContentType$Companion;

    invoke-virtual {v8}, Lio/ktor/http/HeaderValue;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lio/ktor/http/ContentType$Companion;->parse(Ljava/lang/String;)Lio/ktor/http/ContentType;

    move-result-object v11

    invoke-virtual {v8}, Lio/ktor/http/HeaderValue;->getQuality()D

    move-result-wide v12

    invoke-direct {v10, v11, v12, v13}, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;-><init>(Lio/ktor/http/ContentType;D)V

    .line 40
    .end local v8    # "it":Lio/ktor/http/HeaderValue;
    .end local v9    # "$i$a$-map-ContentNegotiationUtilsKt$parseAcceptHeader$1":I
    invoke-interface {v3, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Lio/ktor/http/BadContentTypeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    nop

    .line 23
    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    return-object v3

    .line 25
    :catch_0
    move-exception v1

    .line 26
    .local v1, "parseFailure":Lio/ktor/http/BadContentTypeFormatException;
    new-instance v2, Lio/ktor/server/plugins/BadRequestException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal Accept header format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Lio/ktor/server/plugins/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
