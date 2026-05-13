.class public final Lio/ktor/server/http/content/LastModifiedJavaTimeKt;
.super Ljava/lang/Object;
.source "LastModifiedJavaTime.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0004\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "LastModifiedVersion",
        "Lio/ktor/http/content/LastModifiedVersion;",
        "lastModified",
        "Ljava/nio/file/attribute/FileTime;",
        "Ljava/time/ZonedDateTime;",
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
.method public static final LastModifiedVersion(J)Lio/ktor/http/content/LastModifiedVersion;
    .locals 2
    .param p0, "lastModified"    # J

    .line 31
    new-instance v0, Lio/ktor/http/content/LastModifiedVersion;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lio/ktor/util/date/DateJvmKt;->GMTDate(Ljava/lang/Long;)Lio/ktor/util/date/GMTDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/http/content/LastModifiedVersion;-><init>(Lio/ktor/util/date/GMTDate;)V

    return-object v0
.end method

.method public static final LastModifiedVersion(Ljava/nio/file/attribute/FileTime;)Lio/ktor/http/content/LastModifiedVersion;
    .locals 3
    .param p0, "lastModified"    # Ljava/nio/file/attribute/FileTime;

    const-string v0, "lastModified"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lio/ktor/http/content/LastModifiedVersion;

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lio/ktor/util/date/DateJvmKt;->GMTDate(Ljava/lang/Long;)Lio/ktor/util/date/GMTDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/http/content/LastModifiedVersion;-><init>(Lio/ktor/util/date/GMTDate;)V

    return-object v0
.end method

.method public static final LastModifiedVersion(Ljava/time/ZonedDateTime;)Lio/ktor/http/content/LastModifiedVersion;
    .locals 2
    .param p0, "lastModified"    # Ljava/time/ZonedDateTime;

    const-string v0, "lastModified"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lio/ktor/http/content/LastModifiedVersion;

    invoke-static {p0}, Lio/ktor/server/util/DateUtilsJvmKt;->toGMTDate(Ljava/time/ZonedDateTime;)Lio/ktor/util/date/GMTDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/http/content/LastModifiedVersion;-><init>(Lio/ktor/util/date/GMTDate;)V

    return-object v0
.end method
