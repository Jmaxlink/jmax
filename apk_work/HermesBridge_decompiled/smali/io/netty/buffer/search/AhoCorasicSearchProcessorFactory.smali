.class public Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;
.super Lio/netty/buffer/search/AbstractMultiSearchProcessorFactory;
.source "AhoCorasicSearchProcessorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;,
        Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;
    }
.end annotation


# static fields
.field static final ALPHABET_SIZE:I = 0x100

.field static final BITS_PER_SYMBOL:I = 0x8


# instance fields
.field private final jumpTable:[I

.field private final matchForNeedleId:[I


# direct methods
.method varargs constructor <init>([[B)V
    .locals 4
    .param p1, "needles"    # [[B

    .line 78
    invoke-direct {p0}, Lio/netty/buffer/search/AbstractMultiSearchProcessorFactory;-><init>()V

    .line 80
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 81
    .local v2, "needle":[B
    array-length v3, v2

    if-eqz v3, :cond_0

    .line 80
    .end local v2    # "needle":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .restart local v2    # "needle":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Needle must be non empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    .end local v2    # "needle":[B
    :cond_1
    invoke-static {p1}, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->buildTrie([[B)Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;

    move-result-object v0

    .line 87
    .local v0, "context":Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;
    iget-object v1, v0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;->jumpTable:[I

    iput-object v1, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->jumpTable:[I

    .line 88
    iget-object v1, v0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;->matchForNeedleId:[I

    iput-object v1, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->matchForNeedleId:[I

    .line 90
    invoke-direct {p0}, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->linkSuffixes()V

    .line 92
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->jumpTable:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 93
    iget-object v2, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->matchForNeedleId:[I

    iget-object v3, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->jumpTable:[I

    aget v3, v3, v1

    shr-int/lit8 v3, v3, 0x8

    aget v2, v2, v3

    if-ltz v2, :cond_2

    .line 94
    iget-object v2, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->jumpTable:[I

    iget-object v3, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->jumpTable:[I

    aget v3, v3, v1

    neg-int v3, v3

    aput v3, v2, v1

    .line 92
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private static buildTrie([[B)Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;
    .locals 14
    .param p0, "needles"    # [[B

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .local v0, "jumpTableBuilder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_0

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v2, "matchForBuilder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    const/4 v4, 0x0

    .local v4, "needleId":I
    :goto_1
    array-length v5, p0

    if-ge v4, v5, :cond_4

    .line 110
    aget-object v5, p0, v4

    .line 111
    .local v5, "needle":[B
    const/4 v6, 0x0

    .line 113
    .local v6, "currentPosition":I
    array-length v7, v5

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_3

    aget-byte v9, v5, v8

    .line 115
    .local v9, "ch0":B
    and-int/lit16 v10, v9, 0xff

    .line 116
    .local v10, "ch":I
    add-int v11, v6, v10

    .line 118
    .local v11, "next":I
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v3, :cond_2

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 120
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v1, :cond_1

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 123
    .end local v12    # "i":I
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_2
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 113
    .end local v9    # "ch0":B
    .end local v10    # "ch":I
    .end local v11    # "next":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 129
    :cond_3
    shr-int/lit8 v7, v6, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 109
    .end local v5    # "needle":[B
    .end local v6    # "currentPosition":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 132
    .end local v4    # "needleId":I
    :cond_4
    new-instance v1, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;-><init>(Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$1;)V

    .line 134
    .local v1, "context":Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v1, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;->jumpTable:[I

    .line 135
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 136
    iget-object v4, v1, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;->jumpTable:[I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v3

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 139
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v1, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;->matchForNeedleId:[I

    .line 140
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 141
    iget-object v4, v1, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;->matchForNeedleId:[I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v3

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 144
    .end local v3    # "i":I
    :cond_6
    return-object v1
.end method

.method private linkSuffixes()V
    .locals 14

    .line 149
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 150
    .local v0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v2, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->matchForNeedleId:[I

    array-length v2, v2

    new-array v2, v2, [I

    .line 153
    .local v2, "suffixLinks":[I
    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 155
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 157
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 158
    .local v4, "v":I
    shr-int/lit8 v5, v4, 0x8

    .line 159
    .local v5, "vPosition":I
    aget v6, v2, v5

    if-ne v6, v3, :cond_0

    move v6, v1

    goto :goto_1

    :cond_0
    aget v6, v2, v5

    .line 161
    .local v6, "u":I
    :goto_1
    iget-object v7, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->matchForNeedleId:[I

    aget v7, v7, v5

    if-ne v7, v3, :cond_1

    .line 162
    iget-object v7, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->matchForNeedleId:[I

    iget-object v8, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->matchForNeedleId:[I

    shr-int/lit8 v9, v6, 0x8

    aget v8, v8, v9

    aput v8, v7, v5

    .line 165
    :cond_1
    const/4 v7, 0x0

    .local v7, "ch":I
    :goto_2
    const/16 v8, 0x100

    if-ge v7, v8, :cond_5

    .line 167
    or-int v8, v4, v7

    .line 168
    .local v8, "vIndex":I
    or-int v9, v6, v7

    .line 170
    .local v9, "uIndex":I
    iget-object v10, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->jumpTable:[I

    aget v10, v10, v8

    .line 171
    .local v10, "jumpV":I
    iget-object v11, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->jumpTable:[I

    aget v11, v11, v9

    .line 173
    .local v11, "jumpU":I
    if-eq v10, v3, :cond_3

    .line 174
    shr-int/lit8 v12, v10, 0x8

    if-lez v4, :cond_2

    if-eq v11, v3, :cond_2

    move v13, v11

    goto :goto_3

    :cond_2
    move v13, v1

    :goto_3
    aput v13, v2, v12

    .line 175
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 177
    :cond_3
    iget-object v12, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->jumpTable:[I

    if-eq v11, v3, :cond_4

    move v13, v11

    goto :goto_4

    :cond_4
    move v13, v1

    :goto_4
    aput v13, v12, v8

    .line 165
    .end local v8    # "vIndex":I
    .end local v9    # "uIndex":I
    .end local v10    # "jumpV":I
    .end local v11    # "jumpU":I
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 180
    .end local v4    # "v":I
    .end local v5    # "vPosition":I
    .end local v6    # "u":I
    .end local v7    # "ch":I
    :cond_5
    goto :goto_0

    .line 181
    :cond_6
    return-void
.end method


# virtual methods
.method public newSearchProcessor()Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;
    .locals 3

    .line 188
    new-instance v0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;

    iget-object v1, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->jumpTable:[I

    iget-object v2, p0, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->matchForNeedleId:[I

    invoke-direct {v0, v1, v2}, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;-><init>([I[I)V

    return-object v0
.end method

.method public bridge synthetic newSearchProcessor()Lio/netty/buffer/search/MultiSearchProcessor;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->newSearchProcessor()Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSearchProcessor()Lio/netty/buffer/search/SearchProcessor;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;->newSearchProcessor()Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Processor;

    move-result-object v0

    return-object v0
.end method
