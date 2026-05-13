.class public final Lio/ktor/util/PlatformUtilsJvmKt;
.super Ljava/lang/Object;
.source "PlatformUtilsJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0018\u0010\u0002\u001a\u00020\u0003*\u00020\u00048@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0005\"\u0018\u0010\u0006\u001a\u00020\u0003*\u00020\u00048@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0005\"\u0015\u0010\u0007\u001a\u00020\u0008*\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "DEVELOPMENT_MODE_KEY",
        "",
        "isDevelopmentMode",
        "",
        "Lio/ktor/util/PlatformUtils;",
        "(Lio/ktor/util/PlatformUtils;)Z",
        "isNewMemoryModel",
        "platform",
        "Lio/ktor/util/Platform;",
        "getPlatform",
        "(Lio/ktor/util/PlatformUtils;)Lio/ktor/util/Platform;",
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


# static fields
.field private static final DEVELOPMENT_MODE_KEY:Ljava/lang/String; = "io.ktor.development"


# direct methods
.method public static final getPlatform(Lio/ktor/util/PlatformUtils;)Lio/ktor/util/Platform;
    .locals 1
    .param p0, "$this$platform"    # Lio/ktor/util/PlatformUtils;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lio/ktor/util/Platform;->Jvm:Lio/ktor/util/Platform;

    return-object v0
.end method

.method public static final isDevelopmentMode(Lio/ktor/util/PlatformUtils;)Z
    .locals 3
    .param p0, "$this$isDevelopmentMode"    # Lio/ktor/util/PlatformUtils;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    const-string v0, "io.ktor.development"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static final isNewMemoryModel(Lio/ktor/util/PlatformUtils;)Z
    .locals 1
    .param p0, "$this$isNewMemoryModel"    # Lio/ktor/util/PlatformUtils;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x1

    return v0
.end method
