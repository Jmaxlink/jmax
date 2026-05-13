.class final Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RelayClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermesandroid/bridge/client/RelayClient;->scheduleReconnect()V
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
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.hermesandroid.bridge.client.RelayClient$scheduleReconnect$1"
    f = "RelayClient.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0xa3,
        0xa6
    }
    m = "invokeSuspend"
    n = {
        "backoff",
        "retries",
        "backoff",
        "retries"
    }
    s = {
        "J$0",
        "I$0",
        "J$0",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $code:Ljava/lang/String;

.field final synthetic $url:Ljava/lang/String;

.field I$0:I

.field J$0:J

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;->$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;->$code:Ljava/lang/String;

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

    new-instance v0, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;

    iget-object v1, p0, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;->$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;->$code:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 156
    move-object/from16 v1, p0

    iget v2, v1, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;->label:I

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;
    move-object/from16 v6, p1

    .local v6, "$result":Ljava/lang/Object;
    iget v7, v2, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;->I$0:I

    .local v7, "retries":I
    iget-wide v8, v2, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;->J$0:J

    .local v8, "backoff":J
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v2    # "this":Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v7    # "retries":I
    .end local v8    # "backoff":J
    :pswitch_1
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;
    move-object/from16 v6, p1

    .restart local v6    # "$result":Ljava/lang/Object;
    iget v7, v2, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;->I$0:I

    .restart local v7    # "retries":I
    iget-wide v8, v2, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;->J$0:J

    .restart local v8    # "backoff":J
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide/from16 v16, v8

    move v9, v7

    move-wide/from16 v7, v16

    goto/16 :goto_1

    .end local v2    # "this":Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v7    # "retries":I
    .end local v8    # "backoff":J
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;
    move-object/from16 v6, p1

    .line 157
    .restart local v6    # "$result":Ljava/lang/Object;
    const-wide/16 v7, 0x3e8

    .line 158
    .local v7, "backoff":J
    const/4 v9, 0x0

    .line 159
    .local v9, "retries":I
    :cond_0
    :goto_0
    invoke-static {}, Lcom/hermesandroid/bridge/client/RelayClient;->access$getShouldReconnect$p()Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/hermesandroid/bridge/client/RelayClient;->INSTANCE:Lcom/hermesandroid/bridge/client/RelayClient;

    invoke-virtual {v10}, Lcom/hermesandroid/bridge/client/RelayClient;->isConnected()Z

    move-result v10

    if-nez v10, :cond_4

    if-ge v9, v3, :cond_4

    .line 160
    add-int/lit8 v9, v9, 0x1

    .line 161
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reconnecting in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "ms... (attempt "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "/5)"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v13, "RelayClient"

    invoke-static {v13, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v10, Lcom/hermesandroid/bridge/client/RelayClient;->INSTANCE:Lcom/hermesandroid/bridge/client/RelayClient;

    const/16 v13, 0x3e8

    int-to-long v13, v13

    div-long v13, v7, v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "s... (attempt "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v5, v11}, Lcom/hermesandroid/bridge/client/RelayClient;->access$notifyStatus(Lcom/hermesandroid/bridge/client/RelayClient;ZLjava/lang/String;)V

    .line 163
    move-object v10, v2

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-wide v7, v2, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;->J$0:J

    iput v9, v2, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;->I$0:I

    const/4 v11, 0x1

    iput v11, v2, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;->label:I

    invoke-static {v7, v8, v10}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v0, :cond_1

    .line 156
    return-object v0

    .line 164
    :cond_1
    :goto_1
    invoke-static {}, Lcom/hermesandroid/bridge/client/RelayClient;->access$getShouldReconnect$p()Z

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Lcom/hermesandroid/bridge/client/RelayClient;->INSTANCE:Lcom/hermesandroid/bridge/client/RelayClient;

    invoke-virtual {v10}, Lcom/hermesandroid/bridge/client/RelayClient;->isConnected()Z

    move-result v10

    if-nez v10, :cond_0

    .line 165
    sget-object v10, Lcom/hermesandroid/bridge/client/RelayClient;->INSTANCE:Lcom/hermesandroid/bridge/client/RelayClient;

    iget-object v11, v2, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;->$url:Ljava/lang/String;

    iget-object v12, v2, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;->$code:Ljava/lang/String;

    invoke-static {v10, v11, v12}, Lcom/hermesandroid/bridge/client/RelayClient;->access$doConnect(Lcom/hermesandroid/bridge/client/RelayClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    move-object v10, v2

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-wide v7, v2, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;->J$0:J

    iput v9, v2, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;->I$0:I

    iput v4, v2, Lcom/hermesandroid/bridge/client/RelayClient$scheduleReconnect$1;->label:I

    const-wide/16 v11, 0xbb8

    invoke-static {v11, v12, v10}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v0, :cond_2

    .line 156
    return-object v0

    .line 166
    :cond_2
    move-wide/from16 v16, v7

    move v7, v9

    move-wide/from16 v8, v16

    .line 167
    .end local v9    # "retries":I
    .local v7, "retries":I
    .restart local v8    # "backoff":J
    :goto_2
    sget-object v10, Lcom/hermesandroid/bridge/client/RelayClient;->INSTANCE:Lcom/hermesandroid/bridge/client/RelayClient;

    invoke-virtual {v10}, Lcom/hermesandroid/bridge/client/RelayClient;->isConnected()Z

    move-result v10

    if-nez v10, :cond_3

    .line 168
    int-to-long v10, v4

    mul-long/2addr v10, v8

    const-wide/16 v12, 0x7530

    invoke-static {v10, v11, v12, v13}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v8

    move-wide/from16 v16, v8

    move v9, v7

    move-wide/from16 v7, v16

    goto/16 :goto_0

    .line 170
    .end local v8    # "backoff":J
    :cond_3
    move v9, v7

    .line 174
    .end local v7    # "retries":I
    .restart local v9    # "retries":I
    :cond_4
    sget-object v0, Lcom/hermesandroid/bridge/client/RelayClient;->INSTANCE:Lcom/hermesandroid/bridge/client/RelayClient;

    invoke-virtual {v0}, Lcom/hermesandroid/bridge/client/RelayClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_5

    if-lt v9, v3, :cond_5

    .line 175
    .end local v9    # "retries":I
    sget-object v0, Lcom/hermesandroid/bridge/client/RelayClient;->INSTANCE:Lcom/hermesandroid/bridge/client/RelayClient;

    const-string v3, "Failed to connect after 5 attempts. Tap Connect to retry."

    invoke-static {v0, v5, v3}, Lcom/hermesandroid/bridge/client/RelayClient;->access$notifyStatus(Lcom/hermesandroid/bridge/client/RelayClient;ZLjava/lang/String;)V

    .line 176
    sget-object v0, Lcom/hermesandroid/bridge/client/RelayClient;->INSTANCE:Lcom/hermesandroid/bridge/client/RelayClient;

    invoke-static {v5}, Lcom/hermesandroid/bridge/client/RelayClient;->access$setShouldReconnect$p(Z)V

    .line 178
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
