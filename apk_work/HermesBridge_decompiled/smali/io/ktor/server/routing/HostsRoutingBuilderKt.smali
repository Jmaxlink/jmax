.class public final Lio/ktor/server/routing/HostsRoutingBuilderKt;
.super Ljava/lang/Object;
.source "HostsRoutingBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHostsRoutingBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HostsRoutingBuilder.kt\nio/ktor/server/routing/HostsRoutingBuilderKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,148:1\n1#2:149\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\u001a5\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0000\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0008\u0008\u001aA\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\n2\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\n2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0008\u0008\u001aO\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\n2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\n2\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\n2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0008\u0008\u001a5\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0008\u0008\u001a/\u0010\u0003\u001a\u00020\u0001*\u00020\u00012\n\u0010\u000b\u001a\u00020\u000f\"\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0008\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "host",
        "Lio/ktor/server/routing/Route;",
        "",
        "port",
        "",
        "build",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "hosts",
        "",
        "ports",
        "hostPatterns",
        "Lkotlin/text/Regex;",
        "hostPattern",
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
.method public static final host(Lio/ktor/server/routing/Route;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 3
    .param p0, "$this$host"    # Lio/ktor/server/routing/Route;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "build"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "build"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    if-lez p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_0
    invoke-static {p0, v0, v1, v2, p3}, Lio/ktor/server/routing/HostsRoutingBuilderKt;->host(Lio/ktor/server/routing/Route;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final host(Lio/ktor/server/routing/Route;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 2
    .param p0, "$this$host"    # Lio/ktor/server/routing/Route;
    .param p1, "hosts"    # Ljava/util/List;
    .param p2, "hostPatterns"    # Ljava/util/List;
    .param p3, "ports"    # Ljava/util/List;
    .param p4, "build"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/text/Regex;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hosts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostPatterns"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ports"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "build"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lio/ktor/server/routing/HostRouteSelector;

    invoke-direct {v0, p1, p2, p3}, Lio/ktor/server/routing/HostRouteSelector;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 74
    .local v0, "selector":Lio/ktor/server/routing/HostRouteSelector;
    move-object v1, v0

    check-cast v1, Lio/ktor/server/routing/RouteSelector;

    invoke-virtual {p0, v1}, Lio/ktor/server/routing/Route;->createChild(Lio/ktor/server/routing/RouteSelector;)Lio/ktor/server/routing/Route;

    move-result-object v1

    invoke-interface {p4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static final host(Lio/ktor/server/routing/Route;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 1
    .param p0, "$this$host"    # Lio/ktor/server/routing/Route;
    .param p1, "hosts"    # Ljava/util/List;
    .param p2, "ports"    # Ljava/util/List;
    .param p3, "build"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hosts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ports"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "build"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Lio/ktor/server/routing/HostsRoutingBuilderKt;->host(Lio/ktor/server/routing/Route;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static final host(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;ILkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 3
    .param p0, "$this$host"    # Lio/ktor/server/routing/Route;
    .param p1, "hostPattern"    # Lkotlin/text/Regex;
    .param p2, "port"    # I
    .param p3, "build"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/text/Regex;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostPattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "build"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-lez p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_0
    invoke-static {p0, v0, v1, v2, p3}, Lio/ktor/server/routing/HostsRoutingBuilderKt;->host(Lio/ktor/server/routing/Route;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic host$default(Lio/ktor/server/routing/Route;Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/server/routing/Route;
    .locals 0

    .line 20
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/server/routing/HostsRoutingBuilderKt;->host(Lio/ktor/server/routing/Route;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic host$default(Lio/ktor/server/routing/Route;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/server/routing/Route;
    .locals 0

    .line 67
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 70
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 67
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/server/routing/HostsRoutingBuilderKt;->host(Lio/ktor/server/routing/Route;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic host$default(Lio/ktor/server/routing/Route;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/server/routing/Route;
    .locals 0

    .line 50
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/server/routing/HostsRoutingBuilderKt;->host(Lio/ktor/server/routing/Route;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic host$default(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/server/routing/Route;
    .locals 0

    .line 34
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/server/routing/HostsRoutingBuilderKt;->host(Lio/ktor/server/routing/Route;Lkotlin/text/Regex;ILkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    move-result-object p0

    return-object p0
.end method

.method public static final port(Lio/ktor/server/routing/Route;[ILkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;
    .locals 4
    .param p0, "$this$port"    # Lio/ktor/server/routing/Route;
    .param p1, "ports"    # [I
    .param p2, "build"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "[I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/routing/Route;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ports"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "build"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    array-length v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Lio/ktor/server/routing/HostRouteSelector;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([I)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/ktor/server/routing/HostRouteSelector;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 91
    .local v0, "selector":Lio/ktor/server/routing/HostRouteSelector;
    move-object v1, v0

    check-cast v1, Lio/ktor/server/routing/RouteSelector;

    invoke-virtual {p0, v1}, Lio/ktor/server/routing/Route;->createChild(Lio/ktor/server/routing/RouteSelector;)Lio/ktor/server/routing/Route;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 149
    .end local v0    # "selector":Lio/ktor/server/routing/HostRouteSelector;
    :cond_1
    const/4 v0, 0x0

    .line 88
    .local v0, "$i$a$-require-HostsRoutingBuilderKt$port$1":I
    nop

    .end local v0    # "$i$a$-require-HostsRoutingBuilderKt$port$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one port need to be specified"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
