.class final Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$launchModuleByName$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ApplicationEngineEnvironmentReloading.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;->launchModuleByName(Ljava/lang/String;Ljava/lang/ClassLoader;Lio/ktor/server/application/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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


# instance fields
.field final synthetic $currentClassLoader:Ljava/lang/ClassLoader;

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $newInstance:Lio/ktor/server/application/Application;

.field final synthetic this$0:Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;


# direct methods
.method constructor <init>(Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;Ljava/lang/ClassLoader;Ljava/lang/String;Lio/ktor/server/application/Application;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$launchModuleByName$1;->this$0:Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;

    iput-object p2, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$launchModuleByName$1;->$currentClassLoader:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$launchModuleByName$1;->$name:Ljava/lang/String;

    iput-object p4, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$launchModuleByName$1;->$newInstance:Lio/ktor/server/application/Application;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 331
    invoke-virtual {p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$launchModuleByName$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 332
    iget-object v0, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$launchModuleByName$1;->this$0:Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading;

    check-cast v0, Lio/ktor/server/application/ApplicationEnvironment;

    iget-object v1, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$launchModuleByName$1;->$currentClassLoader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$launchModuleByName$1;->$name:Ljava/lang/String;

    iget-object v3, p0, Lio/ktor/server/engine/ApplicationEngineEnvironmentReloading$launchModuleByName$1;->$newInstance:Lio/ktor/server/application/Application;

    invoke-static {v0, v1, v2, v3}, Lio/ktor/server/engine/internal/CallableUtilsKt;->executeModuleFunction(Lio/ktor/server/application/ApplicationEnvironment;Ljava/lang/ClassLoader;Ljava/lang/String;Lio/ktor/server/application/Application;)V

    .line 333
    return-void
.end method
