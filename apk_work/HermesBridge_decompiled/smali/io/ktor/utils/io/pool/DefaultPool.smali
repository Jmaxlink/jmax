.class public abstract Lio/ktor/utils/io/pool/DefaultPool;
.super Ljava/lang/Object;
.source "DefaultPool.kt"

# interfaces
.implements Lio/ktor/utils/io/pool/ObjectPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/pool/DefaultPool$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/ktor/utils/io/pool/ObjectPool<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultPool.kt\nio/ktor/utils/io/pool/DefaultPool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Atomic.kt\nio/ktor/utils/io/utils/AtomicKt\n*L\n1#1,114:1\n1#2:115\n7#3:116\n*S KotlinDebug\n*F\n+ 1 DefaultPool.kt\nio/ktor/utils/io/pool/DefaultPool\n*L\n111#1:116\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008&\u0018\u0000 $*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001$B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000b\u0010\u0011\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0012J\u0015\u0010\u0013\u001a\u00028\u00002\u0006\u0010\u0014\u001a\u00028\u0000H\u0014\u00a2\u0006\u0002\u0010\u0015J\u0006\u0010\u0016\u001a\u00020\u0017J\u0015\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00028\u0000H\u0014\u00a2\u0006\u0002\u0010\u0019J\u0008\u0010\u001a\u001a\u00020\u0005H\u0002J\r\u0010\u001b\u001a\u00028\u0000H$\u00a2\u0006\u0002\u0010\u0012J\u0010\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u0005H\u0002J\u0013\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0019J\u000f\u0010\u001f\u001a\u0004\u0018\u00018\u0000H\u0002\u00a2\u0006\u0002\u0010\u0012J\u0015\u0010 \u001a\u00020!2\u0006\u0010\u0014\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010\"J\u0015\u0010#\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00028\u0000H\u0014\u00a2\u0006\u0002\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lio/ktor/utils/io/pool/DefaultPool;",
        "T",
        "",
        "Lio/ktor/utils/io/pool/ObjectPool;",
        "capacity",
        "",
        "(I)V",
        "getCapacity",
        "()I",
        "instances",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
        "maxIndex",
        "next",
        "",
        "shift",
        "top",
        "",
        "borrow",
        "()Ljava/lang/Object;",
        "clearInstance",
        "instance",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "dispose",
        "",
        "disposeInstance",
        "(Ljava/lang/Object;)V",
        "popTop",
        "produceInstance",
        "pushTop",
        "index",
        "recycle",
        "tryPop",
        "tryPush",
        "",
        "(Ljava/lang/Object;)Z",
        "validateInstance",
        "Companion",
        "ktor-io"
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
.field public static final Companion:Lio/ktor/utils/io/pool/DefaultPool$Companion;

.field private static final Top:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lio/ktor/utils/io/pool/DefaultPool<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final capacity:I

.field private final instances:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final maxIndex:I

.field private final next:[I

.field private final shift:I

.field private volatile top:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/ktor/utils/io/pool/DefaultPool$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/utils/io/pool/DefaultPool$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/utils/io/pool/DefaultPool;->Companion:Lio/ktor/utils/io/pool/DefaultPool$Companion;

    .line 111
    sget-object v0, Lio/ktor/utils/io/pool/DefaultPool$Companion$Top$1;->INSTANCE:Lio/ktor/utils/io/pool/DefaultPool$Companion$Top$1;

    check-cast v0, Lkotlin/reflect/KProperty1;

    .local v0, "p$iv":Lkotlin/reflect/KProperty1;
    const/4 v1, 0x0

    .line 116
    .local v1, "$i$f$longUpdater":I
    invoke-interface {v0}, Lkotlin/reflect/KProperty1;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lio/ktor/utils/io/pool/DefaultPool;

    invoke-static {v3, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    const-string v3, "newUpdater(Owner::class.java, p.name)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .end local v0    # "p$iv":Lkotlin/reflect/KProperty1;
    .end local v1    # "$i$f$longUpdater":I
    sput-object v2, Lio/ktor/utils/io/pool/DefaultPool;->Top:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "capacity"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lio/ktor/utils/io/pool/DefaultPool;->capacity:I

    .line 18
    nop

    .line 19
    iget v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->capacity:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 20
    iget v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->capacity:I

    const v3, 0x1fffffff

    if-gt v0, v3, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    .line 23
    nop

    .line 41
    iget v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->capacity:I

    mul-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->maxIndex:I

    .line 44
    iget v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->maxIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->shift:I

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lio/ktor/utils/io/pool/DefaultPool;->maxIndex:I

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->instances:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 48
    iget v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->maxIndex:I

    add-int/2addr v0, v2

    new-array v0, v0, [I

    iput-object v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->next:[I

    .line 17
    return-void

    .line 20
    :cond_2
    const/4 v0, 0x0

    .line 21
    .local v0, "$i$a$-require-DefaultPool$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity should be less or equal to 536870911 but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/ktor/utils/io/pool/DefaultPool;->capacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    .end local v0    # "$i$a$-require-DefaultPool$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_3
    const/4 v0, 0x0

    .line 19
    .local v0, "$i$a$-require-DefaultPool$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity should be positive but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/ktor/utils/io/pool/DefaultPool;->capacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-DefaultPool$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final synthetic access$getTop$p(Lio/ktor/utils/io/pool/DefaultPool;)J
    .locals 2
    .param p0, "$this"    # Lio/ktor/utils/io/pool/DefaultPool;

    .line 16
    iget-wide v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->top:J

    return-wide v0
.end method

.method public static final synthetic access$setTop$p(Lio/ktor/utils/io/pool/DefaultPool;J)V
    .locals 0
    .param p0, "$this"    # Lio/ktor/utils/io/pool/DefaultPool;
    .param p1, "<set-?>"    # J

    .line 16
    iput-wide p1, p0, Lio/ktor/utils/io/pool/DefaultPool;->top:J

    return-void
.end method

.method private final popTop()I
    .locals 14

    .line 96
    nop

    :cond_0
    nop

    .line 98
    iget-wide v6, p0, Lio/ktor/utils/io/pool/DefaultPool;->top:J

    .line 99
    .local v6, "top":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 100
    :cond_1
    const/16 v0, 0x20

    shr-long v2, v6, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const-wide/16 v8, 0x1

    add-long/2addr v8, v2

    .line 101
    .local v8, "newVersion":J
    and-long v2, v6, v4

    long-to-int v10, v2

    .line 102
    .local v10, "topIndex":I
    if-nez v10, :cond_2

    return v1

    .line 103
    :cond_2
    iget-object v1, p0, Lio/ktor/utils/io/pool/DefaultPool;->next:[I

    aget v11, v1, v10

    .line 104
    .local v11, "next":I
    shl-long v0, v8, v0

    int-to-long v2, v11

    or-long v12, v0, v2

    .line 105
    .local v12, "newTop":J
    sget-object v0, Lio/ktor/utils/io/pool/DefaultPool;->Top:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    move-wide v2, v6

    move-wide v4, v12

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return v10
.end method

.method private final pushTop(I)V
    .locals 14
    .param p1, "index"    # I

    .line 83
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 84
    :cond_1
    nop

    .line 85
    iget-wide v7, p0, Lio/ktor/utils/io/pool/DefaultPool;->top:J

    .line 86
    .local v7, "top":J
    const/16 v0, 0x20

    shr-long v1, v7, v0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long v9, v1, v5

    .line 87
    .local v9, "topVersion":J
    and-long v1, v7, v3

    long-to-int v11, v1

    .line 88
    .local v11, "topIndex":I
    shl-long v0, v9, v0

    int-to-long v2, p1

    or-long v12, v0, v2

    .line 89
    .local v12, "newTop":J
    iget-object v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->next:[I

    aput v11, v0, p1

    .line 90
    sget-object v1, Lio/ktor/utils/io/pool/DefaultPool;->Top:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v2, p0

    move-wide v3, v7

    move-wide v5, v12

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 115
    .end local v7    # "top":J
    .end local v9    # "topVersion":J
    .end local v11    # "topIndex":I
    .end local v12    # "newTop":J
    :cond_2
    const/4 v0, 0x0

    .line 83
    .local v0, "$i$a$-require-DefaultPool$pushTop$1":I
    nop

    .end local v0    # "$i$a$-require-DefaultPool$pushTop$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index should be positive"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final tryPop()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lio/ktor/utils/io/pool/DefaultPool;->popTop()I

    move-result v0

    .line 79
    .local v0, "index":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/ktor/utils/io/pool/DefaultPool;->instances:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private final tryPush(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    .local v0, "index":I
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, -0x61c88647

    mul-int/2addr v1, v2

    iget v2, p0, Lio/ktor/utils/io/pool/DefaultPool;->shift:I

    ushr-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 67
    .end local v0    # "index":I
    .local v1, "index":I
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    move v4, v3

    .local v4, "it":I
    const/4 v5, 0x0

    .line 68
    .local v5, "$i$a$-repeat-DefaultPool$tryPush$1":I
    iget-object v6, p0, Lio/ktor/utils/io/pool/DefaultPool;->instances:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v7, 0x0

    invoke-static {v6, v1, v7, p1}, Lio/ktor/utils/io/pool/DefaultPool$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 69
    invoke-direct {p0, v1}, Lio/ktor/utils/io/pool/DefaultPool;->pushTop(I)V

    .line 70
    return v2

    .line 72
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_1

    iget v1, p0, Lio/ktor/utils/io/pool/DefaultPool;->maxIndex:I

    .line 73
    :cond_1
    nop

    .line 67
    .end local v4    # "it":I
    .end local v5    # "$i$a$-repeat-DefaultPool$tryPush$1":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_2
    return v0
.end method


# virtual methods
.method public final borrow()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lio/ktor/utils/io/pool/DefaultPool;->tryPop()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 51
    .local v1, "$i$a$-let-DefaultPool$borrow$1":I
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/pool/DefaultPool;->clearInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-DefaultPool$borrow$1":I
    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/pool/DefaultPool;->produceInstance()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected clearInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    return-object p1
.end method

.method public close()V
    .locals 0

    .line 16
    invoke-static {p0}, Lio/ktor/utils/io/pool/ObjectPool$DefaultImpls;->close(Lio/ktor/utils/io/pool/ObjectPool;)V

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 59
    nop

    :goto_0
    nop

    .line 60
    invoke-direct {p0}, Lio/ktor/utils/io/pool/DefaultPool;->tryPop()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 61
    .local v0, "instance":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/pool/DefaultPool;->disposeInstance(Ljava/lang/Object;)V

    .end local v0    # "instance":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected disposeInstance(Ljava/lang/Object;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public final getCapacity()I
    .locals 1

    .line 17
    iget v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->capacity:I

    return v0
.end method

.method protected abstract produceInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final recycle(Ljava/lang/Object;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;->validateInstance(Ljava/lang/Object;)V

    .line 55
    invoke-direct {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;->tryPush(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;->disposeInstance(Ljava/lang/Object;)V

    .line 56
    :cond_0
    return-void
.end method

.method protected validateInstance(Ljava/lang/Object;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    return-void
.end method
