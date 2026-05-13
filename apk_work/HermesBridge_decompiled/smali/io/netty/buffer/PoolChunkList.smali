.class final Lio/netty/buffer/PoolChunkList;
.super Ljava/lang/Object;
.source "PoolChunkList.java"

# interfaces
.implements Lio/netty/buffer/PoolChunkListMetric;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/buffer/PoolChunkListMetric;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_METRICS:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lio/netty/buffer/PoolChunkMetric;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final arena:Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolArena<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final freeMaxThreshold:I

.field private final freeMinThreshold:I

.field private head:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final maxCapacity:I

.field private final maxUsage:I

.field private final minUsage:I

.field private final nextList:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private prevList:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    nop

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/PoolChunkList;->EMPTY_METRICS:Ljava/util/Iterator;

    return-void
.end method

.method constructor <init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V
    .locals 10
    .param p3, "minUsage"    # I
    .param p4, "maxUsage"    # I
    .param p5, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;",
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;III)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    .local p1, "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    .local p2, "nextList":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-gt p3, p4, :cond_2

    .line 49
    iput-object p1, p0, Lio/netty/buffer/PoolChunkList;->arena:Lio/netty/buffer/PoolArena;

    .line 50
    iput-object p2, p0, Lio/netty/buffer/PoolChunkList;->nextList:Lio/netty/buffer/PoolChunkList;

    .line 51
    iput p3, p0, Lio/netty/buffer/PoolChunkList;->minUsage:I

    .line 52
    iput p4, p0, Lio/netty/buffer/PoolChunkList;->maxUsage:I

    .line 53
    invoke-static {p3, p5}, Lio/netty/buffer/PoolChunkList;->calculateMaxCapacity(II)I

    move-result v0

    iput v0, p0, Lio/netty/buffer/PoolChunkList;->maxCapacity:I

    .line 70
    const/4 v0, 0x0

    const-wide v1, 0x3feffffffaa19c47L    # 0.99999999

    const/16 v3, 0x64

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    if-ne p4, v3, :cond_0

    move v6, v0

    goto :goto_0

    :cond_0
    int-to-double v6, p5

    int-to-double v8, p4

    sub-double v8, v4, v8

    add-double/2addr v8, v1

    mul-double/2addr v6, v8

    div-double/2addr v6, v4

    double-to-int v6, v6

    :goto_0
    iput v6, p0, Lio/netty/buffer/PoolChunkList;->freeMinThreshold:I

    .line 71
    if-ne p3, v3, :cond_1

    goto :goto_1

    :cond_1
    int-to-double v6, p5

    int-to-double v8, p3

    sub-double v8, v4, v8

    add-double/2addr v8, v1

    mul-double/2addr v6, v8

    div-double/2addr v6, v4

    double-to-int v0, v6

    :goto_1
    iput v0, p0, Lio/netty/buffer/PoolChunkList;->freeMaxThreshold:I

    .line 72
    return-void

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static calculateMaxCapacity(II)I
    .locals 6
    .param p0, "minUsage"    # I
    .param p1, "chunkSize"    # I

    .line 79
    invoke-static {p0}, Lio/netty/buffer/PoolChunkList;->minUsage0(I)I

    move-result p0

    .line 81
    const/16 v0, 0x64

    if-ne p0, v0, :cond_0

    .line 83
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_0
    int-to-long v0, p1

    int-to-long v2, p0

    const-wide/16 v4, 0x64

    sub-long v2, v4, v2

    mul-long/2addr v0, v2

    div-long/2addr v0, v4

    long-to-int v0, v0

    return v0
.end method

.method private static minUsage0(I)I
    .locals 1
    .param p0, "value"    # I

    .line 207
    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private move(Lio/netty/buffer/PoolChunk;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;)Z"
        }
    .end annotation

    .line 130
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-virtual {p1}, Lio/netty/buffer/PoolChunk;->usage()I

    move-result v0

    iget v1, p0, Lio/netty/buffer/PoolChunkList;->maxUsage:I

    if-ge v0, v1, :cond_1

    .line 132
    iget v0, p1, Lio/netty/buffer/PoolChunk;->freeBytes:I

    iget v1, p0, Lio/netty/buffer/PoolChunkList;->freeMaxThreshold:I

    if-le v0, v1, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunkList;->move0(Lio/netty/buffer/PoolChunk;)Z

    move-result v0

    return v0

    .line 138
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolChunkList;->add0(Lio/netty/buffer/PoolChunk;)V

    .line 139
    const/4 v0, 0x1

    return v0

    .line 130
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private move0(Lio/netty/buffer/PoolChunk;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;)Z"
        }
    .end annotation

    .line 147
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->prevList:Lio/netty/buffer/PoolChunkList;

    if-nez v0, :cond_1

    .line 150
    invoke-virtual {p1}, Lio/netty/buffer/PoolChunk;->usage()I

    move-result v0

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x0

    return v0

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 153
    :cond_1
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->prevList:Lio/netty/buffer/PoolChunkList;

    invoke-direct {v0, p1}, Lio/netty/buffer/PoolChunkList;->move(Lio/netty/buffer/PoolChunk;)Z

    move-result v0

    return v0
.end method

.method private remove(Lio/netty/buffer/PoolChunk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;)V"
        }
    .end annotation

    .line 182
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    .local p1, "cur":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    if-ne p1, v0, :cond_0

    .line 183
    iget-object v0, p1, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    iput-object v0, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    .line 184
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/netty/buffer/PoolChunk;->prev:Lio/netty/buffer/PoolChunk;

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p1, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    .line 189
    .local v0, "next":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v1, p1, Lio/netty/buffer/PoolChunk;->prev:Lio/netty/buffer/PoolChunk;

    iput-object v0, v1, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    .line 190
    if-eqz v0, :cond_1

    .line 191
    iget-object v1, p1, Lio/netty/buffer/PoolChunk;->prev:Lio/netty/buffer/PoolChunk;

    iput-object v1, v0, Lio/netty/buffer/PoolChunk;->prev:Lio/netty/buffer/PoolChunk;

    .line 194
    .end local v0    # "next":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method add(Lio/netty/buffer/PoolChunk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;)V"
        }
    .end annotation

    .line 157
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget v0, p1, Lio/netty/buffer/PoolChunk;->freeBytes:I

    iget v1, p0, Lio/netty/buffer/PoolChunkList;->freeMinThreshold:I

    if-gt v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->nextList:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, p1}, Lio/netty/buffer/PoolChunkList;->add(Lio/netty/buffer/PoolChunk;)V

    .line 159
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolChunkList;->add0(Lio/netty/buffer/PoolChunk;)V

    .line 162
    return-void
.end method

.method add0(Lio/netty/buffer/PoolChunk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;)V"
        }
    .end annotation

    .line 168
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iput-object p0, p1, Lio/netty/buffer/PoolChunk;->parent:Lio/netty/buffer/PoolChunkList;

    .line 169
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 170
    iput-object p1, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    .line 171
    iput-object v1, p1, Lio/netty/buffer/PoolChunk;->prev:Lio/netty/buffer/PoolChunk;

    .line 172
    iput-object v1, p1, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    goto :goto_0

    .line 174
    :cond_0
    iput-object v1, p1, Lio/netty/buffer/PoolChunk;->prev:Lio/netty/buffer/PoolChunk;

    .line 175
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    iput-object v0, p1, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    .line 176
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    iput-object p1, v0, Lio/netty/buffer/PoolChunk;->prev:Lio/netty/buffer/PoolChunk;

    .line 177
    iput-object p1, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    .line 179
    :goto_0
    return-void
.end method

.method allocate(Lio/netty/buffer/PooledByteBuf;IILio/netty/buffer/PoolThreadCache;)Z
    .locals 4
    .param p2, "reqCapacity"    # I
    .param p3, "sizeIdx"    # I
    .param p4, "threadCache"    # Lio/netty/buffer/PoolThreadCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;II",
            "Lio/netty/buffer/PoolThreadCache;",
            ")Z"
        }
    .end annotation

    .line 100
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v0, p3}, Lio/netty/buffer/PoolArena;->sizeIdx2size(I)I

    move-result v0

    .line 101
    .local v0, "normCapacity":I
    iget v1, p0, Lio/netty/buffer/PoolChunkList;->maxCapacity:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 104
    return v2

    .line 107
    :cond_0
    iget-object v1, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    .local v1, "cur":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    :goto_0
    if-eqz v1, :cond_3

    .line 108
    invoke-virtual {v1, p1, p2, p3, p4}, Lio/netty/buffer/PoolChunk;->allocate(Lio/netty/buffer/PooledByteBuf;IILio/netty/buffer/PoolThreadCache;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    iget v2, v1, Lio/netty/buffer/PoolChunk;->freeBytes:I

    iget v3, p0, Lio/netty/buffer/PoolChunkList;->freeMinThreshold:I

    if-gt v2, v3, :cond_1

    .line 110
    invoke-direct {p0, v1}, Lio/netty/buffer/PoolChunkList;->remove(Lio/netty/buffer/PoolChunk;)V

    .line 111
    iget-object v2, p0, Lio/netty/buffer/PoolChunkList;->nextList:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v2, v1}, Lio/netty/buffer/PoolChunkList;->add(Lio/netty/buffer/PoolChunk;)V

    .line 113
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 107
    :cond_2
    iget-object v1, v1, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    goto :goto_0

    .line 116
    .end local v1    # "cur":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    :cond_3
    return v2
.end method

.method destroy(Lio/netty/buffer/PoolArena;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;)V"
        }
    .end annotation

    .line 255
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    .local p1, "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    .line 256
    .local v0, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p1, v0}, Lio/netty/buffer/PoolArena;->destroyChunk(Lio/netty/buffer/PoolChunk;)V

    .line 258
    iget-object v0, v0, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    goto :goto_0

    .line 260
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    .line 261
    return-void
.end method

.method free(Lio/netty/buffer/PoolChunk;JILjava/nio/ByteBuffer;)Z
    .locals 2
    .param p2, "handle"    # J
    .param p4, "normCapacity"    # I
    .param p5, "nioBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;JI",
            "Ljava/nio/ByteBuffer;",
            ")Z"
        }
    .end annotation

    .line 120
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-virtual {p1, p2, p3, p4, p5}, Lio/netty/buffer/PoolChunk;->free(JILjava/nio/ByteBuffer;)V

    .line 121
    iget v0, p1, Lio/netty/buffer/PoolChunk;->freeBytes:I

    iget v1, p0, Lio/netty/buffer/PoolChunkList;->freeMaxThreshold:I

    if-le v0, v1, :cond_0

    .line 122
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunkList;->remove(Lio/netty/buffer/PoolChunk;)V

    .line 124
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunkList;->move0(Lio/netty/buffer/PoolChunk;)Z

    move-result v0

    return v0

    .line 126
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/buffer/PoolChunkMetric;",
            ">;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v0}, Lio/netty/buffer/PoolArena;->lock()V

    .line 214
    :try_start_0
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    if-nez v0, :cond_0

    .line 215
    sget-object v0, Lio/netty/buffer/PoolChunkList;->EMPTY_METRICS:Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    iget-object v1, p0, Lio/netty/buffer/PoolChunkList;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v1}, Lio/netty/buffer/PoolArena;->unlock()V

    .line 215
    return-object v0

    .line 217
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolChunkMetric;>;"
    iget-object v1, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    .line 219
    .local v1, "cur":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v2, v1, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    move-object v1, v2

    .line 221
    if-nez v1, :cond_1

    .line 222
    nop

    .line 225
    .end local v1    # "cur":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    iget-object v2, p0, Lio/netty/buffer/PoolChunkList;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v2}, Lio/netty/buffer/PoolArena;->unlock()V

    .line 225
    return-object v1

    .line 227
    .end local v0    # "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolChunkMetric;>;"
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/buffer/PoolChunkList;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v1}, Lio/netty/buffer/PoolArena;->unlock()V

    .line 228
    throw v0
.end method

.method public maxUsage()I
    .locals 2

    .line 203
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolChunkList;->maxUsage:I

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public minUsage()I
    .locals 1

    .line 198
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolChunkList;->minUsage:I

    invoke-static {v0}, Lio/netty/buffer/PoolChunkList;->minUsage0(I)I

    move-result v0

    return v0
.end method

.method prevList(Lio/netty/buffer/PoolChunkList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    .local p1, "prevList":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->prevList:Lio/netty/buffer/PoolChunkList;

    if-nez v0, :cond_0

    .line 96
    iput-object p1, p0, Lio/netty/buffer/PoolChunkList;->prevList:Lio/netty/buffer/PoolChunkList;

    .line 97
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 233
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lio/netty/buffer/PoolChunkList;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v1}, Lio/netty/buffer/PoolArena;->lock()V

    .line 236
    :try_start_0
    iget-object v1, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    if-nez v1, :cond_0

    .line 237
    const-string v1, "none"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object v2, p0, Lio/netty/buffer/PoolChunkList;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v2}, Lio/netty/buffer/PoolArena;->unlock()V

    .line 237
    return-object v1

    .line 240
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    .line 241
    .local v1, "cur":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v2, v1, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    .line 243
    if-nez v1, :cond_1

    .line 244
    nop

    .line 249
    .end local v1    # "cur":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v1, p0, Lio/netty/buffer/PoolChunkList;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v1}, Lio/netty/buffer/PoolArena;->unlock()V

    .line 250
    nop

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 246
    .restart local v1    # "cur":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    :cond_1
    :try_start_2
    sget-object v2, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 249
    .end local v1    # "cur":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/netty/buffer/PoolChunkList;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v2}, Lio/netty/buffer/PoolArena;->unlock()V

    .line 250
    throw v1
.end method
