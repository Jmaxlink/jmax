.class public final Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
.super Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
.source "Blocking.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/jvm/javaio/OutputAdapter;-><init>(Lkotlinx/coroutines/Job;Lio/ktor/utils/io/ByteWriteChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlocking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1\n+ 2 Blocking.kt\nio/ktor/utils/io/jvm/javaio/BlockingAdapter\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,316:1\n275#2,4:317\n1#3:321\n*S KotlinDebug\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1\n*L\n88#1:317,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0011\u0010\u0002\u001a\u00020\u0003H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0005"
    }
    d2 = {
        "io/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1",
        "Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;",
        "loop",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ktor-io"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lio/ktor/utils/io/jvm/javaio/OutputAdapter;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/Job;Lio/ktor/utils/io/jvm/javaio/OutputAdapter;)V
    .locals 0
    .param p1, "$parent"    # Lkotlinx/coroutines/Job;
    .param p2, "$receiver"    # Lio/ktor/utils/io/jvm/javaio/OutputAdapter;

    iput-object p2, p0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/OutputAdapter;

    .line 84
    invoke-direct {p0, p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;-><init>(Lkotlinx/coroutines/Job;)V

    return-void
.end method


# virtual methods
.method protected loop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;

    iget v1, v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;-><init>(Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 85
    iget v2, p1, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object v2, p1, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;

    .local v2, "this":Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    .line 96
    :catchall_0
    move-exception v1

    goto/16 :goto_6

    .line 85
    .end local v2    # "this":Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
    :pswitch_1
    const/4 v2, 0x0

    .local v2, "$i$f$rendezvous":I
    iget-object v3, p1, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    iget-object v3, p1, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;

    .local v3, "this":Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v5, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    .line 96
    .end local v2    # "$i$f$rendezvous":I
    :catchall_1
    move-exception v1

    move-object v2, v3

    goto/16 :goto_6

    .line 85
    .end local v3    # "this":Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 86
    .local v2, "this":Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
    nop

    .line 87
    :goto_1
    nop

    .line 88
    :try_start_2
    move-object v3, v2

    check-cast v3, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    const/4 v4, 0x0

    .local v3, "this_$iv":Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
    .local v4, "rc$iv":I
    const/4 v5, 0x0

    .line 317
    .local v5, "$i$f$rendezvous":I
    iput v4, v3, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->result:I

    .line 319
    .end local v4    # "rc$iv":I
    iput-object v2, p1, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->L$0:Ljava/lang/Object;

    iput-object v3, p1, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p1, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->label:I

    move-object v4, p1

    check-cast v4, Lkotlin/coroutines/Continuation;

    .local v4, "ucont$iv":Lkotlin/coroutines/Continuation;
    const/4 v6, 0x0

    .line 320
    .local v6, "$i$a$-suspendCoroutineUninterceptedOrReturn-BlockingAdapter$rendezvous$2$iv":I
    invoke-static {v3, v4}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->access$rendezvousBlock(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    .line 319
    .end local v3    # "this_$iv":Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
    .end local v4    # "ucont$iv":Lkotlin/coroutines/Continuation;
    .end local v6    # "$i$a$-suspendCoroutineUninterceptedOrReturn-BlockingAdapter$rendezvous$2$iv":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v7, v3, :cond_1

    move-object v3, p1

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    if-ne v7, v1, :cond_2

    .line 85
    return-object v1

    .line 319
    :cond_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
    .local v1, "$result":Ljava/lang/Object;
    .local v3, "this":Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
    :goto_2
    nop

    .line 88
    .end local v5    # "$i$f$rendezvous":I
    nop

    .line 89
    .local v0, "task":Ljava/lang/Object;
    :try_start_3
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->access$getCloseToken$p()Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v0, v4, :cond_5

    .line 90
    .end local v0    # "task":Ljava/lang/Object;
    nop

    .line 102
    iget-object v0, v3, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/OutputAdapter;

    invoke-static {v0}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter;->access$getChannel$p(Lio/ktor/utils/io/jvm/javaio/OutputAdapter;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 103
    iget-object v0, v3, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/OutputAdapter;

    invoke-static {v0}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter;->access$getChannel$p(Lio/ktor/utils/io/jvm/javaio/OutputAdapter;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/utils/io/ByteWriteChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    .end local v3    # "this":Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
    if-nez v0, :cond_3

    goto :goto_3

    .line 321
    .local v0, "it":Ljava/lang/Throwable;
    :cond_3
    const/4 v2, 0x0

    .line 103
    .local v2, "$i$a$-let-OutputAdapter$loop$1$loop$3":I
    throw v0

    .line 105
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-OutputAdapter$loop$1$loop$3":I
    :cond_4
    :goto_3
    nop

    .line 106
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 91
    .local v0, "task":Ljava/lang/Object;
    .restart local v3    # "this":Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
    :cond_5
    :try_start_4
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->access$getFlushToken$p()Ljava/lang/Object;

    move-result-object v4

    if-ne v0, v4, :cond_7

    .line 92
    .end local v0    # "task":Ljava/lang/Object;
    iget-object v0, v3, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/OutputAdapter;

    invoke-static {v0}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter;->access$getChannel$p(Lio/ktor/utils/io/jvm/javaio/OutputAdapter;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/utils/io/ByteWriteChannel;->flush()V

    .line 93
    iget-object v0, v3, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/OutputAdapter;

    invoke-static {v0}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter;->access$getChannel$p(Lio/ktor/utils/io/jvm/javaio/OutputAdapter;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/utils/io/ByteWriteChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_5

    .line 321
    .local v0, "it":Ljava/lang/Throwable;
    :cond_6
    const/4 v2, 0x0

    .line 93
    .local v2, "$i$a$-let-OutputAdapter$loop$1$loop$2":I
    nop

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v3    # "this":Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    throw v0

    .line 94
    .end local v2    # "$i$a$-let-OutputAdapter$loop$1$loop$2":I
    .local v0, "task":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v3    # "this":Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :cond_7
    instance-of v4, v0, [B

    if-eqz v4, :cond_9

    iget-object v4, v3, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/OutputAdapter;

    invoke-static {v4}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter;->access$getChannel$p(Lio/ktor/utils/io/jvm/javaio/OutputAdapter;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v4

    move-object v5, v0

    check-cast v5, [B

    invoke-virtual {v3}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->getOffset()I

    move-result v6

    invoke-virtual {v3}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->getLength()I

    move-result v7

    iput-object v3, p1, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, p1, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, p1, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1$loop$1;->label:I

    invoke-interface {v4, v5, v6, v7, p1}, Lio/ktor/utils/io/ByteWriteChannel;->writeFully([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v0    # "task":Ljava/lang/Object;
    if-ne v4, v2, :cond_8

    .line 85
    return-object v2

    .line 94
    :cond_8
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v3    # "this":Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
    .local v0, "$result":Ljava/lang/Object;
    .local v2, "this":Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
    :goto_4
    goto/16 :goto_1

    .line 87
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v3    # "this":Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
    :cond_9
    :goto_5
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_1

    .line 96
    :catchall_2
    move-exception v0

    move-object v2, v3

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 97
    .end local v3    # "this":Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
    .restart local v0    # "$result":Ljava/lang/Object;
    .local v1, "t":Ljava/lang/Throwable;
    .restart local v2    # "this":Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
    :goto_6
    :try_start_5
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_a

    .line 98
    iget-object v3, v2, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/OutputAdapter;

    invoke-static {v3}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter;->access$getChannel$p(Lio/ktor/utils/io/jvm/javaio/OutputAdapter;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v3

    invoke-interface {v3, v1}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    .line 100
    :cond_a
    nop

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 102
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v2    # "this":Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :catchall_3
    move-exception v1

    iget-object v3, v2, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/OutputAdapter;

    invoke-static {v3}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter;->access$getChannel$p(Lio/ktor/utils/io/jvm/javaio/OutputAdapter;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v3

    invoke-static {v3}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 103
    iget-object v3, v2, Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/OutputAdapter;

    invoke-static {v3}, Lio/ktor/utils/io/jvm/javaio/OutputAdapter;->access$getChannel$p(Lio/ktor/utils/io/jvm/javaio/OutputAdapter;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v3

    invoke-interface {v3}, Lio/ktor/utils/io/ByteWriteChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v2

    .end local v2    # "this":Lio/ktor/utils/io/jvm/javaio/OutputAdapter$loop$1;
    if-eqz v2, :cond_b

    move-object v1, v2

    .line 321
    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 103
    .local v2, "$i$a$-let-OutputAdapter$loop$1$loop$3":I
    throw v1

    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-OutputAdapter$loop$1$loop$3":I
    :cond_b
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
