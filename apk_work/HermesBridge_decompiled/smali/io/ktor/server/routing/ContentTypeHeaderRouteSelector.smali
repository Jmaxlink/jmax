.class public final Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;
.super Lio/ktor/server/routing/RouteSelector;
.source "RouteSelector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRouteSelector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RouteSelector.kt\nio/ktor/server/routing/ContentTypeHeaderRouteSelector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,700:1\n288#2,2:701\n*S KotlinDebug\n*F\n+ 1 RouteSelector.kt\nio/ktor/server/routing/ContentTypeHeaderRouteSelector\n*L\n595#1:701,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\t\u0010\u0015\u001a\u00020\u0014H\u00d6\u0001J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;",
        "Lio/ktor/server/routing/RouteSelector;",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "(Lio/ktor/http/ContentType;)V",
        "getContentType",
        "()Lio/ktor/http/ContentType;",
        "failedEvaluation",
        "Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;",
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
.field private final contentType:Lio/ktor/http/ContentType;

.field private final failedEvaluation:Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;


# direct methods
.method public constructor <init>(Lio/ktor/http/ContentType;)V
    .locals 4
    .param p1, "contentType"    # Lio/ktor/http/ContentType;

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    invoke-direct {p0}, Lio/ktor/server/routing/RouteSelector;-><init>()V

    .line 583
    iput-object p1, p0, Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;->contentType:Lio/ktor/http/ContentType;

    .line 586
    new-instance v0, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    .line 587
    nop

    .line 588
    sget-object v1, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getUnsupportedMediaType()Lio/ktor/http/HttpStatusCode;

    move-result-object v1

    .line 586
    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    invoke-direct {v0, v2, v3, v1}, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;-><init>(DLio/ktor/http/HttpStatusCode;)V

    iput-object v0, p0, Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;->failedEvaluation:Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    .line 582
    return-void
.end method

.method public static synthetic copy$default(Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;Lio/ktor/http/ContentType;ILjava/lang/Object;)Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;->contentType:Lio/ktor/http/ContentType;

    :cond_0
    invoke-virtual {p0, p1}, Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;->copy(Lio/ktor/http/ContentType;)Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/ktor/http/ContentType;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;->contentType:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public final copy(Lio/ktor/http/ContentType;)Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;
    .locals 1

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;

    invoke-direct {v0, p1}, Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;-><init>(Lio/ktor/http/ContentType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;

    iget-object v3, p0, Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;->contentType:Lio/ktor/http/ContentType;

    iget-object v1, v1, Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;->contentType:Lio/ktor/http/ContentType;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public evaluate(Lio/ktor/server/routing/RoutingResolveContext;I)Lio/ktor/server/routing/RouteSelectorEvaluation;
    .locals 11
    .param p1, "context"    # Lio/ktor/server/routing/RoutingResolveContext;
    .param p2, "segmentIndex"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    invoke-virtual {p1}, Lio/ktor/server/routing/RoutingResolveContext;->getCall()Lio/ktor/server/application/ApplicationCall;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v0

    sget-object v1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->header(Lio/ktor/server/request/ApplicationRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "headers":Ljava/lang/String;
    invoke-static {v0}, Lio/ktor/http/HttpHeaderValueParserKt;->parseAndSortContentTypeHeader(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 595
    .local v1, "parsedHeaders":Ljava/util/List;
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 701
    .local v3, "$i$f$firstOrNull":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lio/ktor/http/HeaderValue;

    .local v6, "it":Lio/ktor/http/HeaderValue;
    const/4 v7, 0x0

    .line 595
    .local v7, "$i$a$-firstOrNull-ContentTypeHeaderRouteSelector$evaluate$header$1":I
    sget-object v8, Lio/ktor/http/ContentType;->Companion:Lio/ktor/http/ContentType$Companion;

    invoke-virtual {v6}, Lio/ktor/http/HeaderValue;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/ktor/http/ContentType$Companion;->parse(Ljava/lang/String;)Lio/ktor/http/ContentType;

    move-result-object v8

    iget-object v9, p0, Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;->contentType:Lio/ktor/http/ContentType;

    invoke-virtual {v8, v9}, Lio/ktor/http/ContentType;->match(Lio/ktor/http/ContentType;)Z

    move-result v6

    .line 701
    .end local v6    # "it":Lio/ktor/http/HeaderValue;
    .end local v7    # "$i$a$-firstOrNull-ContentTypeHeaderRouteSelector$evaluate$header$1":I
    if-eqz v6, :cond_0

    goto :goto_0

    .line 702
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_1
    const/4 v5, 0x0

    .line 595
    .end local v2    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v5, Lio/ktor/http/HeaderValue;

    if-nez v5, :cond_2

    .line 596
    iget-object v2, p0, Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;->failedEvaluation:Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    check-cast v2, Lio/ktor/server/routing/RouteSelectorEvaluation;

    return-object v2

    .line 595
    :cond_2
    move-object v2, v5

    .line 598
    .local v2, "header":Lio/ktor/http/HeaderValue;
    new-instance v10, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    invoke-virtual {v2}, Lio/ktor/http/HeaderValue;->getQuality()D

    move-result-wide v4

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;-><init>(DLio/ktor/http/Parameters;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v10, Lio/ktor/server/routing/RouteSelectorEvaluation;

    return-object v10
.end method

.method public final getContentType()Lio/ktor/http/ContentType;
    .locals 1

    .line 583
    iget-object v0, p0, Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;->contentType:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;->contentType:Lio/ktor/http/ContentType;

    invoke-virtual {v0}, Lio/ktor/http/ContentType;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(contentType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/routing/ContentTypeHeaderRouteSelector;->contentType:Lio/ktor/http/ContentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
