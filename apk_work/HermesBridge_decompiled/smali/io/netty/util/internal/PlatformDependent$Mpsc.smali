.class final Lio/netty/util/internal/PlatformDependent$Mpsc;
.super Ljava/lang/Object;
.source "PlatformDependent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/PlatformDependent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Mpsc"
.end annotation


# static fields
.field private static final USE_MPSC_CHUNKED_ARRAY_QUEUE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 990
    const/4 v0, 0x0

    .line 991
    .local v0, "unsafe":Ljava/lang/Object;
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 995
    new-instance v1, Lio/netty/util/internal/PlatformDependent$Mpsc$1;

    invoke-direct {v1}, Lio/netty/util/internal/PlatformDependent$Mpsc$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 1004
    :cond_0
    if-nez v0, :cond_1

    .line 1005
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->access$200()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v2, "org.jctools-core.MpscChunkedArrayQueue: unavailable"

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 1006
    const/4 v1, 0x0

    sput-boolean v1, Lio/netty/util/internal/PlatformDependent$Mpsc;->USE_MPSC_CHUNKED_ARRAY_QUEUE:Z

    goto :goto_0

    .line 1008
    :cond_1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->access$200()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v2, "org.jctools-core.MpscChunkedArrayQueue: available"

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 1009
    const/4 v1, 0x1

    sput-boolean v1, Lio/netty/util/internal/PlatformDependent$Mpsc;->USE_MPSC_CHUNKED_ARRAY_QUEUE:Z

    .line 1011
    .end local v0    # "unsafe":Ljava/lang/Object;
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 987
    return-void
.end method

.method static newChunkedMpscQueue(II)Ljava/util/Queue;
    .locals 1
    .param p0, "chunkSize"    # I
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    .line 1022
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent$Mpsc;->USE_MPSC_CHUNKED_ARRAY_QUEUE:Z

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueue;

    invoke-direct {v0, p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueue;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;

    invoke-direct {v0, p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;-><init>(II)V

    :goto_0
    return-object v0
.end method

.method static newMpscQueue()Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    .line 1027
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent$Mpsc;->USE_MPSC_CHUNKED_ARRAY_QUEUE:Z

    const/16 v1, 0x400

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;

    invoke-direct {v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscUnboundedArrayQueue;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscUnboundedAtomicArrayQueue;

    invoke-direct {v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscUnboundedAtomicArrayQueue;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method static newMpscQueue(I)Ljava/util/Queue;
    .locals 2
    .param p0, "maxCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    .line 1017
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x800

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1018
    .local v0, "capacity":I
    const/16 v1, 0x400

    invoke-static {v1, v0}, Lio/netty/util/internal/PlatformDependent$Mpsc;->newChunkedMpscQueue(II)Ljava/util/Queue;

    move-result-object v1

    return-object v1
.end method
