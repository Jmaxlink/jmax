.class final Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FileChannels.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/util/cio/FileChannelsKt;->writeChannel(Ljava/io/File;Lkotlin/coroutines/CoroutineContext;)Lio/ktor/utils/io/ByteWriteChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/ReaderScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileChannels.kt\nio/ktor/util/cio/FileChannelsKt$writeChannel$1\n+ 2 Closeable.kt\nio/ktor/utils/io/core/CloseableKt\n*L\n1#1,100:1\n8#2,4:101\n22#2,4:105\n12#2,9:109\n*S KotlinDebug\n*F\n+ 1 FileChannels.kt\nio/ktor/util/cio/FileChannelsKt$writeChannel$1\n*L\n95#1:101,4\n95#1:105,4\n95#1:109,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/utils/io/ReaderScope;"
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
    c = "io.ktor.util.cio.FileChannelsKt$writeChannel$1"
    f = "FileChannels.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x60
    }
    m = "invokeSuspend"
    n = {
        "$this$use$iv",
        "file",
        "closed$iv"
    }
    s = {
        "L$0",
        "L$1",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $this_writeChannel:Ljava/io/File;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;->$this_writeChannel:Ljava/io/File;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;

    iget-object v1, p0, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;->$this_writeChannel:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;-><init>(Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lio/ktor/utils/io/ReaderScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ReaderScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/utils/io/ReaderScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;->invoke(Lio/ktor/utils/io/ReaderScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 93
    move-object/from16 v1, p0

    iget v2, v1, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "$i$f$use":I
    const/4 v0, 0x0

    .local v0, "$i$a$-use-FileChannelsKt$writeChannel$1$1":I
    iget v5, v2, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;->I$0:I

    .local v5, "closed$iv":Z
    iget-object v6, v2, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/io/RandomAccessFile;

    .local v6, "file":Ljava/io/RandomAccessFile;
    iget-object v7, v2, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/io/Closeable;

    .local v7, "$this$use$iv":Ljava/io/Closeable;
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v6

    move v6, v5

    move v5, v4

    move-object v4, v3

    goto :goto_0

    .line 109
    .end local v0    # "$i$a$-use-FileChannelsKt$writeChannel$1$1":I
    .end local v6    # "file":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .line 93
    .end local v2    # "this":Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "$i$f$use":I
    .end local v5    # "closed$iv":Z
    .end local v7    # "$this$use$iv":Ljava/io/Closeable;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget-object v4, v2, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/ReaderScope;

    .line 95
    .local v4, "$this$reader":Lio/ktor/utils/io/ReaderScope;
    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v6, v2, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;->$this_writeChannel:Ljava/io/File;

    const-string v7, "rw"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v5

    check-cast v7, Ljava/io/Closeable;

    .restart local v7    # "$this$use$iv":Ljava/io/Closeable;
    const/4 v5, 0x0

    .line 101
    .local v5, "$i$f$use":I
    const/4 v6, 0x0

    .line 103
    .local v6, "closed$iv":Z
    nop

    .line 104
    :try_start_1
    move-object v8, v7

    check-cast v8, Ljava/io/RandomAccessFile;

    move-object v15, v8

    .local v15, "file":Ljava/io/RandomAccessFile;
    const/16 v16, 0x0

    .line 96
    .local v16, "$i$a$-use-FileChannelsKt$writeChannel$1$1":I
    invoke-interface {v4}, Lio/ktor/utils/io/ReaderScope;->getChannel()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v8

    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    .end local v4    # "$this$reader":Lio/ktor/utils/io/ReaderScope;
    const-string v4, "file.channel"

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/nio/channels/WritableByteChannel;

    iput-object v7, v2, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;->L$0:Ljava/lang/Object;

    iput-object v15, v2, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;->L$1:Ljava/lang/Object;

    iput v6, v2, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;->I$0:I

    const/4 v4, 0x1

    iput v4, v2, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;->label:I

    const-wide/16 v10, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object v12, v2

    invoke-static/range {v8 .. v14}, Lio/ktor/utils/io/jvm/nio/WritingKt;->copyTo$default(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/channels/WritableByteChannel;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v4, v0, :cond_0

    .line 93
    return-object v0

    .line 96
    :cond_0
    move/from16 v0, v16

    move-object/from16 v17, v4

    move-object v4, v3

    move-object/from16 v3, v17

    .end local v3    # "$result":Ljava/lang/Object;
    .end local v16    # "$i$a$-use-FileChannelsKt$writeChannel$1$1":I
    .restart local v0    # "$i$a$-use-FileChannelsKt$writeChannel$1$1":I
    .local v4, "$result":Ljava/lang/Object;
    :goto_0
    :try_start_2
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 97
    .local v8, "copied":J
    invoke-virtual {v15, v8, v9}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 98
    nop

    .end local v0    # "$i$a$-use-FileChannelsKt$writeChannel$1$1":I
    .end local v8    # "copied":J
    .end local v15    # "file":Ljava/io/RandomAccessFile;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    nop

    .line 105
    .end local v6    # "closed$iv":Z
    nop

    .line 106
    invoke-interface {v7}, Ljava/io/Closeable;->close()V

    .line 108
    .end local v7    # "$this$use$iv":Ljava/io/Closeable;
    nop

    .line 103
    nop

    .line 99
    .end local v5    # "$i$f$use":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 109
    .restart local v5    # "$i$f$use":I
    .restart local v6    # "closed$iv":Z
    .restart local v7    # "$this$use$iv":Ljava/io/Closeable;
    :catchall_1
    move-exception v0

    move-object v3, v4

    move v4, v5

    move v5, v6

    goto :goto_1

    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    move v4, v5

    move v5, v6

    .end local v6    # "closed$iv":Z
    .local v4, "$i$f$use":I
    .local v5, "closed$iv":Z
    :goto_1
    move-object v6, v0

    .line 110
    .local v6, "first$iv":Ljava/lang/Throwable;
    nop

    .line 111
    const/4 v5, 0x1

    .line 112
    :try_start_3
    invoke-interface {v7}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    .line 113
    :catchall_3
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 114
    .local v0, "second$iv":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {v6, v0}, Lio/ktor/utils/io/core/CloseableJVMKt;->addSuppressedInternal(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 117
    .end local v0    # "second$iv":Ljava/lang/Throwable;
    :goto_2
    nop

    .end local v2    # "this":Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "$i$f$use":I
    .end local v5    # "closed$iv":Z
    .end local v7    # "$this$use$iv":Ljava/io/Closeable;
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 105
    .end local v6    # "first$iv":Ljava/lang/Throwable;
    .restart local v2    # "this":Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v4    # "$i$f$use":I
    .restart local v5    # "closed$iv":Z
    .restart local v7    # "$this$use$iv":Ljava/io/Closeable;
    :catchall_4
    move-exception v0

    if-nez v5, :cond_1

    .line 106
    .end local v5    # "closed$iv":Z
    invoke-interface {v7}, Ljava/io/Closeable;->close()V

    .end local v7    # "$this$use$iv":Ljava/io/Closeable;
    :cond_1
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
