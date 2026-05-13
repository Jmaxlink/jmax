.class public final Lio/ktor/utils/io/DelimitedKt;
.super Ljava/lang/Object;
.source "Delimited.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a%\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u001a-\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0001H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u001a\u001d\u0010\n\u001a\u00020\u000b*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000c\u001a\u001d\u0010\r\u001a\u00020\u000b*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000c\u001a\u0014\u0010\u000e\u001a\u00020\u0001*\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u001a\u001c\u0010\u0010\u001a\u00020\u0001*\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u001a\u0014\u0010\u0011\u001a\u00020\u0001*\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "readUntilDelimiter",
        "",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "delimiter",
        "Ljava/nio/ByteBuffer;",
        "dst",
        "(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readUntilDelimiterSuspend",
        "copied0",
        "(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "skipDelimiter",
        "",
        "(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "skipDelimiterSuspend",
        "startsWithDelimiter",
        "Lio/ktor/utils/io/LookAheadSession;",
        "tryCopyUntilDelimiter",
        "tryEnsureDelimiter",
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
.method public static final synthetic access$readUntilDelimiterSuspend(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "delimiter"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .param p3, "copied0"    # I
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/DelimitedKt;->readUntilDelimiterSuspend(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$skipDelimiterSuspend(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "delimiter"    # Ljava/nio/ByteBuffer;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/DelimitedKt;->skipDelimiterSuspend(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$startsWithDelimiter(Lio/ktor/utils/io/LookAheadSession;Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/utils/io/LookAheadSession;
    .param p1, "delimiter"    # Ljava/nio/ByteBuffer;

    .line 1
    invoke-static {p0, p1}, Lio/ktor/utils/io/DelimitedKt;->startsWithDelimiter(Lio/ktor/utils/io/LookAheadSession;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$tryCopyUntilDelimiter(Lio/ktor/utils/io/LookAheadSession;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/utils/io/LookAheadSession;
    .param p1, "delimiter"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/DelimitedKt;->tryCopyUntilDelimiter(Lio/ktor/utils/io/LookAheadSession;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$tryEnsureDelimiter(Lio/ktor/utils/io/LookAheadSession;Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/utils/io/LookAheadSession;
    .param p1, "delimiter"    # Ljava/nio/ByteBuffer;

    .line 1
    invoke-static {p0, p1}, Lio/ktor/utils/io/DelimitedKt;->tryEnsureDelimiter(Lio/ktor/utils/io/LookAheadSession;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static final readUntilDelimiter(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$readUntilDelimiter"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "delimiter"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const-string v1, "Failed requirement."

    if-eqz v0, :cond_5

    .line 20
    if-eq p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 22
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 23
    .local v0, "copied":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 25
    .local v1, "endFound":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v2, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiter$2;

    invoke-direct {v2, p1, p2, v1, v0}, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiter$2;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v2}, Lio/ktor/utils/io/ByteReadChannel;->lookAhead(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 39
    iget v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v2, :cond_1

    invoke-interface {p0}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    const/4 v2, -0x1

    goto :goto_2

    .line 41
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v2, :cond_2

    goto :goto_1

    .line 44
    :cond_2
    iget v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p0, p1, p2, v2, p3}, Lio/ktor/utils/io/DelimitedKt;->readUntilDelimiterSuspend(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .line 46
    return-object v2

    .line 42
    :cond_3
    :goto_1
    iget v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 46
    :goto_2
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    .line 39
    return-object v2

    .line 20
    .end local v0    # "copied":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v1    # "endFound":Lkotlin/jvm/internal/Ref$BooleanRef;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final readUntilDelimiterSuspend(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;

    iget v2, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;

    invoke-direct {v1, v0}, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v1, v0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 72
    iget v3, v0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;->label:I

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
    iget v2, v0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;->I$0:I

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v1

    goto/16 :goto_4

    :pswitch_1
    iget-object v3, v0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v3, "endFound":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v5, v0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    .local v5, "dst":Ljava/nio/ByteBuffer;
    iget-object v6, v0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/ByteReadChannel;

    .local v6, "$this$readUntilDelimiterSuspend":Lio/ktor/utils/io/ByteReadChannel;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v1

    goto :goto_3

    .end local v3    # "endFound":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v5    # "dst":Ljava/nio/ByteBuffer;
    .end local v6    # "$this$readUntilDelimiterSuspend":Lio/ktor/utils/io/ByteReadChannel;
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v6, p0

    .restart local v6    # "$this$readUntilDelimiterSuspend":Lio/ktor/utils/io/ByteReadChannel;
    move-object/from16 v5, p2

    .restart local v5    # "dst":Ljava/nio/ByteBuffer;
    move-object/from16 v3, p1

    .local v3, "delimiter":Ljava/nio/ByteBuffer;
    move/from16 v14, p3

    .line 77
    .local v14, "copied0":I
    const/4 v15, 0x1

    if-eq v3, v5, :cond_1

    move v7, v15

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const-string v8, "Failed requirement."

    if-eqz v7, :cond_8

    .line 78
    if-ltz v14, :cond_2

    move v7, v15

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_7

    .line 80
    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object v13, v7

    .line 81
    .local v13, "endFound":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v16, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;

    const/16 v17, 0x0

    move-object/from16 v7, v16

    move v8, v14

    move-object v9, v3

    move-object v10, v5

    move-object v11, v13

    move-object v12, v6

    move-object v4, v13

    .end local v13    # "endFound":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v4, "endFound":Lkotlin/jvm/internal/Ref$BooleanRef;
    move-object/from16 v13, v17

    invoke-direct/range {v7 .. v13}, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;-><init>(ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v7, v16

    check-cast v7, Lkotlin/jvm/functions/Function2;

    iput-object v6, v0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;->L$2:Ljava/lang/Object;

    iput v15, v0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;->label:I

    invoke-interface {v6, v7, v0}, Lio/ktor/utils/io/ByteReadChannel;->lookAheadSuspend(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "delimiter":Ljava/nio/ByteBuffer;
    .end local v14    # "copied0":I
    if-ne v3, v2, :cond_3

    .line 72
    return-object v2

    .line 81
    :cond_3
    :goto_3
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 112
    .local v3, "copied":I
    nop

    .line 113
    if-lez v3, :cond_5

    invoke-interface {v6}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForWrite()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-boolean v7, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v7, :cond_5

    const/4 v7, 0x0

    iput-object v7, v0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;->I$0:I

    const/4 v7, 0x2

    iput v7, v0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$1;->label:I

    invoke-interface {v6, v5, v0}, Lio/ktor/utils/io/ByteReadChannel;->readAvailable(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v3    # "copied":I
    .end local v4    # "endFound":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v5    # "dst":Ljava/nio/ByteBuffer;
    .end local v6    # "$this$readUntilDelimiterSuspend":Lio/ktor/utils/io/ByteReadChannel;
    if-ne v4, v2, :cond_4

    .line 72
    return-object v2

    .line 113
    :cond_4
    move v2, v3

    :goto_4
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_5

    .line 114
    .restart local v3    # "copied":I
    .restart local v6    # "$this$readUntilDelimiterSuspend":Lio/ktor/utils/io/ByteReadChannel;
    :cond_5
    if-nez v3, :cond_6

    invoke-interface {v6}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, -0x1

    move v3, v2

    goto :goto_5

    .line 115
    .end local v6    # "$this$readUntilDelimiterSuspend":Lio/ktor/utils/io/ByteReadChannel;
    :cond_6
    nop

    .end local v3    # "copied":I
    :goto_5
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    .line 112
    return-object v2

    .line 78
    .local v3, "delimiter":Ljava/nio/ByteBuffer;
    .restart local v5    # "dst":Ljava/nio/ByteBuffer;
    .restart local v6    # "$this$readUntilDelimiterSuspend":Lio/ktor/utils/io/ByteReadChannel;
    .restart local v14    # "copied0":I
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final skipDelimiter(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$skipDelimiter"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "delimiter"    # Ljava/nio/ByteBuffer;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 54
    .local v0, "found":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v1, Lio/ktor/utils/io/DelimitedKt$skipDelimiter$2;

    invoke-direct {v1, v0, p1}, Lio/ktor/utils/io/DelimitedKt$skipDelimiter$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/nio/ByteBuffer;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v1}, Lio/ktor/utils/io/ByteReadChannel;->lookAhead(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 58
    iget-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v1, :cond_1

    .line 59
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/DelimitedKt;->skipDelimiterSuspend(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 61
    return-object v1

    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 50
    .end local v0    # "found":Lkotlin/jvm/internal/Ref$BooleanRef;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final skipDelimiterSuspend(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$skipDelimiterSuspend"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "delimiter"    # Ljava/nio/ByteBuffer;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 65
    new-instance v0, Lio/ktor/utils/io/DelimitedKt$skipDelimiterSuspend$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/ktor/utils/io/DelimitedKt$skipDelimiterSuspend$2;-><init>(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, p2}, Lio/ktor/utils/io/ByteReadChannel;->lookAheadSuspend(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 69
    return-object v0
.end method

.method private static final startsWithDelimiter(Lio/ktor/utils/io/LookAheadSession;Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p0, "$this$startsWithDelimiter"    # Lio/ktor/utils/io/LookAheadSession;
    .param p1, "delimiter"    # Ljava/nio/ByteBuffer;

    .line 174
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lio/ktor/utils/io/LookAheadSession;->request(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 175
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-static {v0, p1}, Lio/ktor/utils/io/internal/UtilsKt;->indexOfPartial(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 176
    .local v1, "index":I
    const/4 v2, -0x1

    if-eqz v1, :cond_1

    return v2

    .line 178
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 179
    .local v3, "found":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    sub-int/2addr v4, v3

    .line 181
    .local v4, "notKnown":I
    if-lez v4, :cond_3

    .line 182
    add-int v5, v1, v3

    invoke-interface {p0, v5, v4}, Lio/ktor/utils/io/LookAheadSession;->request(II)Ljava/nio/ByteBuffer;

    move-result-object v5

    if-nez v5, :cond_2

    return v3

    .line 183
    .local v5, "next":Ljava/nio/ByteBuffer;
    :cond_2
    invoke-static {v5, p1, v3}, Lio/ktor/utils/io/internal/UtilsKt;->startsWith(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z

    move-result v6

    if-nez v6, :cond_3

    return v2

    .line 186
    .end local v5    # "next":Ljava/nio/ByteBuffer;
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    return v2
.end method

.method private static final tryCopyUntilDelimiter(Lio/ktor/utils/io/LookAheadSession;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 10
    .param p0, "$this$tryCopyUntilDelimiter"    # Lio/ktor/utils/io/LookAheadSession;
    .param p1, "delimiter"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "endFound":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Lio/ktor/utils/io/LookAheadSession;->request(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_0

    return v1

    .line 127
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-static {v3, p1}, Lio/ktor/utils/io/internal/UtilsKt;->indexOfPartial(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 128
    .local v4, "index":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 129
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 130
    .local v1, "found":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    sub-int/2addr v5, v1

    .line 132
    .local v5, "notKnown":I
    if-nez v5, :cond_1

    .line 133
    const/4 v0, 0x1

    .line 134
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {p2, v3, v2}, Lio/ktor/utils/io/internal/UtilsKt;->putLimited(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v2

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 137
    .local v6, "remembered":Ljava/nio/ByteBuffer;
    add-int v7, v4, v1

    invoke-interface {p0, v7, v2}, Lio/ktor/utils/io/LookAheadSession;->request(II)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 138
    .local v7, "next":Ljava/nio/ByteBuffer;
    const-string v8, "remembered"

    if-nez v7, :cond_2

    .line 139
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {p2, v6, v2}, Lio/ktor/utils/io/internal/UtilsKt;->putLimited(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v2

    goto :goto_0

    .line 140
    :cond_2
    invoke-static {v7, p1, v1}, Lio/ktor/utils/io/internal/UtilsKt;->startsWith(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 141
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v5, :cond_3

    .line 142
    const/4 v0, 0x1

    .line 143
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {p2, v6, v2}, Lio/ktor/utils/io/internal/UtilsKt;->putLimited(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v2

    goto :goto_0

    .line 145
    :cond_3
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {p2, v6, v2}, Lio/ktor/utils/io/internal/UtilsKt;->putLimited(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v2

    goto :goto_0

    .line 148
    :cond_4
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v4

    add-int/2addr v8, v2

    invoke-static {p2, v6, v8}, Lio/ktor/utils/io/internal/UtilsKt;->putLimited(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v2

    .end local v1    # "found":I
    .end local v5    # "notKnown":I
    .end local v6    # "remembered":Ljava/nio/ByteBuffer;
    .end local v7    # "next":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 152
    :cond_5
    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-static {p2, v3, v1, v2, v5}, Lio/ktor/utils/io/internal/UtilsKt;->putAtMost$default(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IILjava/lang/Object;)I

    move-result v2

    .line 128
    :goto_0
    move v1, v2

    .line 154
    .local v1, "size":I
    invoke-interface {p0, v1}, Lio/ktor/utils/io/LookAheadSession;->consumed(I)V

    .line 156
    if-eqz v0, :cond_6

    neg-int v2, v1

    goto :goto_1

    :cond_6
    move v2, v1

    :goto_1
    return v2
.end method

.method private static final tryEnsureDelimiter(Lio/ktor/utils/io/LookAheadSession;Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "$this$tryEnsureDelimiter"    # Lio/ktor/utils/io/LookAheadSession;
    .param p1, "delimiter"    # Ljava/nio/ByteBuffer;

    .line 161
    invoke-static {p0, p1}, Lio/ktor/utils/io/DelimitedKt;->startsWithDelimiter(Lio/ktor/utils/io/LookAheadSession;Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 162
    .local v0, "found":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 163
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_0

    return v0

    .line 165
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-interface {p0, v1}, Lio/ktor/utils/io/LookAheadSession;->consumed(I)V

    .line 166
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    return v1

    .line 162
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to skip delimiter: actual bytes differ from delimiter bytes"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
