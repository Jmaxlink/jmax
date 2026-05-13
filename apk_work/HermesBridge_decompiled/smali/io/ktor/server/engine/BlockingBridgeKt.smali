.class public final Lio/ktor/server/engine/BlockingBridgeKt;
.super Ljava/lang/Object;
.source "BlockingBridge.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\u001a\u0008\u0010\u0005\u001a\u00020\u0006H\u0000\"\u001d\u0010\u0000\u001a\u0004\u0018\u00010\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0000\u0010\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "isParkingAllowedFunction",
        "Ljava/lang/reflect/Method;",
        "()Ljava/lang/reflect/Method;",
        "isParkingAllowedFunction$delegate",
        "Lkotlin/Lazy;",
        "safeToRunInPlace",
        "",
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


# static fields
.field private static final isParkingAllowedFunction$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    sget-object v0, Lio/ktor/server/engine/BlockingBridgeKt$isParkingAllowedFunction$2;->INSTANCE:Lio/ktor/server/engine/BlockingBridgeKt$isParkingAllowedFunction$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/ktor/server/engine/BlockingBridgeKt;->isParkingAllowedFunction$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final isParkingAllowedFunction()Ljava/lang/reflect/Method;
    .locals 1

    .line 9
    sget-object v0, Lio/ktor/server/engine/BlockingBridgeKt;->isParkingAllowedFunction$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static final safeToRunInPlace()Z
    .locals 5

    .line 19
    invoke-static {}, Lio/ktor/server/engine/BlockingBridgeKt;->isParkingAllowedFunction()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 20
    .local v0, "isParkingAllowed":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 21
    const/4 v2, 0x1

    :try_start_0
    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v3

    .line 23
    .local v3, "cause":Ljava/lang/Throwable;
    move v3, v1

    .end local v3    # "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    nop

    .line 20
    :goto_1
    return v1
.end method
