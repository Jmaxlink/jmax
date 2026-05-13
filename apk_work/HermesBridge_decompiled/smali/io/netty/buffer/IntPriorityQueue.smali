.class final Lio/netty/buffer/IntPriorityQueue;
.super Ljava/lang/Object;
.source "IntPriorityQueue.java"


# static fields
.field public static final NO_VALUE:I = -0x1


# instance fields
.field private array:[I

.field private size:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x9

    new-array v0, v0, [I

    iput-object v0, p0, Lio/netty/buffer/IntPriorityQueue;->array:[I

    return-void
.end method

.method private lift(I)V
    .locals 2
    .param p1, "index"    # I

    .line 78
    nop

    :goto_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    shr-int/lit8 v0, p1, 0x1

    move v1, v0

    .local v1, "parentIndex":I
    invoke-direct {p0, v0, p1}, Lio/netty/buffer/IntPriorityQueue;->subord(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0, p1, v1}, Lio/netty/buffer/IntPriorityQueue;->swap(II)V

    .line 80
    move p1, v1

    goto :goto_0

    .line 82
    .end local v1    # "parentIndex":I
    :cond_0
    return-void
.end method

.method private sink(I)V
    .locals 3
    .param p1, "index"    # I

    .line 86
    nop

    :goto_0
    shl-int/lit8 v0, p1, 0x1

    move v1, v0

    .local v1, "child":I
    iget v2, p0, Lio/netty/buffer/IntPriorityQueue;->size:I

    if-gt v0, v2, :cond_2

    .line 87
    iget v0, p0, Lio/netty/buffer/IntPriorityQueue;->size:I

    if-ge v1, v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v1, v0}, Lio/netty/buffer/IntPriorityQueue;->subord(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 90
    :cond_0
    invoke-direct {p0, p1, v1}, Lio/netty/buffer/IntPriorityQueue;->subord(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    goto :goto_1

    .line 93
    :cond_1
    invoke-direct {p0, p1, v1}, Lio/netty/buffer/IntPriorityQueue;->swap(II)V

    .line 94
    move p1, v1

    goto :goto_0

    .line 96
    :cond_2
    :goto_1
    return-void
.end method

.method private subord(II)Z
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 99
    iget-object v0, p0, Lio/netty/buffer/IntPriorityQueue;->array:[I

    aget v0, v0, p1

    iget-object v1, p0, Lio/netty/buffer/IntPriorityQueue;->array:[I

    aget v1, v1, p2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private swap(II)V
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 103
    iget-object v0, p0, Lio/netty/buffer/IntPriorityQueue;->array:[I

    aget v0, v0, p1

    .line 104
    .local v0, "value":I
    iget-object v1, p0, Lio/netty/buffer/IntPriorityQueue;->array:[I

    iget-object v2, p0, Lio/netty/buffer/IntPriorityQueue;->array:[I

    aget v2, v2, p2

    aput v2, v1, p1

    .line 105
    iget-object v1, p0, Lio/netty/buffer/IntPriorityQueue;->array:[I

    aput v0, v1, p2

    .line 106
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 73
    iget v0, p0, Lio/netty/buffer/IntPriorityQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offer(I)V
    .locals 2
    .param p1, "handle"    # I

    .line 30
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 33
    iget v0, p0, Lio/netty/buffer/IntPriorityQueue;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/buffer/IntPriorityQueue;->size:I

    .line 34
    iget v0, p0, Lio/netty/buffer/IntPriorityQueue;->size:I

    iget-object v1, p0, Lio/netty/buffer/IntPriorityQueue;->array:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 36
    iget-object v0, p0, Lio/netty/buffer/IntPriorityQueue;->array:[I

    iget-object v1, p0, Lio/netty/buffer/IntPriorityQueue;->array:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/IntPriorityQueue;->array:[I

    .line 38
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/IntPriorityQueue;->array:[I

    iget v1, p0, Lio/netty/buffer/IntPriorityQueue;->size:I

    aput p1, v0, v1

    .line 39
    iget v0, p0, Lio/netty/buffer/IntPriorityQueue;->size:I

    invoke-direct {p0, v0}, Lio/netty/buffer/IntPriorityQueue;->lift(I)V

    .line 40
    return-void

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The NO_VALUE (-1) cannot be added to the queue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()I
    .locals 2

    .line 54
    iget v0, p0, Lio/netty/buffer/IntPriorityQueue;->size:I

    if-nez v0, :cond_0

    .line 55
    const/4 v0, -0x1

    return v0

    .line 57
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/IntPriorityQueue;->array:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public poll()I
    .locals 5

    .line 61
    iget v0, p0, Lio/netty/buffer/IntPriorityQueue;->size:I

    if-nez v0, :cond_0

    .line 62
    const/4 v0, -0x1

    return v0

    .line 64
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/IntPriorityQueue;->array:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 65
    .local v0, "val":I
    iget-object v2, p0, Lio/netty/buffer/IntPriorityQueue;->array:[I

    iget-object v3, p0, Lio/netty/buffer/IntPriorityQueue;->array:[I

    iget v4, p0, Lio/netty/buffer/IntPriorityQueue;->size:I

    aget v3, v3, v4

    aput v3, v2, v1

    .line 66
    iget-object v2, p0, Lio/netty/buffer/IntPriorityQueue;->array:[I

    iget v3, p0, Lio/netty/buffer/IntPriorityQueue;->size:I

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 67
    iget v2, p0, Lio/netty/buffer/IntPriorityQueue;->size:I

    sub-int/2addr v2, v1

    iput v2, p0, Lio/netty/buffer/IntPriorityQueue;->size:I

    .line 68
    invoke-direct {p0, v1}, Lio/netty/buffer/IntPriorityQueue;->sink(I)V

    .line 69
    return v0
.end method

.method public remove(I)V
    .locals 5
    .param p1, "value"    # I

    .line 43
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lio/netty/buffer/IntPriorityQueue;->size:I

    if-gt v0, v1, :cond_1

    .line 44
    iget-object v1, p0, Lio/netty/buffer/IntPriorityQueue;->array:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 45
    iget-object v1, p0, Lio/netty/buffer/IntPriorityQueue;->array:[I

    iget-object v2, p0, Lio/netty/buffer/IntPriorityQueue;->array:[I

    iget v3, p0, Lio/netty/buffer/IntPriorityQueue;->size:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lio/netty/buffer/IntPriorityQueue;->size:I

    aget v2, v2, v3

    aput v2, v1, v0

    .line 46
    invoke-direct {p0, v0}, Lio/netty/buffer/IntPriorityQueue;->lift(I)V

    .line 47
    invoke-direct {p0, v0}, Lio/netty/buffer/IntPriorityQueue;->sink(I)V

    .line 48
    return-void

    .line 43
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
