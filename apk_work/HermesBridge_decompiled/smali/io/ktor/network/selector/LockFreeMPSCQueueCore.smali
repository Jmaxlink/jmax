.class final Lio/ktor/network/selector/LockFreeMPSCQueueCore;
.super Ljava/lang/Object;
.source "LockFreeMPSCQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;,
        Lio/ktor/network/selector/LockFreeMPSCQueueCore$Placeholder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeMPSCQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeMPSCQueue.kt\nio/ktor/network/selector/LockFreeMPSCQueueCore\n+ 2 LockFreeMPSCQueue.kt\nio/ktor/network/selector/LockFreeMPSCQueueCore$Companion\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,245:1\n236#2,3:246\n236#2,3:255\n236#2,3:260\n236#2,3:265\n236#2,3:275\n477#3,4:249\n468#3,2:253\n468#3,2:258\n468#3,2:263\n499#3,4:269\n155#3,2:273\n1#4:268\n*S KotlinDebug\n*F\n+ 1 LockFreeMPSCQueue.kt\nio/ktor/network/selector/LockFreeMPSCQueueCore\n*L\n74#1:246,3\n89#1:255,3\n135#1:260,3\n158#1:265,3\n189#1:275,3\n77#1:249,4\n87#1:253,2\n133#1:258,2\n157#1:263,2\n175#1:269,4\n181#1:273,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0002\u0018\u0000 &*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0001:\u0002&\'B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\'\u0010\r\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0000j\u0008\u0012\u0004\u0012\u00028\u0000`\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\'\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0000j\u0008\u0012\u0004\u0012\u00028\u0000`\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\r\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J3\u0010\u0014\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u000c2\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00028\u0000H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0013\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ3\u0010\u001e\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u000c2\u0006\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u001c\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010#R\u0011\u0010$\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u0012R\u0014\u0010%\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010#\u00a8\u0006("
    }
    d2 = {
        "Lio/ktor/network/selector/LockFreeMPSCQueueCore;",
        "",
        "E",
        "",
        "capacity",
        "<init>",
        "(I)V",
        "element",
        "addLast",
        "(Ljava/lang/Object;)I",
        "",
        "state",
        "Lio/ktor/network/selector/Core;",
        "allocateNextCopy",
        "(J)Lio/ktor/network/selector/LockFreeMPSCQueueCore;",
        "allocateOrGetNextCopy",
        "",
        "close",
        "()Z",
        "index",
        "fillPlaceholder",
        "(ILjava/lang/Object;)Lio/ktor/network/selector/LockFreeMPSCQueueCore;",
        "markFrozen",
        "()J",
        "next",
        "()Lio/ktor/network/selector/LockFreeMPSCQueueCore;",
        "removeFirstOrNull",
        "()Ljava/lang/Object;",
        "oldHead",
        "newHead",
        "removeSlowPath",
        "(II)Lio/ktor/network/selector/LockFreeMPSCQueueCore;",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
        "array",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
        "I",
        "isEmpty",
        "mask",
        "Companion",
        "Placeholder",
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
.field public static final ADD_CLOSED:I = 0x2

.field public static final ADD_FROZEN:I = 0x1

.field public static final ADD_SUCCESS:I = 0x0

.field private static final CAPACITY_BITS:I = 0x1e

.field private static final CLOSED_MASK:J = 0x2000000000000000L

.field private static final CLOSED_SHIFT:I = 0x3d

.field public static final Companion:Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;

.field private static final FROZEN_MASK:J = 0x1000000000000000L

.field private static final FROZEN_SHIFT:I = 0x3c

.field private static final HEAD_MASK:J = 0x3fffffffL

.field private static final HEAD_SHIFT:I = 0x0

.field public static final INITIAL_CAPACITY:I = 0x8

.field private static final MAX_CAPACITY_MASK:I = 0x3fffffff

.field public static final REMOVE_FROZEN:Ljava/lang/Object;

.field private static final TAIL_MASK:J = 0xfffffffc0000000L

.field private static final TAIL_SHIFT:I = 0x1e

.field private static final synthetic _next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic _state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field private volatile synthetic _next:Ljava/lang/Object;

.field private volatile synthetic _state:J

.field private final array:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final capacity:I

.field private final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->Companion:Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;

    .line 223
    new-instance v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion$REMOVE_FROZEN$1;

    invoke-direct {v0}, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion$REMOVE_FROZEN$1;-><init>()V

    sput-object v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->REMOVE_FROZEN:Ljava/lang/Object;

    const-class v0, Ljava/lang/Object;

    const-string v1, "_next"

    const-class v2, Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_state"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->_state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "capacity"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->capacity:I

    .line 63
    iget v0, p0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->capacity:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->mask:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->_next:Ljava/lang/Object;

    .line 65
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->_state:J

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v2, p0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->capacity:I

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 68
    nop

    .line 69
    iget v0, p0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->mask:I

    const v2, 0x3fffffff    # 1.9999999f

    const/4 v3, 0x0

    if-gt v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v2, "Check failed."

    if-eqz v0, :cond_3

    .line 70
    iget v0, p0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->capacity:I

    iget v4, p0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v0, v4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 71
    nop

    .line 62
    return-void

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final allocateNextCopy(J)Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    .locals 18
    .param p1, "state"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/ktor/network/selector/LockFreeMPSCQueueCore<",
            "TE;>;"
        }
    .end annotation

    .line 188
    move-object/from16 v0, p0

    new-instance v1, Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    iget v2, v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->capacity:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;-><init>(I)V

    .line 189
    .local v1, "next":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    sget-object v2, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->Companion:Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;

    .local v2, "this_$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;
    move-wide/from16 v3, p1

    .local v3, "$this$withState$iv":J
    const/4 v5, 0x0

    .line 275
    .local v5, "$i$f$withState":I
    const-wide/32 v6, 0x3fffffff

    and-long/2addr v6, v3

    const/4 v8, 0x0

    shr-long/2addr v6, v8

    long-to-int v6, v6

    .line 276
    .local v6, "head$iv":I
    const-wide v7, 0xfffffffc0000000L

    and-long/2addr v7, v3

    const/16 v9, 0x1e

    shr-long/2addr v7, v9

    long-to-int v7, v7

    .line 277
    .local v7, "tail$iv":I
    move v8, v6

    .local v8, "head":I
    move v9, v7

    .local v9, "tail":I
    const/4 v10, 0x0

    .line 190
    .local v10, "$i$a$-withState-LockFreeMPSCQueueCore$allocateNextCopy$1":I
    move v11, v8

    .line 191
    .local v11, "index":I
    :goto_0
    iget v12, v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v12, v11

    iget v13, v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v13, v9

    if-eq v12, v13, :cond_1

    .line 193
    iget-object v12, v1, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v13, v1, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v13, v11

    iget-object v14, v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v15, v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v15, v11

    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_0

    new-instance v14, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Placeholder;

    invoke-direct {v14, v11}, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Placeholder;-><init>(I)V

    :cond_0
    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 194
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 196
    :cond_1
    sget-object v12, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->Companion:Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;

    const-wide/high16 v13, 0x1000000000000000L

    move-object v15, v2

    move-wide/from16 v16, v3

    move-wide/from16 v2, p1

    .end local v2    # "this_$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;
    .end local v3    # "$this$withState$iv":J
    .local v15, "this_$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;
    .local v16, "$this$withState$iv":J
    invoke-static {v12, v2, v3, v13, v14}, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;->access$wo(Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;JJ)J

    move-result-wide v12

    iput-wide v12, v1, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->_state:J

    .line 197
    nop

    .line 277
    .end local v8    # "head":I
    .end local v9    # "tail":I
    .end local v10    # "$i$a$-withState-LockFreeMPSCQueueCore$allocateNextCopy$1":I
    .end local v11    # "index":I
    nop

    .line 198
    .end local v5    # "$i$f$withState":I
    .end local v6    # "head$iv":I
    .end local v7    # "tail$iv":I
    .end local v15    # "this_$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;
    .end local v16    # "$this$withState$iv":J
    return-object v1
.end method

.method private final allocateOrGetNextCopy(J)Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    .locals 7
    .param p1, "state"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/ktor/network/selector/LockFreeMPSCQueueCore<",
            "TE;>;"
        }
    .end annotation

    .line 181
    move-object v0, p0

    .local v0, "$this$loop$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    const/4 v1, 0x0

    .line 273
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 274
    iget-object v2, v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->_next:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    .local v2, "next":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    const/4 v3, 0x0

    .line 182
    .local v3, "$i$a$-loop-LockFreeMPSCQueueCore$allocateOrGetNextCopy$1":I
    if-eqz v2, :cond_0

    return-object v2

    .line 183
    :cond_0
    sget-object v4, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->allocateNextCopy(J)Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    move-result-object v6

    invoke-static {v4, p0, v5, v6}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    nop

    .line 274
    .end local v2    # "next":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    .end local v3    # "$i$a$-loop-LockFreeMPSCQueueCore$allocateOrGetNextCopy$1":I
    goto :goto_0
.end method

.method private final fillPlaceholder(ILjava/lang/Object;)Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    .locals 3
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lio/ktor/network/selector/LockFreeMPSCQueueCore<",
            "TE;>;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, "old":Ljava/lang/Object;
    instance-of v1, v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Placeholder;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Placeholder;

    iget v1, v1, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Placeholder;->index:I

    if-ne v1, p1, :cond_0

    .line 122
    iget-object v1, p0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v2, p0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 124
    return-object p0

    .line 127
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private final markFrozen()J
    .locals 14

    .line 175
    move-object v6, p0

    .local v6, "$this$updateAndGet$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    const/4 v7, 0x0

    .line 269
    .local v7, "$i$f$updateAndGet":I
    :cond_0
    nop

    .line 270
    iget-wide v8, v6, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->_state:J

    .line 271
    .local v8, "cur$iv":J
    move-wide v0, v8

    .local v0, "state":J
    const/4 v2, 0x0

    .line 176
    .local v2, "$i$a$-updateAndGet-LockFreeMPSCQueueCore$markFrozen$1":I
    const-wide/high16 v3, 0x1000000000000000L

    and-long v10, v0, v3

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_1

    return-wide v0

    .line 177
    :cond_1
    or-long/2addr v0, v3

    .line 271
    .end local v0    # "state":J
    .end local v2    # "$i$a$-updateAndGet-LockFreeMPSCQueueCore$markFrozen$1":I
    move-wide v10, v0

    .line 272
    .local v10, "upd$iv":J
    sget-object v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->_state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, v6

    move-wide v2, v8

    move-wide v4, v10

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    .end local v6    # "$this$updateAndGet$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    .end local v7    # "$i$f$updateAndGet":I
    .end local v8    # "cur$iv":J
    .end local v10    # "upd$iv":J
    return-wide v10
.end method

.method private final removeSlowPath(II)Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    .locals 23
    .param p1, "oldHead"    # I
    .param p2, "newHead"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/ktor/network/selector/LockFreeMPSCQueueCore<",
            "TE;>;"
        }
    .end annotation

    .line 157
    move-object/from16 v6, p0

    move-object/from16 v7, p0

    .local v7, "$this$loop$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    const/4 v8, 0x0

    .line 263
    .local v8, "$i$f$loop":I
    :goto_0
    nop

    .line 264
    iget-wide v9, v7, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->_state:J

    .local v9, "state":J
    const/4 v11, 0x0

    .line 158
    .local v11, "$i$a$-loop-LockFreeMPSCQueueCore$removeSlowPath$1":I
    sget-object v12, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->Companion:Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;

    .local v12, "this_$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;
    move-wide v0, v9

    .local v0, "$this$withState$iv":J
    move-wide v13, v0

    .end local v0    # "$this$withState$iv":J
    .local v13, "$this$withState$iv":J
    const/4 v15, 0x0

    .line 265
    .local v15, "$i$f$withState":I
    const-wide/32 v0, 0x3fffffff

    and-long/2addr v0, v13

    const/4 v2, 0x0

    shr-long/2addr v0, v2

    long-to-int v4, v0

    .line 266
    .local v4, "head$iv":I
    const-wide v0, 0xfffffffc0000000L

    and-long/2addr v0, v13

    const/16 v3, 0x1e

    shr-long/2addr v0, v3

    long-to-int v5, v0

    .line 267
    .local v5, "tail$iv":I
    move v3, v4

    .local v3, "head":I
    const/16 v16, 0x0

    .line 159
    .local v16, "$i$a$-withState-LockFreeMPSCQueueCore$removeSlowPath$1$1":I
    move/from16 v1, p1

    if-ne v3, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_3

    .line 160
    const-wide/high16 v17, 0x1000000000000000L

    and-long v17, v9, v17

    const-wide/16 v19, 0x0

    cmp-long v0, v17, v19

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual/range {p0 .. p0}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->next()Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    move-result-object v0

    return-object v0

    .line 164
    :cond_1
    sget-object v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->_state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v2, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->Companion:Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;

    move-object/from16 v17, v7

    move/from16 v7, p2

    .end local v7    # "$this$loop$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    .local v17, "$this$loop$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    invoke-static {v2, v9, v10, v7}, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;->access$updateHead(Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;JI)J

    move-result-wide v18

    move-object/from16 v1, p0

    move/from16 v20, v3

    .end local v3    # "head":I
    .local v20, "head":I
    move-wide v2, v9

    move/from16 v21, v4

    move/from16 v22, v5

    .end local v4    # "head$iv":I
    .end local v5    # "tail$iv":I
    .local v21, "head$iv":I
    .local v22, "tail$iv":I
    move-wide/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, v6, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, v6, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->mask:I

    and-int v1, v20, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 166
    return-object v2

    .line 168
    :cond_2
    nop

    .line 267
    .end local v16    # "$i$a$-withState-LockFreeMPSCQueueCore$removeSlowPath$1$1":I
    .end local v20    # "head":I
    nop

    .line 169
    .end local v12    # "this_$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;
    .end local v13    # "$this$withState$iv":J
    .end local v15    # "$i$f$withState":I
    .end local v21    # "head$iv":I
    .end local v22    # "tail$iv":I
    nop

    .line 264
    .end local v9    # "state":J
    .end local v11    # "$i$a$-loop-LockFreeMPSCQueueCore$removeSlowPath$1":I
    move-object/from16 v7, v17

    goto :goto_0

    .line 268
    .end local v17    # "$this$loop$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    .restart local v3    # "head":I
    .restart local v4    # "head$iv":I
    .restart local v5    # "tail$iv":I
    .restart local v7    # "$this$loop$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    .restart local v9    # "state":J
    .restart local v11    # "$i$a$-loop-LockFreeMPSCQueueCore$removeSlowPath$1":I
    .restart local v12    # "this_$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;
    .restart local v13    # "$this$withState$iv":J
    .restart local v15    # "$i$f$withState":I
    .restart local v16    # "$i$a$-withState-LockFreeMPSCQueueCore$removeSlowPath$1$1":I
    :cond_3
    const/4 v0, 0x0

    .line 159
    .local v0, "$i$a$-check-LockFreeMPSCQueueCore$removeSlowPath$1$1$1":I
    nop

    .end local v0    # "$i$a$-check-LockFreeMPSCQueueCore$removeSlowPath$1$1$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This queue can have only one consumer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)I
    .locals 26
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-string v0, "element"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    move-object/from16 v8, p0

    .local v8, "$this$loop$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    const/4 v9, 0x0

    .line 253
    .local v9, "$i$f$loop":I
    :goto_0
    nop

    .line 254
    iget-wide v10, v8, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->_state:J

    .local v10, "state":J
    const/4 v12, 0x0

    .line 88
    .local v12, "$i$a$-loop-LockFreeMPSCQueueCore$addLast$1":I
    const-wide/high16 v0, 0x3000000000000000L    # 1.727233711018889E-77

    and-long/2addr v0, v10

    const-wide/16 v13, 0x0

    cmp-long v0, v0, v13

    if-eqz v0, :cond_0

    sget-object v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->Companion:Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;

    invoke-static {v0, v10, v11}, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;->access$addFailReason(Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;J)I

    move-result v0

    return v0

    .line 89
    :cond_0
    sget-object v15, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->Companion:Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;

    .local v15, "this_$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;
    move-wide/from16 v16, v10

    .local v16, "$this$withState$iv":J
    const/16 v18, 0x0

    .line 255
    .local v18, "$i$f$withState":I
    const-wide/32 v0, 0x3fffffff

    and-long v0, v16, v0

    const/16 v19, 0x0

    shr-long v0, v0, v19

    long-to-int v4, v0

    .line 256
    .local v4, "head$iv":I
    const-wide v0, 0xfffffffc0000000L

    and-long v0, v16, v0

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v5, v0

    .line 257
    .local v5, "tail$iv":I
    move/from16 v20, v4

    .local v20, "head":I
    move v2, v5

    .local v2, "tail":I
    const/16 v21, 0x0

    .line 92
    .local v21, "$i$a$-withState-LockFreeMPSCQueueCore$addLast$1$1":I
    add-int/lit8 v0, v2, 0x2

    iget v1, v6, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v0, v1

    iget v1, v6, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->mask:I

    and-int v1, v20, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 93
    :cond_1
    add-int/lit8 v0, v2, 0x1

    const v1, 0x3fffffff    # 1.9999999f

    and-int v3, v0, v1

    .line 94
    .local v3, "newTail":I
    sget-object v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->_state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v1, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->Companion:Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;

    invoke-static {v1, v10, v11, v3}, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;->access$updateTail(Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;JI)J

    move-result-wide v22

    move-object/from16 v1, p0

    move v13, v2

    move v14, v3

    .end local v2    # "tail":I
    .end local v3    # "newTail":I
    .local v13, "tail":I
    .local v14, "newTail":I
    move-wide v2, v10

    move/from16 v24, v4

    move/from16 v25, v5

    .end local v4    # "head$iv":I
    .end local v5    # "tail$iv":I
    .local v24, "head$iv":I
    .local v25, "tail$iv":I
    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, v6, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, v6, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v1, v13

    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 98
    move-object/from16 v0, p0

    .line 99
    .local v0, "cur":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    :goto_1
    nop

    .line 100
    iget-wide v1, v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->_state:J

    const-wide/high16 v3, 0x1000000000000000L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 101
    invoke-virtual {v0}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->next()Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    move-result-object v1

    invoke-direct {v1, v13, v7}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->fillPlaceholder(ILjava/lang/Object;)Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 103
    :cond_3
    :goto_2
    return v19

    .line 105
    .end local v0    # "cur":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    :cond_4
    nop

    .line 257
    .end local v13    # "tail":I
    .end local v14    # "newTail":I
    .end local v20    # "head":I
    .end local v21    # "$i$a$-withState-LockFreeMPSCQueueCore$addLast$1$1":I
    nop

    .line 106
    .end local v15    # "this_$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;
    .end local v16    # "$this$withState$iv":J
    .end local v18    # "$i$f$withState":I
    .end local v24    # "head$iv":I
    .end local v25    # "tail$iv":I
    nop

    .line 254
    .end local v10    # "state":J
    .end local v12    # "$i$a$-loop-LockFreeMPSCQueueCore$addLast$1":I
    goto/16 :goto_0
.end method

.method public final close()Z
    .locals 16

    .line 77
    move-object/from16 v6, p0

    .local v6, "$this$update$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    const/4 v7, 0x0

    .line 249
    .local v7, "$i$f$update":I
    :cond_0
    nop

    .line 250
    iget-wide v8, v6, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->_state:J

    .line 251
    .local v8, "cur$iv":J
    move-wide v0, v8

    .local v0, "state":J
    const/4 v2, 0x0

    .line 78
    .local v2, "$i$a$-update-LockFreeMPSCQueueCore$close$1":I
    const-wide/high16 v3, 0x2000000000000000L

    and-long v10, v0, v3

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    const/4 v10, 0x1

    if-eqz v5, :cond_1

    return v10

    .line 79
    :cond_1
    const-wide/high16 v14, 0x1000000000000000L

    and-long/2addr v14, v0

    cmp-long v5, v14, v12

    if-eqz v5, :cond_2

    const/4 v3, 0x0

    return v3

    .line 80
    :cond_2
    or-long v4, v0, v3

    .line 251
    .end local v0    # "state":J
    .end local v2    # "$i$a$-update-LockFreeMPSCQueueCore$close$1":I
    nop

    .line 252
    .local v4, "upd$iv":J
    sget-object v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->_state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, v6

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    .end local v4    # "upd$iv":J
    .end local v6    # "$this$update$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    .end local v7    # "$i$f$update":I
    .end local v8    # "cur$iv":J
    return v10
.end method

.method public final isEmpty()Z
    .locals 10

    .line 74
    sget-object v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->Companion:Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;

    .local v0, "this_$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;
    iget-wide v1, p0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->_state:J

    .local v1, "$this$withState$iv":J
    const/4 v3, 0x0

    .line 246
    .local v3, "$i$f$withState":I
    const-wide/32 v4, 0x3fffffff

    and-long/2addr v4, v1

    const/4 v6, 0x0

    shr-long/2addr v4, v6

    long-to-int v4, v4

    .line 247
    .local v4, "head$iv":I
    const-wide v7, 0xfffffffc0000000L

    and-long/2addr v7, v1

    const/16 v5, 0x1e

    shr-long/2addr v7, v5

    long-to-int v5, v7

    .line 248
    .local v5, "tail$iv":I
    move v7, v4

    .local v7, "head":I
    move v8, v5

    .local v8, "tail":I
    const/4 v9, 0x0

    .line 74
    .local v9, "$i$a$-withState-LockFreeMPSCQueueCore$isEmpty$1":I
    if-ne v7, v8, :cond_0

    const/4 v6, 0x1

    .line 248
    .end local v7    # "head":I
    .end local v8    # "tail":I
    .end local v9    # "$i$a$-withState-LockFreeMPSCQueueCore$isEmpty$1":I
    :cond_0
    nop

    .line 74
    .end local v0    # "this_$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;
    .end local v1    # "$this$withState$iv":J
    .end local v3    # "$i$f$withState":I
    .end local v4    # "head$iv":I
    .end local v5    # "tail$iv":I
    return v6
.end method

.method public final next()Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/network/selector/LockFreeMPSCQueueCore<",
            "TE;>;"
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->markFrozen()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->allocateOrGetNextCopy(J)Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    move-result-object v0

    return-object v0
.end method

.method public final removeFirstOrNull()Ljava/lang/Object;
    .locals 26

    .line 133
    move-object/from16 v6, p0

    move-object/from16 v7, p0

    .local v7, "$this$loop$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    const/4 v8, 0x0

    .line 258
    .local v8, "$i$f$loop":I
    nop

    .line 259
    iget-wide v9, v7, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->_state:J

    .local v9, "state":J
    const/4 v11, 0x0

    .line 134
    .local v11, "$i$a$-loop-LockFreeMPSCQueueCore$removeFirstOrNull$1":I
    const-wide/high16 v0, 0x1000000000000000L

    and-long/2addr v0, v9

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->REMOVE_FROZEN:Ljava/lang/Object;

    return-object v0

    .line 135
    :cond_0
    sget-object v12, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->Companion:Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;

    .local v12, "this_$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;
    move-wide v0, v9

    .local v0, "$this$withState$iv":J
    move-wide v13, v0

    .end local v0    # "$this$withState$iv":J
    .local v13, "$this$withState$iv":J
    const/4 v15, 0x0

    .line 260
    .local v15, "$i$f$withState":I
    const-wide/32 v0, 0x3fffffff

    and-long/2addr v0, v13

    const/4 v2, 0x0

    shr-long/2addr v0, v2

    long-to-int v4, v0

    .line 261
    .local v4, "head$iv":I
    const-wide v0, 0xfffffffc0000000L

    and-long/2addr v0, v13

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v5, v0

    .line 262
    .local v5, "tail$iv":I
    move v0, v4

    .local v0, "head":I
    move/from16 v16, v5

    .local v16, "tail":I
    move v2, v0

    .end local v0    # "head":I
    .local v2, "head":I
    const/16 v17, 0x0

    .line 136
    .local v17, "$i$a$-withState-LockFreeMPSCQueueCore$removeFirstOrNull$1$1":I
    iget v0, v6, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->mask:I

    and-int v0, v16, v0

    iget v1, v6, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    return-object v3

    .line 138
    :cond_1
    iget-object v0, v6, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, v6, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v3

    :cond_2
    move-object v1, v0

    .line 139
    .local v1, "element":Ljava/lang/Object;
    nop

    instance-of v0, v1, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Placeholder;

    if-eqz v0, :cond_3

    return-object v3

    .line 141
    :cond_3
    add-int/lit8 v0, v2, 0x1

    const v18, 0x3fffffff    # 1.9999999f

    and-int v0, v0, v18

    .line 142
    .local v0, "newHead":I
    sget-object v18, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->_state$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v3, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->Companion:Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;

    invoke-static {v3, v9, v10, v0}, Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;->access$updateHead(Lio/ktor/network/selector/LockFreeMPSCQueueCore$Companion;JI)J

    move-result-wide v20

    move v3, v0

    .end local v0    # "newHead":I
    .local v3, "newHead":I
    move-object/from16 v0, v18

    move-object/from16 v18, v1

    .end local v1    # "element":Ljava/lang/Object;
    .local v18, "element":Ljava/lang/Object;
    move-object/from16 v1, p0

    move-object/from16 v22, v7

    move/from16 v19, v8

    move/from16 v23, v11

    const/4 v11, 0x0

    move v7, v2

    move v8, v3

    .end local v2    # "head":I
    .end local v3    # "newHead":I
    .end local v11    # "$i$a$-loop-LockFreeMPSCQueueCore$removeFirstOrNull$1":I
    .local v7, "head":I
    .local v8, "newHead":I
    .local v19, "$i$f$loop":I
    .local v22, "$this$loop$iv":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    .local v23, "$i$a$-loop-LockFreeMPSCQueueCore$removeFirstOrNull$1":I
    move-wide v2, v9

    move/from16 v24, v4

    move/from16 v25, v5

    .end local v4    # "head$iv":I
    .end local v5    # "tail$iv":I
    .local v24, "head$iv":I
    .local v25, "tail$iv":I
    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    iget-object v0, v6, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, v6, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->mask:I

    and-int/2addr v1, v7

    invoke-virtual {v0, v1, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 144
    return-object v18

    .line 147
    :cond_4
    move-object/from16 v0, p0

    .line 148
    .local v0, "cur":Lio/ktor/network/selector/LockFreeMPSCQueueCore;
    :goto_0
    nop

    .line 150
    invoke-direct {v0, v7, v8}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->removeSlowPath(II)Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    move-result-object v1

    if-nez v1, :cond_5

    return-object v18

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method
