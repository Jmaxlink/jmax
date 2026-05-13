.class final Lio/ktor/util/cio/FileChannelsKt$readChannel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FileChannels.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/util/cio/FileChannelsKt;->readChannel(Ljava/io/File;JJLkotlin/coroutines/CoroutineContext;)Lio/ktor/utils/io/ByteReadChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/WriterScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileChannels.kt\nio/ktor/util/cio/FileChannelsKt$readChannel$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Closeable.kt\nio/ktor/utils/io/core/CloseableKt\n*L\n1#1,100:1\n1#2:101\n8#3,4:102\n22#3,4:106\n12#3,9:110\n*S KotlinDebug\n*F\n+ 1 FileChannels.kt\nio/ktor/util/cio/FileChannelsKt$readChannel$1\n*L\n36#1:102,4\n36#1:106,4\n36#1:110,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/utils/io/WriterScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.util.cio.FileChannelsKt$readChannel$1"
    f = "FileChannels.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x2c,
        0x3f
    }
    m = "invokeSuspend"
    n = {
        "$this$use$iv",
        "closed$iv",
        "$this$use$iv",
        "closed$iv"
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $endInclusive:J

.field final synthetic $fileLength:J

.field final synthetic $start:J

.field final synthetic $this_readChannel:Ljava/io/File;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(JJJLjava/io/File;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/util/cio/FileChannelsKt$readChannel$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->$start:J

    iput-wide p3, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->$endInclusive:J

    iput-wide p5, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->$fileLength:J

    iput-object p7, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->$this_readChannel:Ljava/io/File;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v9, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;

    iget-wide v1, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->$start:J

    iget-wide v3, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->$endInclusive:J

    iget-wide v5, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->$fileLength:J

    iget-object v7, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->$this_readChannel:Ljava/io/File;

    move-object v0, v9

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;-><init>(JJJLjava/io/File;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v9, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlin/coroutines/Continuation;

    return-object v9
.end method

.method public final invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/WriterScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/utils/io/WriterScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 29
    move-object/from16 v1, p0

    iget v2, v1, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lio/ktor/util/cio/FileChannelsKt$readChannel$1;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "$i$f$use":I
    const/4 v0, 0x0

    .local v0, "$i$a$-use-FileChannelsKt$readChannel$1$3":I
    iget v5, v2, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->I$0:I

    .local v5, "closed$iv":Z
    iget-object v6, v2, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/io/Closeable;

    .local v6, "$this$use$iv":Ljava/io/Closeable;
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .end local v0    # "$i$a$-use-FileChannelsKt$readChannel$1$3":I
    .end local v2    # "this":Lio/ktor/util/cio/FileChannelsKt$readChannel$1;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "$i$f$use":I
    .end local v5    # "closed$iv":Z
    .end local v6    # "$this$use$iv":Ljava/io/Closeable;
    :pswitch_1
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/util/cio/FileChannelsKt$readChannel$1;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    const/4 v4, 0x0

    .restart local v4    # "$i$f$use":I
    const/4 v0, 0x0

    .restart local v0    # "$i$a$-use-FileChannelsKt$readChannel$1$3":I
    iget v5, v2, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->I$0:I

    .restart local v5    # "closed$iv":Z
    iget-object v6, v2, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/io/Closeable;

    .restart local v6    # "$this$use$iv":Ljava/io/Closeable;
    :try_start_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 110
    .end local v0    # "$i$a$-use-FileChannelsKt$readChannel$1$3":I
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 29
    .end local v2    # "this":Lio/ktor/util/cio/FileChannelsKt$readChannel$1;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "$i$f$use":I
    .end local v5    # "closed$iv":Z
    .end local v6    # "$this$use$iv":Ljava/io/Closeable;
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/util/cio/FileChannelsKt$readChannel$1;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget-object v4, v2, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/WriterScope;

    .line 30
    .local v4, "$this$writer":Lio/ktor/utils/io/WriterScope;
    iget-wide v5, v2, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->$start:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v6, 0x0

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    iget-wide v10, v2, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->$start:J

    if-eqz v5, :cond_8

    .line 31
    iget-wide v10, v2, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->$endInclusive:J

    iget-wide v12, v2, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->$fileLength:J

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    cmp-long v5, v10, v12

    if-gtz v5, :cond_1

    const/4 v6, 0x1

    :cond_1
    iget-wide v10, v2, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->$fileLength:J

    iget-wide v12, v2, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->$endInclusive:J

    if-eqz v6, :cond_7

    .line 36
    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v6, v2, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->$this_readChannel:Ljava/io/File;

    const-string v10, "r"

    invoke-direct {v5, v6, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v5

    check-cast v6, Ljava/io/Closeable;

    .restart local v6    # "$this$use$iv":Ljava/io/Closeable;
    iget-wide v10, v2, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->$start:J

    iget-wide v12, v2, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->$endInclusive:J

    const/4 v5, 0x0

    .line 102
    .local v5, "$i$f$use":I
    const/4 v14, 0x0

    .line 104
    .local v14, "closed$iv":Z
    nop

    .line 105
    :try_start_2
    move-object v15, v6

    check-cast v15, Ljava/io/RandomAccessFile;

    .local v15, "file":Ljava/io/RandomAccessFile;
    const/16 v16, 0x0

    .line 37
    .local v16, "$i$a$-use-FileChannelsKt$readChannel$1$3":I
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    .end local v15    # "file":Ljava/io/RandomAccessFile;
    const-string v15, "file.channel"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .local v9, "fileChannel":Ljava/nio/channels/FileChannel;
    cmp-long v7, v10, v7

    if-lez v7, :cond_2

    .line 39
    invoke-virtual {v9, v10, v11}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 42
    :cond_2
    const-wide/16 v7, -0x1

    cmp-long v7, v12, v7

    if-nez v7, :cond_4

    .line 44
    invoke-interface {v4}, Lio/ktor/utils/io/WriterScope;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v7

    new-instance v8, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;

    const/4 v10, 0x0

    invoke-direct {v8, v4, v9, v10}, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;-><init>(Lio/ktor/utils/io/WriterScope;Ljava/nio/channels/FileChannel;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    iput-object v6, v2, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->L$0:Ljava/lang/Object;

    iput v14, v2, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->I$0:I

    const/4 v10, 0x1

    iput v10, v2, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->label:I

    invoke-interface {v7, v8, v2}, Lio/ktor/utils/io/ByteWriteChannel;->writeSuspendSession(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    .end local v4    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    .end local v9    # "fileChannel":Ljava/nio/channels/FileChannel;
    if-ne v7, v0, :cond_3

    .line 29
    return-object v0

    .line 44
    :cond_3
    move v4, v5

    move v5, v14

    move/from16 v0, v16

    .line 59
    .end local v14    # "closed$iv":Z
    .end local v16    # "$i$a$-use-FileChannelsKt$readChannel$1$3":I
    .restart local v0    # "$i$a$-use-FileChannelsKt$readChannel$1$3":I
    .local v4, "$i$f$use":I
    .local v5, "closed$iv":Z
    :goto_1
    goto :goto_3

    .line 62
    .end local v0    # "$i$a$-use-FileChannelsKt$readChannel$1$3":I
    .local v4, "$this$writer":Lio/ktor/utils/io/WriterScope;
    .local v5, "$i$f$use":I
    .restart local v9    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v14    # "closed$iv":Z
    .restart local v16    # "$i$a$-use-FileChannelsKt$readChannel$1$3":I
    :cond_4
    new-instance v7, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .local v7, "position":Lkotlin/jvm/internal/Ref$LongRef;
    iput-wide v10, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 63
    invoke-interface {v4}, Lio/ktor/utils/io/WriterScope;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v8

    new-instance v10, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$2;

    invoke-direct {v10, v12, v13, v7, v9}, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$2;-><init>(JLkotlin/jvm/internal/Ref$LongRef;Ljava/nio/channels/FileChannel;)V

    check-cast v10, Lkotlin/jvm/functions/Function1;

    iput-object v6, v2, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->L$0:Ljava/lang/Object;

    iput v14, v2, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->I$0:I

    const/4 v11, 0x2

    iput v11, v2, Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->label:I

    invoke-interface {v8, v10, v2}, Lio/ktor/utils/io/ByteWriteChannel;->writeWhile(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v4    # "$this$writer":Lio/ktor/utils/io/WriterScope;
    .end local v7    # "position":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v9    # "fileChannel":Ljava/nio/channels/FileChannel;
    if-ne v8, v0, :cond_5

    .line 29
    return-object v0

    .line 63
    :cond_5
    move v4, v5

    move v5, v14

    move/from16 v0, v16

    .line 79
    .end local v14    # "closed$iv":Z
    .end local v16    # "$i$a$-use-FileChannelsKt$readChannel$1$3":I
    .restart local v0    # "$i$a$-use-FileChannelsKt$readChannel$1$3":I
    .local v4, "$i$f$use":I
    .local v5, "closed$iv":Z
    :goto_2
    nop

    .end local v0    # "$i$a$-use-FileChannelsKt$readChannel$1$3":I
    :goto_3
    :try_start_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    nop

    .line 106
    .end local v5    # "closed$iv":Z
    nop

    .line 107
    invoke-interface {v6}, Ljava/io/Closeable;->close()V

    .line 109
    .end local v6    # "$this$use$iv":Ljava/io/Closeable;
    nop

    .line 104
    nop

    .line 80
    .end local v4    # "$i$f$use":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 110
    .local v5, "$i$f$use":I
    .restart local v6    # "$this$use$iv":Ljava/io/Closeable;
    .restart local v14    # "closed$iv":Z
    :catchall_1
    move-exception v0

    move v4, v5

    move v5, v14

    .end local v14    # "closed$iv":Z
    .restart local v4    # "$i$f$use":I
    .local v5, "closed$iv":Z
    :goto_4
    move-object v7, v0

    .line 111
    .local v7, "first$iv":Ljava/lang/Throwable;
    nop

    .line 112
    const/4 v5, 0x1

    .line 113
    :try_start_4
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    .line 114
    :catchall_2
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 115
    .local v0, "second$iv":Ljava/lang/Throwable;
    :try_start_5
    invoke-static {v7, v0}, Lio/ktor/utils/io/core/CloseableJVMKt;->addSuppressedInternal(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 118
    .end local v0    # "second$iv":Ljava/lang/Throwable;
    :goto_5
    nop

    .end local v2    # "this":Lio/ktor/util/cio/FileChannelsKt$readChannel$1;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "$i$f$use":I
    .end local v5    # "closed$iv":Z
    .end local v6    # "$this$use$iv":Ljava/io/Closeable;
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 106
    .end local v7    # "first$iv":Ljava/lang/Throwable;
    .restart local v2    # "this":Lio/ktor/util/cio/FileChannelsKt$readChannel$1;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v4    # "$i$f$use":I
    .restart local v5    # "closed$iv":Z
    .restart local v6    # "$this$use$iv":Ljava/io/Closeable;
    :catchall_3
    move-exception v0

    if-nez v5, :cond_6

    .line 107
    .end local v5    # "closed$iv":Z
    invoke-interface {v6}, Ljava/io/Closeable;->close()V

    .end local v6    # "$this$use$iv":Ljava/io/Closeable;
    :cond_6
    throw v0

    .line 31
    .end local v4    # "$i$f$use":I
    :cond_7
    const/4 v0, 0x0

    .line 32
    .local v0, "$i$a$-require-FileChannelsKt$readChannel$1$2":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endInclusive points to the position out of the file: file size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", endInclusive = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    .end local v0    # "$i$a$-require-FileChannelsKt$readChannel$1$2":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 101
    :cond_8
    const/4 v0, 0x0

    .line 30
    .local v0, "$i$a$-require-FileChannelsKt$readChannel$1$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start position shouldn\'t be negative but it is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-FileChannelsKt$readChannel$1$1":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
