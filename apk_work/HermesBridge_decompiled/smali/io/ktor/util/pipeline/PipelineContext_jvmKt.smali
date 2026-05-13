.class public final Lio/ktor/util/pipeline/PipelineContext_jvmKt;
.super Ljava/lang/Object;
.source "PipelineContext.jvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "DISABLE_SFG",
        "",
        "getDISABLE_SFG",
        "()Z",
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
.field private static final DISABLE_SFG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    const-string v0, "io.ktor.internal.disable.sfg"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lio/ktor/util/pipeline/PipelineContext_jvmKt;->DISABLE_SFG:Z

    return-void
.end method

.method public static final getDISABLE_SFG()Z
    .locals 1

    .line 7
    sget-boolean v0, Lio/ktor/util/pipeline/PipelineContext_jvmKt;->DISABLE_SFG:Z

    return v0
.end method
