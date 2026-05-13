.class public final Lio/ktor/network/selector/LockFreeMPSCQueue;
.super Ljava/lang/Object;
.source "LockFreeMPSCQueue.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeMPSCQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeMPSCQueue.kt\nio/ktor/network/selector/LockFreeMPSCQueue\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,245:1\n155#2,2:246\n155#2,2:248\n155#2,2:250\n*S KotlinDebug\n*F\n+ 1 LockFreeMPSCQueue.kt\nio/ktor/network/selector/LockFreeMPSCQueue\n*L\n30#1:246,2\n37#1:248,2\n48#1:250,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u000f\u0010\u000b\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/ktor/network/selector/LockFreeMPSCQueue;",
        "",
        "E",
        "<init>",
        "()V",
        "element",
        "",
        "addLast",
        "(Ljava/lang/Object;)Z",
        "",
        "close",
        "removeFirstOrNull",
        "()Ljava/lang/Object;",
        "isEmpty",
        "()Z",
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


# static fields
.field private static final synthetic _cur$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _cur:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_cur"

    const-class v2, Lio/ktor/network/selector/LockFreeMPSCQueue;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/network/selector/LockFreeMPSCQueue;->_cur$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;-><init>(I)V

    iput-object v0, p0, Lio/ktor/network/selector/LockFreeMPSCQueue;->_cur:Ljava/lang/Object;

    .line 23
    return-void
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    move-object v0, p0

    .local v0, "$this$loop$iv":Lio/ktor/network/selector/LockFreeMPSCQueue;
    const/4 v1, 0x0

    .line 248
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 249
    iget-object v2, v0, Lio/ktor/network/selector/LockFreeMPSCQueue;->_cur:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    .local v2, "cur":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    const/4 v3, 0x0

    .line 38
    .local v3, "$i$a$-loop-LockFreeMPSCQueue$addLast$1":I
    invoke-virtual {v2, p1}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->addLast(Ljava/lang/Object;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 40
    :pswitch_0
    const/4 v4, 0x0

    return v4

    .line 41
    :pswitch_1
    sget-object v4, Lio/ktor/network/selector/LockFreeMPSCQueue;->_cur$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->next()Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    move-result-object v5

    invoke-static {v4, p0, v2, v5}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 39
    :pswitch_2
    const/4 v4, 0x1

    return v4

    .line 43
    :goto_1
    nop

    .line 249
    .end local v2    # "cur":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    .end local v3    # "$i$a$-loop-LockFreeMPSCQueue$addLast$1":I
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 6

    .line 30
    move-object v0, p0

    .local v0, "$this$loop$iv":Lio/ktor/network/selector/LockFreeMPSCQueue;
    const/4 v1, 0x0

    .line 246
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 247
    iget-object v2, v0, Lio/ktor/network/selector/LockFreeMPSCQueue;->_cur:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    .local v2, "cur":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    const/4 v3, 0x0

    .line 31
    .local v3, "$i$a$-loop-LockFreeMPSCQueue$close$1":I
    invoke-virtual {v2}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->close()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 32
    :cond_0
    sget-object v4, Lio/ktor/network/selector/LockFreeMPSCQueue;->_cur$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->next()Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    move-result-object v5

    invoke-static {v4, p0, v2, v5}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    nop

    .line 247
    .end local v2    # "cur":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    .end local v3    # "$i$a$-loop-LockFreeMPSCQueue$close$1":I
    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 27
    iget-object v0, p0, Lio/ktor/network/selector/LockFreeMPSCQueue;->_cur:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    invoke-virtual {v0}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final removeFirstOrNull()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 48
    move-object v0, p0

    .local v0, "$this$loop$iv":Lio/ktor/network/selector/LockFreeMPSCQueue;
    const/4 v1, 0x0

    .line 250
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 251
    iget-object v2, v0, Lio/ktor/network/selector/LockFreeMPSCQueue;->_cur:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    .local v2, "cur":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    const/4 v3, 0x0

    .line 49
    .local v3, "$i$a$-loop-LockFreeMPSCQueue$removeFirstOrNull$1":I
    invoke-virtual {v2}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v4

    .line 50
    .local v4, "result":Ljava/lang/Object;
    sget-object v5, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->REMOVE_FROZEN:Ljava/lang/Object;

    if-eq v4, v5, :cond_0

    return-object v4

    .line 51
    :cond_0
    sget-object v5, Lio/ktor/network/selector/LockFreeMPSCQueue;->_cur$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->next()Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    move-result-object v6

    invoke-static {v5, p0, v2, v6}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    nop

    .line 251
    .end local v2    # "cur":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    .end local v3    # "$i$a$-loop-LockFreeMPSCQueue$removeFirstOrNull$1":I
    .end local v4    # "result":Ljava/lang/Object;
    goto :goto_0
.end method
