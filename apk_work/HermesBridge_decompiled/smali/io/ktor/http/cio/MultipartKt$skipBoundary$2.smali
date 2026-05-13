.class final Lio/ktor/http/cio/MultipartKt$skipBoundary$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Multipart.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/cio/MultipartKt;->skipBoundary(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "io.ktor.http.cio.MultipartKt$skipBoundary$2"
    f = "Multipart.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0xcc,
        0xd7
    }
    m = "invokeSuspend"
    n = {
        "$this$lookAheadSuspend",
        "$this$lookAheadSuspend"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $result:Lkotlin/jvm/internal/Ref$BooleanRef;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/cio/MultipartKt$skipBoundary$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;->$result:Lkotlin/jvm/internal/Ref$BooleanRef;

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

    new-instance v0, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;

    iget-object v1, p0, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;->$result:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0, v1, p2}, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/utils/io/LookAheadSuspendSession;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;->invoke(Lio/ktor/utils/io/LookAheadSuspendSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 203
    iget v1, p0, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;->label:I

    const-string v2, "Failed to pass multipart boundary: unexpected end of stream"

    const/16 v3, 0x2d

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/http/cio/MultipartKt$skipBoundary$2;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/utils/io/LookAheadSuspendSession;

    .local v1, "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v0    # "this":Lio/ktor/http/cio/MultipartKt$skipBoundary$2;
    .end local v1    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lio/ktor/http/cio/MultipartKt$skipBoundary$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v6, v1, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/LookAheadSuspendSession;

    .local v6, "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "this":Lio/ktor/http/cio/MultipartKt$skipBoundary$2;
    .end local v6    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lio/ktor/http/cio/MultipartKt$skipBoundary$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v6, v1, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/LookAheadSuspendSession;

    .line 204
    .restart local v6    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v6, v1, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;->L$0:Ljava/lang/Object;

    iput v5, v1, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;->label:I

    invoke-interface {v6, v5, v7}, Lio/ktor/utils/io/LookAheadSuspendSession;->awaitAtLeast(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_0

    .line 203
    return-object v0

    .line 205
    :cond_0
    :goto_0
    const/4 v7, 0x0

    invoke-interface {v6, v7, v5}, Lio/ktor/utils/io/LookAheadSuspendSession;->request(II)Ljava/nio/ByteBuffer;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 208
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    if-eq v8, v3, :cond_1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 209
    :cond_1
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-le v8, v5, :cond_2

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    if-ne v8, v3, :cond_2

    .line 210
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    iget-object v0, v1, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;->$result:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v5, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 211
    invoke-interface {v6, v4}, Lio/ktor/utils/io/LookAheadSuspendSession;->consumed(I)V

    .line 212
    .end local v6    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 215
    .restart local v6    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    :cond_2
    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v6, v1, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;->L$0:Ljava/lang/Object;

    iput v4, v1, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;->label:I

    invoke-interface {v6, v4, v7}, Lio/ktor/utils/io/LookAheadSuspendSession;->awaitAtLeast(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_3

    .line 203
    return-object v0

    .line 215
    :cond_3
    move-object v0, v1

    move-object v1, v6

    .line 216
    .end local v6    # "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    .restart local v0    # "this":Lio/ktor/http/cio/MultipartKt$skipBoundary$2;
    .local v1, "$this$lookAheadSuspend":Lio/ktor/utils/io/LookAheadSuspendSession;
    :goto_1
    invoke-interface {v1, v5, v5}, Lio/ktor/utils/io/LookAheadSuspendSession;->request(II)Ljava/nio/ByteBuffer;

    move-result-object v6

    if-eqz v6, :cond_5

    move-object v2, v6

    .line 219
    .local v2, "attempt2buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    if-ne v6, v3, :cond_4

    .line 220
    iget-object v3, v0, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;->$result:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v5, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 221
    invoke-interface {v1, v4}, Lio/ktor/utils/io/LookAheadSuspendSession;->consumed(I)V

    .line 222
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    .line 224
    :cond_4
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    .line 217
    .end local v2    # "attempt2buffer":Ljava/nio/ByteBuffer;
    :cond_5
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 206
    .end local v0    # "this":Lio/ktor/http/cio/MultipartKt$skipBoundary$2;
    .local v1, "this":Lio/ktor/http/cio/MultipartKt$skipBoundary$2;
    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
