.class public final Lio/ktor/server/application/RouteScopedPluginKt;
.super Ljava/lang/Object;
.source "RouteScopedPlugin.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a1\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u00020\u00032\u0014\u0010\u0004\u001a\u0010\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u0002H\u00010\u0005\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "findPluginInRoute",
        "F",
        "",
        "Lio/ktor/server/routing/Route;",
        "plugin",
        "Lio/ktor/server/application/Plugin;",
        "(Lio/ktor/server/routing/Route;Lio/ktor/server/application/Plugin;)Ljava/lang/Object;",
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
.method public static final findPluginInRoute(Lio/ktor/server/routing/Route;Lio/ktor/server/application/Plugin;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$findPluginInRoute"    # Lio/ktor/server/routing/Route;
    .param p1, "plugin"    # Lio/ktor/server/application/Plugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/routing/Route;",
            "Lio/ktor/server/application/Plugin<",
            "**TF;>;)TF;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p0

    .line 32
    .local v0, "current":Lio/ktor/server/routing/Route;
    :goto_0
    nop

    .line 33
    move-object v1, v0

    check-cast v1, Lio/ktor/util/pipeline/Pipeline;

    invoke-static {v1, p1}, Lio/ktor/server/application/ApplicationPluginKt;->pluginOrNull(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/Plugin;)Ljava/lang/Object;

    move-result-object v1

    .line 34
    .local v1, "installedFeature":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 35
    return-object v1

    .line 37
    :cond_0
    invoke-virtual {v0}, Lio/ktor/server/routing/Route;->getParent()Lio/ktor/server/routing/Route;

    move-result-object v2

    if-nez v2, :cond_2

    .line 38
    nop

    .line 42
    .end local v1    # "installedFeature":Ljava/lang/Object;
    instance-of v1, v0, Lio/ktor/server/routing/Routing;

    if-eqz v1, :cond_1

    .line 43
    invoke-static {p0}, Lio/ktor/server/routing/RoutingKt;->getApplication(Lio/ktor/server/routing/Route;)Lio/ktor/server/application/Application;

    move-result-object v1

    check-cast v1, Lio/ktor/util/pipeline/Pipeline;

    invoke-static {v1, p1}, Lio/ktor/server/application/ApplicationPluginKt;->pluginOrNull(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/Plugin;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 45
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 40
    .restart local v1    # "installedFeature":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0}, Lio/ktor/server/routing/Route;->getParent()Lio/ktor/server/routing/Route;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v2

    .end local v1    # "installedFeature":Ljava/lang/Object;
    goto :goto_0
.end method
