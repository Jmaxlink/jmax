.class public final Lio/ktor/utils/io/internal/RingBufferCapacity;
.super Ljava/lang/Object;
.source "RingBufferCapacity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRingBufferCapacity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RingBufferCapacity.kt\nio/ktor/utils/io/internal/RingBufferCapacity\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,152:1\n24#1:188\n12#1:189\n12#1,7:191\n24#1:198\n371#2,4:153\n360#2,4:157\n371#2,4:161\n371#2,4:165\n360#2,4:169\n371#2,4:173\n360#2,4:177\n360#2,4:181\n360#2,3:185\n363#2:190\n*S KotlinDebug\n*F\n+ 1 RingBufferCapacity.kt\nio/ktor/utils/io/internal/RingBufferCapacity\n*L\n130#1:188\n130#1:189\n149#1:191,7\n150#1:198\n43#1:153,4\n51#1:157,4\n59#1:161,4\n68#1:165,4\n76#1:169,4\n84#1:173,4\n93#1:177,4\n105#1:181,4\n129#1:185,3\n129#1:190\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0001\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0018\n\u0002\u0010\u0000\u0008\u0000\u0018\u00002\u000203B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u001f\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0016\u0010\u0013J\r\u0010\u0017\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0017\u0010\u0013J\r\u0010\u0018\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0018\u0010\u0015J\r\u0010\u0019\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0019\u0010\u0015J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\r\u0010\u001d\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u001d\u0010\u0013J\u0015\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0015\u0010 \u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001\u00a2\u0006\u0004\u0008 \u0010\u001fJ\u0015\u0010!\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u0001\u00a2\u0006\u0004\u0008!\u0010\"J\u0015\u0010#\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001\u00a2\u0006\u0004\u0008#\u0010\u001fJ\u0015\u0010$\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001\u00a2\u0006\u0004\u0008$\u0010\u001fJ\u0015\u0010%\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u0001\u00a2\u0006\u0004\u0008%\u0010\"R&\u0010*\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\u00018\u00c6\u0002@\u00c2\u0002X\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010\u0004R&\u0010-\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\u00018\u00c6\u0002@\u00c2\u0002X\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008+\u0010(\"\u0004\u0008,\u0010\u0004R&\u00100\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\u00018\u00c6\u0002@\u00c6\u0002X\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008.\u0010(\"\u0004\u0008/\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0002\u00101\u00a8\u00062"
    }
    d2 = {
        "Lio/ktor/utils/io/internal/RingBufferCapacity;",
        "",
        "totalCapacity",
        "<init>",
        "(I)V",
        "n",
        "",
        "completeRead",
        "remaining",
        "update",
        "",
        "completeReadOverflow",
        "(III)Ljava/lang/Void;",
        "completeWrite",
        "pending",
        "completeWriteOverflow",
        "(II)Ljava/lang/Void;",
        "",
        "flush",
        "()Z",
        "forceLockForRelease",
        "()V",
        "isEmpty",
        "isFull",
        "resetForRead",
        "resetForWrite",
        "",
        "toString",
        "()Ljava/lang/String;",
        "tryLockForRelease",
        "tryReadAtLeast",
        "(I)I",
        "tryReadAtMost",
        "tryReadExact",
        "(I)Z",
        "tryWriteAtLeast",
        "tryWriteAtMost",
        "tryWriteExact",
        "value",
        "getAvailableForRead",
        "()I",
        "setAvailableForRead",
        "availableForRead",
        "getAvailableForWrite",
        "setAvailableForWrite",
        "availableForWrite",
        "getPendingToFlush",
        "setPendingToFlush",
        "pendingToFlush",
        "I",
        "ktor-io",
        ""
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
.field public static final synthetic _availableForRead$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic _availableForWrite$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field static final synthetic _pendingToFlush$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public volatile synthetic _availableForRead$internal:I

.field public volatile synthetic _availableForWrite$internal:I

.field volatile synthetic _pendingToFlush:I

.field private final totalCapacity:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "_availableForRead$internal"

    const-class v1, Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "_availableForWrite$internal"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "_pendingToFlush"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_pendingToFlush$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "totalCapacity"    # I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->totalCapacity:I

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    .line 8
    iget v1, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->totalCapacity:I

    iput v1, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    .line 9
    iput v0, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_pendingToFlush:I

    .line 6
    return-void
.end method

.method private final completeReadOverflow(III)Ljava/lang/Void;
    .locals 3
    .param p1, "remaining"    # I
    .param p2, "update"    # I
    .param p3, "n"    # I

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completed read overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->totalCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final completeWriteOverflow(II)Ljava/lang/Void;
    .locals 3
    .param p1, "pending"    # I
    .param p2, "n"    # I

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Complete write overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->totalCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final setAvailableForRead(I)V
    .locals 1
    .param p1, "value"    # I

    const/4 v0, 0x0

    .line 14
    .local v0, "$i$f$setAvailableForRead":I
    iput p1, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    .line 15
    return-void
.end method

.method private final setAvailableForWrite(I)V
    .locals 1
    .param p1, "value"    # I

    const/4 v0, 0x0

    .line 20
    .local v0, "$i$f$setAvailableForWrite":I
    iput p1, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    .line 21
    return-void
.end method


# virtual methods
.method public final completeRead(I)V
    .locals 7
    .param p1, "n"    # I

    .line 93
    move-object v0, p0

    .local v0, "$this$update$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    const/4 v1, 0x0

    .line 177
    .local v1, "$i$f$update":I
    :cond_0
    nop

    .line 178
    iget v2, v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    .line 179
    .local v2, "cur$iv":I
    move v3, v2

    .local v3, "remaining":I
    const/4 v4, 0x0

    .line 94
    .local v4, "$i$a$-update-RingBufferCapacity$completeRead$1":I
    add-int v5, v3, p1

    .line 95
    .local v5, "update":I
    iget v6, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->totalCapacity:I

    if-gt v5, v6, :cond_1

    .line 96
    nop

    .line 179
    .end local v3    # "remaining":I
    .end local v4    # "$i$a$-update-RingBufferCapacity$completeRead$1":I
    .end local v5    # "update":I
    move v3, v5

    .line 180
    .local v3, "upd$iv":I
    sget-object v4, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    .end local v0    # "$this$update$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    .end local v1    # "$i$f$update":I
    .end local v2    # "cur$iv":I
    .end local v3    # "upd$iv":I
    return-void

    .line 95
    .restart local v0    # "$this$update$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    .restart local v1    # "$i$f$update":I
    .restart local v2    # "cur$iv":I
    .local v3, "remaining":I
    .restart local v4    # "$i$a$-update-RingBufferCapacity$completeRead$1":I
    .restart local v5    # "update":I
    :cond_1
    invoke-direct {p0, v3, v5, p1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->completeReadOverflow(III)Ljava/lang/Void;

    new-instance v6, Lkotlin/KotlinNothingValueException;

    invoke-direct {v6}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v6
.end method

.method public final completeWrite(I)V
    .locals 7
    .param p1, "n"    # I

    .line 105
    move-object v0, p0

    .local v0, "$this$update$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    const/4 v1, 0x0

    .line 181
    .local v1, "$i$f$update":I
    :cond_0
    nop

    .line 182
    iget v2, v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_pendingToFlush:I

    .line 183
    .local v2, "cur$iv":I
    move v3, v2

    .local v3, "pending":I
    const/4 v4, 0x0

    .line 106
    .local v4, "$i$a$-update-RingBufferCapacity$completeWrite$1":I
    add-int v5, v3, p1

    .line 107
    .local v5, "update":I
    iget v6, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->totalCapacity:I

    if-gt v5, v6, :cond_1

    .line 108
    nop

    .line 183
    .end local v3    # "pending":I
    .end local v4    # "$i$a$-update-RingBufferCapacity$completeWrite$1":I
    .end local v5    # "update":I
    move v3, v5

    .line 184
    .local v3, "upd$iv":I
    sget-object v4, Lio/ktor/utils/io/internal/RingBufferCapacity;->_pendingToFlush$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    .end local v0    # "$this$update$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    .end local v1    # "$i$f$update":I
    .end local v2    # "cur$iv":I
    .end local v3    # "upd$iv":I
    return-void

    .line 107
    .restart local v0    # "$this$update$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    .restart local v1    # "$i$f$update":I
    .restart local v2    # "cur$iv":I
    .local v3, "pending":I
    .restart local v4    # "$i$a$-update-RingBufferCapacity$completeWrite$1":I
    .restart local v5    # "update":I
    :cond_1
    invoke-direct {p0, v3, p1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->completeWriteOverflow(II)Ljava/lang/Void;

    new-instance v6, Lkotlin/KotlinNothingValueException;

    invoke-direct {v6}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v6
.end method

.method public final flush()Z
    .locals 4

    .line 120
    sget-object v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_pendingToFlush$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v0

    .line 121
    .local v0, "pending":I
    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 122
    iget v3, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-lez v3, :cond_0

    move v1, v2

    .line 121
    :cond_0
    return v1

    .line 124
    :cond_1
    sget-object v3, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, p0, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->addAndGet(Ljava/lang/Object;I)I

    move-result v3

    if-lez v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final forceLockForRelease()V
    .locals 2

    .line 141
    sget-object v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    .line 142
    return-void
.end method

.method public final getAvailableForRead()I
    .locals 2

    const/4 v0, 0x0

    .line 12
    .local v0, "$i$f$getAvailableForRead":I
    iget v1, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    return v1
.end method

.method public final getAvailableForWrite()I
    .locals 2

    const/4 v0, 0x0

    .line 18
    .local v0, "$i$f$getAvailableForWrite":I
    iget v1, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    return v1
.end method

.method public final getPendingToFlush()I
    .locals 2

    const/4 v0, 0x0

    .line 24
    .local v0, "$i$f$getPendingToFlush":I
    iget v1, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_pendingToFlush:I

    return v1
.end method

.method public final isEmpty()Z
    .locals 2

    .line 144
    iget v0, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    iget v1, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->totalCapacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFull()Z
    .locals 1

    .line 146
    iget v0, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final resetForRead()V
    .locals 1

    .line 37
    iget v0, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->totalCapacity:I

    iput v0, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    .line 39
    iput v0, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_pendingToFlush:I

    .line 40
    return-void
.end method

.method public final resetForWrite()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    .line 32
    iput v0, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_pendingToFlush:I

    .line 33
    iget v0, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->totalCapacity:I

    iput v0, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    .line 34
    return-void
.end method

.method public final setPendingToFlush(I)V
    .locals 1
    .param p1, "value"    # I

    const/4 v0, 0x0

    .line 26
    .local v0, "$i$f$setPendingToFlush":I
    iput p1, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_pendingToFlush:I

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RingBufferCapacity[read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p0

    .local v1, "this_$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    const/4 v2, 0x0

    .line 191
    .local v2, "$i$f$getAvailableForRead":I
    iget v1, v1, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    .line 149
    .end local v1    # "this_$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    .end local v2    # "$i$f$getAvailableForRead":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", write: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p0

    .restart local v1    # "this_$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    const/4 v2, 0x0

    .line 197
    .local v2, "$i$f$getAvailableForWrite":I
    iget v1, v1, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    .line 149
    .end local v1    # "this_$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    .end local v2    # "$i$f$getAvailableForWrite":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flush: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    move-object v1, p0

    .restart local v1    # "this_$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    const/4 v2, 0x0

    .line 198
    .local v2, "$i$f$getPendingToFlush":I
    iget v1, v1, Lio/ktor/utils/io/internal/RingBufferCapacity;->_pendingToFlush:I

    .line 149
    .end local v1    # "this_$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    .end local v2    # "$i$f$getPendingToFlush":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    nop

    .line 149
    const-string v1, ", capacity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    iget v1, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->totalCapacity:I

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    return-object v0
.end method

.method public final tryLockForRelease()Z
    .locals 8

    .line 129
    move-object v0, p0

    .local v0, "$this$update$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    const/4 v1, 0x0

    .line 185
    .local v1, "$i$f$update":I
    :cond_0
    nop

    .line 186
    iget v2, v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    .line 187
    .local v2, "cur$iv":I
    move v3, v2

    .local v3, "remaining":I
    const/4 v4, 0x0

    .line 130
    .local v4, "$i$a$-update-RingBufferCapacity$tryLockForRelease$1":I
    move-object v5, p0

    .local v5, "this_$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    const/4 v6, 0x0

    .line 188
    .local v6, "$i$f$getPendingToFlush":I
    iget v5, v5, Lio/ktor/utils/io/internal/RingBufferCapacity;->_pendingToFlush:I

    .line 130
    .end local v5    # "this_$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    .end local v6    # "$i$f$getPendingToFlush":I
    const/4 v6, 0x0

    if-gtz v5, :cond_2

    move-object v5, p0

    .restart local v5    # "this_$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    const/4 v7, 0x0

    .line 189
    .local v7, "$i$f$getAvailableForRead":I
    iget v5, v5, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    .line 130
    .end local v5    # "this_$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    .end local v7    # "$i$f$getAvailableForRead":I
    if-gtz v5, :cond_2

    iget v5, p0, Lio/ktor/utils/io/internal/RingBufferCapacity;->totalCapacity:I

    if-eq v3, v5, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    nop

    .line 187
    .end local v3    # "remaining":I
    .end local v4    # "$i$a$-update-RingBufferCapacity$tryLockForRelease$1":I
    move v3, v6

    .line 190
    .local v3, "upd$iv":I
    sget-object v4, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    .end local v0    # "$this$update$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    .end local v1    # "$i$f$update":I
    .end local v2    # "cur$iv":I
    .end local v3    # "upd$iv":I
    const/4 v0, 0x1

    return v0

    .line 130
    .restart local v0    # "$this$update$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    .restart local v1    # "$i$f$update":I
    .restart local v2    # "cur$iv":I
    .local v3, "remaining":I
    .restart local v4    # "$i$a$-update-RingBufferCapacity$tryLockForRelease$1":I
    :cond_2
    :goto_0
    return v6
.end method

.method public final tryReadAtLeast(I)I
    .locals 6
    .param p1, "n"    # I

    .line 43
    move-object v0, p0

    .local v0, "$this$getAndUpdate$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    const/4 v1, 0x0

    .line 153
    .local v1, "$i$f$getAndUpdate":I
    :cond_0
    nop

    .line 154
    iget v2, v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    .line 155
    .local v2, "cur$iv":I
    move v3, v2

    .local v3, "remaining":I
    const/4 v4, 0x0

    .line 44
    .local v4, "$i$a$-getAndUpdate-RingBufferCapacity$tryReadAtLeast$available$1":I
    const/4 v5, 0x0

    if-ge v3, p1, :cond_1

    return v5

    .line 45
    :cond_1
    nop

    .line 155
    .end local v3    # "remaining":I
    .end local v4    # "$i$a$-getAndUpdate-RingBufferCapacity$tryReadAtLeast$available$1":I
    move v3, v5

    .line 156
    .local v3, "upd$iv":I
    sget-object v4, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    .end local v0    # "$this$getAndUpdate$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    .end local v1    # "$i$f$getAndUpdate":I
    .end local v2    # "cur$iv":I
    .end local v3    # "upd$iv":I
    move v0, v2

    .line 47
    .local v0, "available":I
    return v0
.end method

.method public final tryReadAtMost(I)I
    .locals 7
    .param p1, "n"    # I

    .line 59
    move-object v0, p0

    .local v0, "$this$getAndUpdate$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    const/4 v1, 0x0

    .line 161
    .local v1, "$i$f$getAndUpdate":I
    :cond_0
    nop

    .line 162
    iget v2, v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    .line 163
    .local v2, "cur$iv":I
    move v3, v2

    .local v3, "remaining":I
    const/4 v4, 0x0

    .line 60
    .local v4, "$i$a$-getAndUpdate-RingBufferCapacity$tryReadAtMost$available$1":I
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 61
    .local v5, "delta":I
    if-nez v5, :cond_1

    const/4 v6, 0x0

    return v6

    .line 62
    :cond_1
    sub-int/2addr v3, v5

    .line 163
    .end local v3    # "remaining":I
    .end local v4    # "$i$a$-getAndUpdate-RingBufferCapacity$tryReadAtMost$available$1":I
    .end local v5    # "delta":I
    nop

    .line 164
    .local v3, "upd$iv":I
    sget-object v4, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    .end local v0    # "$this$getAndUpdate$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    .end local v1    # "$i$f$getAndUpdate":I
    .end local v2    # "cur$iv":I
    .end local v3    # "upd$iv":I
    move v0, v2

    .line 64
    .local v0, "available":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public final tryReadExact(I)Z
    .locals 6
    .param p1, "n"    # I

    .line 51
    move-object v0, p0

    .local v0, "$this$update$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    const/4 v1, 0x0

    .line 157
    .local v1, "$i$f$update":I
    :cond_0
    nop

    .line 158
    iget v2, v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    .line 159
    .local v2, "cur$iv":I
    move v3, v2

    .local v3, "remaining":I
    const/4 v4, 0x0

    .line 52
    .local v4, "$i$a$-update-RingBufferCapacity$tryReadExact$1":I
    if-ge v3, p1, :cond_1

    const/4 v5, 0x0

    return v5

    .line 53
    :cond_1
    sub-int/2addr v3, p1

    .line 159
    .end local v3    # "remaining":I
    .end local v4    # "$i$a$-update-RingBufferCapacity$tryReadExact$1":I
    nop

    .line 160
    .local v3, "upd$iv":I
    sget-object v4, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    .end local v0    # "$this$update$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    .end local v1    # "$i$f$update":I
    .end local v2    # "cur$iv":I
    .end local v3    # "upd$iv":I
    const/4 v0, 0x1

    return v0
.end method

.method public final tryWriteAtLeast(I)I
    .locals 6
    .param p1, "n"    # I

    .line 68
    move-object v0, p0

    .local v0, "$this$getAndUpdate$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    const/4 v1, 0x0

    .line 165
    .local v1, "$i$f$getAndUpdate":I
    :cond_0
    nop

    .line 166
    iget v2, v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    .line 167
    .local v2, "cur$iv":I
    move v3, v2

    .local v3, "remaining":I
    const/4 v4, 0x0

    .line 69
    .local v4, "$i$a$-getAndUpdate-RingBufferCapacity$tryWriteAtLeast$available$1":I
    const/4 v5, 0x0

    if-ge v3, p1, :cond_1

    return v5

    .line 70
    :cond_1
    nop

    .line 167
    .end local v3    # "remaining":I
    .end local v4    # "$i$a$-getAndUpdate-RingBufferCapacity$tryWriteAtLeast$available$1":I
    move v3, v5

    .line 168
    .local v3, "upd$iv":I
    sget-object v4, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    .end local v0    # "$this$getAndUpdate$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    .end local v1    # "$i$f$getAndUpdate":I
    .end local v2    # "cur$iv":I
    .end local v3    # "upd$iv":I
    move v0, v2

    .line 72
    .local v0, "available":I
    return v0
.end method

.method public final tryWriteAtMost(I)I
    .locals 7
    .param p1, "n"    # I

    .line 84
    move-object v0, p0

    .local v0, "$this$getAndUpdate$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    const/4 v1, 0x0

    .line 173
    .local v1, "$i$f$getAndUpdate":I
    :cond_0
    nop

    .line 174
    iget v2, v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    .line 175
    .local v2, "cur$iv":I
    move v3, v2

    .local v3, "remaining":I
    const/4 v4, 0x0

    .line 85
    .local v4, "$i$a$-getAndUpdate-RingBufferCapacity$tryWriteAtMost$available$1":I
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 86
    .local v5, "delta":I
    if-nez v5, :cond_1

    const/4 v6, 0x0

    return v6

    .line 87
    :cond_1
    sub-int/2addr v3, v5

    .line 175
    .end local v3    # "remaining":I
    .end local v4    # "$i$a$-getAndUpdate-RingBufferCapacity$tryWriteAtMost$available$1":I
    .end local v5    # "delta":I
    nop

    .line 176
    .local v3, "upd$iv":I
    sget-object v4, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    .end local v0    # "$this$getAndUpdate$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    .end local v1    # "$i$f$getAndUpdate":I
    .end local v2    # "cur$iv":I
    .end local v3    # "upd$iv":I
    move v0, v2

    .line 89
    .local v0, "available":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public final tryWriteExact(I)Z
    .locals 6
    .param p1, "n"    # I

    .line 76
    move-object v0, p0

    .local v0, "$this$update$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    const/4 v1, 0x0

    .line 169
    .local v1, "$i$f$update":I
    :cond_0
    nop

    .line 170
    iget v2, v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    .line 171
    .local v2, "cur$iv":I
    move v3, v2

    .local v3, "remaining":I
    const/4 v4, 0x0

    .line 77
    .local v4, "$i$a$-update-RingBufferCapacity$tryWriteExact$1":I
    if-ge v3, p1, :cond_1

    const/4 v5, 0x0

    return v5

    .line 78
    :cond_1
    sub-int/2addr v3, p1

    .line 171
    .end local v3    # "remaining":I
    .end local v4    # "$i$a$-update-RingBufferCapacity$tryWriteExact$1":I
    nop

    .line 172
    .local v3, "upd$iv":I
    sget-object v4, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    .end local v0    # "$this$update$iv":Lio/ktor/utils/io/internal/RingBufferCapacity;
    .end local v1    # "$i$f$update":I
    .end local v2    # "cur$iv":I
    .end local v3    # "upd$iv":I
    const/4 v0, 0x1

    return v0
.end method
