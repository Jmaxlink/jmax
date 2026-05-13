.class public final Lio/ktor/util/logging/LoggerJvmKt;
.super Ljava/lang/Object;
.source "LoggerJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0019\u0010\u0000\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0000\u0010\u0004*\n\u0010\u0005\"\u00020\u00022\u00020\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "isTraceEnabled",
        "",
        "Lorg/slf4j/Logger;",
        "Lio/ktor/util/logging/Logger;",
        "(Lorg/slf4j/Logger;)Z",
        "Logger",
        "ktor-utils"
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
.method public static final isTraceEnabled(Lorg/slf4j/Logger;)Z
    .locals 1
    .param p0, "$this$isTraceEnabled"    # Lorg/slf4j/Logger;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {p0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    return v0
.end method
