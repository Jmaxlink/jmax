.class public final Lio/ktor/server/engine/ShutDownUrl$Config;
.super Ljava/lang/Object;
.source "ShutDownUrl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/engine/ShutDownUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation runtime Lio/ktor/util/KtorDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R+\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/ktor/server/engine/ShutDownUrl$Config;",
        "",
        "()V",
        "exitCodeSupplier",
        "Lkotlin/Function1;",
        "Lio/ktor/server/application/ApplicationCall;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "getExitCodeSupplier",
        "()Lkotlin/jvm/functions/Function1;",
        "setExitCodeSupplier",
        "(Lkotlin/jvm/functions/Function1;)V",
        "shutDownUrl",
        "",
        "getShutDownUrl",
        "()Ljava/lang/String;",
        "setShutDownUrl",
        "(Ljava/lang/String;)V",
        "ktor-server-host-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private exitCodeSupplier:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private shutDownUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, "/ktor/application/shutdown"

    iput-object v0, p0, Lio/ktor/server/engine/ShutDownUrl$Config;->shutDownUrl:Ljava/lang/String;

    .line 89
    sget-object v0, Lio/ktor/server/engine/ShutDownUrl$Config$exitCodeSupplier$1;->INSTANCE:Lio/ktor/server/engine/ShutDownUrl$Config$exitCodeSupplier$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lio/ktor/server/engine/ShutDownUrl$Config;->exitCodeSupplier:Lkotlin/jvm/functions/Function1;

    .line 80
    return-void
.end method


# virtual methods
.method public final getExitCodeSupplier()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lio/ktor/server/engine/ShutDownUrl$Config;->exitCodeSupplier:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getShutDownUrl()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lio/ktor/server/engine/ShutDownUrl$Config;->shutDownUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final setExitCodeSupplier(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lio/ktor/server/engine/ShutDownUrl$Config;->exitCodeSupplier:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setShutDownUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lio/ktor/server/engine/ShutDownUrl$Config;->shutDownUrl:Ljava/lang/String;

    return-void
.end method
