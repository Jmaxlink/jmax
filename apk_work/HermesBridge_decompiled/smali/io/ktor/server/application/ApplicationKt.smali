.class public final Lio/ktor/server/application/ApplicationKt;
.super Ljava/lang/Object;
.source "Application.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0019\u0010\u0000\u001a\u00060\u0001j\u0002`\u0002*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "log",
        "Lorg/slf4j/Logger;",
        "Lio/ktor/util/logging/Logger;",
        "Lio/ktor/server/application/Application;",
        "getLog",
        "(Lio/ktor/server/application/Application;)Lorg/slf4j/Logger;",
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
.method public static final getLog(Lio/ktor/server/application/Application;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "$this$log"    # Lio/ktor/server/application/Application;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lio/ktor/server/application/Application;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/application/ApplicationEnvironment;->getLog()Lorg/slf4j/Logger;

    move-result-object v0

    return-object v0
.end method
