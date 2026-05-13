.class public final Lio/ktor/http/content/CachingOptions;
.super Ljava/lang/Object;
.source "CachingOptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J!\u0010\r\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/ktor/http/content/CachingOptions;",
        "",
        "cacheControl",
        "Lio/ktor/http/CacheControl;",
        "expires",
        "Lio/ktor/util/date/GMTDate;",
        "(Lio/ktor/http/CacheControl;Lio/ktor/util/date/GMTDate;)V",
        "getCacheControl",
        "()Lio/ktor/http/CacheControl;",
        "getExpires",
        "()Lio/ktor/util/date/GMTDate;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final cacheControl:Lio/ktor/http/CacheControl;

.field private final expires:Lio/ktor/util/date/GMTDate;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lio/ktor/http/content/CachingOptions;-><init>(Lio/ktor/http/CacheControl;Lio/ktor/util/date/GMTDate;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/http/CacheControl;Lio/ktor/util/date/GMTDate;)V
    .locals 0
    .param p1, "cacheControl"    # Lio/ktor/http/CacheControl;
    .param p2, "expires"    # Lio/ktor/util/date/GMTDate;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/content/CachingOptions;->cacheControl:Lio/ktor/http/CacheControl;

    iput-object p2, p0, Lio/ktor/http/content/CachingOptions;->expires:Lio/ktor/util/date/GMTDate;

    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/http/CacheControl;Lio/ktor/util/date/GMTDate;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 17
    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lio/ktor/http/content/CachingOptions;-><init>(Lio/ktor/http/CacheControl;Lio/ktor/util/date/GMTDate;)V

    return-void
.end method

.method public static synthetic copy$default(Lio/ktor/http/content/CachingOptions;Lio/ktor/http/CacheControl;Lio/ktor/util/date/GMTDate;ILjava/lang/Object;)Lio/ktor/http/content/CachingOptions;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lio/ktor/http/content/CachingOptions;->cacheControl:Lio/ktor/http/CacheControl;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lio/ktor/http/content/CachingOptions;->expires:Lio/ktor/util/date/GMTDate;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/ktor/http/content/CachingOptions;->copy(Lio/ktor/http/CacheControl;Lio/ktor/util/date/GMTDate;)Lio/ktor/http/content/CachingOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/ktor/http/CacheControl;
    .locals 1

    iget-object v0, p0, Lio/ktor/http/content/CachingOptions;->cacheControl:Lio/ktor/http/CacheControl;

    return-object v0
.end method

.method public final component2()Lio/ktor/util/date/GMTDate;
    .locals 1

    iget-object v0, p0, Lio/ktor/http/content/CachingOptions;->expires:Lio/ktor/util/date/GMTDate;

    return-object v0
.end method

.method public final copy(Lio/ktor/http/CacheControl;Lio/ktor/util/date/GMTDate;)Lio/ktor/http/content/CachingOptions;
    .locals 1

    new-instance v0, Lio/ktor/http/content/CachingOptions;

    invoke-direct {v0, p1, p2}, Lio/ktor/http/content/CachingOptions;-><init>(Lio/ktor/http/CacheControl;Lio/ktor/util/date/GMTDate;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ktor/http/content/CachingOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/ktor/http/content/CachingOptions;

    iget-object v3, p0, Lio/ktor/http/content/CachingOptions;->cacheControl:Lio/ktor/http/CacheControl;

    iget-object v4, v1, Lio/ktor/http/content/CachingOptions;->cacheControl:Lio/ktor/http/CacheControl;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lio/ktor/http/content/CachingOptions;->expires:Lio/ktor/util/date/GMTDate;

    iget-object v1, v1, Lio/ktor/http/content/CachingOptions;->expires:Lio/ktor/util/date/GMTDate;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCacheControl()Lio/ktor/http/CacheControl;
    .locals 1

    .line 17
    iget-object v0, p0, Lio/ktor/http/content/CachingOptions;->cacheControl:Lio/ktor/http/CacheControl;

    return-object v0
.end method

.method public final getExpires()Lio/ktor/util/date/GMTDate;
    .locals 1

    .line 17
    iget-object v0, p0, Lio/ktor/http/content/CachingOptions;->expires:Lio/ktor/util/date/GMTDate;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lio/ktor/http/content/CachingOptions;->cacheControl:Lio/ktor/http/CacheControl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/ktor/http/content/CachingOptions;->cacheControl:Lio/ktor/http/CacheControl;

    invoke-virtual {v0}, Lio/ktor/http/CacheControl;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lio/ktor/http/content/CachingOptions;->expires:Lio/ktor/util/date/GMTDate;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lio/ktor/http/content/CachingOptions;->expires:Lio/ktor/util/date/GMTDate;

    invoke-virtual {v1}, Lio/ktor/util/date/GMTDate;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CachingOptions(cacheControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/http/content/CachingOptions;->cacheControl:Lio/ktor/http/CacheControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/http/content/CachingOptions;->expires:Lio/ktor/util/date/GMTDate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
