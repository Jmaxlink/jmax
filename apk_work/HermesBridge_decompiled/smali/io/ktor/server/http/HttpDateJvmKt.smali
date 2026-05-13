.class public final Lio/ktor/server/http/HttpDateJvmKt;
.super Ljava/lang/Object;
.source "HttpDateJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0006\u001a\u00020\u0007*\u00020\u0008H\u0007\u001a\n\u0010\t\u001a\u00020\u0008*\u00020\n\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000b"
    }
    d2 = {
        "GreenwichMeanTime",
        "Ljava/time/ZoneId;",
        "httpDateFormat",
        "Ljava/time/format/DateTimeFormatter;",
        "getHttpDateFormat",
        "()Ljava/time/format/DateTimeFormatter;",
        "fromHttpDateString",
        "Ljava/time/ZonedDateTime;",
        "",
        "toHttpDateString",
        "Ljava/time/temporal/Temporal;",
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


# static fields
.field private static final GreenwichMeanTime:Ljava/time/ZoneId;

.field private static final httpDateFormat:Ljava/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    const-string v1, "of(\"GMT\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/http/HttpDateJvmKt;->GreenwichMeanTime:Ljava/time/ZoneId;

    .line 36
    nop

    .line 34
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss z"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 35
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 36
    sget-object v1, Lio/ktor/server/http/HttpDateJvmKt;->GreenwichMeanTime:Ljava/time/ZoneId;

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sput-object v0, Lio/ktor/server/http/HttpDateJvmKt;->httpDateFormat:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public static final fromHttpDateString(Ljava/lang/String;)Ljava/time/ZonedDateTime;
    .locals 2
    .param p0, "$this$fromHttpDateString"    # Ljava/lang/String;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "This will be removed in future releases. Using it in 2.0.0 will be an error."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "ZonedDateTime.parse(this, httpDateFormat)"
            imports = {
                "java.time.ZonedDateTime"
            }
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    sget-object v1, Lio/ktor/server/http/HttpDateJvmKt;->httpDateFormat:Ljava/time/format/DateTimeFormatter;

    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-string v1, "parse(this, httpDateFormat)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getHttpDateFormat()Ljava/time/format/DateTimeFormatter;
    .locals 1

    .line 33
    sget-object v0, Lio/ktor/server/http/HttpDateJvmKt;->httpDateFormat:Ljava/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static final toHttpDateString(Ljava/time/temporal/Temporal;)Ljava/lang/String;
    .locals 2
    .param p0, "$this$toHttpDateString"    # Ljava/time/temporal/Temporal;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lio/ktor/server/http/HttpDateJvmKt;->httpDateFormat:Ljava/time/format/DateTimeFormatter;

    move-object v1, p0

    check-cast v1, Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "httpDateFormat.format(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
