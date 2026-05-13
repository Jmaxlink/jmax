.class public final Lio/ktor/http/cio/HttpHeadersMap;
.super Ljava/lang/Object;
.source "HttpHeadersMap.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpHeadersMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpHeadersMap.kt\nio/ktor/http/cio/HttpHeadersMap\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,149:1\n1#2:150\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0008J\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\r\u001a\u00020\u000eH\u0086\u0002J\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00132\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0008J6\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u0008J\u0006\u0010\u001e\u001a\u00020\u0017J\u0008\u0010\u001f\u001a\u00020\u000eH\u0016J\u000e\u0010 \u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006!"
    }
    d2 = {
        "Lio/ktor/http/cio/HttpHeadersMap;",
        "",
        "builder",
        "Lio/ktor/http/cio/internals/CharArrayBuilder;",
        "(Lio/ktor/http/cio/internals/CharArrayBuilder;)V",
        "indexes",
        "",
        "<set-?>",
        "",
        "size",
        "getSize",
        "()I",
        "find",
        "name",
        "",
        "fromIndex",
        "get",
        "",
        "getAll",
        "Lkotlin/sequences/Sequence;",
        "nameAt",
        "idx",
        "put",
        "",
        "nameHash",
        "valueHash",
        "nameStartIndex",
        "nameEndIndex",
        "valueStartIndex",
        "valueEndIndex",
        "release",
        "toString",
        "valueAt",
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
.field private final builder:Lio/ktor/http/cio/internals/CharArrayBuilder;

.field private indexes:[I

.field private size:I


# direct methods
.method public constructor <init>(Lio/ktor/http/cio/internals/CharArrayBuilder;)V
    .locals 1
    .param p1, "builder"    # Lio/ktor/http/cio/internals/CharArrayBuilder;

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/ktor/http/cio/HttpHeadersMap;->builder:Lio/ktor/http/cio/internals/CharArrayBuilder;

    .line 35
    invoke-static {}, Lio/ktor/http/cio/HttpHeadersMapKt;->access$getIntArrayPool$p()Lio/ktor/utils/io/pool/DefaultPool;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/utils/io/pool/DefaultPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lio/ktor/http/cio/HttpHeadersMap;->indexes:[I

    .line 31
    return-void
.end method

.method public static final synthetic access$getBuilder$p(Lio/ktor/http/cio/HttpHeadersMap;)Lio/ktor/http/cio/internals/CharArrayBuilder;
    .locals 1
    .param p0, "$this"    # Lio/ktor/http/cio/HttpHeadersMap;

    .line 30
    iget-object v0, p0, Lio/ktor/http/cio/HttpHeadersMap;->builder:Lio/ktor/http/cio/internals/CharArrayBuilder;

    return-object v0
.end method

.method public static final synthetic access$getIndexes$p(Lio/ktor/http/cio/HttpHeadersMap;)[I
    .locals 1
    .param p0, "$this"    # Lio/ktor/http/cio/HttpHeadersMap;

    .line 30
    iget-object v0, p0, Lio/ktor/http/cio/HttpHeadersMap;->indexes:[I

    return-object v0
.end method

.method public static synthetic find$default(Lio/ktor/http/cio/HttpHeadersMap;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    .line 62
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/ktor/http/cio/HttpHeadersMap;->find(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final find(Ljava/lang/String;I)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lio/ktor/http/cio/internals/CharsKt;->hashCodeLowerCase$default(Ljava/lang/CharSequence;IIILjava/lang/Object;)I

    move-result v0

    .line 64
    .local v0, "nameHash":I
    move v1, p2

    .local v1, "i":I
    iget v2, p0, Lio/ktor/http/cio/HttpHeadersMap;->size:I

    :goto_0
    if-ge v1, v2, :cond_1

    .line 65
    mul-int/lit8 v3, v1, 0x8

    .line 66
    .local v3, "offset":I
    iget-object v4, p0, Lio/ktor/http/cio/HttpHeadersMap;->indexes:[I

    aget v4, v4, v3

    if-ne v4, v0, :cond_0

    .line 67
    return v1

    .line 64
    .end local v3    # "offset":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v1, v2, v3}, Lio/ktor/http/cio/internals/CharsKt;->hashCodeLowerCase$default(Ljava/lang/CharSequence;IIILjava/lang/Object;)I

    move-result v0

    .line 76
    .local v0, "nameHash":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lio/ktor/http/cio/HttpHeadersMap;->size:I

    :goto_0
    if-ge v1, v2, :cond_1

    .line 77
    mul-int/lit8 v4, v1, 0x8

    .line 78
    .local v4, "offset":I
    iget-object v5, p0, Lio/ktor/http/cio/HttpHeadersMap;->indexes:[I

    aget v5, v5, v4

    if-ne v5, v0, :cond_0

    .line 79
    iget-object v2, p0, Lio/ktor/http/cio/HttpHeadersMap;->builder:Lio/ktor/http/cio/internals/CharArrayBuilder;

    iget-object v3, p0, Lio/ktor/http/cio/HttpHeadersMap;->indexes:[I

    add-int/lit8 v5, v4, 0x4

    aget v3, v3, v5

    iget-object v5, p0, Lio/ktor/http/cio/HttpHeadersMap;->indexes:[I

    add-int/lit8 v6, v4, 0x5

    aget v5, v5, v6

    invoke-virtual {v2, v3, v5}, Lio/ktor/http/cio/internals/CharArrayBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 76
    .end local v4    # "offset":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "i":I
    :cond_1
    return-object v3
.end method

.method public final getAll(Ljava/lang/String;)Lkotlin/sequences/Sequence;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lio/ktor/http/cio/internals/CharsKt;->hashCodeLowerCase$default(Ljava/lang/CharSequence;IIILjava/lang/Object;)I

    move-result v0

    .line 88
    .local v0, "nameHash":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;

    invoke-direct {v2, p0}, Lio/ktor/http/cio/HttpHeadersMap$getAll$1;-><init>(Lio/ktor/http/cio/HttpHeadersMap;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 89
    sget-object v2, Lio/ktor/http/cio/HttpHeadersMap$getAll$2;->INSTANCE:Lio/ktor/http/cio/HttpHeadersMap$getAll$2;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 90
    new-instance v2, Lio/ktor/http/cio/HttpHeadersMap$getAll$3;

    invoke-direct {v2, p0, v0}, Lio/ktor/http/cio/HttpHeadersMap$getAll$3;-><init>(Lio/ktor/http/cio/HttpHeadersMap;I)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 91
    new-instance v2, Lio/ktor/http/cio/HttpHeadersMap$getAll$4;

    invoke-direct {v2, p0}, Lio/ktor/http/cio/HttpHeadersMap$getAll$4;-><init>(Lio/ktor/http/cio/HttpHeadersMap;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 88
    return-object v1
.end method

.method public final getSize()I
    .locals 1

    .line 32
    iget v0, p0, Lio/ktor/http/cio/HttpHeadersMap;->size:I

    return v0
.end method

.method public final nameAt(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "idx"    # I

    .line 95
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Failed requirement."

    if-eqz v2, :cond_3

    .line 96
    iget v2, p0, Lio/ktor/http/cio/HttpHeadersMap;->size:I

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 98
    mul-int/lit8 v0, p1, 0x8

    .line 99
    .local v0, "offset":I
    iget-object v1, p0, Lio/ktor/http/cio/HttpHeadersMap;->indexes:[I

    .line 101
    .local v1, "array":[I
    add-int/lit8 v2, v0, 0x2

    aget v2, v1, v2

    .line 102
    .local v2, "nameStart":I
    add-int/lit8 v3, v0, 0x3

    aget v3, v1, v3

    .line 104
    .local v3, "nameEnd":I
    iget-object v4, p0, Lio/ktor/http/cio/HttpHeadersMap;->builder:Lio/ktor/http/cio/internals/CharArrayBuilder;

    invoke-virtual {v4, v2, v3}, Lio/ktor/http/cio/internals/CharArrayBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 96
    .end local v0    # "offset":I
    .end local v1    # "array":[I
    .end local v2    # "nameStart":I
    .end local v3    # "nameEnd":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final put(IIIIII)V
    .locals 5
    .param p1, "nameHash"    # I
    .param p2, "valueHash"    # I
    .param p3, "nameStartIndex"    # I
    .param p4, "nameEndIndex"    # I
    .param p5, "valueStartIndex"    # I
    .param p6, "valueEndIndex"    # I

    .line 45
    iget v0, p0, Lio/ktor/http/cio/HttpHeadersMap;->size:I

    mul-int/lit8 v0, v0, 0x8

    .line 46
    .local v0, "base":I
    iget-object v1, p0, Lio/ktor/http/cio/HttpHeadersMap;->indexes:[I

    .line 48
    .local v1, "array":[I
    iget-object v2, p0, Lio/ktor/http/cio/HttpHeadersMap;->indexes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 50
    add-int/lit8 v2, v0, 0x0

    aput p1, v1, v2

    .line 51
    add-int/lit8 v2, v0, 0x1

    aput p2, v1, v2

    .line 52
    add-int/lit8 v2, v0, 0x2

    aput p3, v1, v2

    .line 53
    add-int/lit8 v2, v0, 0x3

    aput p4, v1, v2

    .line 54
    add-int/lit8 v2, v0, 0x4

    aput p5, v1, v2

    .line 55
    add-int/lit8 v2, v0, 0x5

    aput p6, v1, v2

    .line 56
    add-int/lit8 v2, v0, 0x6

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 57
    add-int/lit8 v2, v0, 0x7

    aput v3, v1, v2

    .line 59
    iget v2, p0, Lio/ktor/http/cio/HttpHeadersMap;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/ktor/http/cio/HttpHeadersMap;->size:I

    .line 60
    return-void

    .line 48
    :cond_0
    new-instance v2, Lkotlin/NotImplementedError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An operation is not implemented: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Implement headers overflow"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final release()V
    .locals 2

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lio/ktor/http/cio/HttpHeadersMap;->size:I

    .line 122
    iget-object v0, p0, Lio/ktor/http/cio/HttpHeadersMap;->indexes:[I

    .line 123
    .local v0, "indexes":[I
    invoke-static {}, Lio/ktor/http/cio/HttpHeadersMapKt;->access$getEMPTY_INT_LIST$p()[I

    move-result-object v1

    iput-object v1, p0, Lio/ktor/http/cio/HttpHeadersMap;->indexes:[I

    .line 125
    invoke-static {}, Lio/ktor/http/cio/HttpHeadersMapKt;->access$getEMPTY_INT_LIST$p()[I

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lio/ktor/http/cio/HttpHeadersMapKt;->access$getIntArrayPool$p()Lio/ktor/utils/io/pool/DefaultPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/ktor/utils/io/pool/DefaultPool;->recycle(Ljava/lang/Object;)V

    .line 126
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .line 150
    .local v1, "$this$toString_u24lambda_u240":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 129
    .local v2, "$i$a$-buildString-HttpHeadersMap$toString$1":I
    const-string v3, ""

    move-object v4, v1

    check-cast v4, Ljava/lang/Appendable;

    invoke-static {p0, v3, v4}, Lio/ktor/http/cio/HttpHeadersMapKt;->dumpTo(Lio/ktor/http/cio/HttpHeadersMap;Ljava/lang/String;Ljava/lang/Appendable;)V

    .end local v1    # "$this$toString_u24lambda_u240":Ljava/lang/StringBuilder;
    .end local v2    # "$i$a$-buildString-HttpHeadersMap$toString$1":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final valueAt(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "idx"    # I

    .line 108
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Failed requirement."

    if-eqz v2, :cond_3

    .line 109
    iget v2, p0, Lio/ktor/http/cio/HttpHeadersMap;->size:I

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 111
    mul-int/lit8 v0, p1, 0x8

    .line 112
    .local v0, "offset":I
    iget-object v1, p0, Lio/ktor/http/cio/HttpHeadersMap;->indexes:[I

    .line 114
    .local v1, "array":[I
    add-int/lit8 v2, v0, 0x4

    aget v2, v1, v2

    .line 115
    .local v2, "nameStart":I
    add-int/lit8 v3, v0, 0x5

    aget v3, v1, v3

    .line 117
    .local v3, "nameEnd":I
    iget-object v4, p0, Lio/ktor/http/cio/HttpHeadersMap;->builder:Lio/ktor/http/cio/internals/CharArrayBuilder;

    invoke-virtual {v4, v2, v3}, Lio/ktor/http/cio/internals/CharArrayBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 109
    .end local v0    # "offset":I
    .end local v1    # "array":[I
    .end local v2    # "nameStart":I
    .end local v3    # "nameEnd":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
