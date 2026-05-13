.class public final Lio/ktor/util/PlatformUtils;
.super Ljava/lang/Object;
.source "PlatformUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0011\u0010\u000f\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/ktor/util/PlatformUtils;",
        "",
        "()V",
        "IS_BROWSER",
        "",
        "getIS_BROWSER",
        "()Z",
        "IS_DEVELOPMENT_MODE",
        "getIS_DEVELOPMENT_MODE",
        "IS_JVM",
        "getIS_JVM",
        "IS_NATIVE",
        "getIS_NATIVE",
        "IS_NEW_MM_ENABLED",
        "getIS_NEW_MM_ENABLED",
        "IS_NODE",
        "getIS_NODE",
        "ktor-utils"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/util/PlatformUtils;

.field private static final IS_BROWSER:Z

.field private static final IS_DEVELOPMENT_MODE:Z

.field private static final IS_JVM:Z

.field private static final IS_NATIVE:Z

.field private static final IS_NEW_MM_ENABLED:Z

.field private static final IS_NODE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/ktor/util/PlatformUtils;

    invoke-direct {v0}, Lio/ktor/util/PlatformUtils;-><init>()V

    sput-object v0, Lio/ktor/util/PlatformUtils;->INSTANCE:Lio/ktor/util/PlatformUtils;

    .line 8
    sget-object v0, Lio/ktor/util/PlatformUtils;->INSTANCE:Lio/ktor/util/PlatformUtils;

    invoke-static {v0}, Lio/ktor/util/PlatformUtilsJvmKt;->getPlatform(Lio/ktor/util/PlatformUtils;)Lio/ktor/util/Platform;

    move-result-object v0

    sget-object v1, Lio/ktor/util/Platform;->Browser:Lio/ktor/util/Platform;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Lio/ktor/util/PlatformUtils;->IS_BROWSER:Z

    .line 9
    sget-object v0, Lio/ktor/util/PlatformUtils;->INSTANCE:Lio/ktor/util/PlatformUtils;

    invoke-static {v0}, Lio/ktor/util/PlatformUtilsJvmKt;->getPlatform(Lio/ktor/util/PlatformUtils;)Lio/ktor/util/Platform;

    move-result-object v0

    sget-object v1, Lio/ktor/util/Platform;->Node:Lio/ktor/util/Platform;

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    sput-boolean v0, Lio/ktor/util/PlatformUtils;->IS_NODE:Z

    .line 10
    sget-object v0, Lio/ktor/util/PlatformUtils;->INSTANCE:Lio/ktor/util/PlatformUtils;

    invoke-static {v0}, Lio/ktor/util/PlatformUtilsJvmKt;->getPlatform(Lio/ktor/util/PlatformUtils;)Lio/ktor/util/Platform;

    move-result-object v0

    sget-object v1, Lio/ktor/util/Platform;->Jvm:Lio/ktor/util/Platform;

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    sput-boolean v0, Lio/ktor/util/PlatformUtils;->IS_JVM:Z

    .line 11
    sget-object v0, Lio/ktor/util/PlatformUtils;->INSTANCE:Lio/ktor/util/PlatformUtils;

    invoke-static {v0}, Lio/ktor/util/PlatformUtilsJvmKt;->getPlatform(Lio/ktor/util/PlatformUtils;)Lio/ktor/util/Platform;

    move-result-object v0

    sget-object v1, Lio/ktor/util/Platform;->Native:Lio/ktor/util/Platform;

    if-ne v0, v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    sput-boolean v2, Lio/ktor/util/PlatformUtils;->IS_NATIVE:Z

    .line 13
    sget-object v0, Lio/ktor/util/PlatformUtils;->INSTANCE:Lio/ktor/util/PlatformUtils;

    invoke-static {v0}, Lio/ktor/util/PlatformUtilsJvmKt;->isDevelopmentMode(Lio/ktor/util/PlatformUtils;)Z

    move-result v0

    sput-boolean v0, Lio/ktor/util/PlatformUtils;->IS_DEVELOPMENT_MODE:Z

    .line 15
    sget-object v0, Lio/ktor/util/PlatformUtils;->INSTANCE:Lio/ktor/util/PlatformUtils;

    invoke-static {v0}, Lio/ktor/util/PlatformUtilsJvmKt;->isNewMemoryModel(Lio/ktor/util/PlatformUtils;)Z

    move-result v0

    sput-boolean v0, Lio/ktor/util/PlatformUtils;->IS_NEW_MM_ENABLED:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIS_BROWSER()Z
    .locals 1

    .line 8
    sget-boolean v0, Lio/ktor/util/PlatformUtils;->IS_BROWSER:Z

    return v0
.end method

.method public final getIS_DEVELOPMENT_MODE()Z
    .locals 1

    .line 13
    sget-boolean v0, Lio/ktor/util/PlatformUtils;->IS_DEVELOPMENT_MODE:Z

    return v0
.end method

.method public final getIS_JVM()Z
    .locals 1

    .line 10
    sget-boolean v0, Lio/ktor/util/PlatformUtils;->IS_JVM:Z

    return v0
.end method

.method public final getIS_NATIVE()Z
    .locals 1

    .line 11
    sget-boolean v0, Lio/ktor/util/PlatformUtils;->IS_NATIVE:Z

    return v0
.end method

.method public final getIS_NEW_MM_ENABLED()Z
    .locals 1

    .line 15
    sget-boolean v0, Lio/ktor/util/PlatformUtils;->IS_NEW_MM_ENABLED:Z

    return v0
.end method

.method public final getIS_NODE()Z
    .locals 1

    .line 9
    sget-boolean v0, Lio/ktor/util/PlatformUtils;->IS_NODE:Z

    return v0
.end method
