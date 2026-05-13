.class public final Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;
.super Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
.source "Blocking.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/jvm/javaio/InputAdapter;-><init>(Lkotlinx/coroutines/Job;Lio/ktor/utils/io/ByteReadChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlocking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1\n+ 2 Blocking.kt\nio/ktor/utils/io/jvm/javaio/BlockingAdapter\n*L\n1#1,316:1\n275#2,4:317\n*S KotlinDebug\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1\n*L\n37#1:317,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0011\u0010\u0002\u001a\u00020\u0003H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0005"
    }
    d2 = {
        "io/ktor/utils/io/jvm/javaio/InputAdapter$loop$1",
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
.field final synthetic this$0:Lio/ktor/utils/io/jvm/javaio/InputAdapter;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/Job;Lio/ktor/utils/io/jvm/javaio/InputAdapter;)V
    .locals 0
    .param p1, "$parent"    # Lkotlinx/coroutines/Job;
    .param p2, "$receiver"    # Lio/ktor/utils/io/jvm/javaio/InputAdapter;

    iput-object p2, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/InputAdapter;

    .line 33
    invoke-direct {p0, p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;-><init>(Lkotlinx/coroutines/Job;)V

    return-void
.end method


# virtual methods
.method protected loop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
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

    instance-of v0, p1, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;

    iget v1, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;-><init>(Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 34
    iget v2, p1, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->label:I

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
    iget-object v2, p1, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;

    .local v2, "this":Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_3

    .end local v2    # "this":Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;
    :pswitch_1
    const/4 v2, 0x0

    .local v2, "$i$f$rendezvous":I
    iget-object v3, p1, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    iget-object v3, p1, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;

    .local v3, "this":Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v5, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    .end local v2    # "$i$f$rendezvous":I
    .end local v3    # "this":Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 35
    .local v2, "this":Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;
    const/4 v3, 0x0

    .line 36
    .local v3, "readCount":I
    :goto_1
    nop

    .line 37
    move-object v4, v2

    check-cast v4, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    .local v4, "this_$iv":Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
    const/4 v5, 0x0

    .line 317
    .local v5, "$i$f$rendezvous":I
    iput v3, v4, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->result:I

    .line 319
    .end local v3    # "readCount":I
    iput-object v2, p1, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->L$0:Ljava/lang/Object;

    iput-object v4, p1, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p1, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->label:I

    move-object v3, p1

    check-cast v3, Lkotlin/coroutines/Continuation;

    .local v3, "ucont$iv":Lkotlin/coroutines/Continuation;
    const/4 v6, 0x0

    .line 320
    .local v6, "$i$a$-suspendCoroutineUninterceptedOrReturn-BlockingAdapter$rendezvous$2$iv":I
    invoke-static {v4, v3}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->access$rendezvousBlock(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .line 319
    .end local v3    # "ucont$iv":Lkotlin/coroutines/Continuation;
    .end local v4    # "this_$iv":Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
    .end local v6    # "$i$a$-suspendCoroutineUninterceptedOrReturn-BlockingAdapter$rendezvous$2$iv":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    move-object v4, p1

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    if-ne v3, v1, :cond_2

    .line 34
    return-object v1

    .line 319
    :cond_2
    move-object v8, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v2

    move-object v2, v8

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;
    .local v1, "$result":Ljava/lang/Object;
    .local v3, "this":Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;
    :goto_2
    nop

    .line 37
    .end local v5    # "$i$f$rendezvous":I
    const-string v4, "null cannot be cast to non-null type kotlin.ByteArray"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [B

    .line 38
    .local v0, "buffer":[B
    iget-object v4, v3, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/InputAdapter;

    invoke-static {v4}, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->access$getChannel$p(Lio/ktor/utils/io/jvm/javaio/InputAdapter;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v4

    invoke-virtual {v3}, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;->getOffset()I

    move-result v5

    invoke-virtual {v3}, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;->getLength()I

    move-result v6

    iput-object v3, p1, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, p1, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, p1, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->label:I

    invoke-interface {v4, v0, v5, v6, p1}, Lio/ktor/utils/io/ByteReadChannel;->readAvailable([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "buffer":[B
    if-ne v0, v2, :cond_3

    .line 34
    return-object v2

    .line 38
    :cond_3
    :goto_3
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 39
    .local v0, "readCount":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    .line 40
    iget-object v2, v3, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/InputAdapter;

    invoke-static {v2}, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->access$getContext$p(Lio/ktor/utils/io/jvm/javaio/InputAdapter;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 41
    nop

    .line 44
    invoke-virtual {v3, v0}, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;->finish(I)V

    .line 45
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 39
    :cond_4
    move-object v8, v3

    move v3, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v8

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
