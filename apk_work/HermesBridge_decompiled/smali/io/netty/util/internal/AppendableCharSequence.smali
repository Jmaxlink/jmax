.class public final Lio/netty/util/internal/AppendableCharSequence;
.super Ljava/lang/Object;
.source "AppendableCharSequence.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;


# instance fields
.field private chars:[C

.field private pos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "length"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    .line 29
    return-void
.end method

.method private constructor <init>([C)V
    .locals 1
    .param p1, "chars"    # [C

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "chars"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNonEmpty([CLjava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    .line 33
    array-length v0, p1

    iput v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    .line 34
    return-void
.end method

.method private static expand([CII)[C
    .locals 3
    .param p0, "array"    # [C
    .param p1, "neededSpace"    # I
    .param p2, "size"    # I

    .line 154
    array-length v0, p0

    .line 157
    .local v0, "newCapacity":I
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 159
    if-ltz v0, :cond_1

    .line 163
    if-gt p1, v0, :cond_0

    .line 165
    new-array v1, v0, [C

    .line 166
    .local v1, "newArray":[C
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    return-object v1

    .line 160
    .end local v1    # "newArray":[C
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method


# virtual methods
.method public append(C)Lio/netty/util/internal/AppendableCharSequence;
    .locals 4
    .param p1, "c"    # C

    .line 80
    iget v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    .line 82
    .local v0, "old":[C
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    .line 83
    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    .end local v0    # "old":[C
    :cond_0
    iget-object v0, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    iget v1, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    aput-char p1, v0, v1

    .line 86
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lio/netty/util/internal/AppendableCharSequence;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 91
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lio/netty/util/internal/AppendableCharSequence;->append(Ljava/lang/CharSequence;II)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Lio/netty/util/internal/AppendableCharSequence;
    .locals 5
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 96
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt v0, p3, :cond_3

    .line 100
    sub-int v0, p3, p2

    .line 101
    .local v0, "length":I
    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    array-length v1, v1

    iget v2, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    iget v2, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    add-int/2addr v2, v0

    iget v3, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    invoke-static {v1, v2, v3}, Lio/netty/util/internal/AppendableCharSequence;->expand([CII)[C

    move-result-object v1

    iput-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    .line 104
    :cond_0
    instance-of v1, p1, Lio/netty/util/internal/AppendableCharSequence;

    if-eqz v1, :cond_1

    .line 106
    move-object v1, p1

    check-cast v1, Lio/netty/util/internal/AppendableCharSequence;

    .line 107
    .local v1, "seq":Lio/netty/util/internal/AppendableCharSequence;
    iget-object v2, v1, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    .line 108
    .local v2, "src":[C
    iget-object v3, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    iget v4, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    invoke-static {v2, p2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iget v3, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    add-int/2addr v3, v0

    iput v3, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    .line 110
    return-object p0

    .line 112
    .end local v1    # "seq":Lio/netty/util/internal/AppendableCharSequence;
    .end local v2    # "src":[C
    :cond_1
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 113
    iget-object v2, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    iget v3, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "i":I
    :cond_2
    return-object p0

    .line 97
    .end local v0    # "length":I
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: csq.length() >= ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "),but actual is ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 98
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1}, Lio/netty/util/internal/AppendableCharSequence;->append(C)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1}, Lio/netty/util/internal/AppendableCharSequence;->append(Ljava/lang/CharSequence;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/util/internal/AppendableCharSequence;->append(Ljava/lang/CharSequence;II)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object p1

    return-object p1
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 50
    iget v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    if-gt p1, v0, :cond_0

    .line 53
    iget-object v0, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    aget-char v0, v0, p1

    return v0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public charAtUnsafe(I)C
    .locals 1
    .param p1, "index"    # I

    .line 64
    iget-object v0, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public length()I
    .locals 1

    .line 45
    iget v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    return v0
.end method

.method public reset()V
    .locals 1

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    .line 125
    return-void
.end method

.method public setLength(I)V
    .locals 3
    .param p1, "length"    # I

    .line 37
    if-ltz p1, :cond_0

    iget v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    if-gt p1, v0, :cond_0

    .line 40
    iput p1, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    .line 41
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (length: >= 0, <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subSequence(II)Lio/netty/util/internal/AppendableCharSequence;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 69
    if-ne p1, p2, :cond_0

    .line 73
    new-instance v0, Lio/netty/util/internal/AppendableCharSequence;

    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    array-length v1, v1

    const/16 v2, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/util/internal/AppendableCharSequence;-><init>(I)V

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Lio/netty/util/internal/AppendableCharSequence;

    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/util/internal/AppendableCharSequence;-><init>([C)V

    return-object v0
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/AppendableCharSequence;->subSequence(II)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object p1

    return-object p1
.end method

.method public subStringUnsafe(II)Ljava/lang/String;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 150
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 136
    sub-int v0, p2, p1

    .line 137
    .local v0, "length":I
    iget v1, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    if-gt p1, v1, :cond_0

    iget v1, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    if-gt v0, v1, :cond_0

    .line 141
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    invoke-direct {v1, v2, p1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 138
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected: start and length <= ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 129
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    const/4 v2, 0x0

    iget v3, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
