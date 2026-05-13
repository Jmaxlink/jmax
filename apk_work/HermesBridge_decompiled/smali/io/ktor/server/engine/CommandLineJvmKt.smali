.class public final Lio/ktor/server/engine/CommandLineJvmKt;
.super Ljava/lang/Object;
.source "CommandLineJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a4\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0019\u0008\u0002\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008\t\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "commandLineEnvironment",
        "Lio/ktor/server/engine/ApplicationEngineEnvironment;",
        "args",
        "",
        "",
        "environmentBuilder",
        "Lkotlin/Function1;",
        "Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngineEnvironment;",
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
.method public static final commandLineEnvironment([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngineEnvironment;
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "environmentBuilder"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/engine/ApplicationEngineEnvironment;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p0, p1}, Lio/ktor/server/engine/CommandLineKt;->buildCommandLineEnvironment([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic commandLineEnvironment$default([Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/server/engine/ApplicationEngineEnvironment;
    .locals 0

    .line 10
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 12
    sget-object p1, Lio/ktor/server/engine/CommandLineJvmKt$commandLineEnvironment$1;->INSTANCE:Lio/ktor/server/engine/CommandLineJvmKt$commandLineEnvironment$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 10
    :cond_0
    invoke-static {p0, p1}, Lio/ktor/server/engine/CommandLineJvmKt;->commandLineEnvironment([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object p0

    return-object p0
.end method
