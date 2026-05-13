.class public final Lio/ktor/utils/io/jvm/javaio/WritingKt;
.super Ljava/lang/Object;
.source "Writing.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWriting.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Writing.kt\nio/ktor/utils/io/jvm/javaio/WritingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,35:1\n1#2:36\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0001H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0007"
    }
    d2 = {
        "copyTo",
        "",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "out",
        "Ljava/io/OutputStream;",
        "limit",
        "(Lio/ktor/utils/io/ByteReadChannel;Ljava/io/OutputStream;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public static final copyTo(Lio/ktor/utils/io/ByteReadChannel;Ljava/io/OutputStream;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Ljava/io/OutputStream;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;

    iget v2, v1, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;

    invoke-direct {v1, v0}, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v2, v1, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->result:Ljava/lang/Object;

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 13
    iget v3, v1, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->label:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-wide v6, v1, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->J$2:J

    .local v6, "bufferSize":J
    iget-wide v8, v1, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->J$1:J

    .local v8, "copied":J
    iget-wide v10, v1, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->J$0:J

    .local v10, "limit":J
    iget-object v3, v1, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->L$2:Ljava/lang/Object;

    check-cast v3, [B

    .local v3, "buffer":[B
    iget-object v12, v1, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/io/OutputStream;

    .local v12, "out":Ljava/io/OutputStream;
    iget-object v13, v1, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lio/ktor/utils/io/ByteReadChannel;

    .local v13, "$this$copyTo":Lio/ktor/utils/io/ByteReadChannel;
    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v14, v13

    move-object v13, v12

    move-wide v11, v10

    move-wide v9, v8

    move-wide v7, v6

    move-object v6, v3

    move-object v3, v2

    goto/16 :goto_3

    .line 32
    .end local v6    # "bufferSize":J
    .end local v8    # "copied":J
    .end local v10    # "limit":J
    .end local v12    # "out":Ljava/io/OutputStream;
    .end local v13    # "$this$copyTo":Lio/ktor/utils/io/ByteReadChannel;
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 13
    .end local v3    # "buffer":[B
    :pswitch_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p0

    .local v3, "$this$copyTo":Lio/ktor/utils/io/ByteReadChannel;
    move-wide/from16 v6, p2

    .local v6, "limit":J
    move-object/from16 v8, p1

    .line 14
    .local v8, "out":Ljava/io/OutputStream;
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-ltz v9, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    move v9, v5

    :goto_1
    if-eqz v9, :cond_6

    .line 16
    invoke-static {}, Lio/ktor/utils/io/pool/ByteArrayPoolKt;->getByteArrayPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v9

    invoke-interface {v9}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 17
    .local v9, "buffer":[B
    nop

    .line 18
    const-wide/16 v10, 0x0

    .line 19
    .local v10, "copied":J
    :try_start_1
    array-length v12, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    int-to-long v12, v12

    move-wide/from16 v16, v12

    move-object v13, v3

    move-object v12, v8

    move-object v3, v9

    move-wide v8, v10

    move-wide v10, v6

    move-wide/from16 v6, v16

    .line 21
    .end local v9    # "buffer":[B
    .local v3, "buffer":[B
    .local v6, "bufferSize":J
    .local v8, "copied":J
    .local v10, "limit":J
    .restart local v12    # "out":Ljava/io/OutputStream;
    .restart local v13    # "$this$copyTo":Lio/ktor/utils/io/ByteReadChannel;
    :goto_2
    cmp-long v14, v8, v10

    if-gez v14, :cond_5

    .line 22
    sub-long v14, v10, v8

    :try_start_2
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v14, v14

    iput-object v13, v1, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->L$2:Ljava/lang/Object;

    iput-wide v10, v1, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->J$0:J

    iput-wide v8, v1, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->J$1:J

    iput-wide v6, v1, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->J$2:J

    iput v4, v1, Lio/ktor/utils/io/jvm/javaio/WritingKt$copyTo$1;->label:I

    invoke-interface {v13, v3, v5, v14, v1}, Lio/ktor/utils/io/ByteReadChannel;->readAvailable([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v14, v0, :cond_2

    .line 13
    return-object v0

    .line 22
    :cond_2
    move-object/from16 v16, v3

    move-object v3, v2

    move-object v2, v14

    move-object v14, v13

    move-object v13, v12

    move-wide v11, v10

    move-wide v9, v8

    move-wide v7, v6

    move-object/from16 v6, v16

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v8    # "copied":J
    .end local v10    # "limit":J
    .end local v12    # "out":Ljava/io/OutputStream;
    .local v3, "$result":Ljava/lang/Object;
    .local v6, "buffer":[B
    .local v7, "bufferSize":J
    .local v9, "copied":J
    .local v11, "limit":J
    .local v13, "out":Ljava/io/OutputStream;
    .local v14, "$this$copyTo":Lio/ktor/utils/io/ByteReadChannel;
    :goto_3
    :try_start_3
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 23
    .local v2, "rc":I
    const/4 v15, -0x1

    if-eq v2, v15, :cond_4

    .line 24
    if-lez v2, :cond_3

    .line 25
    invoke-virtual {v13, v6, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 26
    int-to-long v4, v2

    add-long/2addr v4, v9

    move-object v2, v3

    move-object v3, v6

    move-wide v6, v7

    move-wide v10, v11

    move-object v12, v13

    move-object v13, v14

    move-wide v8, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .end local v2    # "rc":I
    .end local v9    # "copied":J
    .local v4, "copied":J
    goto :goto_2

    .line 24
    .end local v4    # "copied":J
    .restart local v2    # "rc":I
    .restart local v9    # "copied":J
    :cond_3
    move-object v2, v3

    move-object v3, v6

    move-wide v6, v7

    move-wide v8, v9

    move-wide v10, v11

    move-object v12, v13

    move-object v13, v14

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_2

    .line 23
    :cond_4
    move-object v2, v3

    move-object v3, v6

    move-wide v8, v9

    goto :goto_4

    .line 32
    .end local v2    # "rc":I
    .end local v7    # "bufferSize":J
    .end local v9    # "copied":J
    .end local v11    # "limit":J
    .end local v13    # "out":Ljava/io/OutputStream;
    .end local v14    # "$this$copyTo":Lio/ktor/utils/io/ByteReadChannel;
    :catchall_1
    move-exception v0

    move-object v2, v3

    move-object v3, v6

    goto :goto_5

    .line 30
    .end local v6    # "buffer":[B
    .local v2, "$result":Ljava/lang/Object;
    .local v3, "buffer":[B
    .restart local v8    # "copied":J
    :cond_5
    :goto_4
    :try_start_4
    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 32
    .end local v8    # "copied":J
    invoke-static {}, Lio/ktor/utils/io/pool/ByteArrayPoolKt;->getByteArrayPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v4

    invoke-interface {v4, v3}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 30
    .end local v3    # "buffer":[B
    return-object v0

    .line 32
    .local v9, "buffer":[B
    :catchall_2
    move-exception v0

    move-object v3, v9

    .end local v9    # "buffer":[B
    .restart local v3    # "buffer":[B
    :goto_5
    invoke-static {}, Lio/ktor/utils/io/pool/ByteArrayPoolKt;->getByteArrayPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v4

    invoke-interface {v4, v3}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    throw v0

    .line 36
    .end local v3    # "buffer":[B
    .local v6, "limit":J
    :cond_6
    const/4 v0, 0x0

    .line 14
    .local v0, "$i$a$-require-WritingKt$copyTo$2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Limit shouldn\'t be negative: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-WritingKt$copyTo$2":I
    .end local v6    # "limit":J
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic copyTo$default(Lio/ktor/utils/io/ByteReadChannel;Ljava/io/OutputStream;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-wide p2, 0x7fffffffffffffffL

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/jvm/javaio/WritingKt;->copyTo(Lio/ktor/utils/io/ByteReadChannel;Ljava/io/OutputStream;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
