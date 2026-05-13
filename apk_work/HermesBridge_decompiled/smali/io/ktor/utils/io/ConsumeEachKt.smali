.class public final Lio/ktor/utils/io/ConsumeEachKt;
.super Ljava/lang/Object;
.source "ConsumeEach.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConsumeEach.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConsumeEach.kt\nio/ktor/utils/io/ConsumeEachKt\n+ 2 ReadSession.kt\nio/ktor/utils/io/ReadSessionKt\n*L\n1#1,41:1\n20#2,13:42\n*S KotlinDebug\n*F\n+ 1 ConsumeEach.kt\nio/ktor/utils/io/ConsumeEachKt\n*L\n24#1:42,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aQ\u0010\u0000\u001a\u00020\u0001*\u00020\u00022:\u0010\u0003\u001a6\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\t0\u0004j\u0002`\u000bH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000c*j\u0010\r\"2\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\t0\u000422\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\t0\u0004\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "consumeEachBufferRange",
        "",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "visitor",
        "Lkotlin/Function2;",
        "Ljava/nio/ByteBuffer;",
        "Lkotlin/ParameterName;",
        "name",
        "buffer",
        "",
        "last",
        "Lio/ktor/utils/io/ConsumeEachBufferVisitor;",
        "(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ConsumeEachBufferVisitor",
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
.method public static final consumeEachBufferRange(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "-",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;

    iget v2, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;

    invoke-direct {v1, v0}, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v2, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->result:Ljava/lang/Object;

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 18
    iget v0, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->label:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "$i$f$consumeEachBufferRange":I
    const/4 v3, 0x0

    .local v3, "$i$f$read":I
    iget-object v4, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    .local v4, "cause$iv":Ljava/lang/Throwable;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    .end local v0    # "$i$f$consumeEachBufferRange":I
    .end local v3    # "$i$f$read":I
    .end local v4    # "cause$iv":Ljava/lang/Throwable;
    :pswitch_1
    const/4 v7, 0x0

    .local v7, "$i$f$consumeEachBufferRange":I
    const/4 v8, 0x0

    .local v8, "$i$f$read":I
    iget v0, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->I$0:I

    .local v0, "bytesRead$iv":I
    iget-object v9, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$5:Ljava/lang/Object;

    check-cast v9, Lio/ktor/utils/io/core/Buffer;

    .local v9, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    iget-object v10, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$4:Ljava/lang/Object;

    check-cast v10, Lio/ktor/utils/io/ByteReadChannel;

    .local v10, "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    iget-object v11, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$3:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v11, "lastChunkReported":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v12, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v12, "continueFlag":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v13, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/functions/Function2;

    .local v13, "visitor":Lkotlin/jvm/functions/Function2;
    iget-object v14, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lio/ktor/utils/io/ByteReadChannel;

    .local v14, "$this$consumeEachBufferRange":Lio/ktor/utils/io/ByteReadChannel;
    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v7

    move-object v7, v13

    goto/16 :goto_5

    .line 52
    .end local v0    # "bytesRead$iv":I
    .end local v11    # "lastChunkReported":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v12    # "continueFlag":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v13    # "visitor":Lkotlin/jvm/functions/Function2;
    .end local v14    # "$this$consumeEachBufferRange":Lio/ktor/utils/io/ByteReadChannel;
    :catchall_0
    move-exception v0

    move-object v4, v0

    move v0, v7

    move v13, v8

    goto/16 :goto_7

    .line 18
    .end local v7    # "$i$f$consumeEachBufferRange":I
    .end local v8    # "$i$f$read":I
    .end local v9    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v10    # "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    :pswitch_2
    const/4 v0, 0x0

    .local v0, "$i$f$consumeEachBufferRange":I
    const/4 v7, 0x0

    .local v7, "$i$f$read":I
    iget-object v8, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lio/ktor/utils/io/ByteReadChannel;

    .local v8, "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    iget-object v9, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v9, "lastChunkReported":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v10, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local v10, "continueFlag":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v11, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    .local v11, "visitor":Lkotlin/jvm/functions/Function2;
    iget-object v12, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/ByteReadChannel;

    .local v12, "$this$consumeEachBufferRange":Lio/ktor/utils/io/ByteReadChannel;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v13, v7

    move-object v14, v12

    move-object v7, v3

    move-object v12, v10

    move-object v3, v2

    move-object v10, v8

    move v8, v0

    move-object v0, v11

    move-object v11, v9

    goto :goto_2

    .end local v0    # "$i$f$consumeEachBufferRange":I
    .end local v7    # "$i$f$read":I
    .end local v8    # "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    .end local v9    # "lastChunkReported":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v10    # "continueFlag":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v11    # "visitor":Lkotlin/jvm/functions/Function2;
    .end local v12    # "$this$consumeEachBufferRange":Lio/ktor/utils/io/ByteReadChannel;
    :pswitch_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    .local v0, "$this$consumeEachBufferRange":Lio/ktor/utils/io/ByteReadChannel;
    move-object/from16 v7, p1

    .local v7, "visitor":Lkotlin/jvm/functions/Function2;
    const/4 v8, 0x0

    .line 19
    .local v8, "$i$f$consumeEachBufferRange":I
    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 20
    .local v9, "continueFlag":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 23
    .local v10, "lastChunkReported":Lkotlin/jvm/internal/Ref$BooleanRef;
    :goto_1
    iput-boolean v5, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 24
    move-object v11, v0

    .line 42
    .local v11, "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    nop

    .line 43
    const/4 v12, 0x1

    .line 42
    .local v12, "desiredSize$iv":I
    const/4 v13, 0x0

    .line 46
    .local v13, "$i$f$read":I
    iput-object v0, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$1:Ljava/lang/Object;

    iput-object v9, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$3:Ljava/lang/Object;

    iput-object v11, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$4:Ljava/lang/Object;

    iput-object v6, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$5:Ljava/lang/Object;

    iput v4, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->label:I

    invoke-static {v11, v12, v1}, Lio/ktor/utils/io/ReadSessionKt;->requestBuffer(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "desiredSize$iv":I
    if-ne v12, v3, :cond_1

    .line 18
    return-object v3

    .line 46
    :cond_1
    move-object v14, v0

    move-object v0, v7

    move-object v7, v3

    move-object v3, v2

    move-object v2, v12

    move-object v12, v9

    move-object/from16 v17, v11

    move-object v11, v10

    move-object/from16 v10, v17

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v7    # "visitor":Lkotlin/jvm/functions/Function2;
    .end local v9    # "continueFlag":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v0, "visitor":Lkotlin/jvm/functions/Function2;
    .local v3, "$result":Ljava/lang/Object;
    .local v10, "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    .local v11, "lastChunkReported":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v12, "continueFlag":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v14    # "$this$consumeEachBufferRange":Lio/ktor/utils/io/ByteReadChannel;
    :goto_2
    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    if-nez v2, :cond_2

    sget-object v2, Lio/ktor/utils/io/core/Buffer;->Companion:Lio/ktor/utils/io/core/Buffer$Companion;

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer$Companion;->getEmpty()Lio/ktor/utils/io/core/Buffer;

    move-result-object v2

    :cond_2
    move-object v9, v2

    .line 48
    .local v9, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    nop

    .line 49
    :try_start_1
    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v15

    int-to-long v4, v15

    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 p0, v7

    int-to-long v6, v15

    .local v2, "source":Ljava/nio/ByteBuffer;
    .local v4, "start":J
    .local v6, "endExclusive":J
    const/4 v15, 0x0

    .line 25
    .local v15, "$i$a$-read$default-ConsumeEachKt$consumeEachBufferRange$2":I
    nop

    .line 26
    cmp-long v16, v6, v4

    if-lez v16, :cond_3

    move/from16 p1, v8

    move-object/from16 v16, v9

    .end local v8    # "$i$f$consumeEachBufferRange":I
    .end local v9    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .local v16, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .local p1, "$i$f$consumeEachBufferRange":I
    sub-long v8, v6, v4

    :try_start_2
    invoke-static {v2, v4, v5, v8, v9}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;JJ)Ljava/nio/ByteBuffer;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 52
    .end local v0    # "visitor":Lkotlin/jvm/functions/Function2;
    .end local v2    # "source":Ljava/nio/ByteBuffer;
    .end local v4    # "start":J
    .end local v6    # "endExclusive":J
    .end local v11    # "lastChunkReported":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v12    # "continueFlag":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v14    # "$this$consumeEachBufferRange":Lio/ktor/utils/io/ByteReadChannel;
    .end local v15    # "$i$a$-read$default-ConsumeEachKt$consumeEachBufferRange$2":I
    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object v2, v3

    move-object/from16 v9, v16

    move-object/from16 v3, p0

    move/from16 v0, p1

    goto/16 :goto_7

    .line 26
    .end local v16    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local p1    # "$i$f$consumeEachBufferRange":I
    .restart local v0    # "visitor":Lkotlin/jvm/functions/Function2;
    .restart local v2    # "source":Ljava/nio/ByteBuffer;
    .restart local v4    # "start":J
    .restart local v6    # "endExclusive":J
    .restart local v8    # "$i$f$consumeEachBufferRange":I
    .restart local v9    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v11    # "lastChunkReported":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v12    # "continueFlag":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v14    # "$this$consumeEachBufferRange":Lio/ktor/utils/io/ByteReadChannel;
    .restart local v15    # "$i$a$-read$default-ConsumeEachKt$consumeEachBufferRange$2":I
    :cond_3
    move/from16 p1, v8

    move-object/from16 v16, v9

    .line 27
    .end local v2    # "source":Ljava/nio/ByteBuffer;
    .end local v4    # "start":J
    .end local v6    # "endExclusive":J
    .end local v8    # "$i$f$consumeEachBufferRange":I
    .end local v9    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v16    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local p1    # "$i$f$consumeEachBufferRange":I
    :try_start_3
    sget-object v2, Lio/ktor/utils/io/bits/Memory;->Companion:Lio/ktor/utils/io/bits/Memory$Companion;

    invoke-virtual {v2}, Lio/ktor/utils/io/bits/Memory$Companion;->getEmpty-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 25
    :goto_3
    move-object v2, v8

    .line 30
    .local v2, "nioBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-interface {v14}, Lio/ktor/utils/io/ByteReadChannel;->getAvailableForRead()I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne v4, v5, :cond_4

    :try_start_4
    invoke-interface {v14}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForWrite()Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    :try_start_5
    iput-boolean v4, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 31
    iget-boolean v4, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 33
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 49
    .end local v2    # "nioBuffer":Ljava/nio/ByteBuffer;
    .end local v15    # "$i$a$-read$default-ConsumeEachKt$consumeEachBufferRange$2":I
    move v2, v4

    .line 50
    .local v2, "bytesRead$iv":I
    iput-object v14, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$0:Ljava/lang/Object;

    iput-object v0, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$1:Ljava/lang/Object;

    iput-object v12, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$2:Ljava/lang/Object;

    iput-object v11, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$3:Ljava/lang/Object;

    iput-object v10, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$4:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v4, v16

    .end local v16    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .local v4, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :try_start_6
    iput-object v4, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$5:Ljava/lang/Object;

    iput v2, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->I$0:I

    const/4 v5, 0x2

    iput v5, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->label:I

    invoke-static {v10, v4, v2, v1}, Lio/ktor/utils/io/ReadSessionKt;->completeReadingFromBuffer(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v6, p0

    if-ne v5, v6, :cond_5

    .line 18
    return-object v6

    .line 50
    :cond_5
    move-object v7, v0

    move v0, v2

    move-object v2, v3

    move-object v9, v4

    move-object v3, v6

    move v8, v13

    move/from16 v4, p1

    .line 51
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v13    # "$i$f$read":I
    .end local p1    # "$i$f$consumeEachBufferRange":I
    .local v0, "bytesRead$iv":I
    .local v2, "$result":Ljava/lang/Object;
    .local v4, "$i$f$consumeEachBufferRange":I
    .restart local v7    # "visitor":Lkotlin/jvm/functions/Function2;
    .local v8, "$i$f$read":I
    .restart local v9    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :goto_5
    nop

    .line 36
    .end local v0    # "bytesRead$iv":I
    .end local v8    # "$i$f$read":I
    .end local v9    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v10    # "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    iget-boolean v0, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_6

    invoke-interface {v14}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37
    .end local v7    # "visitor":Lkotlin/jvm/functions/Function2;
    .end local v11    # "lastChunkReported":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v12    # "continueFlag":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v14    # "$this$consumeEachBufferRange":Lio/ktor/utils/io/ByteReadChannel;
    goto :goto_6

    .line 39
    .restart local v7    # "visitor":Lkotlin/jvm/functions/Function2;
    .restart local v11    # "lastChunkReported":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v12    # "continueFlag":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v14    # "$this$consumeEachBufferRange":Lio/ktor/utils/io/ByteReadChannel;
    :cond_6
    iget-boolean v0, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_7

    .line 40
    .end local v7    # "visitor":Lkotlin/jvm/functions/Function2;
    .end local v11    # "lastChunkReported":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v12    # "continueFlag":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v14    # "$this$consumeEachBufferRange":Lio/ktor/utils/io/ByteReadChannel;
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 39
    .restart local v7    # "visitor":Lkotlin/jvm/functions/Function2;
    .restart local v11    # "lastChunkReported":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v12    # "continueFlag":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v14    # "$this$consumeEachBufferRange":Lio/ktor/utils/io/ByteReadChannel;
    :cond_7
    move v8, v4

    move-object v10, v11

    move-object v9, v12

    move-object v0, v14

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 52
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v7    # "visitor":Lkotlin/jvm/functions/Function2;
    .end local v11    # "lastChunkReported":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v12    # "continueFlag":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v14    # "$this$consumeEachBufferRange":Lio/ktor/utils/io/ByteReadChannel;
    .restart local v3    # "$result":Ljava/lang/Object;
    .local v4, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v10    # "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    .restart local v13    # "$i$f$read":I
    .restart local p1    # "$i$f$consumeEachBufferRange":I
    :catchall_2
    move-exception v0

    move-object/from16 v6, p0

    move-object v2, v3

    move-object v9, v4

    move-object v3, v6

    move-object v4, v0

    move/from16 v0, p1

    goto :goto_7

    .end local v4    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v16    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :catchall_3
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v4, v16

    move-object v2, v3

    move-object v9, v4

    move-object v3, v6

    move-object v4, v0

    move/from16 v0, p1

    .end local v16    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    goto :goto_7

    .end local v4    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local p1    # "$i$f$consumeEachBufferRange":I
    .local v8, "$i$f$consumeEachBufferRange":I
    .restart local v9    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :catchall_4
    move-exception v0

    move-object v6, v7

    move/from16 p1, v8

    move-object v4, v9

    move-object v2, v3

    move-object v3, v6

    move-object v4, v0

    move/from16 v0, p1

    .line 53
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v8    # "$i$f$consumeEachBufferRange":I
    .local v0, "$i$f$consumeEachBufferRange":I
    .restart local v2    # "$result":Ljava/lang/Object;
    .local v4, "cause$iv":Ljava/lang/Throwable;
    :goto_7
    iput-object v4, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$1:Ljava/lang/Object;

    iput-object v5, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$2:Ljava/lang/Object;

    iput-object v5, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$3:Ljava/lang/Object;

    iput-object v5, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$4:Ljava/lang/Object;

    iput-object v5, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->L$5:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, v1, Lio/ktor/utils/io/ConsumeEachKt$consumeEachBufferRange$1;->label:I

    const/4 v5, 0x0

    invoke-static {v10, v9, v5, v1}, Lio/ktor/utils/io/ReadSessionKt;->completeReadingFromBuffer(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v9    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v10    # "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    if-ne v5, v3, :cond_8

    .line 18
    return-object v3

    .line 53
    :cond_8
    move v3, v13

    .line 54
    .end local v13    # "$i$f$read":I
    .local v3, "$i$f$read":I
    :goto_8
    throw v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final consumeEachBufferRange$$forInline(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .param p0, "$this$consumeEachBufferRange"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "visitor"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "-",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 19
    .local v2, "$i$f$consumeEachBufferRange":I
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object v3, v0

    .line 20
    .local v3, "continueFlag":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object v4, v0

    .line 23
    .local v4, "lastChunkReported":Lkotlin/jvm/internal/Ref$BooleanRef;
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 24
    move-object/from16 v6, p0

    .line 42
    .local v6, "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    nop

    .line 43
    const/4 v7, 0x1

    .line 42
    .local v7, "desiredSize$iv":I
    const/4 v8, 0x0

    .line 46
    .local v8, "$i$f$read":I
    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {v6, v7, v1}, Lio/ktor/utils/io/ReadSessionKt;->requestBuffer(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    const/4 v9, 0x1

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lio/ktor/utils/io/core/Buffer;->Companion:Lio/ktor/utils/io/core/Buffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer$Companion;->getEmpty()Lio/ktor/utils/io/core/Buffer;

    move-result-object v0

    :goto_0
    move-object v10, v0

    .line 48
    .local v10, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    nop

    .line 49
    :try_start_0
    invoke-virtual {v10}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/utils/io/bits/Memory;->box-impl(Ljava/nio/ByteBuffer;)Lio/ktor/utils/io/bits/Memory;

    move-result-object v0

    invoke-virtual {v10}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v11

    int-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v12

    int-to-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    move-object v11, v0

    check-cast v11, Lio/ktor/utils/io/bits/Memory;

    invoke-virtual {v0}, Lio/ktor/utils/io/bits/Memory;->unbox-impl()Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .local v0, "source":Ljava/nio/ByteBuffer;
    .local v14, "start":J
    move-wide v11, v12

    .local v11, "endExclusive":J
    const/4 v13, 0x0

    .line 25
    .local v13, "$i$a$-read$default-ConsumeEachKt$consumeEachBufferRange$2":I
    nop

    .line 26
    cmp-long v16, v11, v14

    if-lez v16, :cond_2

    move-object/from16 v17, v10

    .end local v10    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .local v17, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    sub-long v9, v11, v14

    :try_start_1
    invoke-static {v0, v14, v15, v9, v10}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;JJ)Ljava/nio/ByteBuffer;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 52
    .end local v0    # "source":Ljava/nio/ByteBuffer;
    .end local v11    # "endExclusive":J
    .end local v13    # "$i$a$-read$default-ConsumeEachKt$consumeEachBufferRange$2":I
    .end local v14    # "start":J
    :catchall_0
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v5, v17

    goto/16 :goto_5

    .line 27
    .end local v17    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v0    # "source":Ljava/nio/ByteBuffer;
    .restart local v10    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v11    # "endExclusive":J
    .restart local v13    # "$i$a$-read$default-ConsumeEachKt$consumeEachBufferRange$2":I
    .restart local v14    # "start":J
    :cond_2
    move-object/from16 v17, v10

    .end local v10    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v17    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :try_start_2
    sget-object v9, Lio/ktor/utils/io/bits/Memory;->Companion:Lio/ktor/utils/io/bits/Memory$Companion;

    invoke-virtual {v9}, Lio/ktor/utils/io/bits/Memory$Companion;->getEmpty-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 25
    :goto_1
    nop

    .line 30
    .local v9, "nioBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-interface/range {p0 .. p0}, Lio/ktor/utils/io/ByteReadChannel;->getAvailableForRead()I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne v10, v5, :cond_3

    :try_start_3
    invoke-interface/range {p0 .. p0}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForWrite()Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    :try_start_4
    iput-boolean v5, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 31
    iget-boolean v5, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v10, p1

    :try_start_5
    invoke-interface {v10, v9, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 33
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .end local v0    # "source":Ljava/nio/ByteBuffer;
    .end local v9    # "nioBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "endExclusive":J
    .end local v13    # "$i$a$-read$default-ConsumeEachKt$consumeEachBufferRange$2":I
    .end local v14    # "start":J
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 49
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 50
    .local v0, "bytesRead$iv":I
    const/4 v5, 0x0

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v5, v17

    .end local v17    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .local v5, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :try_start_6
    invoke-static {v6, v5, v0, v1}, Lio/ktor/utils/io/ReadSessionKt;->completeReadingFromBuffer(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    const/4 v9, 0x1

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 36
    .end local v0    # "bytesRead$iv":I
    .end local v5    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    .end local v7    # "desiredSize$iv":I
    .end local v8    # "$i$f$read":I
    iget-boolean v0, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_4

    invoke-interface/range {p0 .. p0}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37
    goto :goto_3

    .line 39
    :cond_4
    iget-boolean v0, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_0

    .line 40
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 52
    .restart local v5    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    .restart local v7    # "desiredSize$iv":I
    .restart local v8    # "$i$f$read":I
    :catchall_1
    move-exception v0

    goto :goto_5

    .end local v5    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v17    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v10, p1

    :goto_4
    move-object/from16 v5, v17

    .end local v17    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v5    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    goto :goto_5

    .end local v5    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v10    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :catchall_4
    move-exception v0

    move-object v5, v10

    move-object/from16 v10, p1

    .line 53
    .end local v10    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .local v0, "cause$iv":Ljava/lang/Throwable;
    .restart local v5    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :goto_5
    const/4 v9, 0x0

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {v6, v5, v9, v1}, Lio/ktor/utils/io/ReadSessionKt;->completeReadingFromBuffer(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    const/4 v9, 0x1

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 54
    throw v0
.end method
