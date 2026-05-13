.class final Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ShutDownUrl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/engine/ShutDownUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/server/application/PluginBuilder<",
        "Lio/ktor/server/engine/ShutDownUrl$Config;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/server/application/PluginBuilder;",
        "Lio/ktor/server/engine/ShutDownUrl$Config;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2;

    invoke-direct {v0}, Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2;-><init>()V

    sput-object v0, Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2;->INSTANCE:Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 98
    move-object v0, p1

    check-cast v0, Lio/ktor/server/application/PluginBuilder;

    invoke-virtual {p0, v0}, Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2;->invoke(Lio/ktor/server/application/PluginBuilder;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lio/ktor/server/application/PluginBuilder;)V
    .locals 3
    .param p1, "$this$createApplicationPlugin"    # Lio/ktor/server/application/PluginBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/PluginBuilder<",
            "Lio/ktor/server/engine/ShutDownUrl$Config;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$createApplicationPlugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lio/ktor/server/engine/ShutDownUrl;

    invoke-virtual {p1}, Lio/ktor/server/application/PluginBuilder;->getPluginConfig()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/server/engine/ShutDownUrl$Config;

    invoke-virtual {v1}, Lio/ktor/server/engine/ShutDownUrl$Config;->getShutDownUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/ktor/server/application/PluginBuilder;->getPluginConfig()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/ktor/server/engine/ShutDownUrl$Config;

    invoke-virtual {v2}, Lio/ktor/server/engine/ShutDownUrl$Config;->getExitCodeSupplier()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/ktor/server/engine/ShutDownUrl;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 101
    .local v0, "plugin":Lio/ktor/server/engine/ShutDownUrl;
    new-instance v1, Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/ktor/server/engine/ShutDownUrl$Companion$ApplicationCallPlugin$2$1;-><init>(Lio/ktor/server/engine/ShutDownUrl;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p1, v1}, Lio/ktor/server/application/PluginBuilder;->onCall(Lkotlin/jvm/functions/Function3;)V

    .line 106
    return-void
.end method
