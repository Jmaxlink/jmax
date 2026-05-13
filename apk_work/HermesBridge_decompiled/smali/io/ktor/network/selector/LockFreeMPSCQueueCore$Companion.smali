.class public final Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;
.super Ljava/lang/Object;
.source "LockFreeMPSCQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/selector/LockFreeMPSCQueueCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0014\u001a\u00020\u0004*\u00020\tH\u0002J\u0014\u0010\u0015\u001a\u00020\t*\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0004H\u0002J\u0014\u0010\u0017\u001a\u00020\t*\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0004H\u0002JP\u0010\u0019\u001a\u0002H\u001a\"\u0004\u0008\u0001\u0010\u001a*\u00020\t26\u0010\u001b\u001a2\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u001f\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u0002H\u001a0\u001cH\u0082\u0008\u00a2\u0006\u0002\u0010!J\u0015\u0010\"\u001a\u00020\t*\u00020\t2\u0006\u0010#\u001a\u00020\tH\u0082\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;",
        "",
        "()V",
        "ADD_CLOSED",
        "",
        "ADD_FROZEN",
        "ADD_SUCCESS",
        "CAPACITY_BITS",
        "CLOSED_MASK",
        "",
        "CLOSED_SHIFT",
        "FROZEN_MASK",
        "FROZEN_SHIFT",
        "HEAD_MASK",
        "HEAD_SHIFT",
        "INITIAL_CAPACITY",
        "MAX_CAPACITY_MASK",
        "REMOVE_FROZEN",
        "TAIL_MASK",
        "TAIL_SHIFT",
        "addFailReason",
        "updateHead",
        "newHead",
        "updateTail",
        "newTail",
        "withState",
        "T",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "head",
        "tail",
        "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "wo",
        "other",
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

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$addFailReason(Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;J)I
    .locals 1
    .param p0, "$this"    # Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;
    .param p1, "$receiver"    # J

    .line 206
    invoke-direct {p0, p1, p2}, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;->addFailReason(J)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$updateHead(Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;JI)J
    .locals 2
    .param p0, "$this"    # Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;
    .param p1, "$receiver"    # J
    .param p3, "newHead"    # I

    .line 206
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;->updateHead(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$updateTail(Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;JI)J
    .locals 2
    .param p0, "$this"    # Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;
    .param p1, "$receiver"    # J
    .param p3, "newTail"    # I

    .line 206
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;->updateTail(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$wo(Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;JJ)J
    .locals 2
    .param p0, "$this"    # Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;
    .param p1, "$receiver"    # J
    .param p3, "other"    # J

    .line 206
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;->wo(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private final addFailReason(J)I
    .locals 4
    .param p1, "$this$addFailReason"    # J

    .line 242
    const-wide/high16 v0, 0x2000000000000000L

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private final updateHead(JI)J
    .locals 5
    .param p1, "$this$updateHead"    # J
    .param p3, "newHead"    # I

    .line 232
    const-wide/32 v0, 0x3fffffff

    invoke-direct {p0, p1, p2, v0, v1}, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;->wo(JJ)J

    move-result-wide v0

    int-to-long v2, p3

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private final updateTail(JI)J
    .locals 5
    .param p1, "$this$updateTail"    # J
    .param p3, "newTail"    # I

    .line 233
    const-wide v0, 0xfffffffc0000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;->wo(JJ)J

    move-result-wide v0

    int-to-long v2, p3

    const/16 v4, 0x1e

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private final withState(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 5
    .param p1, "$this$withState"    # J
    .param p3, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 236
    .local v0, "$i$f$withState":I
    const-wide/32 v1, 0x3fffffff

    and-long/2addr v1, p1

    const/4 v3, 0x0

    shr-long/2addr v1, v3

    long-to-int v1, v1

    .line 237
    .local v1, "head":I
    const-wide v2, 0xfffffffc0000000L

    and-long/2addr v2, p1

    const/16 v4, 0x1e

    shr-long/2addr v2, v4

    long-to-int v2, v2

    .line 238
    .local v2, "tail":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method private final wo(JJ)J
    .locals 2
    .param p1, "$this$wo"    # J
    .param p3, "other"    # J

    .line 231
    not-long v0, p3

    and-long/2addr v0, p1

    return-wide v0
.end method
