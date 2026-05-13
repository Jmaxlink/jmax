.class public final Lio/ktor/utils/io/LookAheadSessionKt;
.super Ljava/lang/Object;
.source "LookAheadSession.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a$\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0086\u0008\u00f8\u0001\u0000\u001a9\u0010\u0000\u001a\u00020\u0001*\u00020\u00072\"\u0010\u0003\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0008H\u0086H\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010\u000b\u0082\u0002\u000b\n\u0005\u0008\u009920\u0001\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "consumeEachRemaining",
        "",
        "Lio/ktor/utils/io/LookAheadSession;",
        "visitor",
        "Lkotlin/Function1;",
        "Ljava/nio/ByteBuffer;",
        "",
        "Lio/ktor/utils/io/LookAheadSuspendSession;",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lio/ktor/utils/io/LookAheadSuspendSession;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ktor-io"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final consumeEachRemaining(Lio/ktor/utils/io/LookAheadSuspendSession;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/LookAheadSuspendSession;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;

    iget v1, v0, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;

    invoke-direct {v0, p2}, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 50
    iget v2, p2, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$consumeEachRemaining":I
    iget p1, p2, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;->I$0:I

    .local p1, "s":I
    iget-object v2, p2, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .local v2, "visitor":Lkotlin/jvm/functions/Function2;
    iget-object v3, p2, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/LookAheadSuspendSession;

    .local v3, "$this$consumeEachRemaining":Lio/ktor/utils/io/LookAheadSuspendSession;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_3

    .end local v2    # "visitor":Lkotlin/jvm/functions/Function2;
    .end local v3    # "$this$consumeEachRemaining":Lio/ktor/utils/io/LookAheadSuspendSession;
    .end local p0    # "$i$f$consumeEachRemaining":I
    .end local p1    # "s":I
    :pswitch_1
    const/4 p0, 0x0

    .restart local p0    # "$i$f$consumeEachRemaining":I
    iget-object p1, p2, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .local p1, "visitor":Lkotlin/jvm/functions/Function2;
    iget-object v2, p2, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/LookAheadSuspendSession;

    .local v2, "$this$consumeEachRemaining":Lio/ktor/utils/io/LookAheadSuspendSession;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    .end local v2    # "$this$consumeEachRemaining":Lio/ktor/utils/io/LookAheadSuspendSession;
    .end local p0    # "$i$f$consumeEachRemaining":I
    .end local p1    # "visitor":Lkotlin/jvm/functions/Function2;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$consumeEachRemaining":Lio/ktor/utils/io/LookAheadSuspendSession;
    .restart local p1    # "visitor":Lkotlin/jvm/functions/Function2;
    const/4 v2, 0x0

    move-object v3, p0

    move p0, v2

    move-object v2, p1

    .line 52
    .end local p1    # "visitor":Lkotlin/jvm/functions/Function2;
    .local v2, "visitor":Lkotlin/jvm/functions/Function2;
    .restart local v3    # "$this$consumeEachRemaining":Lio/ktor/utils/io/LookAheadSuspendSession;
    .local p0, "$i$f$consumeEachRemaining":I
    :goto_1
    const/4 p1, 0x0

    const/4 v4, 0x1

    invoke-interface {v3, p1, v4}, Lio/ktor/utils/io/LookAheadSuspendSession;->request(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 53
    .local p1, "buffer":Ljava/nio/ByteBuffer;
    if-nez p1, :cond_2

    .line 54
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    iput-object v3, p2, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;->L$0:Ljava/lang/Object;

    iput-object v2, p2, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;->L$1:Ljava/lang/Object;

    iput v4, p2, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;->label:I

    invoke-interface {v3, v4, p2}, Lio/ktor/utils/io/LookAheadSuspendSession;->awaitAtLeast(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    .line 50
    return-object v1

    .line 54
    :cond_1
    move-object v6, v0

    move-object v0, p1

    move-object p1, v2

    move-object v2, v1

    move-object v1, v6

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "visitor":Lkotlin/jvm/functions/Function2;
    .local v1, "$result":Ljava/lang/Object;
    .local p1, "visitor":Lkotlin/jvm/functions/Function2;
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    move-object v0, v1

    move-object v1, v2

    move-object v2, p1

    goto :goto_4

    .line 58
    .end local v1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v2    # "visitor":Lkotlin/jvm/functions/Function2;
    .local p1, "buffer":Ljava/nio/ByteBuffer;
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 59
    .local v4, "s":I
    iput-object v3, p2, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;->L$0:Ljava/lang/Object;

    iput-object v2, p2, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;->L$1:Ljava/lang/Object;

    iput v4, p2, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;->I$0:I

    const/4 v5, 0x2

    iput v5, p2, Lio/ktor/utils/io/LookAheadSessionKt$consumeEachRemaining$1;->label:I

    invoke-interface {v2, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    if-ne p1, v1, :cond_3

    .line 50
    return-object v1

    .line 59
    :cond_3
    move-object v6, v0

    move-object v0, p1

    move p1, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v6

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "visitor":Lkotlin/jvm/functions/Function2;
    .restart local v1    # "$result":Ljava/lang/Object;
    .local v3, "visitor":Lkotlin/jvm/functions/Function2;
    .local v4, "$this$consumeEachRemaining":Lio/ktor/utils/io/LookAheadSuspendSession;
    .local p1, "s":I
    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 60
    .local v0, "rc":Z
    invoke-interface {v4, p1}, Lio/ktor/utils/io/LookAheadSuspendSession;->consumed(I)V

    .line 62
    if-eqz v0, :cond_4

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    .line 63
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v4    # "$this$consumeEachRemaining":Lio/ktor/utils/io/LookAheadSuspendSession;
    .end local p1    # "s":I
    .local v0, "$result":Ljava/lang/Object;
    .restart local v2    # "visitor":Lkotlin/jvm/functions/Function2;
    .local v3, "$this$consumeEachRemaining":Lio/ktor/utils/io/LookAheadSuspendSession;
    :goto_4
    goto :goto_1

    .line 64
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "visitor":Lkotlin/jvm/functions/Function2;
    .end local v3    # "$this$consumeEachRemaining":Lio/ktor/utils/io/LookAheadSuspendSession;
    .restart local v1    # "$result":Ljava/lang/Object;
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final consumeEachRemaining(Lio/ktor/utils/io/LookAheadSession;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p0, "$this$consumeEachRemaining"    # Lio/ktor/utils/io/LookAheadSession;
    .param p1, "visitor"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/LookAheadSession;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    .local v0, "$i$f$consumeEachRemaining":I
    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lio/ktor/utils/io/LookAheadSession;->request(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    .local v1, "it":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 39
    .local v2, "$i$a$-let-LookAheadSessionKt$consumeEachRemaining$cont$1":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 40
    .local v3, "s":I
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 41
    .local v4, "rc":Z
    invoke-interface {p0, v3}, Lio/ktor/utils/io/LookAheadSession;->consumed(I)V

    .line 42
    nop

    .line 38
    .end local v1    # "it":Ljava/nio/ByteBuffer;
    .end local v2    # "$i$a$-let-LookAheadSessionKt$consumeEachRemaining$cont$1":I
    .end local v3    # "s":I
    .end local v4    # "rc":Z
    move v2, v4

    goto :goto_1

    .line 43
    :cond_0
    nop

    .line 38
    :goto_1
    move v1, v2

    .line 45
    .local v1, "cont":Z
    nop

    .end local v1    # "cont":Z
    if-eqz v1, :cond_1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method

.method private static final consumeEachRemaining$$forInline(Lio/ktor/utils/io/LookAheadSuspendSession;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this$consumeEachRemaining"    # Lio/ktor/utils/io/LookAheadSuspendSession;
    .param p1, "visitor"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/LookAheadSuspendSession;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    .local v0, "$i$f$consumeEachRemaining":I
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Lio/ktor/utils/io/LookAheadSuspendSession;->request(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 53
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    if-nez v3, :cond_1

    .line 54
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {p0, v2, p2}, Lio/ktor/utils/io/LookAheadSuspendSession;->awaitAtLeast(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    goto :goto_2

    .line 58
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 59
    .local v1, "s":I
    invoke-interface {p1, v3, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 60
    .local v2, "rc":Z
    invoke-interface {p0, v1}, Lio/ktor/utils/io/LookAheadSuspendSession;->consumed(I)V

    .line 62
    if-nez v2, :cond_2

    .line 64
    .end local v1    # "s":I
    .end local v2    # "rc":Z
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 63
    :cond_2
    :goto_2
    goto :goto_0
.end method
