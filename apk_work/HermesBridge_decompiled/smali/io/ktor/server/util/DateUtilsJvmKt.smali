.class public final Lio/ktor/server/util/DateUtilsJvmKt;
.super Ljava/lang/Object;
.source "DateUtilsJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\n\u0010\u0006\u001a\u00020\u0007*\u00020\u0008\u001a\n\u0010\u0006\u001a\u00020\u0007*\u00020\t\u001a\u000c\u0010\n\u001a\u00020\u000b*\u00020\u000cH\u0007\u001a\u000c\u0010\r\u001a\u00020\t*\u00020\u000cH\u0007\"\u001c\u0010\u0000\u001a\u00020\u00018\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000e"
    }
    d2 = {
        "GreenwichMeanTime",
        "Ljava/time/ZoneId;",
        "getGreenwichMeanTime$annotations",
        "()V",
        "getGreenwichMeanTime",
        "()Ljava/time/ZoneId;",
        "toGMTDate",
        "Lio/ktor/util/date/GMTDate;",
        "Ljava/time/Instant;",
        "Ljava/time/ZonedDateTime;",
        "toLocalDateTime",
        "Ljava/time/LocalDateTime;",
        "Ljava/util/Date;",
        "toZonedDateTime",
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    const-string v1, "of(\"GMT\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/util/DateUtilsJvmKt;->GreenwichMeanTime:Ljava/time/ZoneId;

    return-void
.end method

.method public static final getGreenwichMeanTime()Ljava/time/ZoneId;
    .locals 1

    .line 41
    sget-object v0, Lio/ktor/server/util/DateUtilsJvmKt;->GreenwichMeanTime:Ljava/time/ZoneId;

    return-object v0
.end method

.method public static synthetic getGreenwichMeanTime$annotations()V
    .locals 0
    .annotation runtime Lio/ktor/util/InternalAPI;
    .end annotation

    return-void
.end method

.method public static final toGMTDate(Ljava/time/Instant;)Lio/ktor/util/date/GMTDate;
    .locals 3
    .param p0, "$this$toGMTDate"    # Ljava/time/Instant;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    check-cast v1, Ljava/time/ZoneId;

    invoke-virtual {p0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/util/date/DateJvmKt;->GMTDate(Ljava/lang/Long;)Lio/ktor/util/date/GMTDate;

    move-result-object v0

    return-object v0
.end method

.method public static final toGMTDate(Ljava/time/ZonedDateTime;)Lio/ktor/util/date/GMTDate;
    .locals 2
    .param p0, "$this$toGMTDate"    # Ljava/time/ZonedDateTime;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    const-string v1, "toInstant()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/ktor/server/util/DateUtilsJvmKt;->toGMTDate(Ljava/time/Instant;)Lio/ktor/util/date/GMTDate;

    move-result-object v0

    return-object v0
.end method

.method public static final toLocalDateTime(Ljava/util/Date;)Ljava/time/LocalDateTime;
    .locals 2
    .param p0, "$this$toLocalDateTime"    # Ljava/util/Date;
    .annotation runtime Lio/ktor/util/InternalAPI;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    const-string v1, "ofInstant(toInstant(), ZoneId.systemDefault())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toZonedDateTime(Ljava/util/Date;)Ljava/time/ZonedDateTime;
    .locals 2
    .param p0, "$this$toZonedDateTime"    # Ljava/util/Date;
    .annotation runtime Lio/ktor/util/InternalAPI;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lio/ktor/server/util/DateUtilsJvmKt;->GreenwichMeanTime:Ljava/time/ZoneId;

    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-string v1, "ofInstant(toInstant(), GreenwichMeanTime)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
