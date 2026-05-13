.class final Lio/ktor/server/engine/internal/ApplicationUtilsJvmKt$configureShutdownUrl$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ApplicationUtilsJvm.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/internal/ApplicationUtilsJvmKt;->configureShutdownUrl(Lio/ktor/server/application/ApplicationEnvironment;Lio/ktor/server/engine/EnginePipeline;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/server/engine/ShutDownUrl$Config;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
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


# instance fields
.field final synthetic $url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/engine/internal/ApplicationUtilsJvmKt$configureShutdownUrl$1;->$url:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 21
    move-object v0, p1

    check-cast v0, Lio/ktor/server/engine/ShutDownUrl$Config;

    invoke-virtual {p0, v0}, Lio/ktor/server/engine/internal/ApplicationUtilsJvmKt$configureShutdownUrl$1;->invoke(Lio/ktor/server/engine/ShutDownUrl$Config;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lio/ktor/server/engine/ShutDownUrl$Config;)V
    .locals 1
    .param p1, "$this$install"    # Lio/ktor/server/engine/ShutDownUrl$Config;

    const-string v0, "$this$install"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lio/ktor/server/engine/internal/ApplicationUtilsJvmKt$configureShutdownUrl$1;->$url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/ktor/server/engine/ShutDownUrl$Config;->setShutDownUrl(Ljava/lang/String;)V

    .line 23
    return-void
.end method
