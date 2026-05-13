.class public final Lio/ktor/util/date/DateJvmKt;
.super Ljava/lang/Object;
.source "DateJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDateJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DateJvm.kt\nio/ktor/util/date/DateJvmKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a6\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0006\u001a\u0017\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u000f\u001a\u0006\u0010\u0010\u001a\u00020\u000e\u001a\u0019\u0010\u0011\u001a\u00020\u0004*\u00020\u00122\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u0013\u001a\n\u0010\u0014\u001a\u00020\u0015*\u00020\u0004\"\u0016\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "GMT_TIMEZONE",
        "Ljava/util/TimeZone;",
        "kotlin.jvm.PlatformType",
        "GMTDate",
        "Lio/ktor/util/date/GMTDate;",
        "seconds",
        "",
        "minutes",
        "hours",
        "dayOfMonth",
        "month",
        "Lio/ktor/util/date/Month;",
        "year",
        "timestamp",
        "",
        "(Ljava/lang/Long;)Lio/ktor/util/date/GMTDate;",
        "getTimeMillis",
        "toDate",
        "Ljava/util/Calendar;",
        "(Ljava/util/Calendar;Ljava/lang/Long;)Lio/ktor/util/date/GMTDate;",
        "toJvmDate",
        "Ljava/util/Date;",
        "ktor-utils"
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
.field private static final GMT_TIMEZONE:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lio/ktor/util/date/DateJvmKt;->GMT_TIMEZONE:Ljava/util/TimeZone;

    return-void
.end method

.method public static final GMTDate(IIIILio/ktor/util/date/Month;I)Lio/ktor/util/date/GMTDate;
    .locals 5
    .param p0, "seconds"    # I
    .param p1, "minutes"    # I
    .param p2, "hours"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "month"    # Lio/ktor/util/date/Month;
    .param p5, "year"    # I

    const-string v0, "month"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lio/ktor/util/date/DateJvmKt;->GMT_TIMEZONE:Ljava/util/TimeZone;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    .local v1, "$this$GMTDate_u24lambda_u240":Ljava/util/Calendar;
    const/4 v2, 0x0

    .line 32
    .local v2, "$i$a$-apply-DateJvmKt$GMTDate$1":I
    const/4 v3, 0x1

    invoke-virtual {v1, v3, p5}, Ljava/util/Calendar;->set(II)V

    .line 33
    const/4 v3, 0x2

    invoke-virtual {p4}, Lio/ktor/util/date/Month;->ordinal()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 34
    const/4 v3, 0x5

    invoke-virtual {v1, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 35
    const/16 v3, 0xb

    invoke-virtual {v1, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 36
    const/16 v3, 0xc

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 37
    const/16 v3, 0xd

    invoke-virtual {v1, v3, p0}, Ljava/util/Calendar;->set(II)V

    .line 38
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 39
    nop

    .line 31
    .end local v1    # "$this$GMTDate_u24lambda_u240":Ljava/util/Calendar;
    .end local v2    # "$i$a$-apply-DateJvmKt$GMTDate$1":I
    nop

    .line 39
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/ktor/util/date/DateJvmKt;->toDate(Ljava/util/Calendar;Ljava/lang/Long;)Lio/ktor/util/date/GMTDate;

    move-result-object v0

    return-object v0
.end method

.method public static final GMTDate(Ljava/lang/Long;)Lio/ktor/util/date/GMTDate;
    .locals 2
    .param p0, "timestamp"    # Ljava/lang/Long;

    .line 18
    sget-object v0, Lio/ktor/util/date/DateJvmKt;->GMT_TIMEZONE:Ljava/util/TimeZone;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lio/ktor/util/date/DateJvmKt;->toDate(Ljava/util/Calendar;Ljava/lang/Long;)Lio/ktor/util/date/GMTDate;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic GMTDate$default(Ljava/lang/Long;ILjava/lang/Object;)Lio/ktor/util/date/GMTDate;
    .locals 0

    .line 17
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 78
    const/4 p0, 0x0

    .line 17
    :cond_0
    invoke-static {p0}, Lio/ktor/util/date/DateJvmKt;->GMTDate(Ljava/lang/Long;)Lio/ktor/util/date/GMTDate;

    move-result-object p0

    return-object p0
.end method

.method public static final getTimeMillis()J
    .locals 2

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final toDate(Ljava/util/Calendar;Ljava/lang/Long;)Lio/ktor/util/date/GMTDate;
    .locals 25
    .param p0, "$this$toDate"    # Ljava/util/Calendar;
    .param p1, "timestamp"    # Ljava/lang/Long;

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    if-eqz p1, :cond_0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 79
    .local v1, "it":J
    const/4 v3, 0x0

    .line 42
    .local v3, "$i$a$-let-DateJvmKt$toDate$1":I
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 43
    .end local v1    # "it":J
    .end local v3    # "$i$a$-let-DateJvmKt$toDate$1":I
    :cond_0
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 45
    .local v1, "timeZoneOffset":I
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 46
    .local v2, "seconds":I
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 47
    .local v14, "minutes":I
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 52
    .local v15, "hours":I
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    rem-int/lit8 v12, v4, 0x7

    .line 53
    .local v12, "numberOfDay":I
    sget-object v3, Lio/ktor/util/date/WeekDay;->Companion:Lio/ktor/util/date/WeekDay$Companion;

    invoke-virtual {v3, v12}, Lio/ktor/util/date/WeekDay$Companion;->from(I)Lio/ktor/util/date/WeekDay;

    move-result-object v16

    .line 55
    .local v16, "dayOfWeek":Lio/ktor/util/date/WeekDay;
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 56
    .local v17, "dayOfMonth":I
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 58
    .local v18, "dayOfYear":I
    sget-object v3, Lio/ktor/util/date/Month;->Companion:Lio/ktor/util/date/Month$Companion;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lio/ktor/util/date/Month$Companion;->from(I)Lio/ktor/util/date/Month;

    move-result-object v19

    .line 59
    .local v19, "month":Lio/ktor/util/date/Month;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 61
    .local v20, "year":I
    new-instance v21, Lio/ktor/util/date/GMTDate;

    .line 62
    nop

    .line 63
    nop

    .line 64
    nop

    .line 65
    invoke-virtual/range {p0 .. p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    int-to-long v5, v1

    add-long v22, v3, v5

    .line 61
    move-object/from16 v3, v21

    move v4, v2

    move v5, v14

    move v6, v15

    move-object/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    move-object/from16 v10, v19

    move/from16 v11, v20

    move/from16 v24, v12

    .end local v12    # "numberOfDay":I
    .local v24, "numberOfDay":I
    move-wide/from16 v12, v22

    invoke-direct/range {v3 .. v13}, Lio/ktor/util/date/GMTDate;-><init>(IIILio/ktor/util/date/WeekDay;IILio/ktor/util/date/Month;IJ)V

    return-object v21
.end method

.method public static final toJvmDate(Lio/ktor/util/date/GMTDate;)Ljava/util/Date;
    .locals 3
    .param p0, "$this$toJvmDate"    # Lio/ktor/util/date/GMTDate;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lio/ktor/util/date/GMTDate;->getTimestamp()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method
