.class public final Lio/ktor/utils/io/jvm/nio/WritingKt;
.super Ljava/lang/Object;
.source "Writing.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWriting.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Writing.kt\nio/ktor/utils/io/jvm/nio/WritingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0001H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u001a\'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0001H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\n"
    }
    d2 = {
        "copyTo",
        "",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "pipe",
        "Ljava/nio/channels/Pipe;",
        "limit",
        "(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/channels/Pipe;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "channel",
        "Ljava/nio/channels/WritableByteChannel;",
        "(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/channels/WritableByteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public static final copyTo(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/channels/Pipe;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$copyTo"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "pipe"    # Ljava/nio/channels/Pipe;
    .param p2, "limit"    # J
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Ljava/nio/channels/Pipe;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Ljava/nio/channels/Pipe;->sink()Ljava/nio/channels/Pipe$SinkChannel;

    move-result-object v0

    const-string v1, "pipe.sink()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/nio/channels/WritableByteChannel;

    invoke-static {p0, v0, p2, p3, p4}, Lio/ktor/utils/io/jvm/nio/WritingKt;->copyTo(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/channels/WritableByteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final copyTo(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/channels/WritableByteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Ljava/nio/channels/WritableByteChannel;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;

    iget v1, v0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;

    invoke-direct {v0, p4}, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 14
    iget v2, p4, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-wide p0, p4, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->J$0:J

    .local p0, "limit":J
    iget-object p2, p4, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .local p2, "copy":Lkotlin/jvm/functions/Function1;
    iget-object p3, p4, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->L$1:Ljava/lang/Object;

    check-cast p3, Lkotlin/jvm/internal/Ref$LongRef;

    .local p3, "copied":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v2, p4, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteReadChannel;

    .local v2, "$this$copyTo":Lio/ktor/utils/io/ByteReadChannel;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    .end local v2    # "$this$copyTo":Lio/ktor/utils/io/ByteReadChannel;
    .end local p0    # "limit":J
    .end local p2    # "copy":Lkotlin/jvm/functions/Function1;
    .end local p3    # "copied":Lkotlin/jvm/internal/Ref$LongRef;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    .local p0, "$this$copyTo":Lio/ktor/utils/io/ByteReadChannel;
    .local p1, "channel":Ljava/nio/channels/WritableByteChannel;
    .local p2, "limit":J
    const-wide/16 v5, 0x0

    cmp-long v2, p2, v5

    if-ltz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    if-eqz v2, :cond_a

    .line 16
    instance-of v2, p1, Ljava/nio/channels/SelectableChannel;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 17
    .end local p0    # "$this$copyTo":Lio/ktor/utils/io/ByteReadChannel;
    .end local p1    # "channel":Ljava/nio/channels/WritableByteChannel;
    .end local p2    # "limit":J
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-blocking channels are not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    .restart local p0    # "$this$copyTo":Lio/ktor/utils/io/ByteReadChannel;
    .restart local p1    # "channel":Ljava/nio/channels/WritableByteChannel;
    .restart local p2    # "limit":J
    :cond_3
    :goto_2
    invoke-interface {p0}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 21
    .end local p1    # "channel":Ljava/nio/channels/WritableByteChannel;
    .end local p2    # "limit":J
    invoke-interface {p0}, Lio/ktor/utils/io/ByteReadChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "$this$copyTo":Lio/ktor/utils/io/ByteReadChannel;
    if-nez p0, :cond_4

    .line 22
    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 66
    .local p0, "it":Ljava/lang/Throwable;
    :cond_4
    const/4 p1, 0x0

    .line 21
    .local p1, "$i$a$-let-WritingKt$copyTo$3":I
    throw p0

    .line 25
    .local p0, "$this$copyTo":Lio/ktor/utils/io/ByteReadChannel;
    .local p1, "channel":Ljava/nio/channels/WritableByteChannel;
    .restart local p2    # "limit":J
    :cond_5
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 26
    .local v2, "copied":Lkotlin/jvm/internal/Ref$LongRef;
    new-instance v5, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$copy$1;

    invoke-direct {v5, p2, p3, v2, p1}, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$copy$1;-><init>(JLkotlin/jvm/internal/Ref$LongRef;Ljava/nio/channels/WritableByteChannel;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object v7, v2

    move-object v2, p0

    move-wide p0, p2

    move-object p3, v7

    move-object p2, v5

    .line 49
    .end local p1    # "channel":Ljava/nio/channels/WritableByteChannel;
    .local v2, "$this$copyTo":Lio/ktor/utils/io/ByteReadChannel;
    .local p0, "limit":J
    .local p2, "copy":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "copied":Lkotlin/jvm/internal/Ref$LongRef;
    :cond_6
    iget-wide v5, p3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v5, v5, p0

    if-gez v5, :cond_8

    .line 50
    iput-object v2, p4, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->L$0:Ljava/lang/Object;

    iput-object p3, p4, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->L$1:Ljava/lang/Object;

    iput-object p2, p4, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->L$2:Ljava/lang/Object;

    iput-wide p0, p4, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->J$0:J

    iput v3, p4, Lio/ktor/utils/io/jvm/nio/WritingKt$copyTo$1;->label:I

    invoke-interface {v2, v4, p2, p4}, Lio/ktor/utils/io/ByteReadChannel;->read(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_7

    .line 14
    return-object v1

    .line 51
    :cond_7
    :goto_3
    invoke-interface {v2}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 54
    .end local p0    # "limit":J
    .end local p2    # "copy":Lkotlin/jvm/functions/Function1;
    :cond_8
    invoke-interface {v2}, Lio/ktor/utils/io/ByteReadChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_9

    .line 56
    iget-wide p0, p3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {p0, p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 66
    .local p0, "it":Ljava/lang/Throwable;
    :cond_9
    const/4 p1, 0x0

    .line 54
    .local p1, "$i$a$-let-WritingKt$copyTo$4":I
    throw p0

    .line 66
    .end local v2    # "$this$copyTo":Lio/ktor/utils/io/ByteReadChannel;
    .end local p0    # "it":Ljava/lang/Throwable;
    .end local p1    # "$i$a$-let-WritingKt$copyTo$4":I
    .end local p3    # "copied":Lkotlin/jvm/internal/Ref$LongRef;
    .local p2, "limit":J
    :cond_a
    const/4 p0, 0x0

    .line 15
    .local p0, "$i$a$-require-WritingKt$copyTo$2":I
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Limit shouldn\'t be negative: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "$i$a$-require-WritingKt$copyTo$2":I
    .end local p2    # "limit":J
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic copyTo$default(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/channels/Pipe;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-wide p2, 0x7fffffffffffffffL

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/jvm/nio/WritingKt;->copyTo(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/channels/Pipe;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copyTo$default(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/channels/WritableByteChannel;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-wide p2, 0x7fffffffffffffffL

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/jvm/nio/WritingKt;->copyTo(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/channels/WritableByteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
