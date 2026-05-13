.class public final Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;
.super Lio/ktor/server/routing/RouteSelector;
.source "RouteSelector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRouteSelector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RouteSelector.kt\nio/ktor/server/routing/HttpMultiAcceptRouteSelector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,700:1\n288#2:701\n1747#2,3:702\n289#2:705\n*S KotlinDebug\n*F\n+ 1 RouteSelector.kt\nio/ktor/server/routing/HttpMultiAcceptRouteSelector\n*L\n638#1:701\n638#1:702,3\n638#1:705\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u000f\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\t\u0010\u0014\u001a\u00020\u0013H\u00d6\u0001J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0017"
    }
    d2 = {
        "Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;",
        "Lio/ktor/server/routing/RouteSelector;",
        "contentTypes",
        "",
        "Lio/ktor/http/ContentType;",
        "(Ljava/util/List;)V",
        "getContentTypes",
        "()Ljava/util/List;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "evaluate",
        "Lio/ktor/server/routing/RouteSelectorEvaluation;",
        "context",
        "Lio/ktor/server/routing/RoutingResolveContext;",
        "segmentIndex",
        "",
        "hashCode",
        "toString",
        "",
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
.field private final contentTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/http/ContentType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1, "contentTypes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ktor/http/ContentType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contentTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    invoke-direct {p0}, Lio/ktor/server/routing/RouteSelector;-><init>()V

    .line 626
    iput-object p1, p0, Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;->contentTypes:Ljava/util/List;

    .line 625
    return-void
.end method

.method public static synthetic copy$default(Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;Ljava/util/List;ILjava/lang/Object;)Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;->contentTypes:Ljava/util/List;

    :cond_0
    invoke-virtual {p0, p1}, Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;->copy(Ljava/util/List;)Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/http/ContentType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;->contentTypes:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;)Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ktor/http/ContentType;",
            ">;)",
            "Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;"
        }
    .end annotation

    const-string v0, "contentTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;

    invoke-direct {v0, p1}, Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;

    iget-object v3, p0, Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;->contentTypes:Ljava/util/List;

    iget-object v1, v1, Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;->contentTypes:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public evaluate(Lio/ktor/server/routing/RoutingResolveContext;I)Lio/ktor/server/routing/RouteSelectorEvaluation;
    .locals 17
    .param p1, "context"    # Lio/ktor/server/routing/RoutingResolveContext;
    .param p2, "segmentIndex"    # I

    const-string v0, "context"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    invoke-virtual/range {p1 .. p1}, Lio/ktor/server/routing/RoutingResolveContext;->getCall()Lio/ktor/server/application/ApplicationCall;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/request/ApplicationRequest;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v0

    sget-object v2, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v2}, Lio/ktor/http/HttpHeaders;->getAccept()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/ktor/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 631
    .local v2, "acceptHeaderContent":Ljava/lang/String;
    nop

    .line 632
    :try_start_0
    invoke-static {v2}, Lio/ktor/http/HttpHeaderValueParserKt;->parseAndSortContentTypeHeader(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 634
    .local v0, "parsedHeaders":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 635
    sget-object v3, Lio/ktor/server/routing/RouteSelectorEvaluation;->Companion:Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;

    invoke-virtual {v3}, Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;->getMissing()Lio/ktor/server/routing/RouteSelectorEvaluation;

    move-result-object v3

    return-object v3

    .line 638
    :cond_0
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 701
    .local v4, "$i$f$firstOrNull":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lio/ktor/http/HeaderValue;
    :try_end_0
    .catch Lio/ktor/http/BadContentTypeFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .local v7, "header":Lio/ktor/http/HeaderValue;
    const/4 v8, 0x0

    .line 638
    .local v8, "$i$a$-firstOrNull-HttpMultiAcceptRouteSelector$evaluate$header$1":I
    move-object/from16 v9, p0

    :try_start_1
    iget-object v10, v9, Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;->contentTypes:Ljava/util/List;

    check-cast v10, Ljava/lang/Iterable;

    .local v10, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 702
    .local v11, "$i$f$any":I
    instance-of v12, v10, Ljava/util/Collection;

    if-eqz v12, :cond_2

    move-object v12, v10

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v13, 0x0

    goto :goto_0

    .line 703
    :cond_2
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Lio/ktor/http/ContentType;

    .local v15, "it":Lio/ktor/http/ContentType;
    const/16 v16, 0x0

    .line 638
    .local v16, "$i$a$-any-HttpMultiAcceptRouteSelector$evaluate$header$1$1":I
    invoke-virtual {v7}, Lio/ktor/http/HeaderValue;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Lio/ktor/http/ContentType;->match(Ljava/lang/String;)Z

    move-result v13

    .line 703
    .end local v15    # "it":Lio/ktor/http/ContentType;
    .end local v16    # "$i$a$-any-HttpMultiAcceptRouteSelector$evaluate$header$1$1":I
    if-eqz v13, :cond_3

    const/4 v13, 0x1

    goto :goto_0

    .line 704
    .end local v14    # "element$iv":Ljava/lang/Object;
    :cond_4
    const/4 v13, 0x0

    .line 638
    .end local v10    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$any":I
    :goto_0
    nop

    .line 701
    .end local v7    # "header":Lio/ktor/http/HeaderValue;
    .end local v8    # "$i$a$-firstOrNull-HttpMultiAcceptRouteSelector$evaluate$header$1":I
    if-eqz v13, :cond_1

    goto :goto_1

    .line 705
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_5
    move-object/from16 v9, p0

    const/4 v6, 0x0

    .line 638
    .end local v3    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$firstOrNull":I
    :goto_1
    check-cast v6, Lio/ktor/http/HeaderValue;

    move-object v3, v6

    .line 639
    .local v3, "header":Lio/ktor/http/HeaderValue;
    if-eqz v3, :cond_6

    .line 640
    new-instance v4, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    invoke-virtual {v3}, Lio/ktor/http/HeaderValue;->getQuality()D

    move-result-wide v11

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v4

    invoke-direct/range {v10 .. v16}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;-><init>(DLio/ktor/http/Parameters;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v4, Lio/ktor/server/routing/RouteSelectorEvaluation;

    return-object v4

    .line 643
    :cond_6
    sget-object v4, Lio/ktor/server/routing/RouteSelectorEvaluation;->Companion:Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;

    invoke-virtual {v4}, Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;->getFailedParameter()Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    move-result-object v4

    check-cast v4, Lio/ktor/server/routing/RouteSelectorEvaluation;
    :try_end_1
    .catch Lio/ktor/http/BadContentTypeFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    .line 644
    .end local v0    # "parsedHeaders":Ljava/util/List;
    .end local v3    # "header":Lio/ktor/http/HeaderValue;
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v9, p0

    .line 645
    .local v0, "failedToParse":Lio/ktor/http/BadContentTypeFormatException;
    :goto_2
    new-instance v3, Lio/ktor/server/plugins/BadRequestException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal Accept header format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Lio/ktor/server/plugins/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final getContentTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/http/ContentType;",
            ">;"
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;->contentTypes:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;->contentTypes:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(contentTypes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/routing/HttpMultiAcceptRouteSelector;->contentTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
