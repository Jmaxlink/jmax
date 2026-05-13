.class public final Lio/ktor/http/HttpMessagePropertiesJvmKt;
.super Ljava/lang/Object;
.source "HttpMessagePropertiesJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpMessagePropertiesJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpMessagePropertiesJvm.kt\nio/ktor/http/HttpMessagePropertiesJvmKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,49:1\n1#2:50\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\u001a\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u001a\u000c\u0010\u0006\u001a\u0004\u0018\u00010\u0007*\u00020\t\u001a\u000c\u0010\n\u001a\u0004\u0018\u00010\u0007*\u00020\t\u001a\u000c\u0010\n\u001a\u0004\u0018\u00010\u0007*\u00020\u000b\u001a\u0012\u0010\u000c\u001a\u00020\r*\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u000c\u0010\u000e\u001a\u0004\u0018\u00010\u0007*\u00020\t\u001a\u000c\u0010\u000e\u001a\u0004\u0018\u00010\u0007*\u00020\u000b\"\u0014\u0010\u0000\u001a\u00020\u00018BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u000f"
    }
    d2 = {
        "HTTP_DATE_FORMAT",
        "Ljava/text/SimpleDateFormat;",
        "getHTTP_DATE_FORMAT",
        "()Ljava/text/SimpleDateFormat;",
        "formatHttpDate",
        "",
        "date",
        "Ljava/util/Date;",
        "parseHttpDate",
        "Lio/ktor/http/HttpMessage;",
        "expires",
        "Lio/ktor/http/HttpMessageBuilder;",
        "ifModifiedSince",
        "",
        "lastModified",
        "ktor-http"
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
.method public static final date(Lio/ktor/http/HttpMessage;)Ljava/util/Date;
    .locals 2
    .param p0, "$this$date"    # Lio/ktor/http/HttpMessage;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-interface {p0}, Lio/ktor/http/HttpMessage;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v0

    sget-object v1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/ktor/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 48
    .local v1, "$i$a$-let-HttpMessagePropertiesJvmKt$date$1":I
    invoke-static {v0}, Lio/ktor/http/HttpMessagePropertiesJvmKt;->parseHttpDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-HttpMessagePropertiesJvmKt$date$1":I
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final expires(Lio/ktor/http/HttpMessage;)Ljava/util/Date;
    .locals 2
    .param p0, "$this$expires"    # Lio/ktor/http/HttpMessage;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {p0}, Lio/ktor/http/HttpMessage;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v0

    sget-object v1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getExpires()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/ktor/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 43
    .local v1, "$i$a$-let-HttpMessagePropertiesJvmKt$expires$2":I
    invoke-static {v0}, Lio/ktor/http/HttpMessagePropertiesJvmKt;->parseHttpDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-HttpMessagePropertiesJvmKt$expires$2":I
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final expires(Lio/ktor/http/HttpMessageBuilder;)Ljava/util/Date;
    .locals 2
    .param p0, "$this$expires"    # Lio/ktor/http/HttpMessageBuilder;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {p0}, Lio/ktor/http/HttpMessageBuilder;->getHeaders()Lio/ktor/http/HeadersBuilder;

    move-result-object v0

    sget-object v1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getExpires()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/ktor/http/HeadersBuilder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 33
    .local v1, "$i$a$-let-HttpMessagePropertiesJvmKt$expires$1":I
    invoke-static {v0}, Lio/ktor/http/HttpMessagePropertiesJvmKt;->parseHttpDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-HttpMessagePropertiesJvmKt$expires$1":I
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static final formatHttpDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .line 17
    invoke-static {}, Lio/ktor/http/HttpMessagePropertiesJvmKt;->getHTTP_DATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP_DATE_FORMAT.format(date)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final getHTTP_DATE_FORMAT()Ljava/text/SimpleDateFormat;
    .locals 4

    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v1, v0

    .local v1, "$this$_get_HTTP_DATE_FORMAT__u24lambda_u240":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .line 12
    .local v2, "$i$a$-apply-HttpMessagePropertiesJvmKt$HTTP_DATE_FORMAT$1":I
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 13
    nop

    .line 11
    .end local v1    # "$this$_get_HTTP_DATE_FORMAT__u24lambda_u240":Ljava/text/SimpleDateFormat;
    .end local v2    # "$i$a$-apply-HttpMessagePropertiesJvmKt$HTTP_DATE_FORMAT$1":I
    nop

    .line 13
    return-object v0
.end method

.method public static final ifModifiedSince(Lio/ktor/http/HttpMessageBuilder;Ljava/util/Date;)V
    .locals 3
    .param p0, "$this$ifModifiedSince"    # Lio/ktor/http/HttpMessageBuilder;
    .param p1, "date"    # Ljava/util/Date;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p0}, Lio/ktor/http/HttpMessageBuilder;->getHeaders()Lio/ktor/http/HeadersBuilder;

    move-result-object v0

    sget-object v1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getIfModifiedSince()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lio/ktor/http/HttpMessagePropertiesJvmKt;->formatHttpDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/ktor/http/HeadersBuilder;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final lastModified(Lio/ktor/http/HttpMessage;)Ljava/util/Date;
    .locals 2
    .param p0, "$this$lastModified"    # Lio/ktor/http/HttpMessage;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {p0}, Lio/ktor/http/HttpMessage;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v0

    sget-object v1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getLastModified()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/ktor/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 38
    .local v1, "$i$a$-let-HttpMessagePropertiesJvmKt$lastModified$2":I
    invoke-static {v0}, Lio/ktor/http/HttpMessagePropertiesJvmKt;->parseHttpDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-HttpMessagePropertiesJvmKt$lastModified$2":I
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final lastModified(Lio/ktor/http/HttpMessageBuilder;)Ljava/util/Date;
    .locals 2
    .param p0, "$this$lastModified"    # Lio/ktor/http/HttpMessageBuilder;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {p0}, Lio/ktor/http/HttpMessageBuilder;->getHeaders()Lio/ktor/http/HeadersBuilder;

    move-result-object v0

    sget-object v1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getLastModified()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/ktor/http/HeadersBuilder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 28
    .local v1, "$i$a$-let-HttpMessagePropertiesJvmKt$lastModified$1":I
    invoke-static {v0}, Lio/ktor/http/HttpMessagePropertiesJvmKt;->parseHttpDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-HttpMessagePropertiesJvmKt$lastModified$1":I
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static final parseHttpDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # Ljava/lang/String;

    .line 15
    invoke-static {}, Lio/ktor/http/HttpMessagePropertiesJvmKt;->getHTTP_DATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    const-string v1, "HTTP_DATE_FORMAT.parse(date)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
