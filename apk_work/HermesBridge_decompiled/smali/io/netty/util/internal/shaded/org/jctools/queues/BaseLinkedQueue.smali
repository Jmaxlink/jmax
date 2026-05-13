.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueuePad2;
.source "BaseLinkedQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueuePad2<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 145
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueuePad2;-><init>()V

    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 394
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;)I"
        }
    .end annotation

    .line 382
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-static {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;)I

    move-result v0

    return v0
.end method

.method public drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 4
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;I)I"
        }
    .end annotation

    .line 355
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    if-eqz p1, :cond_4

    .line 357
    if-ltz p2, :cond_3

    .line 359
    if-nez p2, :cond_0

    .line 360
    const/4 v0, 0x0

    return v0

    .line 362
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->lpConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 363
    .local v0, "chaserNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 365
    invoke-virtual {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->lvNext()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v2

    .line 367
    .local v2, "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    if-nez v2, :cond_1

    .line 369
    return v1

    .line 372
    :cond_1
    invoke-virtual {p0, v0, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->getSingleConsumerNodeValue(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)Ljava/lang/Object;

    move-result-object v3

    .line 373
    .local v3, "nextValue":Ljava/lang/Object;, "TE;"
    move-object v0, v2

    .line 374
    invoke-interface {p1, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    .line 363
    .end local v2    # "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    .end local v3    # "nextValue":Ljava/lang/Object;, "TE;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    .end local v1    # "i":I
    :cond_2
    return p2

    .line 358
    .end local v0    # "chaserNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "c is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0
    .param p2, "wait"    # Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;
    .param p3, "exit"    # Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;",
            ")V"
        }
    .end annotation

    .line 388
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    .local p1, "c":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<TE;>;"
    invoke-static {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

    .line 389
    return-void
.end method

.method protected getSingleConsumerNodeValue(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    .local p1, "currConsumerNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    .local p2, "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {p2}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    move-result-object v0

    .line 232
    .local v0, "nextValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->soNext(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)V

    .line 233
    invoke-virtual {p0, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->spConsumerNode(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)V

    .line 235
    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 219
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->lvConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 220
    .local v0, "consumerNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->lvProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v1

    .line 221
    .local v1, "producerNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final newNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    new-instance v0, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    invoke-direct {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;-><init>()V

    return-object v0
.end method

.method protected final newNode(Ljava/lang/Object;)Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    invoke-direct {v0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 298
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->lpConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 299
    .local v0, "currConsumerNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->lvNext()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v1

    .line 300
    .local v1, "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {v1}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 304
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->lvProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 306
    invoke-virtual {p0, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->spinWaitForNextNode(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v1

    .line 308
    invoke-virtual {v1}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 310
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public poll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 262
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->lpConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 263
    .local v0, "currConsumerNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->lvNext()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v1

    .line 264
    .local v1, "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {p0, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->getSingleConsumerNodeValue(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 268
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->lvProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 270
    invoke-virtual {p0, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->spinWaitForNextNode(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v1

    .line 272
    invoke-virtual {p0, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->getSingleConsumerNodeValue(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 274
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 349
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public relaxedPeek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 338
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->lpConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->lvNext()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 339
    .local v0, "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 343
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public relaxedPoll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 326
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->lpConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 327
    .local v0, "currConsumerNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->lvNext()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v1

    .line 328
    .local v1, "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {p0, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->getSingleConsumerNodeValue(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 332
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public final size()I
    .locals 4

    .line 185
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->lvConsumerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    .line 186
    .local v0, "chaserNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;->lvProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v1

    .line 187
    .local v1, "producerNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    const/4 v2, 0x0

    .line 189
    .local v2, "size":I
    :goto_0
    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    const v3, 0x7fffffff

    if-ge v2, v3, :cond_1

    .line 194
    invoke-virtual {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->lvNext()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v3

    .line 196
    .local v3, "next":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    if-ne v3, v0, :cond_0

    .line 198
    return v2

    .line 200
    :cond_0
    move-object v0, v3

    .line 201
    nop

    .end local v3    # "next":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    add-int/lit8 v2, v2, 0x1

    .line 202
    goto :goto_0

    .line 203
    :cond_1
    return v2
.end method

.method spinWaitForNextNode(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;)",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 316
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    .local p1, "currNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    nop

    :goto_0
    invoke-virtual {p1}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;->lvNext()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    move-result-object v0

    move-object v1, v0

    .local v1, "nextNode":Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;, "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<TE;>;"
    if-nez v0, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 157
    .local p0, "this":Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
