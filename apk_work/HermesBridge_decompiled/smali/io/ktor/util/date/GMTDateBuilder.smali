.class public final Lio/ktor/util/date/GMTDateBuilder;
.super Ljava/lang/Object;
.source "GMTDateParser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u001c\u001a\u00020\u001dR\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008R\u001e\u0010\r\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u000e\u0010\u0006\"\u0004\u0008\u000f\u0010\u0008R\u001a\u0010\u0010\u001a\u00020\u0011X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0017\u0010\u0006\"\u0004\u0008\u0018\u0010\u0008R\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u001a\u0010\u0006\"\u0004\u0008\u001b\u0010\u0008\u00a8\u0006\u001e"
    }
    d2 = {
        "Lio/ktor/util/date/GMTDateBuilder;",
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
        "ktor-utils"
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

.field public month:Lio/ktor/util/date/Month;

.field private seconds:Ljava/lang/Integer;

.field private year:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/ktor/util/date/GMTDate;
    .locals 7

    .line 117
    iget-object v0, p0, Lio/ktor/util/date/GMTDateBuilder;->seconds:Ljava/lang/Integer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lio/ktor/util/date/GMTDateBuilder;->minutes:Ljava/lang/Integer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lio/ktor/util/date/GMTDateBuilder;->hours:Ljava/lang/Integer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lio/ktor/util/date/GMTDateBuilder;->dayOfMonth:Ljava/lang/Integer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0}, Lio/ktor/util/date/GMTDateBuilder;->getMonth()Lio/ktor/util/date/Month;

    move-result-object v5

    iget-object v0, p0, Lio/ktor/util/date/GMTDateBuilder;->year:Ljava/lang/Integer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lio/ktor/util/date/DateJvmKt;->GMTDate(IIIILio/ktor/util/date/Month;I)Lio/ktor/util/date/GMTDate;

    move-result-object v0

    return-object v0
.end method

.method public final getDayOfMonth()Ljava/lang/Integer;
    .locals 1

    .line 113
    iget-object v0, p0, Lio/ktor/util/date/GMTDateBuilder;->dayOfMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getHours()Ljava/lang/Integer;
    .locals 1

    .line 111
    iget-object v0, p0, Lio/ktor/util/date/GMTDateBuilder;->hours:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMinutes()Ljava/lang/Integer;
    .locals 1

    .line 110
    iget-object v0, p0, Lio/ktor/util/date/GMTDateBuilder;->minutes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMonth()Lio/ktor/util/date/Month;
    .locals 1

    .line 114
    iget-object v0, p0, Lio/ktor/util/date/GMTDateBuilder;->month:Lio/ktor/util/date/Month;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "month"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSeconds()Ljava/lang/Integer;
    .locals 1

    .line 109
    iget-object v0, p0, Lio/ktor/util/date/GMTDateBuilder;->seconds:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getYear()Ljava/lang/Integer;
    .locals 1

    .line 115
    iget-object v0, p0, Lio/ktor/util/date/GMTDateBuilder;->year:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setDayOfMonth(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Integer;

    .line 113
    iput-object p1, p0, Lio/ktor/util/date/GMTDateBuilder;->dayOfMonth:Ljava/lang/Integer;

    return-void
.end method

.method public final setHours(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Integer;

    .line 111
    iput-object p1, p0, Lio/ktor/util/date/GMTDateBuilder;->hours:Ljava/lang/Integer;

    return-void
.end method

.method public final setMinutes(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Integer;

    .line 110
    iput-object p1, p0, Lio/ktor/util/date/GMTDateBuilder;->minutes:Ljava/lang/Integer;

    return-void
.end method

.method public final setMonth(Lio/ktor/util/date/Month;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/ktor/util/date/Month;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Lio/ktor/util/date/GMTDateBuilder;->month:Lio/ktor/util/date/Month;

    return-void
.end method

.method public final setSeconds(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Integer;

    .line 109
    iput-object p1, p0, Lio/ktor/util/date/GMTDateBuilder;->seconds:Ljava/lang/Integer;

    return-void
.end method

.method public final setYear(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Integer;

    .line 115
    iput-object p1, p0, Lio/ktor/util/date/GMTDateBuilder;->year:Ljava/lang/Integer;

    return-void
.end method
