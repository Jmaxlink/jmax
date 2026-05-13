.class final Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RelayClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/client/RelayClient;->dispatchCommand(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/hermesandroid/bridge/model/ActionResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/hermesandroid/bridge/model/ActionResult;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.hermesandroid.bridge.client.RelayClient$dispatchCommand$result$9"
    f = "RelayClient.kt"
    i = {}
    l = {
        0x18b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $duration:J

.field final synthetic $endX:I

.field final synthetic $endY:I

.field final synthetic $startX:I

.field final synthetic $startY:I

.field label:I


# direct methods
.method constructor <init>(IIIIJLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;->$startX:I

    iput p2, p0, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;->$startY:I

    iput p3, p0, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;->$endX:I

    iput p4, p0, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;->$endY:I

    iput-wide p5, p0, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;->$duration:J

    const/4 v0, 0x2

    invoke-direct {p0, v0, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v8, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;

    iget v1, p0, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;->$startX:I

    iget v2, p0, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;->$startY:I

    iget v3, p0, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;->$endX:I

    iget v4, p0, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;->$endY:I

    iget-wide v5, p0, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;->$duration:J

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;-><init>(IIIIJLkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/coroutines/Continuation;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/hermesandroid/bridge/model/ActionResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 394
    iget v1, p0, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    goto :goto_0

    .end local v0    # "this":Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 395
    .local v1, "this":Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;
    .restart local p1    # "$result":Ljava/lang/Object;
    sget-object v2, Lcom/hermesandroid/bridge/executor/ActionExecutor;->INSTANCE:Lcom/hermesandroid/bridge/executor/ActionExecutor;

    iget v3, v1, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;->$startX:I

    iget v4, v1, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;->$startY:I

    iget v5, v1, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;->$endX:I

    iget v6, v1, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;->$endY:I

    iget-wide v7, v1, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;->$duration:J

    move-object v9, v1

    check-cast v9, Lkotlin/coroutines/Continuation;

    const/4 v10, 0x1

    iput v10, v1, Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;->label:I

    invoke-virtual/range {v2 .. v9}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->drag(IIIIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 394
    return-object v0

    .line 395
    :cond_0
    move-object v0, v1

    .end local v1    # "this":Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;
    .restart local v0    # "this":Lcom/hermesandroid/bridge/client/RelayClient$dispatchCommand$result$9;
    :goto_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
