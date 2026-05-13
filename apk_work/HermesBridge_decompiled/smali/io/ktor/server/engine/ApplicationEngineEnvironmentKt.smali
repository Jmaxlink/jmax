.class public final Lio/ktor/server/engine/ApplicationEngineEnvironmentKt;
.super Ljava/lang/Object;
.source "ApplicationEngineEnvironment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "applicationEngineEnvironment",
        "Lio/ktor/server/engine/ApplicationEngineEnvironment;",
        "builder",
        "Lkotlin/Function1;",
        "Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "ktor-server-host-common"
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
.method public static final applicationEngineEnvironment(Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngineEnvironment;
    .locals 1
    .param p0, "builder"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/engine/ApplicationEngineEnvironment;"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;

    invoke-direct {v0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->build(Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v0

    return-object v0
.end method
