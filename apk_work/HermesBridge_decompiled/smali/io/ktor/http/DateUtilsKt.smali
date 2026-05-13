.class public final Lio/ktor/http/DateUtilsKt;
.super Ljava/lang/Object;
.source "DateUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0004*\u00020\u0002\u001a\u0014\u0010\u0006\u001a\u00020\u0002*\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u001a\n\u0010\t\u001a\u00020\u0002*\u00020\u0004\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "HTTP_DATE_FORMATS",
        "",
        "",
        "fromCookieToGmtDate",
        "Lio/ktor/util/date/GMTDate;",
        "fromHttpToGmtDate",
        "padZero",
        "",
        "length",
        "toHttpDate",
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


# static fields
.field private static final HTTP_DATE_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 10
    nop

    .line 11
    nop

    .line 12
    nop

    .line 11
    nop

    .line 13
    nop

    .line 11
    nop

    .line 14
    nop

    .line 11
    nop

    .line 15
    nop

    .line 11
    nop

    .line 16
    nop

    .line 11
    nop

    .line 17
    nop

    .line 11
    nop

    .line 18
    nop

    .line 11
    nop

    .line 19
    nop

    .line 11
    nop

    .line 20
    nop

    .line 11
    nop

    .line 21
    const-string v10, "*** MMM d YYYY hh:mm:ss zzz"

    const-string v0, "***, dd MMM YYYY hh:mm:ss zzz"

    const-string v1, "****, dd-MMM-YYYY hh:mm:ss zzz"

    const-string v2, "*** MMM d hh:mm:ss YYYY"

    const-string v3, "***, dd-MMM-YYYY hh:mm:ss zzz"

    const-string v4, "***, dd-MMM-YYYY hh-mm-ss zzz"

    const-string v5, "***, dd MMM YYYY hh:mm:ss zzz"

    const-string v6, "*** dd-MMM-YYYY hh:mm:ss zzz"

    const-string v7, "*** dd MMM YYYY hh:mm:ss zzz"

    const-string v8, "*** dd-MMM-YYYY hh-mm-ss zzz"

    const-string v9, "***,dd-MMM-YYYY hh:mm:ss zzz"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    .line 11
    nop

    .line 10
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/ktor/http/DateUtilsKt;->HTTP_DATE_FORMATS:Ljava/util/List;

    return-void
.end method

.method public static final fromCookieToGmtDate(Ljava/lang/String;)Lio/ktor/util/date/GMTDate;
    .locals 4
    .param p0, "$this$fromCookieToGmtDate"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "$this$fromCookieToGmtDate_u24lambda_u241":Ljava/lang/String;
    const/4 v1, 0x0

    .line 47
    .local v1, "$i$a$-with-DateUtilsKt$fromCookieToGmtDate$1":I
    nop

    .line 48
    :try_start_0
    new-instance v2, Lio/ktor/http/CookieDateParser;

    invoke-direct {v2}, Lio/ktor/http/CookieDateParser;-><init>()V

    .line 49
    .local v2, "parser":Lio/ktor/http/CookieDateParser;
    invoke-virtual {v2, v0}, Lio/ktor/http/CookieDateParser;->parse(Ljava/lang/String;)Lio/ktor/util/date/GMTDate;

    move-result-object v3
    :try_end_0
    .catch Lio/ktor/http/InvalidCookieDateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 50
    .end local v2    # "parser":Lio/ktor/http/CookieDateParser;
    :catch_0
    move-exception v2

    .line 53
    invoke-static {v0}, Lio/ktor/http/DateUtilsKt;->fromHttpToGmtDate(Ljava/lang/String;)Lio/ktor/util/date/GMTDate;

    move-result-object v2

    return-object v2
.end method

.method public static final fromHttpToGmtDate(Ljava/lang/String;)Lio/ktor/util/date/GMTDate;
    .locals 5
    .param p0, "$this$fromHttpToGmtDate"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "$this$fromHttpToGmtDate_u24lambda_u240":Ljava/lang/String;
    const/4 v1, 0x0

    .line 30
    .local v1, "$i$a$-with-DateUtilsKt$fromHttpToGmtDate$1":I
    sget-object v2, Lio/ktor/http/DateUtilsKt;->HTTP_DATE_FORMATS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 31
    .local v3, "format":Ljava/lang/String;
    nop

    .line 32
    :try_start_0
    new-instance v4, Lio/ktor/util/date/GMTDateParser;

    invoke-direct {v4, v3}, Lio/ktor/util/date/GMTDateParser;-><init>(Ljava/lang/String;)V

    .line 33
    .local v4, "parser":Lio/ktor/util/date/GMTDateParser;
    invoke-virtual {v4, p0}, Lio/ktor/util/date/GMTDateParser;->parse(Ljava/lang/String;)Lio/ktor/util/date/GMTDate;

    move-result-object v2
    :try_end_0
    .catch Lio/ktor/util/date/InvalidDateStringException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 34
    .end local v4    # "parser":Lio/ktor/util/date/GMTDateParser;
    :catch_0
    move-exception v4

    .end local v3    # "format":Ljava/lang/String;
    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static final padZero(II)Ljava/lang/String;
    .locals 2
    .param p0, "$this$padZero"    # I
    .param p1, "length"    # I

    .line 68
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v0, p1, v1}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final toHttpDate(Lio/ktor/util/date/GMTDate;)Ljava/lang/String;
    .locals 8
    .param p0, "$this$toHttpDate"    # Lio/ktor/util/date/GMTDate;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .local v1, "$this$toHttpDate_u24lambda_u242":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 60
    .local v2, "$i$a$-buildString-DateUtilsKt$toHttpDate$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/ktor/util/date/GMTDate;->getDayOfWeek()Lio/ktor/util/date/WeekDay;

    move-result-object v4

    invoke-virtual {v4}, Lio/ktor/util/date/WeekDay;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/ktor/util/date/GMTDate;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lio/ktor/http/DateUtilsKt;->padZero(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/ktor/util/date/GMTDate;->getMonth()Lio/ktor/util/date/Month;

    move-result-object v6

    invoke-virtual {v6}, Lio/ktor/util/date/Month;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Lio/ktor/util/date/GMTDate;->getYear()I

    move-result v3

    const/4 v6, 0x4

    invoke-static {v3, v6}, Lio/ktor/http/DateUtilsKt;->padZero(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lio/ktor/util/date/GMTDate;->getHours()I

    move-result v6

    invoke-static {v6, v5}, Lio/ktor/http/DateUtilsKt;->padZero(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x3a

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lio/ktor/util/date/GMTDate;->getMinutes()I

    move-result v7

    invoke-static {v7, v5}, Lio/ktor/http/DateUtilsKt;->padZero(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lio/ktor/util/date/GMTDate;->getSeconds()I

    move-result v6

    invoke-static {v6, v5}, Lio/ktor/http/DateUtilsKt;->padZero(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v3, "GMT"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    nop

    .line 59
    .end local v1    # "$this$toHttpDate_u24lambda_u242":Ljava/lang/StringBuilder;
    .end local v2    # "$i$a$-buildString-DateUtilsKt$toHttpDate$1":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    return-object v0
.end method
