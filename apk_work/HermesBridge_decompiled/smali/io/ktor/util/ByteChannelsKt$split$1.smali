.class final Lio/ktor/util/ByteChannelsKt$split$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ByteChannels.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/util/ByteChannelsKt;->split(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/coroutines/CoroutineScope;)Lkotlin/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteChannels.kt\nio/ktor/util/ByteChannelsKt$split$1\n+ 2 Closeable.kt\nio/ktor/utils/io/core/CloseableKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n8#2,4:91\n22#2,4:95\n12#2,9:99\n1#3:108\n*S KotlinDebug\n*F\n+ 1 ByteChannels.kt\nio/ktor/util/ByteChannelsKt$split$1\n*L\n25#1:91,4\n25#1:95,4\n25#1:99,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "io.ktor.util.ByteChannelsKt$split$1"
    f = "ByteChannels.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x19,
        0x1d
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "$this$launch",
        "$this$use$iv",
        "closed$iv"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $first:Lio/ktor/utils/io/ByteChannel;

.field final synthetic $second:Lio/ktor/utils/io/ByteChannel;

.field final synthetic $this_split:Lio/ktor/utils/io/ByteReadChannel;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteChannel;Lio/ktor/utils/io/ByteChannel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/ByteChannel;",
            "Lio/ktor/utils/io/ByteChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/util/ByteChannelsKt$split$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/util/ByteChannelsKt$split$1;->$this_split:Lio/ktor/utils/io/ByteReadChannel;

    iput-object p2, p0, Lio/ktor/util/ByteChannelsKt$split$1;->$first:Lio/ktor/utils/io/ByteChannel;

    iput-object p3, p0, Lio/ktor/util/ByteChannelsKt$split$1;->$second:Lio/ktor/utils/io/ByteChannel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lio/ktor/util/ByteChannelsKt$split$1;

    iget-object v1, p0, Lio/ktor/util/ByteChannelsKt$split$1;->$this_split:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v2, p0, Lio/ktor/util/ByteChannelsKt$split$1;->$first:Lio/ktor/utils/io/ByteChannel;

    iget-object v3, p0, Lio/ktor/util/ByteChannelsKt$split$1;->$second:Lio/ktor/utils/io/ByteChannel;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/ktor/util/ByteChannelsKt$split$1;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteChannel;Lio/ktor/utils/io/ByteChannel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/util/ByteChannelsKt$split$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/util/ByteChannelsKt$split$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/util/ByteChannelsKt$split$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/util/ByteChannelsKt$split$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/util/ByteChannelsKt$split$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 22
    move-object/from16 v1, p0

    iget v2, v1, Lio/ktor/util/ByteChannelsKt$split$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lio/ktor/util/ByteChannelsKt$split$1;
    move-object/from16 v5, p1

    .local v5, "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "$i$f$use":I
    const/4 v7, 0x0

    .local v7, "$i$a$-use-ByteChannelsKt$split$1$1":I
    iget v8, v2, Lio/ktor/util/ByteChannelsKt$split$1;->I$0:I

    .local v8, "closed$iv":Z
    iget-object v9, v2, Lio/ktor/util/ByteChannelsKt$split$1;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/io/Closeable;

    .local v9, "$this$use$iv":Ljava/io/Closeable;
    iget-object v10, v2, Lio/ktor/util/ByteChannelsKt$split$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    .local v10, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :try_start_0
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v15, v6

    move-object v6, v5

    move/from16 v23, v8

    move v8, v3

    move/from16 v3, v23

    goto/16 :goto_2

    .line 99
    .end local v7    # "$i$a$-use-ByteChannelsKt$split$1$1":I
    .end local v10    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 22
    .end local v2    # "this":Lio/ktor/util/ByteChannelsKt$split$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$use":I
    .end local v8    # "closed$iv":Z
    .end local v9    # "$this$use$iv":Ljava/io/Closeable;
    :pswitch_1
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/util/ByteChannelsKt$split$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-object v6, v2, Lio/ktor/util/ByteChannelsKt$split$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    .local v6, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :try_start_1
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v13, v6

    move-object v6, v5

    goto :goto_1

    .line 34
    .end local v6    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :catchall_1
    move-exception v0

    goto/16 :goto_6

    .line 22
    .end local v2    # "this":Lio/ktor/util/ByteChannelsKt$split$1;
    .end local v5    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ktor/util/ByteChannelsKt$split$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-object v6, v2, Lio/ktor/util/ByteChannelsKt$split$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    .line 23
    .restart local v6    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    nop

    .line 24
    :goto_0
    :try_start_2
    iget-object v7, v2, Lio/ktor/util/ByteChannelsKt$split$1;->$this_split:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v7}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v7

    if-nez v7, :cond_3

    .line 25
    iget-object v7, v2, Lio/ktor/util/ByteChannelsKt$split$1;->$this_split:Lio/ktor/utils/io/ByteReadChannel;

    move-object v8, v2

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v6, v2, Lio/ktor/util/ByteChannelsKt$split$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lio/ktor/util/ByteChannelsKt$split$1;->L$1:Ljava/lang/Object;

    iput v3, v2, Lio/ktor/util/ByteChannelsKt$split$1;->label:I

    const-wide/16 v9, 0x1000

    invoke-interface {v7, v9, v10, v8}, Lio/ktor/utils/io/ByteReadChannel;->readRemaining(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v7, v0, :cond_0

    .line 22
    return-object v0

    .line 25
    :cond_0
    move-object v13, v6

    move-object v6, v5

    move-object v5, v7

    .line 22
    .end local v5    # "$result":Ljava/lang/Object;
    .local v6, "$result":Ljava/lang/Object;
    .local v13, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :goto_1
    :try_start_3
    check-cast v5, Ljava/io/Closeable;

    iget-object v7, v2, Lio/ktor/util/ByteChannelsKt$split$1;->$first:Lio/ktor/utils/io/ByteChannel;

    iget-object v14, v2, Lio/ktor/util/ByteChannelsKt$split$1;->$second:Lio/ktor/utils/io/ByteChannel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .local v5, "$this$use$iv":Ljava/io/Closeable;
    const/4 v15, 0x0

    .line 91
    .local v15, "$i$f$use":I
    const/4 v12, 0x0

    .line 93
    .local v12, "closed$iv":Z
    nop

    .line 94
    :try_start_4
    move-object v8, v5

    check-cast v8, Lio/ktor/utils/io/core/ByteReadPacket;

    move-object v11, v8

    .local v11, "chunk":Lio/ktor/utils/io/core/ByteReadPacket;
    const/16 v16, 0x0

    .line 27
    .local v16, "$i$a$-use-ByteChannelsKt$split$1$1":I
    const/4 v10, 0x2

    new-array v9, v10, [Lkotlinx/coroutines/Deferred;

    new-instance v8, Lio/ktor/util/ByteChannelsKt$split$1$1$1;

    invoke-direct {v8, v7, v11, v4}, Lio/ktor/util/ByteChannelsKt$split$1$1$1;-><init>(Lio/ktor/utils/io/ByteChannel;Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v17, v8

    check-cast v17, Lkotlin/jvm/functions/Function2;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/4 v8, 0x0

    const/16 v20, 0x0

    move-object v7, v13

    move-object/from16 v21, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v17

    move-object v3, v11

    .end local v11    # "chunk":Lio/ktor/utils/io/core/ByteReadPacket;
    .local v3, "chunk":Lio/ktor/utils/io/core/ByteReadPacket;
    move/from16 v11, v18

    move/from16 v22, v12

    .end local v12    # "closed$iv":Z
    .local v22, "closed$iv":Z
    move-object/from16 v12, v19

    :try_start_5
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v21, v8

    .line 28
    new-instance v7, Lio/ktor/util/ByteChannelsKt$split$1$1$2;

    invoke-direct {v7, v14, v3, v4}, Lio/ktor/util/ByteChannelsKt$split$1$1$2;-><init>(Lio/ktor/utils/io/ByteChannel;Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)V

    move-object v10, v7

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v13

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v21, v8

    .line 27
    .end local v3    # "chunk":Lio/ktor/utils/io/core/ByteReadPacket;
    nop

    .line 26
    invoke-static/range {v21 .. v21}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 29
    iput-object v13, v2, Lio/ktor/util/ByteChannelsKt$split$1;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/util/ByteChannelsKt$split$1;->L$1:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move/from16 v7, v22

    .end local v22    # "closed$iv":Z
    .local v7, "closed$iv":Z
    :try_start_6
    iput v7, v2, Lio/ktor/util/ByteChannelsKt$split$1;->I$0:I

    const/4 v9, 0x2

    iput v9, v2, Lio/ktor/util/ByteChannelsKt$split$1;->label:I

    invoke-static {v3, v2}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-ne v3, v0, :cond_1

    .line 22
    return-object v0

    .line 29
    :cond_1
    move-object v9, v5

    move-object v10, v13

    move-object v5, v3

    move v3, v7

    move/from16 v7, v16

    .end local v5    # "$this$use$iv":Ljava/io/Closeable;
    .end local v13    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .end local v16    # "$i$a$-use-ByteChannelsKt$split$1$1":I
    .local v3, "closed$iv":Z
    .local v7, "$i$a$-use-ByteChannelsKt$split$1$1":I
    .restart local v9    # "$this$use$iv":Ljava/io/Closeable;
    .restart local v10    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :goto_2
    :try_start_7
    check-cast v5, Ljava/util/List;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 94
    .end local v7    # "$i$a$-use-ByteChannelsKt$split$1$1":I
    nop

    .line 95
    .end local v3    # "closed$iv":Z
    nop

    .line 96
    :try_start_8
    invoke-interface {v9}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 98
    .end local v9    # "$this$use$iv":Ljava/io/Closeable;
    nop

    .line 93
    move-object v5, v6

    move v3, v8

    move-object v6, v10

    .end local v15    # "$i$f$use":I
    goto/16 :goto_0

    .line 99
    .end local v10    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .restart local v3    # "closed$iv":Z
    .restart local v9    # "$this$use$iv":Ljava/io/Closeable;
    .restart local v15    # "$i$f$use":I
    :catchall_2
    move-exception v0

    move v8, v3

    move-object v5, v6

    move v6, v15

    goto :goto_3

    .end local v3    # "closed$iv":Z
    .end local v9    # "$this$use$iv":Ljava/io/Closeable;
    .restart local v5    # "$this$use$iv":Ljava/io/Closeable;
    .local v7, "closed$iv":Z
    :catchall_3
    move-exception v0

    move-object v9, v5

    move-object v5, v6

    move v8, v7

    move v6, v15

    goto :goto_3

    .end local v7    # "closed$iv":Z
    .restart local v22    # "closed$iv":Z
    :catchall_4
    move-exception v0

    move/from16 v7, v22

    move-object v9, v5

    move-object v5, v6

    move v8, v7

    move v6, v15

    .end local v22    # "closed$iv":Z
    .restart local v7    # "closed$iv":Z
    goto :goto_3

    .end local v7    # "closed$iv":Z
    .restart local v12    # "closed$iv":Z
    :catchall_5
    move-exception v0

    move v7, v12

    move-object v9, v5

    move-object v5, v6

    move v8, v7

    move v6, v15

    .end local v12    # "closed$iv":Z
    .end local v15    # "$i$f$use":I
    .local v5, "$result":Ljava/lang/Object;
    .local v6, "$i$f$use":I
    .restart local v8    # "closed$iv":Z
    .restart local v9    # "$this$use$iv":Ljava/io/Closeable;
    :goto_3
    move-object v3, v0

    .line 100
    .local v3, "first$iv":Ljava/lang/Throwable;
    nop

    .line 101
    const/4 v4, 0x1

    .line 102
    .end local v8    # "closed$iv":Z
    .local v4, "closed$iv":Z
    :try_start_9
    invoke-interface {v9}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_4

    .line 103
    :catchall_6
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 104
    .local v0, "second$iv":Ljava/lang/Throwable;
    :try_start_a
    invoke-static {v3, v0}, Lio/ktor/utils/io/core/CloseableJVMKt;->addSuppressedInternal(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 107
    .end local v0    # "second$iv":Ljava/lang/Throwable;
    :goto_4
    nop

    .end local v2    # "this":Lio/ktor/util/ByteChannelsKt$split$1;
    .end local v4    # "closed$iv":Z
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$use":I
    .end local v9    # "$this$use$iv":Ljava/io/Closeable;
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 95
    .end local v3    # "first$iv":Ljava/lang/Throwable;
    .restart local v2    # "this":Lio/ktor/util/ByteChannelsKt$split$1;
    .restart local v4    # "closed$iv":Z
    .restart local v5    # "$result":Ljava/lang/Object;
    .restart local v6    # "$i$f$use":I
    .restart local v9    # "$this$use$iv":Ljava/io/Closeable;
    :catchall_7
    move-exception v0

    if-nez v4, :cond_2

    .line 96
    .end local v4    # "closed$iv":Z
    :try_start_b
    invoke-interface {v9}, Ljava/io/Closeable;->close()V

    .end local v9    # "$this$use$iv":Ljava/io/Closeable;
    :cond_2
    nop

    .end local v2    # "this":Lio/ktor/util/ByteChannelsKt$split$1;
    .end local v5    # "$result":Ljava/lang/Object;
    throw v0

    .line 34
    .restart local v2    # "this":Lio/ktor/util/ByteChannelsKt$split$1;
    .local v6, "$result":Ljava/lang/Object;
    :catchall_8
    move-exception v0

    move-object v5, v6

    goto :goto_6

    .line 33
    .end local v6    # "$result":Ljava/lang/Object;
    .restart local v5    # "$result":Ljava/lang/Object;
    :cond_3
    iget-object v0, v2, Lio/ktor/util/ByteChannelsKt$split$1;->$this_split:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v0}, Lio/ktor/utils/io/ByteReadChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-nez v0, :cond_4

    .line 39
    nop

    :goto_5
    iget-object v0, v2, Lio/ktor/util/ByteChannelsKt$split$1;->$first:Lio/ktor/utils/io/ByteChannel;

    check-cast v0, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v0}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 40
    iget-object v0, v2, Lio/ktor/util/ByteChannelsKt$split$1;->$second:Lio/ktor/utils/io/ByteChannel;

    check-cast v0, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v0}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 41
    goto :goto_7

    .line 108
    .local v0, "it":Ljava/lang/Throwable;
    :cond_4
    const/4 v3, 0x0

    .line 33
    .local v3, "$i$a$-let-ByteChannelsKt$split$1$2":I
    nop

    .end local v2    # "this":Lio/ktor/util/ByteChannelsKt$split$1;
    .end local v5    # "$result":Ljava/lang/Object;
    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 35
    .end local v3    # "$i$a$-let-ByteChannelsKt$split$1$2":I
    .local v0, "cause":Ljava/lang/Throwable;
    .restart local v2    # "this":Lio/ktor/util/ByteChannelsKt$split$1;
    .restart local v5    # "$result":Ljava/lang/Object;
    :goto_6
    :try_start_d
    iget-object v3, v2, Lio/ktor/util/ByteChannelsKt$split$1;->$this_split:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v3, v0}, Lio/ktor/utils/io/ByteReadChannel;->cancel(Ljava/lang/Throwable;)Z

    .line 36
    iget-object v3, v2, Lio/ktor/util/ByteChannelsKt$split$1;->$first:Lio/ktor/utils/io/ByteChannel;

    invoke-interface {v3, v0}, Lio/ktor/utils/io/ByteChannel;->cancel(Ljava/lang/Throwable;)Z

    .line 37
    iget-object v3, v2, Lio/ktor/util/ByteChannelsKt$split$1;->$second:Lio/ktor/utils/io/ByteChannel;

    invoke-interface {v3, v0}, Lio/ktor/utils/io/ByteChannel;->cancel(Ljava/lang/Throwable;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 39
    nop

    .end local v0    # "cause":Ljava/lang/Throwable;
    goto :goto_5

    .line 42
    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 39
    :catchall_9
    move-exception v0

    iget-object v3, v2, Lio/ktor/util/ByteChannelsKt$split$1;->$first:Lio/ktor/utils/io/ByteChannel;

    check-cast v3, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v3}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 40
    iget-object v3, v2, Lio/ktor/util/ByteChannelsKt$split$1;->$second:Lio/ktor/utils/io/ByteChannel;

    check-cast v3, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v3}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
