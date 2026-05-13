.class public final Lio/ktor/utils/io/internal/SequentialCopyToKt;
.super Ljava/lang/Object;
.source "SequentialCopyTo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a%\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0001H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u001a%\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0001H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u001a%\u0010\u0007\u001a\u00020\u0008*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "copyToSequentialImpl",
        "",
        "Lio/ktor/utils/io/ByteChannelSequentialBase;",
        "dst",
        "limit",
        "(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "copyToTail",
        "joinToImpl",
        "",
        "closeOnEnd",
        "",
        "(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public static final synthetic access$copyToTail(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "dst"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p2, "limit"    # J
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/internal/SequentialCopyToKt;->copyToTail(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final copyToSequentialImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;

    iget v2, v1, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;

    invoke-direct {v1, v0}, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v1, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 16
    iget v3, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->label:I

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

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
    iget-wide v7, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$2:J

    .local v7, "transferred":J
    iget-wide v9, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$1:J

    .local v9, "remainingLimit":J
    iget-wide v11, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$0:J

    .local v11, "limit":J
    iget-object v3, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v3, "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    iget-object v13, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v13, "$this$copyToSequentialImpl":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v3    # "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local v7    # "transferred":J
    .end local v9    # "remainingLimit":J
    .end local v11    # "limit":J
    .end local v13    # "$this$copyToSequentialImpl":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    iget-wide v7, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$1:J

    .local v7, "remainingLimit":J
    iget-wide v9, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$0:J

    .local v9, "limit":J
    iget-object v3, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .restart local v3    # "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    iget-object v11, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v11, "$this$copyToSequentialImpl":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v11

    move-wide v11, v9

    move-object v9, v3

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_4

    .end local v3    # "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local v7    # "remainingLimit":J
    .end local v9    # "limit":J
    .end local v11    # "$this$copyToSequentialImpl":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_2
    iget-wide v7, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$1:J

    .restart local v7    # "remainingLimit":J
    iget-wide v9, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$0:J

    .restart local v9    # "limit":J
    iget-object v3, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .restart local v3    # "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    iget-object v11, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .restart local v11    # "$this$copyToSequentialImpl":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v11

    move-wide v11, v9

    move-object v9, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_3

    .end local v3    # "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local v7    # "remainingLimit":J
    .end local v9    # "limit":J
    .end local v11    # "$this$copyToSequentialImpl":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p0

    .local v3, "$this$copyToSequentialImpl":Lio/ktor/utils/io/ByteChannelSequentialBase;
    move-wide/from16 v7, p2

    .local v7, "limit":J
    move-object/from16 v9, p1

    .line 17
    .local v9, "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    if-eq v3, v9, :cond_1

    move v10, v4

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_c

    .line 18
    invoke-virtual {v3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 19
    .end local v7    # "limit":J
    invoke-virtual {v3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v9, v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->close(Ljava/lang/Throwable;)Z

    .line 20
    .end local v3    # "$this$copyToSequentialImpl":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local v9    # "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 23
    .restart local v3    # "$this$copyToSequentialImpl":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .restart local v7    # "limit":J
    .restart local v9    # "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :cond_2
    move-wide v10, v7

    .line 25
    .local v10, "remainingLimit":J
    :goto_2
    cmp-long v12, v10, v5

    if-lez v12, :cond_b

    .line 26
    iput-object v3, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$1:Ljava/lang/Object;

    iput-wide v7, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$0:J

    iput-wide v10, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$1:J

    iput v4, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->label:I

    invoke-virtual {v3, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitInternalAtLeast1$ktor_io(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v2, :cond_3

    .line 16
    return-object v2

    .line 26
    :cond_3
    move-object v13, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v12

    move-wide/from16 v16, v7

    move-wide v7, v10

    move-wide/from16 v11, v16

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v3    # "$this$copyToSequentialImpl":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local v10    # "remainingLimit":J
    .local v2, "$result":Ljava/lang/Object;
    .local v7, "remainingLimit":J
    .local v11, "limit":J
    .restart local v13    # "$this$copyToSequentialImpl":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 27
    move-object v1, v2

    move-wide/from16 v16, v7

    move-wide v7, v11

    move-wide/from16 v10, v16

    goto/16 :goto_7

    .line 29
    :cond_4
    invoke-virtual {v13, v9, v7, v8}, Lio/ktor/utils/io/ByteChannelSequentialBase;->transferTo$ktor_io(Lio/ktor/utils/io/ByteChannelSequentialBase;J)J

    move-result-wide v14

    .line 30
    .local v14, "transferred":J
    cmp-long v1, v14, v5

    if-nez v1, :cond_7

    .line 31
    .end local v14    # "transferred":J
    iput-object v13, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$1:Ljava/lang/Object;

    iput-wide v11, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$0:J

    iput-wide v7, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$1:J

    const/4 v1, 0x2

    iput v1, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->label:I

    invoke-static {v13, v9, v7, v8, v0}, Lio/ktor/utils/io/internal/SequentialCopyToKt;->copyToTail(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    .line 16
    return-object v3

    .line 31
    :cond_5
    :goto_4
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    .line 32
    .local v14, "tail":J
    cmp-long v1, v14, v5

    if-nez v1, :cond_6

    .line 33
    move-object v1, v2

    move-wide/from16 v16, v7

    move-wide v7, v11

    move-wide/from16 v10, v16

    goto :goto_7

    .line 36
    :cond_6
    move-object v1, v2

    move-object v2, v3

    move-object v3, v13

    .end local v14    # "tail":J
    goto :goto_6

    .line 38
    .local v14, "transferred":J
    :cond_7
    invoke-virtual {v9}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAvailableForWrite()I

    move-result v1

    if-nez v1, :cond_9

    .line 39
    iput-object v13, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->L$1:Ljava/lang/Object;

    iput-wide v11, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$0:J

    iput-wide v7, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$1:J

    iput-wide v14, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->J$2:J

    const/4 v1, 0x3

    iput v1, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->label:I

    invoke-virtual {v9, v4, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitAtLeastNBytesAvailableForWrite$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_8

    .line 16
    return-object v3

    .line 39
    :cond_8
    move-object v1, v2

    move-object v2, v3

    move-object v3, v9

    move-wide v9, v7

    move-wide v7, v14

    .line 42
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v14    # "transferred":J
    .restart local v1    # "$result":Ljava/lang/Object;
    .local v3, "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local v7, "transferred":J
    .local v9, "remainingLimit":J
    :goto_5
    move-wide v14, v7

    move-wide v7, v9

    move-object v9, v3

    move-object v3, v2

    move-object v2, v1

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v3    # "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .restart local v2    # "$result":Ljava/lang/Object;
    .local v7, "remainingLimit":J
    .local v9, "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .restart local v14    # "transferred":J
    :cond_9
    move-object v1, v2

    move-object v2, v3

    move-object v3, v13

    .line 30
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v13    # "$this$copyToSequentialImpl":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local v14    # "transferred":J
    .restart local v1    # "$result":Ljava/lang/Object;
    .local v3, "$this$copyToSequentialImpl":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_6
    move-wide v13, v14

    .line 45
    .local v13, "copied":J
    sub-long/2addr v7, v13

    .line 47
    cmp-long v10, v13, v5

    if-lez v10, :cond_a

    .line 48
    .end local v13    # "copied":J
    invoke-virtual {v9}, Lio/ktor/utils/io/ByteChannelSequentialBase;->flush()V

    .line 25
    :cond_a
    move-wide/from16 v16, v7

    move-wide v7, v11

    move-wide/from16 v10, v16

    goto/16 :goto_2

    .line 52
    .end local v3    # "$this$copyToSequentialImpl":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local v9    # "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local v11    # "limit":J
    .local v7, "limit":J
    .restart local v10    # "remainingLimit":J
    :cond_b
    :goto_7
    sub-long v2, v7, v10

    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 17
    .end local v10    # "remainingLimit":J
    .restart local v3    # "$this$copyToSequentialImpl":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .restart local v9    # "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Failed requirement."

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final copyToTail(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;

    iget v1, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;

    invoke-direct {v0, p4}, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 56
    iget v2, p4, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->label:I

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
    iget p0, p4, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->I$0:I

    .local p0, "rc":I
    iget-object p1, p4, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .local p1, "lastPiece":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .end local p0    # "rc":I
    .end local p1    # "lastPiece":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :pswitch_1
    iget-object p0, p4, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .restart local p1    # "lastPiece":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    iget-object p0, p4, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local p0, "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p2, v0

    goto :goto_1

    .line 69
    .end local p0    # "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 56
    .end local p1    # "lastPiece":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .local p0, "$this$copyToTail":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p2, "limit":J
    sget-object v2, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v2

    invoke-interface {v2}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 58
    .local v2, "lastPiece":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 59
    :try_start_2
    invoke-virtual {v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getCapacity()I

    move-result v3

    int-to-long v3, v3

    invoke-static {p2, p3, v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->resetForWrite(I)V

    .line 60
    .end local p2    # "limit":J
    iput-object p1, p4, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->L$0:Ljava/lang/Object;

    iput-object v2, p4, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->L$1:Ljava/lang/Object;

    const/4 p2, 0x1

    iput p2, p4, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->label:I

    invoke-virtual {p0, v2, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readAvailable(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local p0    # "$this$copyToTail":Lio/ktor/utils/io/ByteChannelSequentialBase;
    if-ne p2, v1, :cond_1

    .line 56
    return-object v1

    .line 60
    :cond_1
    move-object p0, p1

    move-object p1, v2

    .end local v2    # "lastPiece":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local p0, "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "lastPiece":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_1
    :try_start_3
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 61
    .local p2, "rc":I
    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    .line 62
    .end local p0    # "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    sget-object p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 63
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    .end local p2    # "rc":I
    sget-object p2, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 63
    return-object p0

    .line 66
    .restart local p0    # "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .restart local p2    # "rc":I
    :cond_2
    :try_start_4
    move-object p3, p1

    check-cast p3, Lio/ktor/utils/io/core/Buffer;

    iput-object p1, p4, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p4, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->L$1:Ljava/lang/Object;

    iput p2, p4, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->I$0:I

    const/4 v2, 0x2

    iput v2, p4, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToTail$1;->label:I

    invoke-virtual {p0, p3, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writeFully(Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    .end local p0    # "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    if-ne p3, v1, :cond_3

    .line 56
    return-object v1

    .line 66
    :cond_3
    move p0, p2

    .line 67
    .end local p2    # "rc":I
    .local p0, "rc":I
    :goto_2
    int-to-long p2, p0

    invoke-static {p2, p3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    .end local p0    # "rc":I
    sget-object p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 67
    .end local p1    # "lastPiece":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    return-object p2

    .line 69
    .restart local v2    # "lastPiece":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_1
    move-exception p0

    move-object p1, v2

    .end local v2    # "lastPiece":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local p1    # "lastPiece":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_3
    sget-object p2, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final joinToImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;

    iget v1, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;

    invoke-direct {v0, p3}, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 6
    iget v2, p3, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-boolean p0, p3, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;->Z$0:Z

    .local p0, "closeOnEnd":Z
    iget-object p1, p3, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local p1, "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "closeOnEnd":Z
    .end local p1    # "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 7
    .local p0, "$this$joinToImpl":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .restart local p1    # "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p2, "closeOnEnd":Z
    iput-object p1, p3, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;->L$0:Ljava/lang/Object;

    iput-boolean p2, p3, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;->Z$0:Z

    const/4 v2, 0x1

    iput v2, p3, Lio/ktor/utils/io/internal/SequentialCopyToKt$joinToImpl$1;->label:I

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {p0, p1, v2, v3, p3}, Lio/ktor/utils/io/internal/SequentialCopyToKt;->copyToSequentialImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this$joinToImpl":Lio/ktor/utils/io/ByteChannelSequentialBase;
    if-ne p0, v1, :cond_1

    .line 6
    return-object v1

    .line 7
    :cond_1
    move p0, p2

    .line 8
    .end local p2    # "closeOnEnd":Z
    .local p0, "closeOnEnd":Z
    :goto_1
    if-eqz p0, :cond_2

    move-object p2, p1

    check-cast p2, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {p2}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 9
    .end local p0    # "closeOnEnd":Z
    .end local p1    # "dst":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
