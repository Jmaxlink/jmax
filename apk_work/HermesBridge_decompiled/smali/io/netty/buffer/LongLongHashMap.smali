.class final Lio/netty/buffer/LongLongHashMap;
.super Ljava/lang/Object;
.source "LongLongHashMap.java"


# static fields
.field private static final MASK_TEMPLATE:I = -0x2


# instance fields
.field private array:[J

.field private final emptyVal:J

.field private mask:I

.field private maxProbe:I

.field private zeroVal:J


# direct methods
.method constructor <init>(J)V
    .locals 2
    .param p1, "emptyVal"    # J

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lio/netty/buffer/LongLongHashMap;->emptyVal:J

    .line 32
    iput-wide p1, p0, Lio/netty/buffer/LongLongHashMap;->zeroVal:J

    .line 33
    const/16 v0, 0x20

    .line 34
    .local v0, "initialSize":I
    new-array v1, v0, [J

    iput-object v1, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    .line 35
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/netty/buffer/LongLongHashMap;->mask:I

    .line 36
    invoke-direct {p0}, Lio/netty/buffer/LongLongHashMap;->computeMaskAndProbe()V

    .line 37
    return-void
.end method

.method private computeMaskAndProbe()V
    .locals 3

    .line 125
    iget-object v0, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    array-length v0, v0

    .line 126
    .local v0, "length":I
    add-int/lit8 v1, v0, -0x1

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/netty/buffer/LongLongHashMap;->mask:I

    .line 127
    int-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lio/netty/buffer/LongLongHashMap;->maxProbe:I

    .line 128
    return-void
.end method

.method private expand()V
    .locals 6

    .line 112
    iget-object v0, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    .line 113
    .local v0, "prev":[J
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [J

    iput-object v1, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    .line 114
    invoke-direct {p0}, Lio/netty/buffer/LongLongHashMap;->computeMaskAndProbe()V

    .line 115
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 116
    aget-wide v2, v0, v1

    .line 117
    .local v2, "key":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 118
    add-int/lit8 v4, v1, 0x1

    aget-wide v4, v0, v4

    .line 119
    .local v4, "val":J
    invoke-virtual {p0, v2, v3, v4, v5}, Lio/netty/buffer/LongLongHashMap;->put(JJ)J

    .line 115
    .end local v2    # "key":J
    .end local v4    # "val":J
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 122
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private index(J)I
    .locals 3
    .param p1, "key"    # J

    .line 103
    const/16 v0, 0x21

    ushr-long v1, p1, v0

    xor-long/2addr p1, v1

    .line 104
    const-wide v1, -0xae502812aa7333L

    mul-long/2addr p1, v1

    .line 105
    ushr-long v1, p1, v0

    xor-long/2addr p1, v1

    .line 106
    const-wide v1, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr p1, v1

    .line 107
    ushr-long v0, p1, v0

    xor-long/2addr p1, v0

    .line 108
    long-to-int v0, p1

    iget v1, p0, Lio/netty/buffer/LongLongHashMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public get(J)J
    .locals 7
    .param p1, "key"    # J

    .line 87
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 88
    iget-wide v0, p0, Lio/netty/buffer/LongLongHashMap;->zeroVal:J

    return-wide v0

    .line 90
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/LongLongHashMap;->index(J)I

    move-result v0

    .line 91
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lio/netty/buffer/LongLongHashMap;->maxProbe:I

    if-ge v1, v2, :cond_2

    .line 92
    iget-object v2, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    aget-wide v3, v2, v0

    .line 93
    .local v3, "existing":J
    cmp-long v2, v3, p1

    if-nez v2, :cond_1

    .line 94
    iget-object v2, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    add-int/lit8 v5, v0, 0x1

    aget-wide v5, v2, v5

    return-wide v5

    .line 96
    :cond_1
    add-int/lit8 v2, v0, 0x2

    iget v5, p0, Lio/netty/buffer/LongLongHashMap;->mask:I

    and-int v0, v2, v5

    .line 91
    .end local v3    # "existing":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_2
    iget-wide v1, p0, Lio/netty/buffer/LongLongHashMap;->emptyVal:J

    return-wide v1
.end method

.method public put(JJ)J
    .locals 11
    .param p1, "key"    # J
    .param p3, "value"    # J

    .line 40
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 41
    iget-wide v0, p0, Lio/netty/buffer/LongLongHashMap;->zeroVal:J

    .line 42
    .local v0, "prev":J
    iput-wide p3, p0, Lio/netty/buffer/LongLongHashMap;->zeroVal:J

    .line 43
    return-wide v0

    .line 47
    .end local v0    # "prev":J
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/LongLongHashMap;->index(J)I

    move-result v2

    .line 48
    .local v2, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Lio/netty/buffer/LongLongHashMap;->maxProbe:I

    if-ge v3, v4, :cond_6

    .line 49
    iget-object v4, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    aget-wide v5, v4, v2

    .line 50
    .local v5, "existing":J
    cmp-long v4, v5, p1

    if-eqz v4, :cond_2

    cmp-long v4, v5, v0

    if-nez v4, :cond_1

    goto :goto_2

    .line 64
    :cond_1
    add-int/lit8 v4, v2, 0x2

    iget v7, p0, Lio/netty/buffer/LongLongHashMap;->mask:I

    and-int v2, v4, v7

    .line 48
    .end local v5    # "existing":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 51
    .restart local v5    # "existing":J
    :cond_2
    :goto_2
    cmp-long v4, v5, v0

    if-nez v4, :cond_3

    iget-wide v7, p0, Lio/netty/buffer/LongLongHashMap;->emptyVal:J

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    add-int/lit8 v7, v2, 0x1

    aget-wide v7, v4, v7

    .line 52
    .local v7, "prev":J
    :goto_3
    iget-object v4, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    aput-wide p1, v4, v2

    .line 53
    iget-object v4, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    add-int/lit8 v9, v2, 0x1

    aput-wide p3, v4, v9

    .line 54
    :goto_4
    iget v4, p0, Lio/netty/buffer/LongLongHashMap;->maxProbe:I

    if-ge v3, v4, :cond_5

    .line 55
    add-int/lit8 v4, v2, 0x2

    iget v9, p0, Lio/netty/buffer/LongLongHashMap;->mask:I

    and-int v2, v4, v9

    .line 56
    iget-object v4, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    aget-wide v9, v4, v2

    cmp-long v4, v9, p1

    if-nez v4, :cond_4

    .line 57
    iget-object v4, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    aput-wide v0, v4, v2

    .line 58
    iget-object v0, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    add-int/lit8 v1, v2, 0x1

    aget-wide v7, v0, v1

    .line 59
    goto :goto_5

    .line 54
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 62
    :cond_5
    :goto_5
    return-wide v7

    .line 66
    .end local v3    # "i":I
    .end local v5    # "existing":J
    .end local v7    # "prev":J
    :cond_6
    invoke-direct {p0}, Lio/netty/buffer/LongLongHashMap;->expand()V

    .line 67
    .end local v2    # "index":I
    goto :goto_0
.end method

.method public remove(J)V
    .locals 8
    .param p1, "key"    # J

    .line 71
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 72
    iget-wide v0, p0, Lio/netty/buffer/LongLongHashMap;->emptyVal:J

    iput-wide v0, p0, Lio/netty/buffer/LongLongHashMap;->zeroVal:J

    .line 73
    return-void

    .line 75
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/LongLongHashMap;->index(J)I

    move-result v2

    .line 76
    .local v2, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lio/netty/buffer/LongLongHashMap;->maxProbe:I

    if-ge v3, v4, :cond_2

    .line 77
    iget-object v4, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    aget-wide v5, v4, v2

    .line 78
    .local v5, "existing":J
    cmp-long v4, v5, p1

    if-nez v4, :cond_1

    .line 79
    iget-object v4, p0, Lio/netty/buffer/LongLongHashMap;->array:[J

    aput-wide v0, v4, v2

    .line 80
    goto :goto_1

    .line 82
    :cond_1
    add-int/lit8 v4, v2, 0x2

    iget v7, p0, Lio/netty/buffer/LongLongHashMap;->mask:I

    and-int v2, v4, v7

    .line 76
    .end local v5    # "existing":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    .end local v3    # "i":I
    :cond_2
    :goto_1
    return-void
.end method
