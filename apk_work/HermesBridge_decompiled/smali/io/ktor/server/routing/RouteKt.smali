.class public final Lio/ktor/server/routing/RouteKt;
.super Ljava/lang/Object;
.source "Route.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoute.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Route.kt\nio/ktor/server/routing/RouteKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,152:1\n1855#2,2:153\n*S KotlinDebug\n*F\n+ 1 Route.kt\nio/ktor/server/routing/RouteKt\n*L\n150#1:153,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0000\u001a\u0010\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0002\u001a\u001a\u0010\u0000\u001a\u00020\u0003*\u00020\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005H\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "getAllRoutes",
        "",
        "Lio/ktor/server/routing/Route;",
        "",
        "endpoints",
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
.method public static final getAllRoutes(Lio/ktor/server/routing/Route;)Ljava/util/List;
    .locals 1
    .param p0, "$this$getAllRoutes"    # Lio/ktor/server/routing/Route;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            ")",
            "Ljava/util/List<",
            "Lio/ktor/server/routing/Route;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 142
    .local v0, "endpoints":Ljava/util/List;
    invoke-static {p0, v0}, Lio/ktor/server/routing/RouteKt;->getAllRoutes(Lio/ktor/server/routing/Route;Ljava/util/List;)V

    .line 143
    return-object v0
.end method

.method private static final getAllRoutes(Lio/ktor/server/routing/Route;Ljava/util/List;)V
    .locals 6
    .param p0, "$this$getAllRoutes"    # Lio/ktor/server/routing/Route;
    .param p1, "endpoints"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/util/List<",
            "Lio/ktor/server/routing/Route;",
            ">;)V"
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getHandlers$ktor_server_core()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getChildren()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 153
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lio/ktor/server/routing/Route;

    .local v4, "it":Lio/ktor/server/routing/Route;
    const/4 v5, 0x0

    .line 150
    .local v5, "$i$a$-forEach-RouteKt$getAllRoutes$1":I
    invoke-static {v4, p1}, Lio/ktor/server/routing/RouteKt;->getAllRoutes(Lio/ktor/server/routing/Route;Ljava/util/List;)V

    .line 153
    .end local v4    # "it":Lio/ktor/server/routing/Route;
    .end local v5    # "$i$a$-forEach-RouteKt$getAllRoutes$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 154
    :cond_1
    nop

    .line 151
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method
