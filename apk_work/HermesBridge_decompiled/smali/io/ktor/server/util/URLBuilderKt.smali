.class public final Lio/ktor/server/util/URLBuilderKt;
.super Ljava/lang/Object;
.source "URLBuilder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006\u001a\u0012\u0010\u0007\u001a\u00020\u0004*\u00020\u00082\u0006\u0010\t\u001a\u00020\n\u001a+\u0010\u0000\u001a\u00020\u0001*\u00020\n2\u0019\u0008\u0002\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000b"
    }
    d2 = {
        "url",
        "",
        "block",
        "Lkotlin/Function1;",
        "Lio/ktor/http/URLBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "createFromCall",
        "Lio/ktor/http/URLBuilder$Companion;",
        "call",
        "Lio/ktor/server/application/ApplicationCall;",
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
.method public static final createFromCall(Lio/ktor/http/URLBuilder$Companion;Lio/ktor/server/application/ApplicationCall;)Lio/ktor/http/URLBuilder;
    .locals 14
    .param p0, "$this$createFromCall"    # Lio/ktor/http/URLBuilder$Companion;
    .param p1, "call"    # Lio/ktor/server/application/ApplicationCall;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/server/plugins/OriginConnectionPointKt;->getOrigin(Lio/ktor/server/request/ApplicationRequest;)Lio/ktor/http/RequestConnectionPoint;

    move-result-object v0

    .line 18
    .local v0, "origin":Lio/ktor/http/RequestConnectionPoint;
    new-instance v13, Lio/ktor/http/URLBuilder;

    const/16 v11, 0x1ff

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Lio/ktor/http/URLBuilder;-><init>(Lio/ktor/http/URLProtocol;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/ktor/http/Parameters;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    .local v1, "builder":Lio/ktor/http/URLBuilder;
    sget-object v2, Lio/ktor/http/URLProtocol;->Companion:Lio/ktor/http/URLProtocol$Companion;

    invoke-virtual {v2}, Lio/ktor/http/URLProtocol$Companion;->getByName()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0}, Lio/ktor/http/RequestConnectionPoint;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/ktor/http/URLProtocol;

    if-nez v2, :cond_0

    new-instance v2, Lio/ktor/http/URLProtocol;

    invoke-interface {v0}, Lio/ktor/http/RequestConnectionPoint;->getScheme()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lio/ktor/http/URLProtocol;-><init>(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {v1, v2}, Lio/ktor/http/URLBuilder;->setProtocol(Lio/ktor/http/URLProtocol;)V

    .line 20
    invoke-interface {v0}, Lio/ktor/http/RequestConnectionPoint;->getServerHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/ktor/http/URLBuilder;->setHost(Ljava/lang/String;)V

    .line 21
    invoke-interface {v0}, Lio/ktor/http/RequestConnectionPoint;->getServerPort()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/ktor/http/URLBuilder;->setPort(I)V

    .line 22
    invoke-interface {p1}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v2

    invoke-static {v2}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->path(Lio/ktor/server/request/ApplicationRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/ktor/http/URLBuilderKt;->setEncodedPath(Lio/ktor/http/URLBuilder;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Lio/ktor/http/URLBuilder;->getParameters()Lio/ktor/http/ParametersBuilder;

    move-result-object v2

    invoke-interface {p1}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/server/request/ApplicationRequest;->getQueryParameters()Lio/ktor/http/Parameters;

    move-result-object v3

    check-cast v3, Lio/ktor/util/StringValues;

    invoke-interface {v2, v3}, Lio/ktor/http/ParametersBuilder;->appendAll(Lio/ktor/util/StringValues;)V

    .line 25
    return-object v1
.end method

.method public static final url(Lio/ktor/server/application/ApplicationCall;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 2
    .param p0, "$this$url"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/http/URLBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    .local v0, "$i$f$url":I
    sget-object v1, Lio/ktor/http/URLBuilder;->Companion:Lio/ktor/http/URLBuilder$Companion;

    invoke-static {v1, p0}, Lio/ktor/server/util/URLBuilderKt;->createFromCall(Lio/ktor/http/URLBuilder$Companion;Lio/ktor/server/application/ApplicationCall;)Lio/ktor/http/URLBuilder;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lio/ktor/http/URLBuilder;->buildString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final url(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 13
    .param p0, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/http/URLBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lio/ktor/http/URLBuilder;

    const/16 v11, 0x1ff

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lio/ktor/http/URLBuilder;-><init>(Lio/ktor/http/URLProtocol;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/ktor/http/Parameters;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lio/ktor/http/URLBuilder;->buildString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic url$default(Lio/ktor/server/application/ApplicationCall;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0
    .param p0, "$this$url_u24default"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;

    .line 37
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p2, Lio/ktor/server/util/URLBuilderKt$url$1;->INSTANCE:Lio/ktor/server/util/URLBuilderKt$url$1;

    move-object p1, p2

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "block"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 38
    .local p2, "$i$f$url":I
    sget-object p3, Lio/ktor/http/URLBuilder;->Companion:Lio/ktor/http/URLBuilder$Companion;

    invoke-static {p3, p0}, Lio/ktor/server/util/URLBuilderKt;->createFromCall(Lio/ktor/http/URLBuilder$Companion;Lio/ktor/server/application/ApplicationCall;)Lio/ktor/http/URLBuilder;

    move-result-object p3

    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lio/ktor/http/URLBuilder;->buildString()Ljava/lang/String;

    move-result-object p3

    return-object p3
.end method
