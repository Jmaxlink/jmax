.class public final Lio/ktor/server/netty/NettyApplicationRequestCookies;
.super Lio/ktor/server/request/RequestCookies;
.source "NettyApplicationRequestCookies.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNettyApplicationRequestCookies.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NettyApplicationRequestCookies.kt\nio/ktor/server/netty/NettyApplicationRequestCookies\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,21:1\n1238#2,4:22\n*S KotlinDebug\n*F\n+ 1 NettyApplicationRequestCookies.kt\nio/ktor/server/netty/NettyApplicationRequestCookies\n*L\n16#1:22,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0014\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lio/ktor/server/netty/NettyApplicationRequestCookies;",
        "Lio/ktor/server/request/RequestCookies;",
        "request",
        "Lio/ktor/server/request/ApplicationRequest;",
        "(Lio/ktor/server/request/ApplicationRequest;)V",
        "fetchCookies",
        "",
        "",
        "ktor-server-netty"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lio/ktor/server/request/ApplicationRequest;)V
    .locals 1
    .param p1, "request"    # Lio/ktor/server/request/ApplicationRequest;

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Lio/ktor/server/request/RequestCookies;-><init>(Lio/ktor/server/request/ApplicationRequest;)V

    return-void
.end method


# virtual methods
.method protected fetchCookies()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationRequestCookies;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/request/ApplicationRequest;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v0

    const-string v1, "Cookie"

    invoke-interface {v0, v1}, Lio/ktor/http/Headers;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 14
    .local v0, "cookieHeaders":Ljava/util/List;
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 15
    .local v1, "map":Ljava/util/HashMap;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 16
    .local v3, "cookieHeader":Ljava/lang/String;
    sget-object v4, Lio/netty/handler/codec/http/cookie/ServerCookieDecoder;->LAX:Lio/netty/handler/codec/http/cookie/ServerCookieDecoder;

    invoke-virtual {v4, v3}, Lio/netty/handler/codec/http/cookie/ServerCookieDecoder;->decode(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    const-string v5, "LAX.decode(cookieHeader)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$associateByTo$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 22
    .local v5, "$i$f$associateByTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 23
    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v1

    check-cast v8, Ljava/util/Map;

    move-object v9, v7

    check-cast v9, Lio/netty/handler/codec/http/cookie/Cookie;

    .local v9, "it":Lio/netty/handler/codec/http/cookie/Cookie;
    const/4 v10, 0x0

    .line 16
    .local v10, "$i$a$-associateByTo-NettyApplicationRequestCookies$fetchCookies$1":I
    invoke-interface {v9}, Lio/netty/handler/codec/http/cookie/Cookie;->name()Ljava/lang/String;

    move-result-object v9

    .line 23
    .end local v9    # "it":Lio/netty/handler/codec/http/cookie/Cookie;
    .end local v10    # "$i$a$-associateByTo-NettyApplicationRequestCookies$fetchCookies$1":I
    move-object v10, v7

    check-cast v10, Lio/netty/handler/codec/http/cookie/Cookie;

    .local v10, "it":Lio/netty/handler/codec/http/cookie/Cookie;
    const/4 v11, 0x0

    .line 16
    .local v11, "$i$a$-associateByTo-NettyApplicationRequestCookies$fetchCookies$2":I
    invoke-interface {v10}, Lio/netty/handler/codec/http/cookie/Cookie;->value()Ljava/lang/String;

    move-result-object v10

    .line 23
    .end local v10    # "it":Lio/netty/handler/codec/http/cookie/Cookie;
    .end local v11    # "$i$a$-associateByTo-NettyApplicationRequestCookies$fetchCookies$2":I
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 25
    .end local v7    # "element$iv":Ljava/lang/Object;
    :cond_1
    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    .end local v4    # "$this$associateByTo$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$associateByTo":I
    goto :goto_0

    .line 18
    .end local v3    # "cookieHeader":Ljava/lang/String;
    :cond_2
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    return-object v2
.end method
