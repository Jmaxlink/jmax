.class final Lio/ktor/util/ByteChannelsKt$copyToBoth$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ByteChannels.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/util/ByteChannelsKt;->copyToBoth(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/ByteWriteChannel;)V
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
    value = "SMAP\nByteChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteChannels.kt\nio/ktor/util/ByteChannelsKt$copyToBoth$1\n+ 2 Closeable.kt\nio/ktor/utils/io/core/CloseableKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n8#2,4:91\n22#2,4:95\n12#2,9:99\n1#3:108\n*S KotlinDebug\n*F\n+ 1 ByteChannels.kt\nio/ktor/util/ByteChannelsKt$copyToBoth$1\n*L\n59#1:91,4\n59#1:95,4\n59#1:99,9\n*E\n"
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
    c = "io.ktor.util.ByteChannelsKt$copyToBoth$1"
    f = "ByteChannels.kt"
    i = {
        0x1,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x3b,
        0x3d,
        0x3e
    }
    m = "invokeSuspend"
    n = {
        "$this$use$iv",
        "it",
        "closed$iv",
        "$this$use$iv",
        "closed$iv"
    }
    s = {
        "L$0",
        "L$4",
        "I$0",
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $first:Lio/ktor/utils/io/ByteWriteChannel;

.field final synthetic $second:Lio/ktor/utils/io/ByteWriteChannel;

.field final synthetic $this_copyToBoth:Lio/ktor/utils/io/ByteReadChannel;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/util/ByteChannelsKt$copyToBoth$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->$this_copyToBoth:Lio/ktor/utils/io/ByteReadChannel;

    iput-object p2, p0, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->$first:Lio/ktor/utils/io/ByteWriteChannel;

    iput-object p3, p0, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->$second:Lio/ktor/utils/io/ByteWriteChannel;

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

    new-instance v0, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;

    iget-object v1, p0, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->$this_copyToBoth:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v2, p0, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->$first:Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v3, p0, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->$second:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 56
    move-object/from16 v2, p0

    iget v0, v2, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->label:I

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v4, p0

    .local v4, "this":Lio/ktor/util/ByteChannelsKt$copyToBoth$1;
    move-object/from16 v5, p1

    .local v5, "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "$i$f$use":I
    const/4 v7, 0x0

    .local v7, "$i$a$-use-ByteChannelsKt$copyToBoth$1$1":I
    iget v8, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->I$0:I

    .local v8, "closed$iv":Z
    iget-object v0, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$3:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v0, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$2:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v0, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$1:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v0, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$0:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/io/Closeable;

    .local v12, "$this$use$iv":Ljava/io/Closeable;
    :try_start_0
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .end local v4    # "this":Lio/ktor/util/ByteChannelsKt$copyToBoth$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$use":I
    .end local v7    # "$i$a$-use-ByteChannelsKt$copyToBoth$1$1":I
    .end local v8    # "closed$iv":Z
    .end local v12    # "$this$use$iv":Ljava/io/Closeable;
    :pswitch_1
    move-object/from16 v4, p0

    .restart local v4    # "this":Lio/ktor/util/ByteChannelsKt$copyToBoth$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    .restart local v6    # "$i$f$use":I
    const/4 v7, 0x0

    .restart local v7    # "$i$a$-use-ByteChannelsKt$copyToBoth$1$1":I
    iget v8, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->I$0:I

    .restart local v8    # "closed$iv":Z
    iget-object v0, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/core/ByteReadPacket;

    .local v0, "it":Lio/ktor/utils/io/core/ByteReadPacket;
    iget-object v9, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lio/ktor/utils/io/ByteReadChannel;

    iget-object v10, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v11, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v12, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/io/Closeable;

    .restart local v12    # "$this$use$iv":Ljava/io/Closeable;
    :try_start_1
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 63
    .end local v0    # "it":Lio/ktor/utils/io/core/ByteReadPacket;
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 56
    .end local v4    # "this":Lio/ktor/util/ByteChannelsKt$copyToBoth$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$use":I
    .end local v7    # "$i$a$-use-ByteChannelsKt$copyToBoth$1$1":I
    .end local v8    # "closed$iv":Z
    .end local v12    # "$this$use$iv":Ljava/io/Closeable;
    :pswitch_2
    move-object/from16 v4, p0

    .restart local v4    # "this":Lio/ktor/util/ByteChannelsKt$copyToBoth$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    :try_start_2
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v6, v5

    goto :goto_1

    .line 72
    :catchall_1
    move-exception v0

    goto/16 :goto_8

    .line 56
    .end local v4    # "this":Lio/ktor/util/ByteChannelsKt$copyToBoth$1;
    .end local v5    # "$result":Ljava/lang/Object;
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    .local v0, "this":Lio/ktor/util/ByteChannelsKt$copyToBoth$1;
    move-object/from16 v4, p1

    .line 57
    .local v4, "$result":Ljava/lang/Object;
    move-object v5, v4

    move-object v4, v0

    .line 58
    .end local v0    # "this":Lio/ktor/util/ByteChannelsKt$copyToBoth$1;
    .local v4, "this":Lio/ktor/util/ByteChannelsKt$copyToBoth$1;
    .restart local v5    # "$result":Ljava/lang/Object;
    :goto_0
    :try_start_3
    iget-object v0, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->$this_copyToBoth:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v0}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->$first:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-interface {v0}, Lio/ktor/utils/io/ByteWriteChannel;->isClosedForWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->$second:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-interface {v0}, Lio/ktor/utils/io/ByteWriteChannel;->isClosedForWrite()Z

    move-result v0

    if-nez v0, :cond_5

    .line 59
    :cond_0
    iget-object v0, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->$this_copyToBoth:Lio/ktor/utils/io/ByteReadChannel;

    move-object v6, v4

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v3, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$0:Ljava/lang/Object;

    iput-object v3, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$1:Ljava/lang/Object;

    iput-object v3, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$2:Ljava/lang/Object;

    iput-object v3, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$3:Ljava/lang/Object;

    iput-object v3, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$4:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->label:I

    const-wide/16 v7, 0x1000

    invoke-interface {v0, v7, v8, v6}, Lio/ktor/utils/io/ByteReadChannel;->readRemaining(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v0, v1, :cond_1

    .line 56
    return-object v1

    .line 59
    :cond_1
    move-object v6, v5

    move-object v5, v0

    .line 56
    .end local v5    # "$result":Ljava/lang/Object;
    .local v6, "$result":Ljava/lang/Object;
    :goto_1
    :try_start_4
    check-cast v5, Ljava/io/Closeable;

    iget-object v11, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->$first:Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v10, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->$second:Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v9, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->$this_copyToBoth:Lio/ktor/utils/io/ByteReadChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    move-object v12, v5

    .restart local v12    # "$this$use$iv":Ljava/io/Closeable;
    const/4 v5, 0x0

    .line 91
    .local v5, "$i$f$use":I
    const/4 v8, 0x0

    .line 93
    .restart local v8    # "closed$iv":Z
    nop

    .line 94
    :try_start_5
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/ByteReadPacket;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .local v0, "it":Lio/ktor/utils/io/core/ByteReadPacket;
    const/4 v7, 0x0

    .line 60
    .restart local v7    # "$i$a$-use-ByteChannelsKt$copyToBoth$1$1":I
    nop

    .line 61
    :try_start_6
    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->copy()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v13

    iput-object v12, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$0:Ljava/lang/Object;

    iput-object v11, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$1:Ljava/lang/Object;

    iput-object v10, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$2:Ljava/lang/Object;

    iput-object v9, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$3:Ljava/lang/Object;

    iput-object v0, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$4:Ljava/lang/Object;

    iput v8, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->I$0:I

    const/4 v14, 0x2

    iput v14, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->label:I

    invoke-interface {v11, v13, v4}, Lio/ktor/utils/io/ByteWriteChannel;->writePacket(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-ne v13, v1, :cond_2

    .line 56
    return-object v1

    .line 61
    :cond_2
    move-object v15, v6

    move v6, v5

    move-object v5, v15

    .line 62
    .local v5, "$result":Ljava/lang/Object;
    .local v6, "$i$f$use":I
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->copy()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v13

    iput-object v12, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$0:Ljava/lang/Object;

    iput-object v11, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$1:Ljava/lang/Object;

    iput-object v10, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$2:Ljava/lang/Object;

    iput-object v9, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$3:Ljava/lang/Object;

    iput-object v3, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->L$4:Ljava/lang/Object;

    iput v8, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->I$0:I

    const/4 v14, 0x3

    iput v14, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->label:I

    invoke-interface {v10, v13, v4}, Lio/ktor/utils/io/ByteWriteChannel;->writePacket(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    .end local v0    # "it":Lio/ktor/utils/io/core/ByteReadPacket;
    if-ne v13, v1, :cond_3

    .line 56
    return-object v1

    .line 62
    :cond_3
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 63
    .local v5, "$i$f$use":I
    .local v6, "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    move-object v15, v6

    move v6, v5

    move-object v5, v15

    .line 64
    .local v0, "cause":Ljava/lang/Throwable;
    .local v5, "$result":Ljava/lang/Object;
    .local v6, "$i$f$use":I
    :goto_4
    :try_start_8
    invoke-interface {v9, v0}, Lio/ktor/utils/io/ByteReadChannel;->cancel(Ljava/lang/Throwable;)Z

    .line 65
    invoke-interface {v11, v0}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    .line 66
    invoke-interface {v10, v0}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    move-result v9

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 60
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_5
    nop

    .line 94
    .end local v7    # "$i$a$-use-ByteChannelsKt$copyToBoth$1$1":I
    nop

    .line 95
    .end local v8    # "closed$iv":Z
    nop

    .line 96
    :try_start_9
    invoke-interface {v12}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 98
    .end local v12    # "$this$use$iv":Ljava/io/Closeable;
    nop

    .line 93
    nop

    .end local v6    # "$i$f$use":I
    goto/16 :goto_0

    .line 99
    .restart local v6    # "$i$f$use":I
    .restart local v8    # "closed$iv":Z
    .restart local v12    # "$this$use$iv":Ljava/io/Closeable;
    :catchall_3
    move-exception v0

    move v15, v6

    move-object v6, v5

    move v5, v15

    goto :goto_6

    .local v5, "$i$f$use":I
    .local v6, "$result":Ljava/lang/Object;
    :catchall_4
    move-exception v0

    :goto_6
    move-object v1, v0

    .line 100
    .local v1, "first$iv":Ljava/lang/Throwable;
    nop

    .line 101
    const/4 v3, 0x1

    .line 102
    .end local v8    # "closed$iv":Z
    .local v3, "closed$iv":Z
    :try_start_a
    invoke-interface {v12}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_7

    .line 103
    :catchall_5
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 104
    .local v0, "second$iv":Ljava/lang/Throwable;
    :try_start_b
    invoke-static {v1, v0}, Lio/ktor/utils/io/core/CloseableJVMKt;->addSuppressedInternal(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 107
    .end local v0    # "second$iv":Ljava/lang/Throwable;
    :goto_7
    nop

    .end local v3    # "closed$iv":Z
    .end local v4    # "this":Lio/ktor/util/ByteChannelsKt$copyToBoth$1;
    .end local v5    # "$i$f$use":I
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v12    # "$this$use$iv":Ljava/io/Closeable;
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 95
    .end local v1    # "first$iv":Ljava/lang/Throwable;
    .restart local v3    # "closed$iv":Z
    .restart local v4    # "this":Lio/ktor/util/ByteChannelsKt$copyToBoth$1;
    .restart local v5    # "$i$f$use":I
    .restart local v6    # "$result":Ljava/lang/Object;
    .restart local v12    # "$this$use$iv":Ljava/io/Closeable;
    :catchall_6
    move-exception v0

    if-nez v3, :cond_4

    .line 96
    .end local v3    # "closed$iv":Z
    :try_start_c
    invoke-interface {v12}, Ljava/io/Closeable;->close()V

    .end local v12    # "$this$use$iv":Ljava/io/Closeable;
    :cond_4
    nop

    .end local v4    # "this":Lio/ktor/util/ByteChannelsKt$copyToBoth$1;
    .end local v6    # "$result":Ljava/lang/Object;
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 72
    .end local v5    # "$i$f$use":I
    .restart local v4    # "this":Lio/ktor/util/ByteChannelsKt$copyToBoth$1;
    .restart local v6    # "$result":Ljava/lang/Object;
    :catchall_7
    move-exception v0

    move-object v5, v6

    goto :goto_8

    .line 71
    .end local v6    # "$result":Ljava/lang/Object;
    .local v5, "$result":Ljava/lang/Object;
    :cond_5
    :try_start_d
    iget-object v0, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->$this_copyToBoth:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v0}, Lio/ktor/utils/io/ByteReadChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_6

    .line 76
    goto :goto_9

    .line 108
    .local v0, "it":Ljava/lang/Throwable;
    :cond_6
    const/4 v1, 0x0

    .line 71
    .local v1, "$i$a$-let-ByteChannelsKt$copyToBoth$1$2":I
    nop

    .end local v4    # "this":Lio/ktor/util/ByteChannelsKt$copyToBoth$1;
    .end local v5    # "$result":Ljava/lang/Object;
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 73
    .end local v1    # "$i$a$-let-ByteChannelsKt$copyToBoth$1$2":I
    .local v0, "cause":Ljava/lang/Throwable;
    .restart local v4    # "this":Lio/ktor/util/ByteChannelsKt$copyToBoth$1;
    .restart local v5    # "$result":Ljava/lang/Object;
    :goto_8
    :try_start_e
    iget-object v1, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->$first:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-interface {v1, v0}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    .line 74
    iget-object v1, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->$second:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-interface {v1, v0}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 76
    nop

    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_9
    iget-object v0, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->$first:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v0}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 77
    iget-object v0, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->$second:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v0}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 78
    nop

    .line 79
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 76
    :catchall_8
    move-exception v0

    iget-object v1, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->$first:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v1}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 77
    iget-object v1, v4, Lio/ktor/util/ByteChannelsKt$copyToBoth$1;->$second:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v1}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
