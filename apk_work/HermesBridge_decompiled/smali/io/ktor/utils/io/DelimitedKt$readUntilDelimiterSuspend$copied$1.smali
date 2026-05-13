.class final Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Delimited.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/DelimitedKt;->readUntilDelimiterSuspend(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
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
    c = "io.ktor.utils.io.DelimitedKt$readUntilDelimiterSuspend$copied$1"
    f = "Delimited.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x55,
        0x5f
    }
    m = "invokeSuspend"
    n = {
        "$this$lookAheadSuspend",
        "copied",
        "$this$lookAheadSuspend",
        "copied"
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $copied0:I

.field final synthetic $delimiter:Ljava/nio/ByteBuffer;

.field final synthetic $dst:Ljava/nio/ByteBuffer;

.field final synthetic $endFound:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $this_readUntilDelimiterSuspend:Lio/ktor/utils/io/ByteReadChannel;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/nio/ByteBuffer;",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$copied0:I

    iput-object p2, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$delimiter:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$dst:Ljava/nio/ByteBuffer;

    iput-object p4, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$endFound:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$this_readUntilDelimiterSuspend:Lio/ktor/utils/io/ByteReadChannel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v7, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;

    iget v1, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$copied0:I

    iget-object v2, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$delimiter:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$dst:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$endFound:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v5, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$this_readUntilDelimiterSuspend:Lio/ktor/utils/io/ByteReadChannel;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;-><init>(ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public final invoke(Lio/ktor/utils/io/LookAheadSuspendSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/LookAheadSuspendSession;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/utils/io/LookAheadSuspendSession;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->invoke(Lio/ktor/utils/io/LookAheadSuspendSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 81
    iget v1, p0, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v1, p0

    .local v1, "this":Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;
    .local p1, "$result":Ljava/lang/Object;
    iget v3, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->I$0:I

    .local v3, "copied":I
    iget-object v4, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/LookAheadSuspendSession;

    .local v4, "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v1    # "this":Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;
    .end local v3    # "copied":I
    .end local v4    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .restart local v1    # "this":Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget v3, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->I$0:I

    .restart local v3    # "copied":I
    iget-object v4, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/LookAheadSuspendSession;

    .restart local v4    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "this":Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;
    .end local v3    # "copied":I
    .end local v4    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/LookAheadSuspendSession;

    .line 82
    .local v3, "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    iget v4, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$copied0:I

    .line 85
    .local v4, "copied":I
    :cond_0
    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->L$0:Ljava/lang/Object;

    iput v4, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->I$0:I

    iput v2, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->label:I

    invoke-interface {v3, v2, v5}, Lio/ktor/utils/io/LookAheadSuspendSession;->awaitAtLeast(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_1

    .line 81
    return-object v0

    .line 85
    :cond_1
    move v8, v4

    move-object v4, v3

    move v3, v8

    .line 86
    .local v3, "copied":I
    .local v4, "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    :goto_0
    move-object v5, v4

    check-cast v5, Lio/ktor/utils/io/LookAheadSession;

    iget-object v6, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$delimiter:Ljava/nio/ByteBuffer;

    iget-object v7, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$dst:Ljava/nio/ByteBuffer;

    invoke-static {v5, v6, v7}, Lio/ktor/utils/io/DelimitedKt;->access$tryCopyUntilDelimiter(Lio/ktor/utils/io/LookAheadSession;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 87
    .local v5, "rc":I
    if-nez v5, :cond_5

    .line 88
    .end local v5    # "rc":I
    move-object v5, v4

    check-cast v5, Lio/ktor/utils/io/LookAheadSession;

    iget-object v6, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$delimiter:Ljava/nio/ByteBuffer;

    invoke-static {v5, v6}, Lio/ktor/utils/io/DelimitedKt;->access$startsWithDelimiter(Lio/ktor/utils/io/LookAheadSession;Ljava/nio/ByteBuffer;)I

    move-result v5

    iget-object v6, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$delimiter:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 89
    iget-object v0, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$endFound:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 90
    goto :goto_4

    .line 92
    :cond_2
    iget-object v5, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$this_readUntilDelimiterSuspend:Lio/ktor/utils/io/ByteReadChannel;

    invoke-interface {v5}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForWrite()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 93
    goto :goto_4

    .line 95
    :cond_3
    iget-object v5, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$delimiter:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->L$0:Ljava/lang/Object;

    iput v3, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->I$0:I

    const/4 v7, 0x2

    iput v7, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->label:I

    invoke-interface {v4, v5, v6}, Lio/ktor/utils/io/LookAheadSuspendSession;->awaitAtLeast(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_4

    .line 81
    return-object v0

    .line 96
    :cond_4
    :goto_1
    move-object v8, v4

    move v4, v3

    move-object v3, v8

    goto :goto_3

    .line 100
    .restart local v5    # "rc":I
    :cond_5
    if-gtz v5, :cond_6

    .line 101
    iget-object v6, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$endFound:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v2, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 102
    neg-int v6, v5

    move v5, v6

    goto :goto_2

    .line 104
    :cond_6
    nop

    .line 100
    .end local v5    # "rc":I
    :goto_2
    nop

    .line 106
    .local v5, "size":I
    add-int/2addr v3, v5

    move-object v8, v4

    move v4, v3

    move-object v3, v8

    .line 107
    .end local v5    # "size":I
    .local v3, "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    .local v4, "copied":I
    :goto_3
    iget-object v5, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$dst:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v1, Lio/ktor/utils/io/DelimitedKt$readUntilDelimiterSuspend$copied$1;->$endFound:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v5, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v5, :cond_0

    .line 109
    .end local v3    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    :cond_7
    move v3, v4

    .end local v4    # "copied":I
    .local v3, "copied":I
    :goto_4
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
