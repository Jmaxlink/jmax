.class public final Lio/ktor/server/response/ApplicationResponsePropertiesJvmKt;
.super Ljava/lang/Object;
.source "ApplicationResponsePropertiesJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0000\u001a\u00020\u0003\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0003\u001a\u001a\u0010\u0006\u001a\u00020\u0001*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n\u001a\u0012\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000c\u001a\u00020\r\u001a\u0012\u0010\u000b\u001a\u00020\u0001*\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r\u00a8\u0006\u000e"
    }
    d2 = {
        "expires",
        "",
        "Lio/ktor/http/HeadersBuilder;",
        "Ljava/time/LocalDateTime;",
        "Lio/ktor/server/response/ApplicationResponse;",
        "value",
        "header",
        "name",
        "",
        "date",
        "Ljava/time/temporal/Temporal;",
        "lastModified",
        "dateTime",
        "Ljava/time/ZonedDateTime;",
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
.method public static final expires(Lio/ktor/http/HeadersBuilder;Ljava/time/LocalDateTime;)V
    .locals 2
    .param p0, "$this$expires"    # Lio/ktor/http/HeadersBuilder;
    .param p1, "expires"    # Ljava/time/LocalDateTime;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expires"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getExpires()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/Temporal;

    invoke-static {v1}, Lio/ktor/server/http/HttpDateJvmKt;->toHttpDateString(Ljava/time/temporal/Temporal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/ktor/http/HeadersBuilder;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final expires(Lio/ktor/server/response/ApplicationResponse;Ljava/time/LocalDateTime;)V
    .locals 2
    .param p0, "$this$expires"    # Lio/ktor/server/response/ApplicationResponse;
    .param p1, "value"    # Ljava/time/LocalDateTime;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getExpires()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/Temporal;

    invoke-static {p0, v0, v1}, Lio/ktor/server/response/ApplicationResponsePropertiesJvmKt;->header(Lio/ktor/server/response/ApplicationResponse;Ljava/lang/String;Ljava/time/temporal/Temporal;)V

    return-void
.end method

.method public static final header(Lio/ktor/server/response/ApplicationResponse;Ljava/lang/String;Ljava/time/temporal/Temporal;)V
    .locals 7
    .param p0, "$this$header"    # Lio/ktor/server/response/ApplicationResponse;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/time/temporal/Temporal;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p0}, Lio/ktor/server/response/ApplicationResponse;->getHeaders()Lio/ktor/server/response/ResponseHeaders;

    move-result-object v1

    invoke-static {p2}, Lio/ktor/server/http/HttpDateJvmKt;->toHttpDateString(Ljava/time/temporal/Temporal;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lio/ktor/server/response/ResponseHeaders;->append$default(Lio/ktor/server/response/ResponseHeaders;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final lastModified(Lio/ktor/http/HeadersBuilder;Ljava/time/ZonedDateTime;)V
    .locals 2
    .param p0, "$this$lastModified"    # Lio/ktor/http/HeadersBuilder;
    .param p1, "dateTime"    # Ljava/time/ZonedDateTime;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getLastModified()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/Temporal;

    invoke-static {v1}, Lio/ktor/server/http/HttpDateJvmKt;->toHttpDateString(Ljava/time/temporal/Temporal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/ktor/http/HeadersBuilder;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final lastModified(Lio/ktor/server/response/ApplicationResponse;Ljava/time/ZonedDateTime;)V
    .locals 2
    .param p0, "$this$lastModified"    # Lio/ktor/server/response/ApplicationResponse;
    .param p1, "dateTime"    # Ljava/time/ZonedDateTime;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getLastModified()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/Temporal;

    invoke-static {p0, v0, v1}, Lio/ktor/server/response/ApplicationResponsePropertiesJvmKt;->header(Lio/ktor/server/response/ApplicationResponse;Ljava/lang/String;Ljava/time/temporal/Temporal;)V

    return-void
.end method
