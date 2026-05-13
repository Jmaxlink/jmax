.class final Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;
.super Ljava/lang/ref/WeakReference;
.source "ResourceLeakDetector.java"

# interfaces
.implements Lio/netty/util/ResourceLeakTracker;
.implements Lio/netty/util/ResourceLeak;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/ResourceLeakDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultResourceLeak"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/netty/util/ResourceLeakTracker<",
        "TT;>;",
        "Lio/netty/util/ResourceLeak;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final droppedRecordsUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<",
            "*>;",
            "Lio/netty/util/ResourceLeakDetector$TraceRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final allLeaks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile droppedRecords:I

.field private volatile head:Lio/netty/util/ResourceLeakDetector$TraceRecord;

.field private final trackedHash:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 387
    const-class v0, Lio/netty/util/ResourceLeakDetector;

    .line 392
    const-class v0, Lio/netty/util/ResourceLeakDetector$TraceRecord;

    .line 394
    const-class v1, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    const-string v2, "head"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 397
    nop

    .line 399
    const-string v0, "droppedRecords"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->droppedRecordsUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 397
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;Ljava/lang/Object;)V
    .locals 3
    .param p1, "referent"    # Ljava/lang/Object;
    .param p4, "initialHint"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set<",
            "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<",
            "*>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 414
    .local p0, "this":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<TT;>;"
    .local p2, "refQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    .local p3, "allLeaks":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<*>;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 416
    if-eqz p1, :cond_1

    .line 421
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->trackedHash:I

    .line 422
    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    if-nez p4, :cond_0

    new-instance v1, Lio/netty/util/ResourceLeakDetector$TraceRecord;

    .line 425
    invoke-static {}, Lio/netty/util/ResourceLeakDetector$TraceRecord;->access$100()Lio/netty/util/ResourceLeakDetector$TraceRecord;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/util/ResourceLeakDetector$TraceRecord;-><init>(Lio/netty/util/ResourceLeakDetector$TraceRecord;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/netty/util/ResourceLeakDetector$TraceRecord;

    invoke-static {}, Lio/netty/util/ResourceLeakDetector$TraceRecord;->access$100()Lio/netty/util/ResourceLeakDetector$TraceRecord;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Lio/netty/util/ResourceLeakDetector$TraceRecord;-><init>(Lio/netty/util/ResourceLeakDetector$TraceRecord;Ljava/lang/Object;)V

    .line 424
    :goto_0
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 426
    iput-object p3, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->allLeaks:Ljava/util/Set;

    .line 427
    return-void

    .line 416
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private generateReport(Lio/netty/util/ResourceLeakDetector$TraceRecord;)Ljava/lang/String;
    .locals 9
    .param p1, "oldHead"    # Lio/netty/util/ResourceLeakDetector$TraceRecord;

    .line 565
    .local p0, "this":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<TT;>;"
    if-nez p1, :cond_0

    .line 567
    const-string v0, ""

    return-object v0

    .line 570
    :cond_0
    sget-object v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->droppedRecordsUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 571
    .local v0, "dropped":I
    const/4 v1, 0x0

    .line 573
    .local v1, "duped":I
    invoke-static {p1}, Lio/netty/util/ResourceLeakDetector$TraceRecord;->access$300(Lio/netty/util/ResourceLeakDetector$TraceRecord;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 575
    .local v2, "present":I
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit16 v4, v2, 0x800

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v4, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 576
    .local v3, "buf":Ljava/lang/StringBuilder;
    const-string v4, "Recent access records: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const/4 v4, 0x1

    .line 579
    .local v4, "i":I
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 580
    .local v5, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-static {}, Lio/netty/util/ResourceLeakDetector$TraceRecord;->access$100()Lio/netty/util/ResourceLeakDetector$TraceRecord;

    move-result-object v6

    if-eq p1, v6, :cond_3

    .line 581
    invoke-virtual {p1}, Lio/netty/util/ResourceLeakDetector$TraceRecord;->toString()Ljava/lang/String;

    move-result-object v6

    .line 582
    .local v6, "s":Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 583
    invoke-static {p1}, Lio/netty/util/ResourceLeakDetector$TraceRecord;->access$400(Lio/netty/util/ResourceLeakDetector$TraceRecord;)Lio/netty/util/ResourceLeakDetector$TraceRecord;

    move-result-object v7

    invoke-static {}, Lio/netty/util/ResourceLeakDetector$TraceRecord;->access$100()Lio/netty/util/ResourceLeakDetector$TraceRecord;

    move-result-object v8

    if-ne v7, v8, :cond_1

    .line 584
    const-string v7, "Created at:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 586
    :cond_1
    const/16 v7, 0x23

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "i":I
    .local v8, "i":I
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v8

    goto :goto_1

    .line 589
    .end local v8    # "i":I
    .restart local v4    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 580
    .end local v6    # "s":Ljava/lang/String;
    :goto_1
    invoke-static {p1}, Lio/netty/util/ResourceLeakDetector$TraceRecord;->access$400(Lio/netty/util/ResourceLeakDetector$TraceRecord;)Lio/netty/util/ResourceLeakDetector$TraceRecord;

    move-result-object p1

    goto :goto_0

    .line 593
    :cond_3
    const-string v6, ": "

    if-lez v1, :cond_4

    .line 594
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 595
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 596
    const-string v8, " leak records were discarded because they were duplicates"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 597
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    :cond_4
    if-lez v0, :cond_5

    .line 601
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 602
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 603
    const-string v7, " leak records were discarded because the leak record count is targeted to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 604
    invoke-static {}, Lio/netty/util/ResourceLeakDetector;->access$200()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 605
    const-string v7, ". Use system property "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 606
    const-string v7, "io.netty.leakDetection.targetRecords"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 607
    const-string v7, " to increase the limit."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 608
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sget-object v7, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 612
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static reachabilityFence0(Ljava/lang/Object;)V
    .locals 1
    .param p0, "ref"    # Ljava/lang/Object;

    .line 546
    if-eqz p0, :cond_0

    .line 547
    monitor-enter p0

    .line 549
    :try_start_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 551
    :cond_0
    :goto_0
    return-void
.end method

.method private record0(Ljava/lang/Object;)V
    .locals 7
    .param p1, "hint"    # Ljava/lang/Object;

    .line 467
    .local p0, "this":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<TT;>;"
    invoke-static {}, Lio/netty/util/ResourceLeakDetector;->access$200()I

    move-result v0

    if-lez v0, :cond_6

    .line 473
    :cond_0
    sget-object v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/ResourceLeakDetector$TraceRecord;

    move-object v1, v0

    .local v1, "oldHead":Lio/netty/util/ResourceLeakDetector$TraceRecord;
    move-object v2, v0

    .local v2, "prevHead":Lio/netty/util/ResourceLeakDetector$TraceRecord;
    if-nez v0, :cond_1

    .line 475
    return-void

    .line 477
    :cond_1
    invoke-static {v1}, Lio/netty/util/ResourceLeakDetector$TraceRecord;->access$300(Lio/netty/util/ResourceLeakDetector$TraceRecord;)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 478
    .local v0, "numElements":I
    invoke-static {}, Lio/netty/util/ResourceLeakDetector;->access$200()I

    move-result v4

    if-lt v0, v4, :cond_4

    .line 479
    invoke-static {}, Lio/netty/util/ResourceLeakDetector;->access$200()I

    move-result v4

    sub-int v4, v0, v4

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 480
    .local v4, "backOffFactor":I
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->threadLocalRandom()Ljava/util/Random;

    move-result-object v5

    shl-int v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    move v5, v3

    .local v5, "dropped":Z
    if-eqz v3, :cond_3

    .line 481
    invoke-static {v1}, Lio/netty/util/ResourceLeakDetector$TraceRecord;->access$400(Lio/netty/util/ResourceLeakDetector$TraceRecord;)Lio/netty/util/ResourceLeakDetector$TraceRecord;

    move-result-object v2

    .line 483
    .end local v4    # "backOffFactor":I
    :cond_3
    goto :goto_1

    .line 484
    .end local v5    # "dropped":Z
    :cond_4
    const/4 v5, 0x0

    .line 486
    .restart local v5    # "dropped":Z
    :goto_1
    new-instance v3, Lio/netty/util/ResourceLeakDetector$TraceRecord;

    if-eqz p1, :cond_5

    invoke-direct {v3, v2, p1}, Lio/netty/util/ResourceLeakDetector$TraceRecord;-><init>(Lio/netty/util/ResourceLeakDetector$TraceRecord;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-direct {v3, v2}, Lio/netty/util/ResourceLeakDetector$TraceRecord;-><init>(Lio/netty/util/ResourceLeakDetector$TraceRecord;)V

    :goto_2
    move-object v0, v3

    .line 487
    .local v0, "newHead":Lio/netty/util/ResourceLeakDetector$TraceRecord;
    sget-object v3, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v0}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 488
    if-eqz v5, :cond_6

    .line 489
    sget-object v3, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->droppedRecordsUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 492
    .end local v0    # "newHead":Lio/netty/util/ResourceLeakDetector$TraceRecord;
    .end local v1    # "oldHead":Lio/netty/util/ResourceLeakDetector$TraceRecord;
    .end local v2    # "prevHead":Lio/netty/util/ResourceLeakDetector$TraceRecord;
    .end local v5    # "dropped":Z
    :cond_6
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 2

    .line 501
    .local p0, "this":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<TT;>;"
    iget-object v0, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->allLeaks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->clear()V

    .line 504
    sget-object v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 505
    const/4 v0, 0x1

    return v0

    .line 507
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 513
    .local p0, "this":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<TT;>;"
    .local p1, "trackedObject":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->trackedHash:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 516
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->close()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    invoke-static {p1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->reachabilityFence0(Ljava/lang/Object;)V

    .line 516
    return v0

    .line 522
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->reachabilityFence0(Ljava/lang/Object;)V

    .line 523
    throw v0

    .line 513
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method dispose()Z
    .locals 1

    .line 495
    .local p0, "this":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<TT;>;"
    invoke-virtual {p0}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->clear()V

    .line 496
    iget-object v0, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->allLeaks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getReportAndClearRecords()Ljava/lang/String;
    .locals 2

    .line 560
    .local p0, "this":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<TT;>;"
    sget-object v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/ResourceLeakDetector$TraceRecord;

    .line 561
    .local v0, "oldHead":Lio/netty/util/ResourceLeakDetector$TraceRecord;
    invoke-direct {p0, v0}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->generateReport(Lio/netty/util/ResourceLeakDetector$TraceRecord;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public record()V
    .locals 1

    .line 431
    .local p0, "this":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->record0(Ljava/lang/Object;)V

    .line 432
    return-void
.end method

.method public record(Ljava/lang/Object;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/Object;

    .line 436
    .local p0, "this":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<TT;>;"
    invoke-direct {p0, p1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->record0(Ljava/lang/Object;)V

    .line 437
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 555
    .local p0, "this":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<TT;>;"
    sget-object v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/ResourceLeakDetector$TraceRecord;

    .line 556
    .local v0, "oldHead":Lio/netty/util/ResourceLeakDetector$TraceRecord;
    invoke-direct {p0, v0}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->generateReport(Lio/netty/util/ResourceLeakDetector$TraceRecord;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
