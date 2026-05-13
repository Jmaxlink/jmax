.class public final Lio/ktor/server/routing/RoutingKt;
.super Ljava/lang/Object;
.source "Routing.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0011\u001a\u00020\u0012*\u00020\r2\u0017\u0010\u0013\u001a\u0013\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00150\u0014\u00a2\u0006\u0002\u0008\u0016H\u0007\"\u0018\u0010\u0000\u001a\u00060\u0001j\u0002`\u0002X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\"\"\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0015\u0010\u000c\u001a\u00020\r*\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0017"
    }
    d2 = {
        "LOGGER",
        "Lorg/slf4j/Logger;",
        "Lio/ktor/util/logging/Logger;",
        "getLOGGER",
        "()Lorg/slf4j/Logger;",
        "RoutingFailureStatusCode",
        "Lio/ktor/util/AttributeKey;",
        "Lio/ktor/http/HttpStatusCode;",
        "getRoutingFailureStatusCode$annotations",
        "()V",
        "getRoutingFailureStatusCode",
        "()Lio/ktor/util/AttributeKey;",
        "application",
        "Lio/ktor/server/application/Application;",
        "Lio/ktor/server/routing/Route;",
        "getApplication",
        "(Lio/ktor/server/routing/Route;)Lio/ktor/server/application/Application;",
        "routing",
        "Lio/ktor/server/routing/Routing;",
        "configuration",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
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


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final RoutingFailureStatusCode:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/http/HttpStatusCode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "RoutingFailureStatusCode"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/routing/RoutingKt;->RoutingFailureStatusCode:Lio/ktor/util/AttributeKey;

    .line 19
    const-string v0, "io.ktor.routing.Routing"

    invoke-static {v0}, Lio/ktor/util/logging/KtorSimpleLoggerJvmKt;->KtorSimpleLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/ktor/server/routing/RoutingKt;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public static final getApplication(Lio/ktor/server/routing/Route;)Lio/ktor/server/application/Application;
    .locals 2
    .param p0, "$this$application"    # Lio/ktor/server/routing/Route;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    nop

    .line 151
    instance-of v0, p0, Lio/ktor/server/routing/Routing;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/ktor/server/routing/Routing;

    invoke-virtual {v0}, Lio/ktor/server/routing/Routing;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getParent()Lio/ktor/server/routing/Route;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lio/ktor/server/routing/RoutingKt;->getApplication(Lio/ktor/server/routing/Route;)Lio/ktor/server/application/Application;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    :goto_0
    return-object v0

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 153
    nop

    .line 152
    const-string v1, "Cannot retrieve application from unattached routing entry"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getLOGGER()Lorg/slf4j/Logger;
    .locals 1

    .line 19
    sget-object v0, Lio/ktor/server/routing/RoutingKt;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static final getRoutingFailureStatusCode()Lio/ktor/util/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/http/HttpStatusCode;",
            ">;"
        }
    .end annotation

    .line 17
    sget-object v0, Lio/ktor/server/routing/RoutingKt;->RoutingFailureStatusCode:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public static synthetic getRoutingFailureStatusCode$annotations()V
    .locals 0
    .annotation runtime Lio/ktor/util/InternalAPI;
    .end annotation

    return-void
.end method

.method public static final routing(Lio/ktor/server/application/Application;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/routing/Routing;
    .locals 2
    .param p0, "$this$routing"    # Lio/ktor/server/application/Application;
    .param p1, "configuration"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/Application;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/Routing;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/routing/Routing;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/KtorDsl;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    move-object v0, p0

    check-cast v0, Lio/ktor/util/pipeline/Pipeline;

    sget-object v1, Lio/ktor/server/routing/Routing;->Plugin:Lio/ktor/server/routing/Routing$Plugin;

    check-cast v1, Lio/ktor/server/application/Plugin;

    invoke-static {v0, v1}, Lio/ktor/server/application/ApplicationPluginKt;->pluginOrNull(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/Plugin;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/server/routing/Routing;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Lio/ktor/util/pipeline/Pipeline;

    sget-object v1, Lio/ktor/server/routing/Routing;->Plugin:Lio/ktor/server/routing/Routing$Plugin;

    check-cast v1, Lio/ktor/server/application/Plugin;

    invoke-static {v0, v1, p1}, Lio/ktor/server/application/ApplicationPluginKt;->install(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/server/application/Plugin;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/server/routing/Routing;

    :goto_0
    return-object v0
.end method
