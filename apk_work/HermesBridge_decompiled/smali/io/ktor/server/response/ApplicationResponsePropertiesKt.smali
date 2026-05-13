.class public final Lio/ktor/server/response/ApplicationResponsePropertiesKt;
.super Ljava/lang/Object;
.source "ApplicationResponseProperties.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0004\u001a/\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\r\u001a-\u0010\u0006\u001a\u00020\u0001*\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000f\u001a/\u0010\u0006\u001a\u00020\u0001*\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u0010\u001a\u0012\u0010\u0011\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u000c\u001a\u001a\u0010\u0012\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u0014\u001a\u001a\u0010\u0012\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\n\u001a\u001a\u0010\u0012\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u000c\u00a8\u0006\u0015"
    }
    d2 = {
        "cacheControl",
        "",
        "Lio/ktor/http/HeadersBuilder;",
        "value",
        "Lio/ktor/http/CacheControl;",
        "Lio/ktor/server/response/ApplicationResponse;",
        "contentRange",
        "range",
        "Lkotlin/ranges/LongRange;",
        "fullLength",
        "",
        "unit",
        "",
        "(Lio/ktor/http/HeadersBuilder;Lkotlin/ranges/LongRange;Ljava/lang/Long;Ljava/lang/String;)V",
        "Lio/ktor/http/RangeUnits;",
        "(Lio/ktor/server/response/ApplicationResponse;Lkotlin/ranges/LongRange;Ljava/lang/Long;Lio/ktor/http/RangeUnits;)V",
        "(Lio/ktor/server/response/ApplicationResponse;Lkotlin/ranges/LongRange;Ljava/lang/Long;Ljava/lang/String;)V",
        "etag",
        "header",
        "name",
        "",
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
.method public static final cacheControl(Lio/ktor/http/HeadersBuilder;Lio/ktor/http/CacheControl;)V
    .locals 2
    .param p0, "$this$cacheControl"    # Lio/ktor/http/HeadersBuilder;
    .param p1, "value"    # Lio/ktor/http/CacheControl;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getCacheControl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/ktor/http/CacheControl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/ktor/http/HeadersBuilder;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final cacheControl(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/http/CacheControl;)V
    .locals 2
    .param p0, "$this$cacheControl"    # Lio/ktor/server/response/ApplicationResponse;
    .param p1, "value"    # Lio/ktor/http/CacheControl;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getCacheControl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/ktor/http/CacheControl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/ktor/server/response/ApplicationResponsePropertiesKt;->header(Lio/ktor/server/response/ApplicationResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final contentRange(Lio/ktor/http/HeadersBuilder;Lkotlin/ranges/LongRange;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 2
    .param p0, "$this$contentRange"    # Lio/ktor/http/HeadersBuilder;
    .param p1, "range"    # Lkotlin/ranges/LongRange;
    .param p2, "fullLength"    # Ljava/lang/Long;
    .param p3, "unit"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getContentRange()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lio/ktor/http/ContentRangeKt;->contentRangeHeaderValue(Lkotlin/ranges/LongRange;Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/ktor/http/HeadersBuilder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static final contentRange(Lio/ktor/server/response/ApplicationResponse;Lkotlin/ranges/LongRange;Ljava/lang/Long;Lio/ktor/http/RangeUnits;)V
    .locals 1
    .param p0, "$this$contentRange"    # Lio/ktor/server/response/ApplicationResponse;
    .param p1, "range"    # Lkotlin/ranges/LongRange;
    .param p2, "fullLength"    # Ljava/lang/Long;
    .param p3, "unit"    # Lio/ktor/http/RangeUnits;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p3}, Lio/ktor/http/RangeUnits;->getUnitToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lio/ktor/server/response/ApplicationResponsePropertiesKt;->contentRange(Lio/ktor/server/response/ApplicationResponse;Lkotlin/ranges/LongRange;Ljava/lang/Long;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static final contentRange(Lio/ktor/server/response/ApplicationResponse;Lkotlin/ranges/LongRange;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 2
    .param p0, "$this$contentRange"    # Lio/ktor/server/response/ApplicationResponse;
    .param p1, "range"    # Lkotlin/ranges/LongRange;
    .param p2, "fullLength"    # Ljava/lang/Long;
    .param p3, "unit"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getContentRange()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lio/ktor/http/ContentRangeKt;->contentRangeHeaderValue(Lkotlin/ranges/LongRange;Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/ktor/server/response/ApplicationResponsePropertiesKt;->header(Lio/ktor/server/response/ApplicationResponse;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static synthetic contentRange$default(Lio/ktor/http/HeadersBuilder;Lkotlin/ranges/LongRange;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 45
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 47
    const/4 p2, 0x0

    .line 45
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 48
    sget-object p3, Lio/ktor/http/RangeUnits;->Bytes:Lio/ktor/http/RangeUnits;

    invoke-virtual {p3}, Lio/ktor/http/RangeUnits;->getUnitToken()Ljava/lang/String;

    move-result-object p3

    .line 45
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/server/response/ApplicationResponsePropertiesKt;->contentRange(Lio/ktor/http/HeadersBuilder;Lkotlin/ranges/LongRange;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic contentRange$default(Lio/ktor/server/response/ApplicationResponse;Lkotlin/ranges/LongRange;Ljava/lang/Long;Lio/ktor/http/RangeUnits;ILjava/lang/Object;)V
    .locals 0

    .line 56
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 58
    const/4 p2, 0x0

    .line 56
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/server/response/ApplicationResponsePropertiesKt;->contentRange(Lio/ktor/server/response/ApplicationResponse;Lkotlin/ranges/LongRange;Ljava/lang/Long;Lio/ktor/http/RangeUnits;)V

    return-void
.end method

.method public static synthetic contentRange$default(Lio/ktor/server/response/ApplicationResponse;Lkotlin/ranges/LongRange;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 67
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 69
    const/4 p2, 0x0

    .line 67
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 70
    sget-object p3, Lio/ktor/http/RangeUnits;->Bytes:Lio/ktor/http/RangeUnits;

    invoke-virtual {p3}, Lio/ktor/http/RangeUnits;->getUnitToken()Ljava/lang/String;

    move-result-object p3

    .line 67
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/server/response/ApplicationResponsePropertiesKt;->contentRange(Lio/ktor/server/response/ApplicationResponse;Lkotlin/ranges/LongRange;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method public static final etag(Lio/ktor/server/response/ApplicationResponse;Ljava/lang/String;)V
    .locals 1
    .param p0, "$this$etag"    # Lio/ktor/server/response/ApplicationResponse;
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getETag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lio/ktor/server/response/ApplicationResponsePropertiesKt;->header(Lio/ktor/server/response/ApplicationResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final header(Lio/ktor/server/response/ApplicationResponse;Ljava/lang/String;I)V
    .locals 7
    .param p0, "$this$header"    # Lio/ktor/server/response/ApplicationResponse;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {p0}, Lio/ktor/server/response/ApplicationResponse;->getHeaders()Lio/ktor/server/response/ResponseHeaders;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lio/ktor/server/response/ResponseHeaders;->append$default(Lio/ktor/server/response/ResponseHeaders;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final header(Lio/ktor/server/response/ApplicationResponse;Ljava/lang/String;J)V
    .locals 7
    .param p0, "$this$header"    # Lio/ktor/server/response/ApplicationResponse;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-interface {p0}, Lio/ktor/server/response/ApplicationResponse;->getHeaders()Lio/ktor/server/response/ResponseHeaders;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lio/ktor/server/response/ResponseHeaders;->append$default(Lio/ktor/server/response/ResponseHeaders;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final header(Lio/ktor/server/response/ApplicationResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "$this$header"    # Lio/ktor/server/response/ApplicationResponse;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {p0}, Lio/ktor/server/response/ApplicationResponse;->getHeaders()Lio/ktor/server/response/ResponseHeaders;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lio/ktor/server/response/ResponseHeaders;->append$default(Lio/ktor/server/response/ResponseHeaders;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
