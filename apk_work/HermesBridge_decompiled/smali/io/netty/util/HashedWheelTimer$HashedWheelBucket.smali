.class final Lio/netty/util/HashedWheelTimer$HashedWheelBucket;
.super Ljava/lang/Object;
.source "HashedWheelTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/HashedWheelTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HashedWheelBucket"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

.field private tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 758
    const-class v0, Lio/netty/util/HashedWheelTimer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/HashedWheelTimer$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/util/HashedWheelTimer$1;

    .line 758
    invoke-direct {p0}, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;-><init>()V

    return-void
.end method

.method private pollTimeout()Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    .locals 3

    .line 852
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 853
    .local v0, "head":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 854
    return-object v1

    .line 856
    :cond_0
    iget-object v2, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 857
    .local v2, "next":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    if-nez v2, :cond_1

    .line 858
    iput-object v1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object v1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    goto :goto_0

    .line 860
    :cond_1
    iput-object v2, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 861
    iput-object v1, v2, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 865
    :goto_0
    iput-object v1, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 866
    iput-object v1, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 867
    iput-object v1, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->bucket:Lio/netty/util/HashedWheelTimer$HashedWheelBucket;

    .line 868
    return-object v0
.end method


# virtual methods
.method public addTimeout(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)V
    .locals 1
    .param p1, "timeout"    # Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 767
    iget-object v0, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->bucket:Lio/netty/util/HashedWheelTimer$HashedWheelBucket;

    if-nez v0, :cond_1

    .line 768
    iput-object p0, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->bucket:Lio/netty/util/HashedWheelTimer$HashedWheelBucket;

    .line 769
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    if-nez v0, :cond_0

    .line 770
    iput-object p1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object p1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    goto :goto_0

    .line 772
    :cond_0
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object p1, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 773
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object v0, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 774
    iput-object p1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 776
    :goto_0
    return-void

    .line 767
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public clearTimeouts(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/netty/util/Timeout;",
            ">;)V"
        }
    .end annotation

    .line 840
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/util/Timeout;>;"
    nop

    :cond_0
    :goto_0
    invoke-direct {p0}, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->pollTimeout()Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    move-result-object v0

    .line 841
    .local v0, "timeout":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    if-nez v0, :cond_1

    .line 842
    return-void

    .line 844
    :cond_1
    invoke-virtual {v0}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->isExpired()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 845
    goto :goto_0

    .line 847
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 848
    .end local v0    # "timeout":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    goto :goto_0
.end method

.method public expireTimeouts(J)V
    .locals 6
    .param p1, "deadline"    # J

    .line 782
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 785
    .local v0, "timeout":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    :goto_0
    if-eqz v0, :cond_3

    .line 786
    iget-object v1, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 787
    .local v1, "next":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    iget-wide v2, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 788
    invoke-virtual {p0, v0}, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->remove(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    move-result-object v1

    .line 789
    invoke-static {v0}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->access$800(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_0

    .line 790
    invoke-virtual {v0}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->expire()V

    goto :goto_1

    .line 793
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 794
    invoke-static {v0}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->access$800(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 793
    const-string v4, "timeout.deadline (%d) > deadline (%d)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 796
    :cond_1
    invoke-virtual {v0}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 797
    invoke-virtual {p0, v0}, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->remove(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    move-result-object v1

    goto :goto_1

    .line 799
    :cond_2
    iget-wide v2, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    .line 801
    :goto_1
    move-object v0, v1

    .line 802
    .end local v1    # "next":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    goto :goto_0

    .line 803
    :cond_3
    return-void
.end method

.method public remove(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    .locals 3
    .param p1, "timeout"    # Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 806
    iget-object v0, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 808
    .local v0, "next":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    iget-object v1, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    if-eqz v1, :cond_0

    .line 809
    iget-object v1, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object v0, v1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 811
    :cond_0
    iget-object v1, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    if-eqz v1, :cond_1

    .line 812
    iget-object v1, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iget-object v2, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object v2, v1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 815
    :cond_1
    iget-object v1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    .line 817
    iget-object v1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    if-ne p1, v1, :cond_2

    .line 818
    iput-object v2, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 819
    iput-object v2, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    goto :goto_0

    .line 821
    :cond_2
    iput-object v0, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    goto :goto_0

    .line 823
    :cond_3
    iget-object v1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    if-ne p1, v1, :cond_4

    .line 825
    iget-object v1, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object v1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 828
    :cond_4
    :goto_0
    iput-object v2, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 829
    iput-object v2, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 830
    iput-object v2, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->bucket:Lio/netty/util/HashedWheelTimer$HashedWheelBucket;

    .line 831
    invoke-static {p1}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->access$1300(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)Lio/netty/util/HashedWheelTimer;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/HashedWheelTimer;->access$1100(Lio/netty/util/HashedWheelTimer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 832
    return-object v0
.end method
