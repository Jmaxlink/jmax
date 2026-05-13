.class final Lio/ktor/server/engine/ShutDownUrl$Config$exitCodeSupplier$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ShutDownUrl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/ShutDownUrl$Config;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/server/application/ApplicationCall;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/server/application/ApplicationCall;",
        "invoke",
        "(Lio/ktor/server/application/ApplicationCall;)Ljava/lang/Integer;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/server/engine/ShutDownUrl$Config$exitCodeSupplier$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/engine/ShutDownUrl$Config$exitCodeSupplier$1;

    invoke-direct {v0}, Lio/ktor/server/engine/ShutDownUrl$Config$exitCodeSupplier$1;-><init>()V

    sput-object v0, Lio/ktor/server/engine/ShutDownUrl$Config$exitCodeSupplier$1;->INSTANCE:Lio/ktor/server/engine/ShutDownUrl$Config$exitCodeSupplier$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/server/application/ApplicationCall;)Ljava/lang/Integer;
    .locals 1
    .param p1, "$this$null"    # Lio/ktor/server/application/ApplicationCall;

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 89
    move-object v0, p1

    check-cast v0, Lio/ktor/server/application/ApplicationCall;

    invoke-virtual {p0, v0}, Lio/ktor/server/engine/ShutDownUrl$Config$exitCodeSupplier$1;->invoke(Lio/ktor/server/application/ApplicationCall;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
