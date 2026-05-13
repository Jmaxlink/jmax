.class public final Lio/ktor/util/date/GMTDate;
.super Ljava/lang/Object;
.source "Date.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/util/date/GMTDate$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/ktor/util/date/GMTDate;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u001b\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 /2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001/BO\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ\u0011\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0000H\u0096\u0002J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0007H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u000bH\u00c6\u0003J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\'\u001a\u00020\u000eH\u00c6\u0003Jc\u0010(\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eH\u00c6\u0001J\u0013\u0010)\u001a\u00020*2\u0008\u0010\u001e\u001a\u0004\u0018\u00010+H\u00d6\u0003J\t\u0010,\u001a\u00020\u0003H\u00d6\u0001J\t\u0010-\u001a\u00020.H\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0011R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0011\u00a8\u00060"
    }
    d2 = {
        "Lio/ktor/util/date/GMTDate;",
        "",
        "seconds",
        "",
        "minutes",
        "hours",
        "dayOfWeek",
        "Lio/ktor/util/date/WeekDay;",
        "dayOfMonth",
        "dayOfYear",
        "month",
        "Lio/ktor/util/date/Month;",
        "year",
        "timestamp",
        "",
        "(IIILio/ktor/util/date/WeekDay;IILio/ktor/util/date/Month;IJ)V",
        "getDayOfMonth",
        "()I",
        "getDayOfWeek",
        "()Lio/ktor/util/date/WeekDay;",
        "getDayOfYear",
        "getHours",
        "getMinutes",
        "getMonth",
        "()Lio/ktor/util/date/Month;",
        "getSeconds",
        "getTimestamp",
        "()J",
        "getYear",
        "compareTo",
        "other",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "",
        "",
        "hashCode",
        "toString",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lio/ktor/util/date/GMTDate$Companion;

.field private static final START:Lio/ktor/util/date/GMTDate;


# instance fields
.field private final dayOfMonth:I

.field private final dayOfWeek:Lio/ktor/util/date/WeekDay;

.field private final dayOfYear:I

.field private final hours:I

.field private final minutes:I

.field private final month:Lio/ktor/util/date/Month;

.field private final seconds:I

.field private final timestamp:J

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/util/date/GMTDate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/util/date/GMTDate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/util/date/GMTDate;->Companion:Lio/ktor/util/date/GMTDate$Companion;

    .line 110
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/util/date/DateJvmKt;->GMTDate(Ljava/lang/Long;)Lio/ktor/util/date/GMTDate;

    move-result-object v0

    sput-object v0, Lio/ktor/util/date/GMTDate;->START:Lio/ktor/util/date/GMTDate;

    return-void
.end method

.method public constructor <init>(IIILio/ktor/util/date/WeekDay;IILio/ktor/util/date/Month;IJ)V
    .locals 1
    .param p1, "seconds"    # I
    .param p2, "minutes"    # I
    .param p3, "hours"    # I
    .param p4, "dayOfWeek"    # Lio/ktor/util/date/WeekDay;
    .param p5, "dayOfMonth"    # I
    .param p6, "dayOfYear"    # I
    .param p7, "month"    # Lio/ktor/util/date/Month;
    .param p8, "year"    # I
    .param p9, "timestamp"    # J

    const-string v0, "dayOfWeek"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "month"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Lio/ktor/util/date/GMTDate;->seconds:I

    .line 91
    iput p2, p0, Lio/ktor/util/date/GMTDate;->minutes:I

    .line 92
    iput p3, p0, Lio/ktor/util/date/GMTDate;->hours:I

    .line 94
    iput-object p4, p0, Lio/ktor/util/date/GMTDate;->dayOfWeek:Lio/ktor/util/date/WeekDay;

    .line 95
    iput p5, p0, Lio/ktor/util/date/GMTDate;->dayOfMonth:I

    .line 96
    iput p6, p0, Lio/ktor/util/date/GMTDate;->dayOfYear:I

    .line 98
    iput-object p7, p0, Lio/ktor/util/date/GMTDate;->month:Lio/ktor/util/date/Month;

    .line 99
    iput p8, p0, Lio/ktor/util/date/GMTDate;->year:I

    .line 101
    iput-wide p9, p0, Lio/ktor/util/date/GMTDate;->timestamp:J

    .line 89
    return-void
.end method

.method public static final synthetic access$getSTART$cp()Lio/ktor/util/date/GMTDate;
    .locals 1

    .line 89
    sget-object v0, Lio/ktor/util/date/GMTDate;->START:Lio/ktor/util/date/GMTDate;

    return-object v0
.end method

.method public static synthetic copy$default(Lio/ktor/util/date/GMTDate;IIILio/ktor/util/date/WeekDay;IILio/ktor/util/date/Month;IJILjava/lang/Object;)Lio/ktor/util/date/GMTDate;
    .locals 12

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lio/ktor/util/date/GMTDate;->seconds:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lio/ktor/util/date/GMTDate;->minutes:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lio/ktor/util/date/GMTDate;->hours:I

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lio/ktor/util/date/GMTDate;->dayOfWeek:Lio/ktor/util/date/WeekDay;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lio/ktor/util/date/GMTDate;->dayOfMonth:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lio/ktor/util/date/GMTDate;->dayOfYear:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lio/ktor/util/date/GMTDate;->month:Lio/ktor/util/date/Month;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lio/ktor/util/date/GMTDate;->year:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-wide v10, v0, Lio/ktor/util/date/GMTDate;->timestamp:J

    goto :goto_8

    :cond_8
    move-wide/from16 v10, p9

    :goto_8
    move p1, v2

    move p2, v3

    move p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-wide/from16 p9, v10

    invoke-virtual/range {p0 .. p10}, Lio/ktor/util/date/GMTDate;->copy(IIILio/ktor/util/date/WeekDay;IILio/ktor/util/date/Month;IJ)Lio/ktor/util/date/GMTDate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Lio/ktor/util/date/GMTDate;)I
    .locals 4
    .param p1, "other"    # Lio/ktor/util/date/GMTDate;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-wide v0, p0, Lio/ktor/util/date/GMTDate;->timestamp:J

    iget-wide v2, p1, Lio/ktor/util/date/GMTDate;->timestamp:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 89
    move-object v0, p1

    check-cast v0, Lio/ktor/util/date/GMTDate;

    invoke-virtual {p0, v0}, Lio/ktor/util/date/GMTDate;->compareTo(Lio/ktor/util/date/GMTDate;)I

    move-result v0

    return v0
.end method

.method public final component1()I
    .locals 1

    iget v0, p0, Lio/ktor/util/date/GMTDate;->seconds:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lio/ktor/util/date/GMTDate;->minutes:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lio/ktor/util/date/GMTDate;->hours:I

    return v0
.end method

.method public final component4()Lio/ktor/util/date/WeekDay;
    .locals 1

    iget-object v0, p0, Lio/ktor/util/date/GMTDate;->dayOfWeek:Lio/ktor/util/date/WeekDay;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lio/ktor/util/date/GMTDate;->dayOfMonth:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lio/ktor/util/date/GMTDate;->dayOfYear:I

    return v0
.end method

.method public final component7()Lio/ktor/util/date/Month;
    .locals 1

    iget-object v0, p0, Lio/ktor/util/date/GMTDate;->month:Lio/ktor/util/date/Month;

    return-object v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lio/ktor/util/date/GMTDate;->year:I

    return v0
.end method

.method public final component9()J
    .locals 2

    iget-wide v0, p0, Lio/ktor/util/date/GMTDate;->timestamp:J

    return-wide v0
.end method

.method public final copy(IIILio/ktor/util/date/WeekDay;IILio/ktor/util/date/Month;IJ)Lio/ktor/util/date/GMTDate;
    .locals 14

    const-string v0, "dayOfWeek"

    move-object/from16 v12, p4

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "month"

    move-object/from16 v13, p7

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/ktor/util/date/GMTDate;

    move-object v1, v0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lio/ktor/util/date/GMTDate;-><init>(IIILio/ktor/util/date/WeekDay;IILio/ktor/util/date/Month;IJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ktor/util/date/GMTDate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/ktor/util/date/GMTDate;

    iget v3, p0, Lio/ktor/util/date/GMTDate;->seconds:I

    iget v4, v1, Lio/ktor/util/date/GMTDate;->seconds:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lio/ktor/util/date/GMTDate;->minutes:I

    iget v4, v1, Lio/ktor/util/date/GMTDate;->minutes:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lio/ktor/util/date/GMTDate;->hours:I

    iget v4, v1, Lio/ktor/util/date/GMTDate;->hours:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lio/ktor/util/date/GMTDate;->dayOfWeek:Lio/ktor/util/date/WeekDay;

    iget-object v4, v1, Lio/ktor/util/date/GMTDate;->dayOfWeek:Lio/ktor/util/date/WeekDay;

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget v3, p0, Lio/ktor/util/date/GMTDate;->dayOfMonth:I

    iget v4, v1, Lio/ktor/util/date/GMTDate;->dayOfMonth:I

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget v3, p0, Lio/ktor/util/date/GMTDate;->dayOfYear:I

    iget v4, v1, Lio/ktor/util/date/GMTDate;->dayOfYear:I

    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lio/ktor/util/date/GMTDate;->month:Lio/ktor/util/date/Month;

    iget-object v4, v1, Lio/ktor/util/date/GMTDate;->month:Lio/ktor/util/date/Month;

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    iget v3, p0, Lio/ktor/util/date/GMTDate;->year:I

    iget v4, v1, Lio/ktor/util/date/GMTDate;->year:I

    if-eq v3, v4, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lio/ktor/util/date/GMTDate;->timestamp:J

    iget-wide v5, v1, Lio/ktor/util/date/GMTDate;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getDayOfMonth()I
    .locals 1

    .line 95
    iget v0, p0, Lio/ktor/util/date/GMTDate;->dayOfMonth:I

    return v0
.end method

.method public final getDayOfWeek()Lio/ktor/util/date/WeekDay;
    .locals 1

    .line 94
    iget-object v0, p0, Lio/ktor/util/date/GMTDate;->dayOfWeek:Lio/ktor/util/date/WeekDay;

    return-object v0
.end method

.method public final getDayOfYear()I
    .locals 1

    .line 96
    iget v0, p0, Lio/ktor/util/date/GMTDate;->dayOfYear:I

    return v0
.end method

.method public final getHours()I
    .locals 1

    .line 92
    iget v0, p0, Lio/ktor/util/date/GMTDate;->hours:I

    return v0
.end method

.method public final getMinutes()I
    .locals 1

    .line 91
    iget v0, p0, Lio/ktor/util/date/GMTDate;->minutes:I

    return v0
.end method

.method public final getMonth()Lio/ktor/util/date/Month;
    .locals 1

    .line 98
    iget-object v0, p0, Lio/ktor/util/date/GMTDate;->month:Lio/ktor/util/date/Month;

    return-object v0
.end method

.method public final getSeconds()I
    .locals 1

    .line 90
    iget v0, p0, Lio/ktor/util/date/GMTDate;->seconds:I

    return v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lio/ktor/util/date/GMTDate;->timestamp:J

    return-wide v0
.end method

.method public final getYear()I
    .locals 1

    .line 99
    iget v0, p0, Lio/ktor/util/date/GMTDate;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lio/ktor/util/date/GMTDate;->seconds:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lio/ktor/util/date/GMTDate;->minutes:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lio/ktor/util/date/GMTDate;->hours:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/ktor/util/date/GMTDate;->dayOfWeek:Lio/ktor/util/date/WeekDay;

    invoke-virtual {v2}, Lio/ktor/util/date/WeekDay;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lio/ktor/util/date/GMTDate;->dayOfMonth:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lio/ktor/util/date/GMTDate;->dayOfYear:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/ktor/util/date/GMTDate;->month:Lio/ktor/util/date/Month;

    invoke-virtual {v2}, Lio/ktor/util/date/Month;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lio/ktor/util/date/GMTDate;->year:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lio/ktor/util/date/GMTDate;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMTDate(seconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/ktor/util/date/GMTDate;->seconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/ktor/util/date/GMTDate;->minutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hours="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/ktor/util/date/GMTDate;->hours:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/util/date/GMTDate;->dayOfWeek:Lio/ktor/util/date/WeekDay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dayOfMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/ktor/util/date/GMTDate;->dayOfMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dayOfYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/ktor/util/date/GMTDate;->dayOfYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/util/date/GMTDate;->month:Lio/ktor/util/date/Month;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/ktor/util/date/GMTDate;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/ktor/util/date/GMTDate;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
