.class public final Lio/ktor/http/cio/internals/CharArrayBuilder;
.super Ljava/lang/Object;
.source "CharArrayBuilder.kt"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCharArrayBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharArrayBuilder.kt\nio/ktor/http/cio/internals/CharArrayBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,225:1\n1#2:226\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0019\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0001\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003:\u00013B\u0015\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0014\u0010\u0017\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0016\u0010\u0017\u001a\u00060\u0002j\u0002`\u00032\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u0016J&\u0010\u0017\u001a\u00060\u0002j\u0002`\u00032\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0008\u0010\u001c\u001a\u00020\u0006H\u0002J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u000cH\u0002J\u0018\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u000cH\u0002J\u0008\u0010 \u001a\u00020\u000cH\u0002J\u0013\u0010!\u001a\u00020\u00132\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0096\u0002J\u0011\u0010$\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u000cH\u0096\u0002J\u0010\u0010%\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u000cH\u0002J\u0008\u0010&\u001a\u00020\u000cH\u0016J\u0018\u0010\'\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000cH\u0002J\u0008\u0010*\u001a\u00020\u0006H\u0002J(\u0010+\u001a\u00020\u00132\u0006\u0010(\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0006\u0010-\u001a\u00020.J\u0018\u0010/\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u00100\u001a\u0002012\u0006\u0010\u001e\u001a\u00020\u000cH\u0002J\u0008\u00102\u001a\u00020\u0016H\u0016R\u0016\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lio/ktor/http/cio/internals/CharArrayBuilder;",
        "",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "pool",
        "Lio/ktor/utils/io/pool/ObjectPool;",
        "",
        "(Lio/ktor/utils/io/pool/ObjectPool;)V",
        "buffers",
        "",
        "current",
        "<set-?>",
        "",
        "length",
        "getLength",
        "()I",
        "getPool",
        "()Lio/ktor/utils/io/pool/ObjectPool;",
        "released",
        "",
        "remaining",
        "stringified",
        "",
        "append",
        "value",
        "",
        "startIndex",
        "endIndex",
        "appendNewArray",
        "bufferForIndex",
        "index",
        "copy",
        "currentPosition",
        "equals",
        "other",
        "",
        "get",
        "getImpl",
        "hashCode",
        "hashCodeImpl",
        "start",
        "end",
        "nonFullBuffer",
        "rangeEqualsImpl",
        "otherStart",
        "release",
        "",
        "subSequence",
        "throwSingleBuffer",
        "",
        "toString",
        "SubSequenceImpl",
        "ktor-http-cio"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private buffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[C>;"
        }
    .end annotation
.end field

.field private current:[C

.field private length:I

.field private final pool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "[C>;"
        }
    .end annotation
.end field

.field private released:Z

.field private remaining:I

.field private stringified:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lio/ktor/http/cio/internals/CharArrayBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/utils/io/pool/ObjectPool;)V
    .locals 1
    .param p1, "pool"    # Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "[C>;)V"
        }
    .end annotation

    const-string v0, "pool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 10
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 11
    invoke-static {}, Lio/ktor/http/cio/internals/CharArrayPoolKt;->getCharArrayPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p1

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/http/cio/internals/CharArrayBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 224
    return-void
.end method

.method public static final synthetic access$copy(Lio/ktor/http/cio/internals/CharArrayBuilder;II)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "$this"    # Lio/ktor/http/cio/internals/CharArrayBuilder;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 10
    invoke-direct {p0, p1, p2}, Lio/ktor/http/cio/internals/CharArrayBuilder;->copy(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getImpl(Lio/ktor/http/cio/internals/CharArrayBuilder;I)C
    .locals 1
    .param p0, "$this"    # Lio/ktor/http/cio/internals/CharArrayBuilder;
    .param p1, "index"    # I

    .line 10
    invoke-direct {p0, p1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->getImpl(I)C

    move-result v0

    return v0
.end method

.method public static final synthetic access$hashCodeImpl(Lio/ktor/http/cio/internals/CharArrayBuilder;II)I
    .locals 1
    .param p0, "$this"    # Lio/ktor/http/cio/internals/CharArrayBuilder;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 10
    invoke-direct {p0, p1, p2}, Lio/ktor/http/cio/internals/CharArrayBuilder;->hashCodeImpl(II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$rangeEqualsImpl(Lio/ktor/http/cio/internals/CharArrayBuilder;ILjava/lang/CharSequence;II)Z
    .locals 1
    .param p0, "$this"    # Lio/ktor/http/cio/internals/CharArrayBuilder;
    .param p1, "start"    # I
    .param p2, "other"    # Ljava/lang/CharSequence;
    .param p3, "otherStart"    # I
    .param p4, "length"    # I

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/http/cio/internals/CharArrayBuilder;->rangeEqualsImpl(ILjava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method private final appendNewArray()[C
    .locals 6

    .line 187
    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v0}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 188
    .local v0, "newBuffer":[C
    iget-object v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    .line 189
    .local v1, "existing":[C
    iput-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    .line 190
    array-length v2, v0

    iput v2, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->remaining:I

    .line 192
    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->released:Z

    .line 194
    if-eqz v1, :cond_1

    .line 195
    iget-object v2, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->buffers:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v2

    .local v3, "it":Ljava/util/ArrayList;
    const/4 v4, 0x0

    .line 196
    .local v4, "$i$a$-also-CharArrayBuilder$appendNewArray$list$1":I
    move-object v5, v3

    check-cast v5, Ljava/util/List;

    iput-object v5, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->buffers:Ljava/util/List;

    .line 197
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    nop

    .line 195
    .end local v3    # "it":Ljava/util/ArrayList;
    .end local v4    # "$i$a$-also-CharArrayBuilder$appendNewArray$list$1":I
    check-cast v2, Ljava/util/List;

    .line 200
    .local v2, "list":Ljava/util/List;
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v2    # "list":Ljava/util/List;
    :cond_1
    return-object v0
.end method

.method private final bufferForIndex(I)[C
    .locals 2
    .param p1, "index"    # I

    .line 167
    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->buffers:Ljava/util/List;

    .line 169
    .local v0, "list":Ljava/util/List;
    if-nez v0, :cond_2

    .line 170
    const/16 v1, 0x800

    if-ge p1, v1, :cond_1

    .line 171
    iget-object v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->throwSingleBuffer(I)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    .line 170
    :cond_1
    invoke-direct {p0, p1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->throwSingleBuffer(I)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    .line 174
    :cond_2
    iget-object v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, v1

    div-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    return-object v1
.end method

.method private final copy(II)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 107
    if-ne p1, p2, :cond_0

    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 113
    .local v1, "buffer":[C
    rem-int/lit16 v2, p1, 0x800

    sub-int v2, p1, v2

    .line 115
    .local v2, "base":I
    :goto_0
    if-ge v2, p2, :cond_2

    .line 116
    invoke-direct {p0, v2}, Lio/ktor/http/cio/internals/CharArrayBuilder;->bufferForIndex(I)[C

    move-result-object v1

    .line 117
    const/4 v3, 0x0

    sub-int v4, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 118
    .local v3, "innerStartIndex":I
    sub-int v4, p2, v2

    const/16 v5, 0x800

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 120
    .local v4, "innerEndIndex":I
    move v5, v3

    .local v5, "innerIndex":I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 121
    aget-char v6, v1, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 124
    .end local v5    # "innerIndex":I
    :cond_1
    add-int/lit16 v2, v2, 0x800

    .end local v3    # "innerStartIndex":I
    .end local v4    # "innerEndIndex":I
    goto :goto_0

    .line 127
    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    return-object v3
.end method

.method private final currentPosition()I
    .locals 2

    .line 223
    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, v0

    iget v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->remaining:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private final getImpl(I)C
    .locals 2
    .param p1, "index"    # I

    .line 30
    invoke-direct {p0, p1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->bufferForIndex(I)[C

    move-result-object v0

    iget-object v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, v1

    rem-int v1, p1, v1

    aget-char v0, v0, v1

    return v0
.end method

.method private final hashCodeImpl(II)I
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "hc":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 217
    mul-int/lit8 v2, v0, 0x1f

    invoke-direct {p0, v1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->getImpl(I)C

    move-result v3

    add-int v0, v2, v3

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private final nonFullBuffer()[C
    .locals 1

    .line 183
    iget v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->remaining:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->appendNewArray()[C

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method private final rangeEqualsImpl(ILjava/lang/CharSequence;II)Z
    .locals 3
    .param p1, "start"    # I
    .param p2, "other"    # Ljava/lang/CharSequence;
    .param p3, "otherStart"    # I
    .param p4, "length"    # I

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 208
    add-int v1, p1, v0

    invoke-direct {p0, v1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->getImpl(I)C

    move-result v1

    add-int v2, p3, v0

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    return v1

    .line 207
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final throwSingleBuffer(I)Ljava/lang/Void;
    .locals 3
    .param p1, "index"    # I

    .line 178
    iget-boolean v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->released:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Buffer is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in range [0; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->currentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 3
    .param p1, "value"    # C

    .line 52
    invoke-direct {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->nonFullBuffer()[C

    move-result-object v0

    iget-object v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, v1

    iget v2, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->remaining:I

    sub-int/2addr v1, v2

    aput-char p1, v0, v1

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->stringified:Ljava/lang/String;

    .line 54
    iget v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->remaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->remaining:I

    .line 55
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->length:I

    .line 56
    move-object v0, p0

    check-cast v0, Ljava/lang/Appendable;

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 2
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 82
    if-nez p1, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/Appendable;

    return-object v0

    .line 83
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 7
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 60
    if-nez p1, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/Appendable;

    return-object v0

    .line 62
    :cond_0
    move v0, p2

    .line 63
    .local v0, "current":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 64
    invoke-direct {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->nonFullBuffer()[C

    move-result-object v1

    .line 65
    .local v1, "buffer":[C
    array-length v2, v1

    iget v3, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->remaining:I

    sub-int/2addr v2, v3

    .line 66
    .local v2, "offset":I
    sub-int v3, p3, v0

    iget v4, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->remaining:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 68
    .local v3, "bytesToCopy":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 69
    add-int v5, v2, v4

    add-int v6, v0, v4

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    aput-char v6, v1, v5

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 72
    .end local v4    # "i":I
    :cond_1
    add-int/2addr v0, v3

    .line 73
    iget v4, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->remaining:I

    sub-int/2addr v4, v3

    iput v4, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->remaining:I

    .end local v1    # "buffer":[C
    .end local v2    # "offset":I
    .end local v3    # "bytesToCopy":I
    goto :goto_0

    .line 76
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->stringified:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result v1

    sub-int v2, p3, p2

    add-int/2addr v1, v2

    iput v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->length:I

    .line 78
    move-object v1, p0

    check-cast v1, Ljava/lang/Appendable;

    return-object v1
.end method

.method public final bridge charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 10
    invoke-virtual {p0, p1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->get(I)C

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 43
    instance-of v0, p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 44
    :cond_0
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result v0

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 46
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result v2

    invoke-direct {p0, v1, v0, v1, v2}, Lio/ktor/http/cio/internals/CharArrayBuilder;->rangeEqualsImpl(ILjava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method public get(I)C
    .locals 3
    .param p1, "index"    # I

    .line 24
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 25
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 27
    invoke-direct {p0, p1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->getImpl(I)C

    move-result v0

    return v0

    .line 226
    :cond_2
    const/4 v0, 0x0

    .line 25
    .local v0, "$i$a$-require-CharArrayBuilder$get$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in range [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-CharArrayBuilder$get$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_3
    const/4 v0, 0x0

    .line 24
    .local v0, "$i$a$-require-CharArrayBuilder$get$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-CharArrayBuilder$get$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLength()I
    .locals 1

    .line 20
    iget v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->length:I

    return v0
.end method

.method public final getPool()Lio/ktor/utils/io/pool/ObjectPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "[C>;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 49
    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->stringified:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->hashCodeImpl(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final bridge length()I
    .locals 1

    .line 10
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->getLength()I

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 6

    .line 87
    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->buffers:Ljava/util/List;

    .line 89
    .local v0, "list":Ljava/util/List;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 90
    iput-object v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    .line 91
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 92
    iget-object v4, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    if-eqz v2, :cond_1

    .line 226
    .local v2, "it":[C
    const/4 v3, 0x0

    .line 95
    .local v3, "$i$a$-let-CharArrayBuilder$release$1":I
    iget-object v4, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v4, v2}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 96
    .end local v2    # "it":[C
    .end local v3    # "$i$a$-let-CharArrayBuilder$release$1":I
    :cond_1
    iput-object v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->current:[C

    .line 99
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->released:Z

    .line 100
    iput-object v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->buffers:Ljava/util/List;

    .line 101
    iput-object v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->stringified:Ljava/lang/String;

    .line 102
    const/4 v1, 0x0

    iput v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->length:I

    .line 103
    iput v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->remaining:I

    .line 104
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 33
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p1, p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/16 v3, 0x29

    if-eqz v2, :cond_5

    .line 34
    if-ltz p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    .line 35
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result v2

    if-gt p2, v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    .line 37
    new-instance v0, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;

    invoke-direct {v0, p0, p1, p2}, Lio/ktor/http/cio/internals/CharArrayBuilder$SubSequenceImpl;-><init>(Lio/ktor/http/cio/internals/CharArrayBuilder;II)V

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0

    .line 226
    :cond_3
    const/4 v0, 0x0

    .line 35
    .local v0, "$i$a$-require-CharArrayBuilder$subSequence$3":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is greater than length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-CharArrayBuilder$subSequence$3":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_4
    const/4 v0, 0x0

    .line 34
    .local v0, "$i$a$-require-CharArrayBuilder$subSequence$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startIndex is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-CharArrayBuilder$subSequence$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_5
    const/4 v0, 0x0

    .line 33
    .local v0, "$i$a$-require-CharArrayBuilder$subSequence$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startIndex ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") should be less or equal to endIndex ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-CharArrayBuilder$subSequence$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 40
    iget-object v0, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->stringified:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lio/ktor/http/cio/internals/CharArrayBuilder;->copy(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 226
    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 40
    .local v2, "$i$a$-also-CharArrayBuilder$toString$1":I
    iput-object v1, p0, Lio/ktor/http/cio/internals/CharArrayBuilder;->stringified:Ljava/lang/String;

    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-also-CharArrayBuilder$toString$1":I
    :cond_0
    return-object v0
.end method
