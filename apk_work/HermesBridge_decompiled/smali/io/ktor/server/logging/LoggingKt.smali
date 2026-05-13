.class public final Lio/ktor/server/logging/LoggingKt;
.super Ljava/lang/Object;
.source "Logging.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogging.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Logging.kt\nio/ktor/server/logging/LoggingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,39:1\n1#2:40\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0007\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "mdcProvider",
        "Lio/ktor/server/logging/MDCProvider;",
        "Lio/ktor/server/application/Application;",
        "getMdcProvider",
        "(Lio/ktor/server/application/Application;)Lio/ktor/server/logging/MDCProvider;",
        "toLogString",
        "",
        "Lio/ktor/server/request/ApplicationRequest;",
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
.method public static final getMdcProvider(Lio/ktor/server/application/Application;)Lio/ktor/server/logging/MDCProvider;
    .locals 6
    .param p0, "$this$mdcProvider"    # Lio/ktor/server/application/Application;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    move-object v0, p0

    check-cast v0, Lio/ktor/util/pipeline/Pipeline;

    invoke-static {v0}, Lio/ktor/server/application/ApplicationPluginKt;->getPluginRegistry(Lio/ktor/util/pipeline/Pipeline;)Lio/ktor/util/Attributes;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/util/Attributes;->getAllKeys()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 37
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/util/AttributeKey;

    .line 40
    .local v1, "it":Lio/ktor/util/AttributeKey;
    const/4 v3, 0x0

    .line 37
    .local v3, "$i$a$-firstNotNullOfOrNull-LoggingKt$mdcProvider$1":I
    move-object v4, p0

    check-cast v4, Lio/ktor/util/pipeline/Pipeline;

    invoke-static {v4}, Lio/ktor/server/application/ApplicationPluginKt;->getPluginRegistry(Lio/ktor/util/pipeline/Pipeline;)Lio/ktor/util/Attributes;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type io.ktor.util.AttributeKey<kotlin.Any>"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Lio/ktor/util/Attributes;->getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lio/ktor/server/logging/MDCProvider;

    if-eqz v5, :cond_1

    check-cast v4, Lio/ktor/server/logging/MDCProvider;

    move-object v2, v4

    .end local v1    # "it":Lio/ktor/util/AttributeKey;
    .end local v3    # "$i$a$-firstNotNullOfOrNull-LoggingKt$mdcProvider$1":I
    :cond_1
    if-eqz v2, :cond_0

    .line 36
    :cond_2
    if-nez v2, :cond_3

    .line 38
    sget-object v0, Lio/ktor/server/logging/EmptyMDCProvider;->INSTANCE:Lio/ktor/server/logging/EmptyMDCProvider;

    move-object v2, v0

    check-cast v2, Lio/ktor/server/logging/MDCProvider;

    :cond_3
    return-object v2
.end method

.method public static final toLogString(Lio/ktor/server/request/ApplicationRequest;)Ljava/lang/String;
    .locals 2
    .param p0, "$this$toLogString"    # Lio/ktor/server/request/ApplicationRequest;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->getHttpMethod(Lio/ktor/server/request/ApplicationRequest;)Lio/ktor/http/HttpMethod;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/http/HttpMethod;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->path(Lio/ktor/server/request/ApplicationRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
