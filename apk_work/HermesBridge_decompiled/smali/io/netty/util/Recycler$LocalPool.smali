.class final Lio/netty/util/Recycler$LocalPool;
.super Ljava/lang/Object;
.source "Recycler.java"

# interfaces
.implements Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
        "Lio/netty/util/Recycler$DefaultHandle<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final batch:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final chunkSize:I

.field private volatile owner:Ljava/lang/Thread;

.field private volatile pooledHandles:Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private ratioCounter:I

.field private final ratioInterval:I


# direct methods
.method constructor <init>(III)V
    .locals 2
    .param p1, "maxCapacity"    # I
    .param p2, "ratioInterval"    # I
    .param p3, "chunkSize"    # I

    .line 306
    .local p0, "this":Lio/netty/util/Recycler$LocalPool;, "Lio/netty/util/Recycler$LocalPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput p2, p0, Lio/netty/util/Recycler$LocalPool;->ratioInterval:I

    .line 308
    iput p3, p0, Lio/netty/util/Recycler$LocalPool;->chunkSize:I

    .line 309
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p3}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/netty/util/Recycler$LocalPool;->batch:Ljava/util/ArrayDeque;

    .line 310
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 311
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-static {}, Lio/netty/util/Recycler;->access$700()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Lio/netty/util/concurrent/FastThreadLocalThread;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lio/netty/util/Recycler$LocalPool;->owner:Ljava/lang/Thread;

    .line 312
    invoke-static {}, Lio/netty/util/Recycler;->access$800()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    new-instance v1, Lio/netty/util/Recycler$BlockingMessageQueue;

    invoke-direct {v1, p1}, Lio/netty/util/Recycler$BlockingMessageQueue;-><init>(I)V

    iput-object v1, p0, Lio/netty/util/Recycler$LocalPool;->pooledHandles:Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    goto :goto_2

    .line 315
    :cond_2
    invoke-static {p3, p1}, Lio/netty/util/internal/PlatformDependent;->newMpscQueue(II)Ljava/util/Queue;

    move-result-object v1

    check-cast v1, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    iput-object v1, p0, Lio/netty/util/Recycler$LocalPool;->pooledHandles:Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    .line 317
    :goto_2
    iput p2, p0, Lio/netty/util/Recycler$LocalPool;->ratioCounter:I

    .line 318
    return-void
.end method

.method static synthetic access$400(Lio/netty/util/Recycler$LocalPool;)Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/Recycler$LocalPool;

    .line 297
    iget-object v0, p0, Lio/netty/util/Recycler$LocalPool;->pooledHandles:Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    return-object v0
.end method

.method static synthetic access$402(Lio/netty/util/Recycler$LocalPool;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;)Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;
    .locals 0
    .param p0, "x0"    # Lio/netty/util/Recycler$LocalPool;
    .param p1, "x1"    # Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    .line 297
    iput-object p1, p0, Lio/netty/util/Recycler$LocalPool;->pooledHandles:Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    return-object p1
.end method

.method static synthetic access$502(Lio/netty/util/Recycler$LocalPool;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lio/netty/util/Recycler$LocalPool;
    .param p1, "x1"    # Ljava/lang/Thread;

    .line 297
    iput-object p1, p0, Lio/netty/util/Recycler$LocalPool;->owner:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$600(Lio/netty/util/Recycler$LocalPool;)Ljava/util/ArrayDeque;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/Recycler$LocalPool;

    .line 297
    iget-object v0, p0, Lio/netty/util/Recycler$LocalPool;->batch:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method private static isTerminated(Ljava/lang/Thread;)Z
    .locals 4
    .param p0, "owner"    # Ljava/lang/Thread;

    .line 358
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isJ9Jvm()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v3, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v3, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method


# virtual methods
.method public accept(Lio/netty/util/Recycler$DefaultHandle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "TT;>;)V"
        }
    .end annotation

    .line 371
    .local p0, "this":Lio/netty/util/Recycler$LocalPool;, "Lio/netty/util/Recycler$LocalPool<TT;>;"
    .local p1, "e":Lio/netty/util/Recycler$DefaultHandle;, "Lio/netty/util/Recycler$DefaultHandle<TT;>;"
    iget-object v0, p0, Lio/netty/util/Recycler$LocalPool;->batch:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 372
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 297
    .local p0, "this":Lio/netty/util/Recycler$LocalPool;, "Lio/netty/util/Recycler$LocalPool<TT;>;"
    check-cast p1, Lio/netty/util/Recycler$DefaultHandle;

    invoke-virtual {p0, p1}, Lio/netty/util/Recycler$LocalPool;->accept(Lio/netty/util/Recycler$DefaultHandle;)V

    return-void
.end method

.method claim()Lio/netty/util/Recycler$DefaultHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "TT;>;"
        }
    .end annotation

    .line 321
    .local p0, "this":Lio/netty/util/Recycler$LocalPool;, "Lio/netty/util/Recycler$LocalPool<TT;>;"
    iget-object v0, p0, Lio/netty/util/Recycler$LocalPool;->pooledHandles:Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    .line 322
    .local v0, "handles":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<Lio/netty/util/Recycler$DefaultHandle<TT;>;>;"
    if-nez v0, :cond_0

    .line 323
    const/4 v1, 0x0

    return-object v1

    .line 325
    :cond_0
    iget-object v1, p0, Lio/netty/util/Recycler$LocalPool;->batch:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    iget v1, p0, Lio/netty/util/Recycler$LocalPool;->chunkSize:I

    invoke-interface {v0, p0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I

    .line 328
    :cond_1
    iget-object v1, p0, Lio/netty/util/Recycler$LocalPool;->batch:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/Recycler$DefaultHandle;

    .line 329
    .local v1, "handle":Lio/netty/util/Recycler$DefaultHandle;, "Lio/netty/util/Recycler$DefaultHandle<TT;>;"
    if-eqz v1, :cond_2

    .line 330
    invoke-virtual {v1}, Lio/netty/util/Recycler$DefaultHandle;->toClaimed()V

    .line 332
    :cond_2
    return-object v1
.end method

.method newHandle()Lio/netty/util/Recycler$DefaultHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "TT;>;"
        }
    .end annotation

    .line 362
    .local p0, "this":Lio/netty/util/Recycler$LocalPool;, "Lio/netty/util/Recycler$LocalPool<TT;>;"
    iget v0, p0, Lio/netty/util/Recycler$LocalPool;->ratioCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/util/Recycler$LocalPool;->ratioCounter:I

    iget v1, p0, Lio/netty/util/Recycler$LocalPool;->ratioInterval:I

    if-lt v0, v1, :cond_0

    .line 363
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/util/Recycler$LocalPool;->ratioCounter:I

    .line 364
    new-instance v0, Lio/netty/util/Recycler$DefaultHandle;

    invoke-direct {v0, p0}, Lio/netty/util/Recycler$DefaultHandle;-><init>(Lio/netty/util/Recycler$LocalPool;)V

    return-object v0

    .line 366
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method release(Lio/netty/util/Recycler$DefaultHandle;Z)V
    .locals 3
    .param p2, "guarded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 336
    .local p0, "this":Lio/netty/util/Recycler$LocalPool;, "Lio/netty/util/Recycler$LocalPool<TT;>;"
    .local p1, "handle":Lio/netty/util/Recycler$DefaultHandle;, "Lio/netty/util/Recycler$DefaultHandle<TT;>;"
    if-eqz p2, :cond_0

    .line 337
    invoke-virtual {p1}, Lio/netty/util/Recycler$DefaultHandle;->toAvailable()V

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {p1}, Lio/netty/util/Recycler$DefaultHandle;->unguardedToAvailable()V

    .line 341
    :goto_0
    iget-object v0, p0, Lio/netty/util/Recycler$LocalPool;->owner:Ljava/lang/Thread;

    .line 342
    .local v0, "owner":Ljava/lang/Thread;
    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lio/netty/util/Recycler$LocalPool;->batch:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    iget v2, p0, Lio/netty/util/Recycler$LocalPool;->chunkSize:I

    if-ge v1, v2, :cond_1

    .line 343
    invoke-virtual {p0, p1}, Lio/netty/util/Recycler$LocalPool;->accept(Lio/netty/util/Recycler$DefaultHandle;)V

    goto :goto_1

    .line 344
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lio/netty/util/Recycler$LocalPool;->isTerminated(Ljava/lang/Thread;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 345
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/util/Recycler$LocalPool;->owner:Ljava/lang/Thread;

    .line 346
    iput-object v1, p0, Lio/netty/util/Recycler$LocalPool;->pooledHandles:Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    goto :goto_1

    .line 348
    :cond_2
    iget-object v1, p0, Lio/netty/util/Recycler$LocalPool;->pooledHandles:Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    .line 349
    .local v1, "handles":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<Lio/netty/util/Recycler$DefaultHandle<TT;>;>;"
    if-eqz v1, :cond_3

    .line 350
    invoke-interface {v1, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;->relaxedOffer(Ljava/lang/Object;)Z

    .line 353
    .end local v1    # "handles":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<Lio/netty/util/Recycler$DefaultHandle<TT;>;>;"
    :cond_3
    :goto_1
    return-void
.end method
