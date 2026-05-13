.class public final Lio/ktor/server/http/content/CachingOptionsJvmKt;
.super Ljava/lang/Object;
.source "CachingOptionsJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0000\u001a\u00020\u00012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "CachingOptions",
        "Lio/ktor/http/content/CachingOptions;",
        "cacheControl",
        "Lio/ktor/http/CacheControl;",
        "expires",
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
.method public static final CachingOptions(Lio/ktor/http/CacheControl;Ljava/time/ZonedDateTime;)Lio/ktor/http/content/CachingOptions;
    .locals 2
    .param p0, "cacheControl"    # Lio/ktor/http/CacheControl;
    .param p1, "expires"    # Ljava/time/ZonedDateTime;

    const-string v0, "expires"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lio/ktor/http/content/CachingOptions;

    invoke-static {p1}, Lio/ktor/server/util/DateUtilsJvmKt;->toGMTDate(Ljava/time/ZonedDateTime;)Lio/ktor/util/date/GMTDate;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/ktor/http/content/CachingOptions;-><init>(Lio/ktor/http/CacheControl;Lio/ktor/util/date/GMTDate;)V

    return-object v0
.end method

.method public static synthetic CachingOptions$default(Lio/ktor/http/CacheControl;Ljava/time/ZonedDateTime;ILjava/lang/Object;)Lio/ktor/http/content/CachingOptions;
    .locals 0

    .line 15
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0, p1}, Lio/ktor/server/http/content/CachingOptionsJvmKt;->CachingOptions(Lio/ktor/http/CacheControl;Ljava/time/ZonedDateTime;)Lio/ktor/http/content/CachingOptions;

    move-result-object p0

    return-object p0
.end method
