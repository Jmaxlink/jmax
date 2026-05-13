.class final Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ByteBufferChannel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ByteBufferChannel;->readSuspendableSession$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/LookAheadSuspendSession;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/utils/io/LookAheadSuspendSession;"
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
    c = "io.ktor.utils.io.ByteBufferChannel$readSuspendableSession$2"
    f = "ByteBufferChannel.kt"
    i = {}
    l = {
        0x65e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $consumer:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lio/ktor/utils/io/SuspendableReadSession;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lio/ktor/utils/io/ByteBufferChannel;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/SuspendableReadSession;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lio/ktor/utils/io/ByteBufferChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;->$consumer:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;

    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;->$consumer:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-direct {v0, v1, v2, p2}, Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;-><init>(Lkotlin/jvm/functions/Function2;Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lio/ktor/utils/io/LookAheadSuspendSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/LookAheadSuspendSession;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/utils/io/LookAheadSuspendSession;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;->invoke(Lio/ktor/utils/io/LookAheadSuspendSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1628
    iget v1, p0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1632
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1628
    .end local v0    # "this":Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 1629
    .local v1, "this":Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 1630
    :try_start_1
    iget-object v2, v1, Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;->$consumer:Lkotlin/jvm/functions/Function2;

    iget-object v3, v1, Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {v3}, Lio/ktor/utils/io/ByteBufferChannel;->access$getReadSession$p(Lio/ktor/utils/io/ByteBufferChannel;)Lio/ktor/utils/io/internal/ReadSessionImpl;

    move-result-object v3

    const/4 v4, 0x1

    iput v4, v1, Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;->label:I

    invoke-interface {v2, v3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v0, :cond_0

    .line 1628
    return-object v0

    .line 1630
    :cond_0
    move-object v0, v1

    .line 1632
    .end local v1    # "this":Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;
    .restart local v0    # "this":Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;
    :goto_0
    iget-object v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {v1}, Lio/ktor/utils/io/ByteBufferChannel;->access$getReadSession$p(Lio/ktor/utils/io/ByteBufferChannel;)Lio/ktor/utils/io/internal/ReadSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/ReadSessionImpl;->completed()V

    .line 1633
    nop

    .line 1634
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 1632
    .end local v0    # "this":Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;
    .restart local v1    # "this":Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;
    :catchall_1
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .end local v1    # "this":Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;
    .restart local v0    # "this":Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;
    :goto_1
    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendableSession$2;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {v2}, Lio/ktor/utils/io/ByteBufferChannel;->access$getReadSession$p(Lio/ktor/utils/io/ByteBufferChannel;)Lio/ktor/utils/io/internal/ReadSessionImpl;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/utils/io/internal/ReadSessionImpl;->completed()V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
