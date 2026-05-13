.class public final Lio/ktor/server/application/ApplicationConfigExtensionsKt;
.super Ljava/lang/Object;
.source "ApplicationConfigExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "host",
        "",
        "Lio/ktor/server/config/ApplicationConfig;",
        "getHost",
        "(Lio/ktor/server/config/ApplicationConfig;)Ljava/lang/String;",
        "port",
        "",
        "getPort",
        "(Lio/ktor/server/config/ApplicationConfig;)I",
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
.method public static final getHost(Lio/ktor/server/config/ApplicationConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "$this$host"    # Lio/ktor/server/config/ApplicationConfig;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const-string v0, "ktor.deployment.host"

    invoke-interface {p0, v0}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/ktor/server/config/ApplicationConfigValue;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "0.0.0.0"

    :cond_1
    return-object v0
.end method

.method public static final getPort(Lio/ktor/server/config/ApplicationConfig;)I
    .locals 1
    .param p0, "$this$port"    # Lio/ktor/server/config/ApplicationConfig;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    const-string v0, "ktor.deployment.port"

    invoke-interface {p0, v0}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/ktor/server/config/ApplicationConfigValue;->getString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f90

    :goto_0
    return v0
.end method
