.class final Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ByteBufferChannel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ByteBufferChannel;->readUTF8LineToUtf8Suspend(Ljava/lang/Appendable;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/nio/ByteBuffer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $caret:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $consumed:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $limit:I

.field final synthetic $newLine:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $out:Ljava/lang/Appendable;

.field final synthetic $output:[C

.field final synthetic $required:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $transferBuffer:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $transferredRemaining:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;I[CLkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Appendable;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/nio/ByteBuffer;",
            ">;I[C",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Ljava/lang/Appendable;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$transferBuffer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput p2, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$limit:I

    iput-object p3, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$output:[C

    iput-object p4, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$consumed:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p5, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$required:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p6, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$newLine:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p7, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$caret:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p8, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$out:Ljava/lang/Appendable;

    iput-object p9, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$transferredRemaining:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 1960
    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->invoke(Ljava/nio/ByteBuffer;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/nio/ByteBuffer;)V
    .locals 14
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1961
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1962
    .local v0, "oldPosition":I
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$transferBuffer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    move-object v2, v1

    .local v2, "it":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 1963
    .local v3, "$i$a$-also-ByteBufferChannel$readUTF8LineToUtf8Suspend$2$bufferToDecode$1":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 1964
    .local v4, "oldLimit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1965
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1966
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1967
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1968
    nop

    .line 1962
    .end local v2    # "it":Ljava/nio/ByteBuffer;
    .end local v3    # "$i$a$-also-ByteBufferChannel$readUTF8LineToUtf8Suspend$2$bufferToDecode$1":I
    .end local v4    # "oldLimit":I
    goto :goto_0

    .line 1968
    :cond_0
    move-object v1, p1

    .line 1962
    :goto_0
    nop

    .line 1970
    .local v1, "bufferToDecode":Ljava/nio/ByteBuffer;
    iget v2, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$limit:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$output:[C

    array-length v2, v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$output:[C

    array-length v2, v2

    iget v4, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$limit:I

    iget-object v5, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$consumed:Lkotlin/jvm/internal/Ref$IntRef;

    iget v5, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1971
    .local v2, "readLimit":I
    :goto_1
    iget-object v4, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$output:[C

    const/4 v5, 0x0

    invoke-static {v1, v4, v5, v2}, Lio/ktor/utils/io/charsets/UTFKt;->decodeUTF8Line(Ljava/nio/ByteBuffer;[CII)J

    move-result-wide v6

    .line 1973
    .local v6, "decodeResult":J
    iget-object v4, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$transferBuffer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_2

    iget-object v8, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$transferredRemaining:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v9, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$transferBuffer:Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v4, "it":Ljava/nio/ByteBuffer;
    const/4 v10, 0x0

    .line 1974
    .local v10, "$i$a$-let-ByteBufferChannel$readUTF8LineToUtf8Suspend$2$1":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v0

    iget v12, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v11, v12

    invoke-virtual {p1, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1975
    invoke-static {}, Lio/ktor/utils/io/internal/ObjectPoolKt;->getBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v11

    invoke-interface {v11, v4}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 1976
    const/4 v11, 0x0

    iput-object v11, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1977
    iput v5, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1978
    nop

    .line 1973
    .end local v4    # "it":Ljava/nio/ByteBuffer;
    .end local v10    # "$i$a$-let-ByteBufferChannel$readUTF8LineToUtf8Suspend$2$1":I
    nop

    .line 1980
    :cond_2
    const/16 v4, 0x20

    shr-long v8, v6, v4

    long-to-int v4, v8

    .line 1981
    .local v4, "decoded":I
    const-wide v8, 0xffffffffL

    and-long/2addr v8, v6

    long-to-int v8, v8

    .line 1983
    .local v8, "requiredBytes":I
    iget-object v9, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$required:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 v10, 0x1

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1985
    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 1986
    iget-object v11, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$newLine:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v10, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1989
    :cond_3
    if-eq v8, v9, :cond_4

    .line 1990
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1991
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    invoke-virtual {p1, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_4

    .line 1993
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v10

    invoke-virtual {p1, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1994
    iget-object v11, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$caret:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v10, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1997
    :cond_4
    if-eq v8, v9, :cond_5

    .line 1998
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1999
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    const/16 v11, 0xa

    if-ne v9, v11, :cond_5

    .line 2001
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v9, v10

    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2002
    iget-object v9, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$newLine:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v10, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2005
    :cond_5
    iget-object v9, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$out:Ljava/lang/Appendable;

    instance-of v9, v9, Ljava/lang/StringBuilder;

    if-eqz v9, :cond_6

    .line 2006
    iget-object v9, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$out:Ljava/lang/Appendable;

    check-cast v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$output:[C

    invoke-virtual {v9, v10, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2008
    :cond_6
    iget-object v9, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$output:[C

    invoke-static {v9, v5, v4}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v9

    .line 2009
    .local v9, "charBuffer":Ljava/nio/CharBuffer;
    iget-object v10, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$out:Ljava/lang/Appendable;

    move-object v11, v9

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v10, v11, v5, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 2012
    .end local v9    # "charBuffer":Ljava/nio/CharBuffer;
    :goto_2
    iget-object v5, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$consumed:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v9, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$consumed:Lkotlin/jvm/internal/Ref$IntRef;

    iget v9, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v9, v4

    iput v9, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 2014
    if-nez v4, :cond_7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v8, :cond_7

    .line 2015
    iget-object v5, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$transferBuffer:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {}, Lio/ktor/utils/io/internal/ObjectPoolKt;->getBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v9

    invoke-interface {v9}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v9

    iget-object v10, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$transferredRemaining:Lkotlin/jvm/internal/Ref$IntRef;

    move-object v11, v9

    check-cast v11, Ljava/nio/ByteBuffer;

    .local v11, "it":Ljava/nio/ByteBuffer;
    const/4 v12, 0x0

    .line 2016
    .local v12, "$i$a$-also-ByteBufferChannel$readUTF8LineToUtf8Suspend$2$2":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    iput v13, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 2017
    invoke-virtual {v11, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 2018
    nop

    .line 2015
    .end local v11    # "it":Ljava/nio/ByteBuffer;
    .end local v12    # "$i$a$-also-ByteBufferChannel$readUTF8LineToUtf8Suspend$2$2":I
    iput-object v9, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2021
    :cond_7
    iget v5, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$limit:I

    if-eq v5, v3, :cond_9

    iget-object v3, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$consumed:Lkotlin/jvm/internal/Ref$IntRef;

    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v5, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$limit:I

    if-lt v3, v5, :cond_9

    iget-object v3, p0, Lio/ktor/utils/io/ByteBufferChannel$readUTF8LineToUtf8Suspend$2;->$newLine:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v3, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v3, :cond_8

    goto :goto_3

    .line 2022
    :cond_8
    new-instance v3, Lio/ktor/utils/io/charsets/TooLongLineException;

    const-string v5, "Line is longer than limit"

    invoke-direct {v3, v5}, Lio/ktor/utils/io/charsets/TooLongLineException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2024
    :cond_9
    :goto_3
    return-void
.end method
