.class public final Lio/ktor/network/selector/InterestSuspensionsMap$Companion;
.super Ljava/lang/Object;
.source "InterestSuspensionsMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/selector/InterestSuspensionsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00070\u00052\u0006\u0010\u000c\u001a\u00020\rH\u0002R0\u0010\u0003\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00070\u00050\u0004X\u0082\u0004\u00a2\u0006\n\n\u0002\u0010\n\u0012\u0004\u0008\t\u0010\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/ktor/network/selector/InterestSuspensionsMap$Companion;",
        "",
        "()V",
        "updaters",
        "",
        "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
        "Lio/ktor/network/selector/InterestSuspensionsMap;",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "",
        "getUpdaters$annotations",
        "[Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
        "updater",
        "interest",
        "Lio/ktor/network/selector/SelectInterest;",
        "ktor-network"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/ktor/network/selector/InterestSuspensionsMap$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$updater(Lio/ktor/network/selector/InterestSuspensionsMap$Companion;Lio/ktor/network/selector/SelectInterest;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1
    .param p0, "$this"    # Lio/ktor/network/selector/InterestSuspensionsMap$Companion;
    .param p1, "interest"    # Lio/ktor/network/selector/SelectInterest;

    .line 62
    invoke-direct {p0, p1}, Lio/ktor/network/selector/InterestSuspensionsMap$Companion;->updater(Lio/ktor/network/selector/SelectInterest;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic getUpdaters$annotations()V
    .locals 0

    return-void
.end method

.method private final updater(Lio/ktor/network/selector/SelectInterest;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 2
    .param p1, "interest"    # Lio/ktor/network/selector/SelectInterest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/SelectInterest;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/ktor/network/selector/InterestSuspensionsMap;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 81
    invoke-static {}, Lio/ktor/network/selector/InterestSuspensionsMap;->access$getUpdaters$cp()[Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {p1}, Lio/ktor/network/selector/SelectInterest;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
