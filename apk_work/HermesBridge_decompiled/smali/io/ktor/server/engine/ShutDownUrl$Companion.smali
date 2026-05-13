.class public final Lio/ktor/server/engine/ShutDownUrl$Companion;
.super Ljava/lang/Object;
.source "ShutDownUrl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/engine/ShutDownUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R#\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lio/ktor/server/engine/ShutDownUrl$Companion;",
        "",
        "()V",
        "ApplicationCallPlugin",
        "Lio/ktor/server/application/BaseApplicationPlugin;",
        "Lio/ktor/server/application/Application;",
        "Lio/ktor/server/engine/ShutDownUrl$Config;",
        "Lio/ktor/server/application/PluginInstance;",
        "getApplicationCallPlugin",
        "()Lio/ktor/server/application/BaseApplicationPlugin;",
        "ktor-server-host-common"
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
.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/ktor/server/engine/ShutDownUrl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getApplicationCallPlugin()Lio/ktor/server/application/BaseApplicationPlugin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/server/application/BaseApplicationPlugin<",
            "Lio/ktor/server/application/Application;",
            "Lio/ktor/server/engine/ShutDownUrl$Config;",
            "Lio/ktor/server/application/PluginInstance;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-static {}, Lio/ktor/server/engine/ShutDownUrl;->access$getApplicationCallPlugin$cp()Lio/ktor/server/application/BaseApplicationPlugin;

    move-result-object v0

    return-object v0
.end method
