.class final Lio/ktor/server/config/HoconApplicationConfig$HoconApplicationConfigValue;
.super Ljava/lang/Object;
.source "HoconApplicationConfig.kt"

# interfaces
.implements Lio/ktor/server/config/ApplicationConfigValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/config/HoconApplicationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HoconApplicationConfigValue"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0005H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/ktor/server/config/HoconApplicationConfig$HoconApplicationConfigValue;",
        "Lio/ktor/server/config/ApplicationConfigValue;",
        "config",
        "Lcom/typesafe/config/Config;",
        "path",
        "",
        "(Lcom/typesafe/config/Config;Ljava/lang/String;)V",
        "getConfig",
        "()Lcom/typesafe/config/Config;",
        "getPath",
        "()Ljava/lang/String;",
        "getList",
        "",
        "getString",
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
.field private final config:Lcom/typesafe/config/Config;

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/typesafe/config/Config;Ljava/lang/String;)V
    .locals 1
    .param p1, "config"    # Lcom/typesafe/config/Config;
    .param p2, "path"    # Ljava/lang/String;

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/server/config/HoconApplicationConfig$HoconApplicationConfigValue;->config:Lcom/typesafe/config/Config;

    iput-object p2, p0, Lio/ktor/server/config/HoconApplicationConfig$HoconApplicationConfigValue;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getConfig()Lcom/typesafe/config/Config;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/ktor/server/config/HoconApplicationConfig$HoconApplicationConfigValue;->config:Lcom/typesafe/config/Config;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lio/ktor/server/config/HoconApplicationConfig$HoconApplicationConfigValue;->config:Lcom/typesafe/config/Config;

    iget-object v1, p0, Lio/ktor/server/config/HoconApplicationConfig$HoconApplicationConfigValue;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/typesafe/config/Config;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "config.getStringList(path)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/ktor/server/config/HoconApplicationConfig$HoconApplicationConfigValue;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .line 74
    iget-object v0, p0, Lio/ktor/server/config/HoconApplicationConfig$HoconApplicationConfigValue;->config:Lcom/typesafe/config/Config;

    iget-object v1, p0, Lio/ktor/server/config/HoconApplicationConfig$HoconApplicationConfigValue;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/typesafe/config/Config;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "config.getString(path)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
