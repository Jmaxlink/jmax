.class public final Lio/ktor/server/config/HoconApplicationConfigKt;
.super Ljava/lang/Object;
.source "HoconApplicationConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u001a\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u0003*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003\u001a\u001a\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003\u00a8\u0006\t"
    }
    d2 = {
        "ApplicationConfig",
        "Lio/ktor/server/config/ApplicationConfig;",
        "configPath",
        "",
        "tryGetString",
        "Lcom/typesafe/config/Config;",
        "path",
        "tryGetStringList",
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
.method public static final ApplicationConfig(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;
    .locals 2
    .param p0, "configPath"    # Ljava/lang/String;

    .line 94
    sget-object v0, Lio/ktor/server/config/ConfigLoader;->Companion:Lio/ktor/server/config/ConfigLoader$Companion;

    sget-object v1, Lio/ktor/server/config/ConfigLoader;->Companion:Lio/ktor/server/config/ConfigLoader$Companion;

    invoke-virtual {v0, v1, p0}, Lio/ktor/server/config/ConfigLoader$Companion;->load(Lio/ktor/server/config/ConfigLoader$Companion;Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;

    move-result-object v0

    return-object v0
.end method

.method public static final tryGetString(Lcom/typesafe/config/Config;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this$tryGetString"    # Lcom/typesafe/config/Config;
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-interface {p0, p1}, Lcom/typesafe/config/Config;->hasPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lcom/typesafe/config/Config;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final tryGetStringList(Lcom/typesafe/config/Config;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "$this$tryGetStringList"    # Lcom/typesafe/config/Config;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/Config;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-interface {p0, p1}, Lcom/typesafe/config/Config;->hasPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lcom/typesafe/config/Config;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
