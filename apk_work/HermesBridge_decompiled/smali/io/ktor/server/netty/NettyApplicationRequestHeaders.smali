.class public final Lio/ktor/server/netty/NettyApplicationRequestHeaders;
.super Ljava/lang/Object;
.source "NettyApplicationRequestHeaders.kt"

# interfaces
.implements Lio/ktor/http/Headers;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNettyApplicationRequestHeaders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NettyApplicationRequestHeaders.kt\nio/ktor/server/netty/NettyApplicationRequestHeaders\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,37:1\n1#2:38\n1855#3,2:39\n1620#3,3:41\n*S KotlinDebug\n*F\n+ 1 NettyApplicationRequestHeaders.kt\nio/ktor/server/netty/NettyApplicationRequestHeaders\n*L\n20#1:39,2\n25#1:41,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010&\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0011\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\rH\u0096\u0002J\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0016J \u0010\u000f\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u00120\u00110\u0010H\u0016J(\u0010\u0013\u001a\u00020\u00142\u001e\u0010\u0015\u001a\u001a\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u0012\u0012\u0004\u0012\u00020\u00140\u0016H\u0016J\u0013\u0010\u0017\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000c\u001a\u00020\rH\u0096\u0002J\u0018\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00122\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u0019\u001a\u00020\u0006H\u0016J\u000e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0010H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lio/ktor/server/netty/NettyApplicationRequestHeaders;",
        "Lio/ktor/http/Headers;",
        "request",
        "Lio/netty/handler/codec/http/HttpRequest;",
        "(Lio/netty/handler/codec/http/HttpRequest;)V",
        "caseInsensitiveName",
        "",
        "getCaseInsensitiveName",
        "()Z",
        "headers",
        "Lio/netty/handler/codec/http/HttpHeaders;",
        "contains",
        "name",
        "",
        "value",
        "entries",
        "",
        "",
        "",
        "forEach",
        "",
        "body",
        "Lkotlin/Function2;",
        "get",
        "getAll",
        "isEmpty",
        "names",
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


# instance fields
.field private final headers:Lio/netty/handler/codec/http/HttpHeaders;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 2
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    const-string v1, "request.headers()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequestHeaders;->headers:Lio/netty/handler/codec/http/HttpHeaders;

    .line 12
    return-void
.end method

.method public static final synthetic access$getHeaders$p(Lio/ktor/server/netty/NettyApplicationRequestHeaders;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/NettyApplicationRequestHeaders;

    .line 12
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequestHeaders;->headers:Lio/netty/handler/codec/http/HttpHeaders;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequestHeaders;->headers:Lio/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequestHeaders;->headers:Lio/netty/handler/codec/http/HttpHeaders;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public entries()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequestHeaders;->headers:Lio/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpHeaders;->names()Ljava/util/Set;

    move-result-object v0

    .line 25
    .local v0, "names":Ljava/util/Set;
    const-string v1, "names"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$mapTo$iv":Ljava/lang/Iterable;
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 41
    .local v3, "$i$f$mapTo":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 42
    .local v5, "item$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .local v6, "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 26
    .local v7, "$i$a$-mapTo-NettyApplicationRequestHeaders$entries$1":I
    new-instance v8, Lio/ktor/server/netty/NettyApplicationRequestHeaders$entries$1$1;

    invoke-direct {v8, v6, p0}, Lio/ktor/server/netty/NettyApplicationRequestHeaders$entries$1$1;-><init>(Ljava/lang/String;Lio/ktor/server/netty/NettyApplicationRequestHeaders;)V

    .line 42
    .end local v6    # "it":Ljava/lang/String;
    .end local v7    # "$i$a$-mapTo-NettyApplicationRequestHeaders$entries$1":I
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    .end local v5    # "item$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v1    # "$this$mapTo$iv":Ljava/lang/Iterable;
    .end local v2    # "destination$iv":Ljava/util/Collection;
    .end local v3    # "$i$f$mapTo":I
    move-object v1, v2

    check-cast v1, Ljava/util/Set;

    .line 25
    return-object v1
.end method

.method public forEach(Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .param p1, "body"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequestHeaders;->headers:Lio/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpHeaders;->names()Ljava/util/Set;

    move-result-object v0

    .line 20
    .local v0, "names":Ljava/util/Set;
    const-string v1, "names"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 39
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .local v5, "it":Ljava/lang/String;
    const/4 v6, 0x0

    .line 20
    .local v6, "$i$a$-forEach-NettyApplicationRequestHeaders$forEach$1":I
    const-string v7, "it"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lio/ktor/server/netty/NettyApplicationRequestHeaders;->headers:Lio/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v7, v5}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v8, "headers.getAll(it)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v5, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .end local v5    # "it":Ljava/lang/String;
    .end local v6    # "$i$a$-forEach-NettyApplicationRequestHeaders$forEach$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 40
    :cond_0
    nop

    .line 21
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequestHeaders;->headers:Lio/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequestHeaders;->headers:Lio/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 38
    .local v1, "it":Ljava/util/List;
    const/4 v2, 0x0

    .line 17
    .local v2, "$i$a$-takeIf-NettyApplicationRequestHeaders$getAll$1":I
    const-string v3, "it"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .end local v1    # "it":Ljava/util/List;
    .end local v2    # "$i$a$-takeIf-NettyApplicationRequestHeaders$getAll$1":I
    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCaseInsensitiveName()Z
    .locals 1

    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequestHeaders;->headers:Lio/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public names()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequestHeaders;->headers:Lio/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpHeaders;->names()Ljava/util/Set;

    move-result-object v0

    const-string v1, "headers.names()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
