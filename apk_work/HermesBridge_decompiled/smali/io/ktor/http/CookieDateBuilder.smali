.class public final Lio/ktor/http/CookieDateBuilder;
.super Ljava/lang/Object;
.source "CookieUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u001c\u001a\u00020\u001dR\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008R\u001e\u0010\r\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u000e\u0010\u0006\"\u0004\u0008\u000f\u0010\u0008R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0017\u0010\u0006\"\u0004\u0008\u0018\u0010\u0008R\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u001a\u0010\u0006\"\u0004\u0008\u001b\u0010\u0008\u00a8\u0006\u001e"
    }
    d2 = {
        "Lio/ktor/http/CookieDateBuilder;",
        "",
        "()V",
        "dayOfMonth",
        "",
        "getDayOfMonth",
        "()Ljava/lang/Integer;",
        "setDayOfMonth",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "hours",
        "getHours",
        "setHours",
        "minutes",
        "getMinutes",
        "setMinutes",
        "month",
        "Lio/ktor/util/date/Month;",
        "getMonth",
        "()Lio/ktor/util/date/Month;",
        "setMonth",
        "(Lio/ktor/util/date/Month;)V",
        "seconds",
        "getSeconds",
        "setSeconds",
        "year",
        "getYear",
        "setYear",
        "build",
        "Lio/ktor/util/date/GMTDate;",
        "ktor-http"
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
.field private dayOfMonth:Ljava/lang/Integer;

.field private hours:Ljava/lang/Integer;

.field private minutes:Ljava/lang/Integer;

.field private month:Lio/ktor/util/date/Month;

.field private seconds:Ljava/lang/Integer;

.field private year:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/ktor/util/date/GMTDate;
    .locals 7

    .line 339
    iget-object v0, p0, Lio/ktor/http/CookieDateBuilder;->seconds:Ljava/lang/Integer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lio/ktor/http/CookieDateBuilder;->minutes:Ljava/lang/Integer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lio/ktor/http/CookieDateBuilder;->hours:Ljava/lang/Integer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lio/ktor/http/CookieDateBuilder;->dayOfMonth:Ljava/lang/Integer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lio/ktor/http/CookieDateBuilder;->month:Lio/ktor/util/date/Month;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/ktor/http/CookieDateBuilder;->year:Ljava/lang/Integer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lio/ktor/util/date/DateJvmKt;->GMTDate(IIIILio/ktor/util/date/Month;I)Lio/ktor/util/date/GMTDate;

    move-result-object v0

    return-object v0
.end method

.method public final getDayOfMonth()Ljava/lang/Integer;
    .locals 1

    .line 335
    iget-object v0, p0, Lio/ktor/http/CookieDateBuilder;->dayOfMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getHours()Ljava/lang/Integer;
    .locals 1

    .line 333
    iget-object v0, p0, Lio/ktor/http/CookieDateBuilder;->hours:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMinutes()Ljava/lang/Integer;
    .locals 1

    .line 332
    iget-object v0, p0, Lio/ktor/http/CookieDateBuilder;->minutes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMonth()Lio/ktor/util/date/Month;
    .locals 1

    .line 336
    iget-object v0, p0, Lio/ktor/http/CookieDateBuilder;->month:Lio/ktor/util/date/Month;

    return-object v0
.end method

.method public final getSeconds()Ljava/lang/Integer;
    .locals 1

    .line 331
    iget-object v0, p0, Lio/ktor/http/CookieDateBuilder;->seconds:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getYear()Ljava/lang/Integer;
    .locals 1

    .line 337
    iget-object v0, p0, Lio/ktor/http/CookieDateBuilder;->year:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setDayOfMonth(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Integer;

    .line 335
    iput-object p1, p0, Lio/ktor/http/CookieDateBuilder;->dayOfMonth:Ljava/lang/Integer;

    return-void
.end method

.method public final setHours(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Integer;

    .line 333
    iput-object p1, p0, Lio/ktor/http/CookieDateBuilder;->hours:Ljava/lang/Integer;

    return-void
.end method

.method public final setMinutes(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Integer;

    .line 332
    iput-object p1, p0, Lio/ktor/http/CookieDateBuilder;->minutes:Ljava/lang/Integer;

    return-void
.end method

.method public final setMonth(Lio/ktor/util/date/Month;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/ktor/util/date/Month;

    .line 336
    iput-object p1, p0, Lio/ktor/http/CookieDateBuilder;->month:Lio/ktor/util/date/Month;

    return-void
.end method

.method public final setSeconds(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Integer;

    .line 331
    iput-object p1, p0, Lio/ktor/http/CookieDateBuilder;->seconds:Ljava/lang/Integer;

    return-void
.end method

.method public final setYear(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Integer;

    .line 337
    iput-object p1, p0, Lio/ktor/http/CookieDateBuilder;->year:Ljava/lang/Integer;

    return-void
.end method
