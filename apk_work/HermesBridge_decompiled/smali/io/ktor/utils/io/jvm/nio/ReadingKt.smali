.class public final Lio/ktor/utils/io/jvm/nio/ReadingKt;
.super Ljava/lang/Object;
.source "Reading.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReading.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reading.kt\nio/ktor/utils/io/jvm/nio/ReadingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,56:1\n1#2:57\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0001H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u001a\'\u0010\u0000\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0001H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\t"
    }
    d2 = {
        "copyTo",
        "",
        "Ljava/nio/channels/Pipe;",
        "ch",
        "Lio/ktor/utils/io/ByteWriteChannel;",
        "limit",
        "(Ljava/nio/channels/Pipe;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Ljava/nio/channels/ReadableByteChannel;",
        "(Ljava/nio/channels/ReadableByteChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ktor-io"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final copyTo(Ljava/nio/channels/Pipe;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$copyTo"    # Ljava/nio/channels/Pipe;
    .param p1, "ch"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p2, "limit"    # J
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/Pipe;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Ljava/nio/channels/Pipe;->source()Ljava/nio/channels/Pipe$SourceChannel;

    move-result-object v0

    const-string v1, "source()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/nio/channels/ReadableByteChannel;

    invoke-static {v0, p1, p2, p3, p4}, Lio/ktor/utils/io/jvm/nio/ReadingKt;->copyTo(Ljava/nio/channels/ReadableByteChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final copyTo(Ljava/nio/channels/ReadableByteChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/ReadableByteChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;

    iget v2, v1, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;

    invoke-direct {v1, v0}, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v1, v0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 13
    iget v3, v0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v3, v0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;->I$0:I

    .local v3, "needFlush":Z
    iget-wide v5, v0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;->J$0:J

    .local v5, "limit":J
    iget-object v7, v0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .local v7, "copy":Lkotlin/jvm/functions/Function1;
    iget-object v8, v0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v8, "eof":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v9, v0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$LongRef;

    .local v9, "copied":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v10, v0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lio/ktor/utils/io/ByteWriteChannel;

    .local v10, "ch":Lio/ktor/utils/io/ByteWriteChannel;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .end local v3    # "needFlush":Z
    .end local v5    # "limit":J
    .end local v7    # "copy":Lkotlin/jvm/functions/Function1;
    .end local v8    # "eof":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v9    # "copied":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v10    # "ch":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p0

    .local v3, "$this$copyTo":Ljava/nio/channels/ReadableByteChannel;
    move-wide/from16 v5, p2

    .restart local v5    # "limit":J
    move-object/from16 v7, p1

    .line 14
    .local v7, "ch":Lio/ktor/utils/io/ByteWriteChannel;
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-ltz v8, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_7

    .line 15
    instance-of v8, v3, Ljava/nio/channels/SelectableChannel;

    if-eqz v8, :cond_3

    move-object v8, v3

    check-cast v8, Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v8}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    .line 16
    .end local v3    # "$this$copyTo":Ljava/nio/channels/ReadableByteChannel;
    .end local v5    # "limit":J
    .end local v7    # "ch":Lio/ktor/utils/io/ByteWriteChannel;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Non-blocking channels are not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 19
    .restart local v3    # "$this$copyTo":Ljava/nio/channels/ReadableByteChannel;
    .restart local v5    # "limit":J
    .restart local v7    # "ch":Lio/ktor/utils/io/ByteWriteChannel;
    :cond_3
    :goto_2
    new-instance v14, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 20
    .local v14, "copied":Lkotlin/jvm/internal/Ref$LongRef;
    new-instance v16, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct/range {v16 .. v16}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 22
    .local v16, "eof":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v8, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$copy$1;

    move-object v11, v8

    move-wide v12, v5

    move-object v15, v3

    invoke-direct/range {v11 .. v16}, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$copy$1;-><init>(JLkotlin/jvm/internal/Ref$LongRef;Ljava/nio/channels/ReadableByteChannel;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    move-object v3, v8

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 40
    .local v3, "copy":Lkotlin/jvm/functions/Function1;
    invoke-interface {v7}, Lio/ktor/utils/io/ByteWriteChannel;->getAutoFlush()Z

    move-result v8

    xor-int/2addr v8, v4

    move-object v10, v7

    move-object v9, v14

    move-object v7, v3

    move v3, v8

    move-object/from16 v8, v16

    .line 41
    .end local v14    # "copied":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v16    # "eof":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v3, "needFlush":Z
    .local v7, "copy":Lkotlin/jvm/functions/Function1;
    .restart local v8    # "eof":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v9    # "copied":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v10    # "ch":Lio/ktor/utils/io/ByteWriteChannel;
    :cond_4
    :goto_3
    iget-wide v11, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v11, v11, v5

    if-gez v11, :cond_6

    iget-boolean v11, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v11, :cond_6

    .line 42
    iput-object v10, v0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;->L$3:Ljava/lang/Object;

    iput-wide v5, v0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;->J$0:J

    iput v3, v0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;->I$0:I

    iput v4, v0, Lio/ktor/utils/io/jvm/nio/ReadingKt$copyTo$1;->label:I

    invoke-interface {v10, v4, v7, v0}, Lio/ktor/utils/io/ByteWriteChannel;->write(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v2, :cond_5

    .line 13
    return-object v2

    .line 43
    :cond_5
    :goto_4
    if-eqz v3, :cond_4

    invoke-interface {v10}, Lio/ktor/utils/io/ByteWriteChannel;->flush()V

    goto :goto_3

    .line 46
    .end local v3    # "needFlush":Z
    .end local v5    # "limit":J
    .end local v7    # "copy":Lkotlin/jvm/functions/Function1;
    .end local v8    # "eof":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v10    # "ch":Lio/ktor/utils/io/ByteWriteChannel;
    :cond_6
    iget-wide v2, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 57
    .end local v9    # "copied":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v5    # "limit":J
    :cond_7
    const/4 v2, 0x0

    .line 14
    .local v2, "$i$a$-require-ReadingKt$copyTo$2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Limit shouldn\'t be negative: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require-ReadingKt$copyTo$2":I
    .end local v5    # "limit":J
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic copyTo$default(Ljava/nio/channels/Pipe;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-wide p2, 0x7fffffffffffffffL

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/jvm/nio/ReadingKt;->copyTo(Ljava/nio/channels/Pipe;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copyTo$default(Ljava/nio/channels/ReadableByteChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-wide p2, 0x7fffffffffffffffL

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/jvm/nio/ReadingKt;->copyTo(Ljava/nio/channels/ReadableByteChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
