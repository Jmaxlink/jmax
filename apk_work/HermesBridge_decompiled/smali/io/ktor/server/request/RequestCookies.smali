.class public Lio/ktor/server/request/RequestCookies;
.super Ljava/lang/Object;
.source "RequestCookies.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0008\u000b\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0014\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u000bH\u0014J\u001d\u0010\u0013\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0014\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0008H\u0086\u0002R&\u0010\u0005\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u0012\u0004\u0012\u00020\t0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\'\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/ktor/server/request/RequestCookies;",
        "",
        "request",
        "Lio/ktor/server/request/ApplicationRequest;",
        "(Lio/ktor/server/request/ApplicationRequest;)V",
        "map",
        "Lio/ktor/util/collections/ConcurrentMap;",
        "Lkotlin/Pair;",
        "Lio/ktor/http/CookieEncoding;",
        "",
        "rawCookies",
        "",
        "getRawCookies",
        "()Ljava/util/Map;",
        "rawCookies$delegate",
        "Lkotlin/Lazy;",
        "getRequest",
        "()Lio/ktor/server/request/ApplicationRequest;",
        "fetchCookies",
        "get",
        "name",
        "encoding",
        "ktor-server-core"
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
.field private final map:Lio/ktor/util/collections/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/collections/ConcurrentMap<",
            "Lkotlin/Pair<",
            "Lio/ktor/http/CookieEncoding;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rawCookies$delegate:Lkotlin/Lazy;

.field private final request:Lio/ktor/server/request/ApplicationRequest;


# direct methods
.method public constructor <init>(Lio/ktor/server/request/ApplicationRequest;)V
    .locals 4
    .param p1, "request"    # Lio/ktor/server/request/ApplicationRequest;

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/server/request/RequestCookies;->request:Lio/ktor/server/request/ApplicationRequest;

    .line 16
    new-instance v0, Lio/ktor/util/collections/ConcurrentMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/util/collections/ConcurrentMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lio/ktor/server/request/RequestCookies;->map:Lio/ktor/util/collections/ConcurrentMap;

    .line 23
    new-instance v0, Lio/ktor/server/request/RequestCookies$rawCookies$2;

    invoke-direct {v0, p0}, Lio/ktor/server/request/RequestCookies$rawCookies$2;-><init>(Lio/ktor/server/request/RequestCookies;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/request/RequestCookies;->rawCookies$delegate:Lkotlin/Lazy;

    .line 15
    return-void
.end method

.method public static synthetic get$default(Lio/ktor/server/request/RequestCookies;Ljava/lang/String;Lio/ktor/http/CookieEncoding;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 28
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lio/ktor/http/CookieEncoding;->URI_ENCODING:Lio/ktor/http/CookieEncoding;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/ktor/server/request/RequestCookies;->get(Ljava/lang/String;Lio/ktor/http/CookieEncoding;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: get"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected fetchCookies()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lio/ktor/server/request/RequestCookies;->request:Lio/ktor/server/request/ApplicationRequest;

    invoke-interface {v0}, Lio/ktor/server/request/ApplicationRequest;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v0

    const-string v1, "Cookie"

    invoke-interface {v0, v1}, Lio/ktor/http/Headers;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 38
    .local v0, "cookieHeaders":Ljava/util/List;
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 39
    .local v1, "map":Ljava/util/HashMap;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 40
    .local v3, "cookieHeader":Ljava/lang/String;
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v5}, Lio/ktor/http/CookieKt;->parseClientCookiesHeader$default(Ljava/lang/String;ZILjava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 41
    .local v4, "cookies":Ljava/util/Map;
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .end local v3    # "cookieHeader":Ljava/lang/String;
    .end local v4    # "cookies":Ljava/util/Map;
    goto :goto_0

    .line 43
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    return-object v2
.end method

.method public final get(Ljava/lang/String;Lio/ktor/http/CookieEncoding;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "encoding"    # Lio/ktor/http/CookieEncoding;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encoding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lio/ktor/server/request/RequestCookies;->getRawCookies()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 30
    .local v0, "rawValue":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lio/ktor/server/request/RequestCookies;->map:Lio/ktor/util/collections/ConcurrentMap;

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    new-instance v3, Lio/ktor/server/request/RequestCookies$get$1;

    invoke-direct {v3, v0, p2}, Lio/ktor/server/request/RequestCookies$get$1;-><init>(Ljava/lang/String;Lio/ktor/http/CookieEncoding;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v2, v3}, Lio/ktor/util/collections/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public final getRawCookies()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lio/ktor/server/request/RequestCookies;->rawCookies$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method protected final getRequest()Lio/ktor/server/request/ApplicationRequest;
    .locals 1

    .line 15
    iget-object v0, p0, Lio/ktor/server/request/RequestCookies;->request:Lio/ktor/server/request/ApplicationRequest;

    return-object v0
.end method
