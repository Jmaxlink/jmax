.class final Lio/netty/buffer/PoolSubpage;
.super Ljava/lang/Object;
.source "PoolSubpage.java"

# interfaces
.implements Lio/netty/buffer/PoolSubpageMetric;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/buffer/PoolSubpageMetric;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final bitmap:[J

.field private final bitmapLength:I

.field final chunk:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end field

.field doNotDestroy:Z

.field final elemSize:I

.field final headIndex:I

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final maxNumElems:I

.field next:Lio/netty/buffer/PoolSubpage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation
.end field

.field private nextAvail:I

.field private numAvail:I

.field private final pageShifts:I

.field prev:Lio/netty/buffer/PoolSubpage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final runOffset:I

.field private final runSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 26
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "headIndex"    # I

    .line 51
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    .line 53
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lio/netty/buffer/PoolSubpage;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 54
    const/4 v1, -0x1

    iput v1, p0, Lio/netty/buffer/PoolSubpage;->pageShifts:I

    .line 55
    iput v1, p0, Lio/netty/buffer/PoolSubpage;->runOffset:I

    .line 56
    iput v1, p0, Lio/netty/buffer/PoolSubpage;->elemSize:I

    .line 57
    iput v1, p0, Lio/netty/buffer/PoolSubpage;->runSize:I

    .line 58
    iput-object v0, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    .line 59
    iput v1, p0, Lio/netty/buffer/PoolSubpage;->bitmapLength:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    .line 61
    iput p1, p0, Lio/netty/buffer/PoolSubpage;->headIndex:I

    .line 62
    return-void
.end method

.method constructor <init>(Lio/netty/buffer/PoolSubpage;Lio/netty/buffer/PoolChunk;IIII)V
    .locals 2
    .param p3, "pageShifts"    # I
    .param p4, "runOffset"    # I
    .param p5, "runSize"    # I
    .param p6, "elemSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;IIII)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .local p1, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .local p2, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget v0, p1, Lio/netty/buffer/PoolSubpage;->headIndex:I

    iput v0, p0, Lio/netty/buffer/PoolSubpage;->headIndex:I

    .line 66
    iput-object p2, p0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    .line 67
    iput p3, p0, Lio/netty/buffer/PoolSubpage;->pageShifts:I

    .line 68
    iput p4, p0, Lio/netty/buffer/PoolSubpage;->runOffset:I

    .line 69
    iput p5, p0, Lio/netty/buffer/PoolSubpage;->runSize:I

    .line 70
    iput p6, p0, Lio/netty/buffer/PoolSubpage;->elemSize:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    .line 74
    div-int v0, p5, p6

    iput v0, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    iput v0, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    .line 75
    iget v0, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    ushr-int/lit8 v0, v0, 0x6

    .line 76
    .local v0, "bitmapLength":I
    iget v1, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    and-int/lit8 v1, v1, 0x3f

    if-eqz v1, :cond_0

    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 79
    :cond_0
    iput v0, p0, Lio/netty/buffer/PoolSubpage;->bitmapLength:I

    .line 80
    new-array v1, v0, [J

    iput-object v1, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    .line 81
    const/4 v1, 0x0

    iput v1, p0, Lio/netty/buffer/PoolSubpage;->nextAvail:I

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/buffer/PoolSubpage;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 84
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolSubpage;->addToPool(Lio/netty/buffer/PoolSubpage;)V

    .line 85
    return-void
.end method

.method private addToPool(Lio/netty/buffer/PoolSubpage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;)V"
        }
    .end annotation

    .line 154
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .local p1, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    if-nez v0, :cond_0

    .line 155
    iput-object p1, p0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    .line 156
    iget-object v0, p1, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    iput-object v0, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 157
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    iput-object p0, v0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    .line 158
    iput-object p0, p1, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 159
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private findNextAvail()I
    .locals 8

    .line 183
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lio/netty/buffer/PoolSubpage;->bitmapLength:I

    if-ge v0, v1, :cond_1

    .line 184
    iget-object v1, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    aget-wide v2, v1, v0

    .line 185
    .local v2, "bits":J
    not-long v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 186
    invoke-direct {p0, v0, v2, v3}, Lio/netty/buffer/PoolSubpage;->findNextAvail0(IJ)I

    move-result v1

    return v1

    .line 183
    .end local v2    # "bits":J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private findNextAvail0(IJ)I
    .locals 6
    .param p1, "i"    # I
    .param p2, "bits"    # J

    .line 193
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    shl-int/lit8 v0, p1, 0x6

    .line 194
    .local v0, "baseVal":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 195
    const-wide/16 v2, 0x1

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 196
    or-int v2, v0, v1

    .line 197
    .local v2, "val":I
    iget v3, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    if-ge v2, v3, :cond_1

    .line 198
    return v2

    .line 203
    .end local v2    # "val":I
    :cond_0
    const/4 v2, 0x1

    ushr-long/2addr p2, v2

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v1    # "j":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getNextAvail()I
    .locals 2

    .line 174
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolSubpage;->nextAvail:I

    .line 175
    .local v0, "nextAvail":I
    if-ltz v0, :cond_0

    .line 176
    const/4 v1, -0x1

    iput v1, p0, Lio/netty/buffer/PoolSubpage;->nextAvail:I

    .line 177
    return v0

    .line 179
    :cond_0
    invoke-direct {p0}, Lio/netty/buffer/PoolSubpage;->findNextAvail()I

    move-result v1

    return v1
.end method

.method private removeFromPool()V
    .locals 2

    .line 162
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    iget-object v1, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    iput-object v1, v0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 164
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    iget-object v1, p0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    iput-object v1, v0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 166
    iput-object v0, p0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    .line 167
    return-void

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private setNextAvail(I)V
    .locals 0
    .param p1, "bitmapIdx"    # I

    .line 170
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iput p1, p0, Lio/netty/buffer/PoolSubpage;->nextAvail:I

    .line 171
    return-void
.end method

.method private toHandle(I)J
    .locals 6
    .param p1, "bitmapIdx"    # I

    .line 209
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolSubpage;->runSize:I

    iget v1, p0, Lio/netty/buffer/PoolSubpage;->pageShifts:I

    shr-int/2addr v0, v1

    .line 210
    .local v0, "pages":I
    iget v1, p0, Lio/netty/buffer/PoolSubpage;->runOffset:I

    int-to-long v1, v1

    const/16 v3, 0x31

    shl-long/2addr v1, v3

    int-to-long v3, v0

    const/16 v5, 0x22

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const-wide v3, 0x200000000L

    or-long/2addr v1, v3

    const-wide v3, 0x100000000L

    or-long/2addr v1, v3

    int-to-long v3, p1

    or-long/2addr v1, v3

    return-wide v1
.end method


# virtual methods
.method allocate()J
    .locals 9

    .line 91
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-direct {p0}, Lio/netty/buffer/PoolSubpage;->getNextAvail()I

    move-result v0

    .line 96
    .local v0, "bitmapIdx":I
    if-ltz v0, :cond_3

    .line 102
    ushr-int/lit8 v1, v0, 0x6

    .line 103
    .local v1, "q":I
    and-int/lit8 v2, v0, 0x3f

    .line 104
    .local v2, "r":I
    iget-object v3, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    aget-wide v4, v3, v1

    ushr-long v3, v4, v2

    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-nez v3, :cond_2

    .line 105
    iget-object v3, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    aget-wide v7, v3, v1

    shl-long v4, v5, v2

    or-long/2addr v4, v7

    aput-wide v4, v3, v1

    .line 107
    iget v3, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    if-nez v3, :cond_1

    .line 108
    invoke-direct {p0}, Lio/netty/buffer/PoolSubpage;->removeFromPool()V

    .line 111
    :cond_1
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolSubpage;->toHandle(I)J

    move-result-wide v3

    return-wide v3

    .line 104
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 97
    .end local v1    # "q":I
    .end local v2    # "r":I
    :cond_3
    invoke-direct {p0}, Lio/netty/buffer/PoolSubpage;->removeFromPool()V

    .line 98
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No next available bitmap index found (bitmapIdx = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), even though there are supposed to be (numAvail = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") out of (maxNumElems = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") available indexes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 92
    .end local v0    # "bitmapIdx":I
    :cond_4
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method destroy()V
    .locals 1

    .line 288
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    invoke-virtual {v0}, Lio/netty/buffer/PoolChunk;->destroy()V

    .line 291
    :cond_0
    return-void
.end method

.method public elementSize()I
    .locals 1

    .line 265
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolSubpage;->elemSize:I

    return v0
.end method

.method free(Lio/netty/buffer/PoolSubpage;I)Z
    .locals 8
    .param p2, "bitmapIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;I)Z"
        }
    .end annotation

    .line 119
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .local p1, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    ushr-int/lit8 v0, p2, 0x6

    .line 120
    .local v0, "q":I
    and-int/lit8 v1, p2, 0x3f

    .line 121
    .local v1, "r":I
    iget-object v2, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    aget-wide v3, v2, v0

    ushr-long v2, v3, v1

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    .line 122
    iget-object v2, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    aget-wide v6, v2, v0

    shl-long v3, v4, v1

    xor-long/2addr v3, v6

    aput-wide v3, v2, v0

    .line 124
    invoke-direct {p0, p2}, Lio/netty/buffer/PoolSubpage;->setNextAvail(I)V

    .line 126
    iget v2, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 127
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolSubpage;->addToPool(Lio/netty/buffer/PoolSubpage;)V

    .line 132
    iget v2, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    if-le v2, v3, :cond_0

    .line 133
    return v3

    .line 137
    :cond_0
    iget v2, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    iget v4, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    if-eq v2, v4, :cond_1

    .line 138
    return v3

    .line 141
    :cond_1
    iget-object v2, p0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    iget-object v4, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    if-ne v2, v4, :cond_2

    .line 143
    return v3

    .line 147
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    .line 148
    invoke-direct {p0}, Lio/netty/buffer/PoolSubpage;->removeFromPool()V

    .line 149
    return v2

    .line 121
    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method isDoNotDestroy()Z
    .locals 2

    .line 274
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    if-nez v0, :cond_0

    .line 276
    const/4 v0, 0x1

    return v0

    .line 278
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v0, v0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v0, v0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    iget v1, p0, Lio/netty/buffer/PoolSubpage;->headIndex:I

    aget-object v0, v0, v1

    .line 279
    .local v0, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    invoke-virtual {v0}, Lio/netty/buffer/PoolSubpage;->lock()V

    .line 281
    :try_start_0
    iget-boolean v1, p0, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-virtual {v0}, Lio/netty/buffer/PoolSubpage;->unlock()V

    .line 281
    return v1

    .line 283
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/netty/buffer/PoolSubpage;->unlock()V

    .line 284
    throw v1
.end method

.method lock()V
    .locals 1

    .line 294
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 295
    return-void
.end method

.method public maxNumElements()I
    .locals 1

    .line 245
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    return v0
.end method

.method public numAvailable()I
    .locals 2

    .line 250
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x0

    return v0

    .line 254
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v0, v0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v0, v0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    iget v1, p0, Lio/netty/buffer/PoolSubpage;->headIndex:I

    aget-object v0, v0, v1

    .line 255
    .local v0, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    invoke-virtual {v0}, Lio/netty/buffer/PoolSubpage;->lock()V

    .line 257
    :try_start_0
    iget v1, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    invoke-virtual {v0}, Lio/netty/buffer/PoolSubpage;->unlock()V

    .line 257
    return v1

    .line 259
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/netty/buffer/PoolSubpage;->unlock()V

    .line 260
    throw v1
.end method

.method public pageSize()I
    .locals 2

    .line 270
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    const/4 v0, 0x1

    iget v1, p0, Lio/netty/buffer/PoolSubpage;->pageShifts:I

    shl-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 220
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    const-string v1, "("

    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x0

    .local v0, "numAvail":I
    goto :goto_0

    .line 225
    .end local v0    # "numAvail":I
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v0, v0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v0, v0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    iget v2, p0, Lio/netty/buffer/PoolSubpage;->headIndex:I

    aget-object v0, v0, v2

    .line 226
    .local v0, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    invoke-virtual {v0}, Lio/netty/buffer/PoolSubpage;->lock()V

    .line 228
    :try_start_0
    iget-boolean v2, p0, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    .line 229
    .local v2, "doNotDestroy":Z
    iget v3, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    .local v3, "numAvail":I
    invoke-virtual {v0}, Lio/netty/buffer/PoolSubpage;->unlock()V

    .line 232
    nop

    .line 233
    if-nez v2, :cond_1

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lio/netty/buffer/PoolSubpage;->runOffset:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": not in use)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 233
    :cond_1
    move v0, v3

    .line 239
    .end local v2    # "doNotDestroy":Z
    .end local v3    # "numAvail":I
    .local v0, "numAvail":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/buffer/PoolSubpage;->runOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/buffer/PoolSubpage;->runOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/buffer/PoolSubpage;->runSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", elemSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/buffer/PoolSubpage;->elemSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 231
    .local v0, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/netty/buffer/PoolSubpage;->unlock()V

    .line 232
    throw v1
.end method

.method unlock()V
    .locals 1

    .line 298
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 299
    return-void
.end method
