.class final Lio/ktor/network/selector/ActorSelectorManager$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ActorSelectorManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/selector/ActorSelectorManager;-><init>(Lkotlin/coroutines/CoroutineContext;)V
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
    c = "io.ktor.network.selector.ActorSelectorManager$1"
    f = "ActorSelectorManager.kt"
    i = {
        0x0
    }
    l = {
        0x2b
    }
    m = "invokeSuspend"
    n = {
        "currentSelector"
    }
    s = {
        "L$2"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ktor/network/selector/ActorSelectorManager;


# direct methods
.method constructor <init>(Lio/ktor/network/selector/ActorSelectorManager;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/ActorSelectorManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/selector/ActorSelectorManager$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/network/selector/ActorSelectorManager$1;->this$0:Lio/ktor/network/selector/ActorSelectorManager;

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

    new-instance v0, Lio/ktor/network/selector/ActorSelectorManager$1;

    iget-object v1, p0, Lio/ktor/network/selector/ActorSelectorManager$1;->this$0:Lio/ktor/network/selector/ActorSelectorManager;

    invoke-direct {v0, v1, p2}, Lio/ktor/network/selector/ActorSelectorManager$1;-><init>(Lio/ktor/network/selector/ActorSelectorManager;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/selector/ActorSelectorManager$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/selector/ActorSelectorManager$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/network/selector/ActorSelectorManager$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/network/selector/ActorSelectorManager$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 38
    iget v1, p0, Lio/ktor/network/selector/ActorSelectorManager$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/network/selector/ActorSelectorManager$1;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$a$-use-ActorSelectorManager$1$1":I
    iget-object v4, v0, Lio/ktor/network/selector/ActorSelectorManager$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/nio/channels/spi/AbstractSelector;

    .local v4, "currentSelector":Ljava/nio/channels/spi/AbstractSelector;
    iget-object v5, v0, Lio/ktor/network/selector/ActorSelectorManager$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lio/ktor/network/selector/ActorSelectorManager;

    iget-object v6, v0, Lio/ktor/network/selector/ActorSelectorManager$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/io/Closeable;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v7

    goto :goto_2

    .line 38
    .end local v0    # "this":Lio/ktor/network/selector/ActorSelectorManager$1;
    .end local v1    # "$i$a$-use-ActorSelectorManager$1$1":I
    .end local v4    # "currentSelector":Ljava/nio/channels/spi/AbstractSelector;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 39
    .local v1, "this":Lio/ktor/network/selector/ActorSelectorManager$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lio/ktor/network/selector/ActorSelectorManager$1;->this$0:Lio/ktor/network/selector/ActorSelectorManager;

    invoke-virtual {v4}, Lio/ktor/network/selector/ActorSelectorManager;->getProvider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 40
    .local v4, "selector":Ljava/nio/channels/spi/AbstractSelector;
    iget-object v5, v1, Lio/ktor/network/selector/ActorSelectorManager$1;->this$0:Lio/ktor/network/selector/ActorSelectorManager;

    move-object v6, v4

    check-cast v6, Ljava/nio/channels/Selector;

    invoke-static {v5, v6}, Lio/ktor/network/selector/ActorSelectorManager;->access$setSelectorRef$p(Lio/ktor/network/selector/ActorSelectorManager;Ljava/nio/channels/Selector;)V

    .line 41
    move-object v6, v4

    check-cast v6, Ljava/io/Closeable;

    iget-object v5, v1, Lio/ktor/network/selector/ActorSelectorManager$1;->this$0:Lio/ktor/network/selector/ActorSelectorManager;

    .end local v4    # "selector":Ljava/nio/channels/spi/AbstractSelector;
    :try_start_1
    move-object v4, v6

    check-cast v4, Ljava/nio/channels/spi/AbstractSelector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .local v4, "currentSelector":Ljava/nio/channels/spi/AbstractSelector;
    const/4 v7, 0x0

    .line 42
    .local v7, "$i$a$-use-ActorSelectorManager$1$1":I
    nop

    .line 43
    :try_start_2
    invoke-static {v5}, Lio/ktor/network/selector/ActorSelectorManager;->access$getSelectionQueue$p(Lio/ktor/network/selector/ActorSelectorManager;)Lio/ktor/network/selector/LockFreeMPSCQueue;

    move-result-object v8

    move-object v9, v4

    check-cast v9, Ljava/nio/channels/Selector;

    iput-object v6, v1, Lio/ktor/network/selector/ActorSelectorManager$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lio/ktor/network/selector/ActorSelectorManager$1;->L$1:Ljava/lang/Object;

    iput-object v4, v1, Lio/ktor/network/selector/ActorSelectorManager$1;->L$2:Ljava/lang/Object;

    iput v2, v1, Lio/ktor/network/selector/ActorSelectorManager$1;->label:I

    invoke-static {v5, v8, v9, v1}, Lio/ktor/network/selector/ActorSelectorManager;->access$process(Lio/ktor/network/selector/ActorSelectorManager;Lio/ktor/network/selector/LockFreeMPSCQueue;Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v8, v0, :cond_0

    .line 38
    return-object v0

    .line 43
    :cond_0
    move-object v0, v1

    move v1, v7

    .line 49
    .end local v7    # "$i$a$-use-ActorSelectorManager$1$1":I
    .restart local v0    # "this":Lio/ktor/network/selector/ActorSelectorManager$1;
    .local v1, "$i$a$-use-ActorSelectorManager$1$1":I
    :goto_0
    :try_start_3
    invoke-static {v5, v2}, Lio/ktor/network/selector/ActorSelectorManager;->access$setClosed$p(Lio/ktor/network/selector/ActorSelectorManager;Z)V

    .line 50
    invoke-static {v5}, Lio/ktor/network/selector/ActorSelectorManager;->access$getSelectionQueue$p(Lio/ktor/network/selector/ActorSelectorManager;)Lio/ktor/network/selector/LockFreeMPSCQueue;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/network/selector/LockFreeMPSCQueue;->close()V

    .line 51
    invoke-static {v5, v3}, Lio/ktor/network/selector/ActorSelectorManager;->access$setSelectorRef$p(Lio/ktor/network/selector/ActorSelectorManager;Ljava/nio/channels/Selector;)V

    .line 52
    move-object v2, v4

    check-cast v2, Ljava/nio/channels/Selector;

    :goto_1
    invoke-virtual {v5, v2, v3}, Lio/ktor/network/selector/ActorSelectorManager;->cancelAllSuspensions(Ljava/nio/channels/Selector;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    .end local v4    # "currentSelector":Ljava/nio/channels/spi/AbstractSelector;
    goto :goto_3

    .line 41
    .end local v1    # "$i$a$-use-ActorSelectorManager$1$1":I
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 44
    .end local v0    # "this":Lio/ktor/network/selector/ActorSelectorManager$1;
    .local v1, "this":Lio/ktor/network/selector/ActorSelectorManager$1;
    .restart local v4    # "currentSelector":Ljava/nio/channels/spi/AbstractSelector;
    .restart local v7    # "$i$a$-use-ActorSelectorManager$1$1":I
    :catchall_2
    move-exception v0

    move v10, v7

    move-object v7, v0

    move-object v0, v1

    move v1, v10

    .line 45
    .restart local v0    # "this":Lio/ktor/network/selector/ActorSelectorManager$1;
    .local v1, "$i$a$-use-ActorSelectorManager$1$1":I
    .local v7, "cause":Ljava/lang/Throwable;
    :goto_2
    :try_start_4
    invoke-static {v5, v2}, Lio/ktor/network/selector/ActorSelectorManager;->access$setClosed$p(Lio/ktor/network/selector/ActorSelectorManager;Z)V

    .line 46
    invoke-static {v5}, Lio/ktor/network/selector/ActorSelectorManager;->access$getSelectionQueue$p(Lio/ktor/network/selector/ActorSelectorManager;)Lio/ktor/network/selector/LockFreeMPSCQueue;

    move-result-object v8

    invoke-virtual {v8}, Lio/ktor/network/selector/LockFreeMPSCQueue;->close()V

    .line 47
    move-object v8, v4

    check-cast v8, Ljava/nio/channels/Selector;

    invoke-virtual {v5, v8, v7}, Lio/ktor/network/selector/ActorSelectorManager;->cancelAllSuspensions(Ljava/nio/channels/Selector;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 49
    .end local v7    # "cause":Ljava/lang/Throwable;
    :try_start_5
    invoke-static {v5, v2}, Lio/ktor/network/selector/ActorSelectorManager;->access$setClosed$p(Lio/ktor/network/selector/ActorSelectorManager;Z)V

    .line 50
    invoke-static {v5}, Lio/ktor/network/selector/ActorSelectorManager;->access$getSelectionQueue$p(Lio/ktor/network/selector/ActorSelectorManager;)Lio/ktor/network/selector/LockFreeMPSCQueue;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/network/selector/LockFreeMPSCQueue;->close()V

    .line 51
    invoke-static {v5, v3}, Lio/ktor/network/selector/ActorSelectorManager;->access$setSelectorRef$p(Lio/ktor/network/selector/ActorSelectorManager;Ljava/nio/channels/Selector;)V

    .line 52
    move-object v2, v4

    check-cast v2, Ljava/nio/channels/Selector;

    goto :goto_1

    .line 55
    .end local v4    # "currentSelector":Ljava/nio/channels/spi/AbstractSelector;
    :goto_3
    nop

    .line 56
    invoke-static {v5}, Lio/ktor/network/selector/ActorSelectorManager;->access$getSelectionQueue$p(Lio/ktor/network/selector/ActorSelectorManager;)Lio/ktor/network/selector/LockFreeMPSCQueue;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/network/selector/LockFreeMPSCQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/ktor/network/selector/Selectable;

    if-nez v2, :cond_1

    .line 60
    nop

    .end local v1    # "$i$a$-use-ActorSelectorManager$1$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 41
    invoke-static {v6, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 61
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 57
    .restart local v1    # "$i$a$-use-ActorSelectorManager$1$1":I
    .local v2, "selectable":Lio/ktor/network/selector/Selectable;
    :cond_1
    :try_start_6
    new-instance v4, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    const-string v7, "Failed to apply interest: selector closed"

    invoke-direct {v4, v7}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    .line 58
    .local v4, "cause":Lkotlinx/coroutines/channels/ClosedSendChannelException;
    move-object v7, v4

    check-cast v7, Ljava/lang/Throwable;

    invoke-virtual {v5, v2, v7}, Lio/ktor/network/selector/ActorSelectorManager;->cancelAllSuspensions(Lio/ktor/network/selector/Selectable;Ljava/lang/Throwable;)V

    .end local v2    # "selectable":Lio/ktor/network/selector/Selectable;
    .end local v4    # "cause":Lkotlinx/coroutines/channels/ClosedSendChannelException;
    goto :goto_3

    .line 49
    .local v4, "currentSelector":Ljava/nio/channels/spi/AbstractSelector;
    :catchall_3
    move-exception v7

    invoke-static {v5, v2}, Lio/ktor/network/selector/ActorSelectorManager;->access$setClosed$p(Lio/ktor/network/selector/ActorSelectorManager;Z)V

    .line 50
    invoke-static {v5}, Lio/ktor/network/selector/ActorSelectorManager;->access$getSelectionQueue$p(Lio/ktor/network/selector/ActorSelectorManager;)Lio/ktor/network/selector/LockFreeMPSCQueue;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/network/selector/LockFreeMPSCQueue;->close()V

    .line 51
    invoke-static {v5, v3}, Lio/ktor/network/selector/ActorSelectorManager;->access$setSelectorRef$p(Lio/ktor/network/selector/ActorSelectorManager;Ljava/nio/channels/Selector;)V

    .line 52
    move-object v2, v4

    check-cast v2, Ljava/nio/channels/Selector;

    invoke-virtual {v5, v2, v3}, Lio/ktor/network/selector/ActorSelectorManager;->cancelAllSuspensions(Ljava/nio/channels/Selector;Ljava/lang/Throwable;)V

    .end local v0    # "this":Lio/ktor/network/selector/ActorSelectorManager$1;
    .end local v4    # "currentSelector":Ljava/nio/channels/spi/AbstractSelector;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 41
    .local v1, "this":Lio/ktor/network/selector/ActorSelectorManager$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_4
    move-exception v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .end local v1    # "this":Lio/ktor/network/selector/ActorSelectorManager$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :goto_4
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .restart local v0    # "this":Lio/ktor/network/selector/ActorSelectorManager$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_5
    move-exception v2

    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 39
    .end local v0    # "this":Lio/ktor/network/selector/ActorSelectorManager$1;
    .restart local v1    # "this":Lio/ktor/network/selector/ActorSelectorManager$1;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "openSelector() = null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
