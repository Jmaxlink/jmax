.class public final Lio/ktor/server/http/content/SinglePageApplicationKt;
.super Ljava/lang/Object;
.source "SinglePageApplication.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a-\u0010\u0007\u001a\u00020\u0001*\u00020\u00022!\u0010\u0008\u001a\u001d\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\r0\t\u001a\u0012\u0010\u000e\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a%\u0010\u000f\u001a\u00020\u0001*\u00020\u00102\u0019\u0008\u0002\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\t\u00a2\u0006\u0002\u0008\u0012\u001a\u0012\u0010\u0013\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0014"
    }
    d2 = {
        "angular",
        "",
        "Lio/ktor/server/http/content/SPAConfig;",
        "filesPath",
        "",
        "backbone",
        "ember",
        "ignoreFiles",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "path",
        "",
        "react",
        "singlePageApplication",
        "Lio/ktor/server/routing/Route;",
        "configBuilder",
        "Lkotlin/ExtensionFunctionType;",
        "vue",
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
.method public static final angular(Lio/ktor/server/http/content/SPAConfig;Ljava/lang/String;)V
    .locals 1
    .param p0, "$this$angular"    # Lio/ktor/server/http/content/SPAConfig;
    .param p1, "filesPath"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1}, Lio/ktor/server/http/content/SPAConfig;->setFilesPath(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static final backbone(Lio/ktor/server/http/content/SPAConfig;Ljava/lang/String;)V
    .locals 1
    .param p0, "$this$backbone"    # Lio/ktor/server/http/content/SPAConfig;
    .param p1, "filesPath"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p1}, Lio/ktor/server/http/content/SPAConfig;->setFilesPath(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static final ember(Lio/ktor/server/http/content/SPAConfig;Ljava/lang/String;)V
    .locals 1
    .param p0, "$this$ember"    # Lio/ktor/server/http/content/SPAConfig;
    .param p1, "filesPath"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p1}, Lio/ktor/server/http/content/SPAConfig;->setFilesPath(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static final ignoreFiles(Lio/ktor/server/http/content/SPAConfig;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p0, "$this$ignoreFiles"    # Lio/ktor/server/http/content/SPAConfig;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/http/content/SPAConfig;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lio/ktor/server/http/content/SPAConfig;->getIgnoredFiles$ktor_server_core()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public static final react(Lio/ktor/server/http/content/SPAConfig;Ljava/lang/String;)V
    .locals 1
    .param p0, "$this$react"    # Lio/ktor/server/http/content/SPAConfig;
    .param p1, "filesPath"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, p1}, Lio/ktor/server/http/content/SPAConfig;->setFilesPath(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static final singlePageApplication(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .param p0, "$this$singlePageApplication"    # Lio/ktor/server/routing/Route;
    .param p1, "configBuilder"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/http/content/SPAConfig;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lio/ktor/server/http/content/SPAConfig;

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lio/ktor/server/http/content/SPAConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .local v0, "config":Lio/ktor/server/http/content/SPAConfig;
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v0}, Lio/ktor/server/http/content/SPAConfig;->getUseResources()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v0}, Lio/ktor/server/http/content/SPAConfig;->getApplicationRoute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lio/ktor/server/http/content/SPAConfig;->getFilesPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/ktor/server/http/content/SPAConfig;->getDefaultPage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/ktor/server/http/content/SinglePageApplicationKt$singlePageApplication$2;

    invoke-direct {v4, v0}, Lio/ktor/server/http/content/SinglePageApplicationKt$singlePageApplication$2;-><init>(Lio/ktor/server/http/content/SPAConfig;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v1, v2, v3, v4}, Lio/ktor/server/http/content/StaticContentKt;->staticResources(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v0}, Lio/ktor/server/http/content/SPAConfig;->getApplicationRoute()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lio/ktor/server/http/content/SPAConfig;->getFilesPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/ktor/server/http/content/SPAConfig;->getDefaultPage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/ktor/server/http/content/SinglePageApplicationKt$singlePageApplication$3;

    invoke-direct {v4, v0}, Lio/ktor/server/http/content/SinglePageApplicationKt$singlePageApplication$3;-><init>(Lio/ktor/server/http/content/SPAConfig;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v1, v2, v3, v4}, Lio/ktor/server/http/content/StaticContentKt;->staticFiles(Lio/ktor/server/routing/Route;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Route;

    .line 52
    :goto_0
    return-void
.end method

.method public static synthetic singlePageApplication$default(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 29
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lio/ktor/server/http/content/SinglePageApplicationKt$singlePageApplication$1;->INSTANCE:Lio/ktor/server/http/content/SinglePageApplicationKt$singlePageApplication$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-static {p0, p1}, Lio/ktor/server/http/content/SinglePageApplicationKt;->singlePageApplication(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final vue(Lio/ktor/server/http/content/SPAConfig;Ljava/lang/String;)V
    .locals 1
    .param p0, "$this$vue"    # Lio/ktor/server/http/content/SPAConfig;
    .param p1, "filesPath"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, p1}, Lio/ktor/server/http/content/SPAConfig;->setFilesPath(Ljava/lang/String;)V

    .line 116
    return-void
.end method
