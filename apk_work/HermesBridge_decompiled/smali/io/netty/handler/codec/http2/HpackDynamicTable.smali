.class final Lio/netty/handler/codec/http2/HpackDynamicTable;
.super Ljava/lang/Object;
.source "HpackDynamicTable.java"


# instance fields
.field private capacity:J

.field head:I

.field hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

.field private size:J

.field tail:I


# direct methods
.method constructor <init>(J)V
    .locals 2
    .param p1, "initialCapacity"    # J

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->capacity:J

    .line 50
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/HpackDynamicTable;->setCapacity(J)V

    .line 51
    return-void
.end method


# virtual methods
.method public add(Lio/netty/handler/codec/http2/HpackHeaderField;)V
    .locals 5
    .param p1, "header"    # Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 103
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/HpackHeaderField;->size()I

    move-result v0

    .line 104
    .local v0, "headerSize":I
    int-to-long v1, v0

    iget-wide v3, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->capacity:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->clear()V

    .line 106
    return-void

    .line 108
    :cond_0
    :goto_0
    iget-wide v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->capacity:J

    iget-wide v3, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->size:J

    sub-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 109
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->remove()Lio/netty/handler/codec/http2/HpackHeaderField;

    goto :goto_0

    .line 111
    :cond_1
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    iget v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->head:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->head:I

    aput-object p1, v1, v2

    .line 112
    iget-wide v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->size:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->size:J

    .line 113
    iget v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->head:I

    iget-object v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    array-length v2, v2

    if-ne v1, v2, :cond_2

    .line 114
    const/4 v1, 0x0

    iput v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->head:I

    .line 116
    :cond_2
    return-void
.end method

.method public capacity()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->capacity:J

    return-wide v0
.end method

.method public clear()V
    .locals 4

    .line 138
    nop

    :cond_0
    :goto_0
    iget v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    iget v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->head:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 139
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    iget v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 140
    iget v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 141
    iput v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    goto :goto_0

    .line 144
    :cond_1
    iput v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->head:I

    .line 145
    iput v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    .line 146
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->size:J

    .line 147
    return-void
.end method

.method public getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;
    .locals 3
    .param p1, "index"    # I

    .line 85
    if-lez p1, :cond_1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->length()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 88
    iget v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->head:I

    sub-int/2addr v0, p1

    .line 89
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 90
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    iget-object v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    array-length v2, v2

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    return-object v1

    .line 92
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    aget-object v1, v1, v0

    return-object v1

    .line 86
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of bounds for length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public length()I
    .locals 2

    .line 58
    iget v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->head:I

    iget v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    if-ge v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    array-length v0, v0

    iget v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    sub-int/2addr v0, v1

    iget v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->head:I

    add-int/2addr v0, v1

    .local v0, "length":I
    goto :goto_0

    .line 61
    .end local v0    # "length":I
    :cond_0
    iget v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->head:I

    iget v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    sub-int/2addr v0, v1

    .line 63
    .restart local v0    # "length":I
    :goto_0
    return v0
.end method

.method public remove()Lio/netty/handler/codec/http2/HpackHeaderField;
    .locals 6

    .line 122
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    iget v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    aget-object v0, v0, v1

    .line 123
    .local v0, "removed":Lio/netty/handler/codec/http2/HpackHeaderField;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 124
    return-object v1

    .line 126
    :cond_0
    iget-wide v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->size:J

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackHeaderField;->size()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->size:J

    .line 127
    iget-object v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    iget v3, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    aput-object v1, v2, v3

    .line 128
    iget v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    iget-object v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 129
    const/4 v1, 0x0

    iput v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    .line 131
    :cond_1
    return-object v0
.end method

.method public setCapacity(J)V
    .locals 7
    .param p1, "capacity"    # J

    .line 154
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_7

    const-wide v2, 0xffffffffL

    cmp-long v2, p1, v2

    if-gtz v2, :cond_7

    .line 158
    iget-wide v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->capacity:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 159
    return-void

    .line 161
    :cond_0
    iput-wide p1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->capacity:J

    .line 163
    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 164
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->clear()V

    goto :goto_1

    .line 167
    :cond_1
    :goto_0
    iget-wide v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->size:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_2

    .line 168
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->remove()Lio/netty/handler/codec/http2/HpackHeaderField;

    goto :goto_0

    .line 172
    :cond_2
    :goto_1
    const-wide/16 v2, 0x20

    div-long v4, p1, v2

    long-to-int v4, v4

    .line 173
    .local v4, "maxEntries":I
    rem-long v2, p1, v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_3

    .line 174
    add-int/lit8 v4, v4, 0x1

    .line 178
    :cond_3
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    array-length v0, v0

    if-ne v0, v4, :cond_4

    .line 179
    return-void

    .line 182
    :cond_4
    new-array v0, v4, [Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 185
    .local v0, "tmp":[Lio/netty/handler/codec/http2/HpackHeaderField;
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->length()I

    move-result v1

    .line 186
    .local v1, "len":I
    iget-object v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    if-eqz v2, :cond_6

    .line 187
    iget v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    .line 188
    .local v2, "cursor":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_6

    .line 189
    iget-object v5, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "cursor":I
    .local v6, "cursor":I
    aget-object v2, v5, v2

    .line 190
    .local v2, "entry":Lio/netty/handler/codec/http2/HpackHeaderField;
    aput-object v2, v0, v3

    .line 191
    iget-object v5, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    array-length v5, v5

    if-ne v6, v5, :cond_5

    .line 192
    const/4 v5, 0x0

    move v2, v5

    .end local v6    # "cursor":I
    .local v5, "cursor":I
    goto :goto_3

    .line 191
    .end local v5    # "cursor":I
    .restart local v6    # "cursor":I
    :cond_5
    move v2, v6

    .line 188
    .end local v6    # "cursor":I
    .local v2, "cursor":I
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 197
    .end local v2    # "cursor":I
    .end local v3    # "i":I
    :cond_6
    const/4 v2, 0x0

    iput v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    .line 198
    iget v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    add-int/2addr v2, v1

    iput v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->head:I

    .line 199
    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 200
    return-void

    .line 155
    .end local v0    # "tmp":[Lio/netty/handler/codec/http2/HpackHeaderField;
    .end local v1    # "len":I
    .end local v4    # "maxEntries":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->size:J

    return-wide v0
.end method
