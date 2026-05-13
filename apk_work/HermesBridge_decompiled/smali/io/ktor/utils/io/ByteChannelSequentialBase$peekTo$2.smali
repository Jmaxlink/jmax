.class final Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ByteChannelSequential.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ByteChannelSequentialBase;->peekTo-lBXzO7A(Ljava/nio/ByteBuffer;JJJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteChannelSequential.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteChannelSequential.kt\nio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 3 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n*L\n1#1,855:1\n69#2:856\n69#2:857\n15#3:858\n*S KotlinDebug\n*F\n+ 1 ByteChannelSequential.kt\nio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2\n*L\n826#1:856\n827#1:857\n827#1:858\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/utils/io/SuspendableReadSession;"
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
    c = "io.ktor.utils.io.ByteChannelSequentialBase$peekTo$2"
    f = "ByteChannelSequential.kt"
    i = {
        0x0
    }
    l = {
        0x337
    }
    m = "invokeSuspend"
    n = {
        "$this$readSuspendableSession"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $bytesCopied:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $destination:Ljava/nio/ByteBuffer;

.field final synthetic $destinationOffset:J

.field final synthetic $max:J

.field final synthetic $min:J

.field final synthetic $offset:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(JJLkotlin/jvm/internal/Ref$LongRef;JLjava/nio/ByteBuffer;JLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "J",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$min:J

    iput-wide p3, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$offset:J

    iput-object p5, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$bytesCopied:Lkotlin/jvm/internal/Ref$LongRef;

    iput-wide p6, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$max:J

    iput-object p8, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$destination:Ljava/nio/ByteBuffer;

    iput-wide p9, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$destinationOffset:J

    const/4 v0, 0x2

    invoke-direct {p0, v0, p11}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 13
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

    new-instance v12, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;

    iget-wide v1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$min:J

    iget-wide v3, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$offset:J

    iget-object v5, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$bytesCopied:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v6, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$max:J

    iget-object v8, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$destination:Ljava/nio/ByteBuffer;

    iget-wide v9, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$destinationOffset:J

    move-object v0, v12

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;-><init>(JJLkotlin/jvm/internal/Ref$LongRef;JLjava/nio/ByteBuffer;JLkotlin/coroutines/Continuation;)V

    iput-object p1, v12, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlin/coroutines/Continuation;

    return-object v12
.end method

.method public final invoke(Lio/ktor/utils/io/SuspendableReadSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/SuspendableReadSession;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/utils/io/SuspendableReadSession;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->invoke(Lio/ktor/utils/io/SuspendableReadSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 820
    iget v1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/utils/io/SuspendableReadSession;

    .local v1, "$this$readSuspendableSession":Lio/ktor/utils/io/SuspendableReadSession;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;
    .end local v1    # "$this$readSuspendableSession":Lio/ktor/utils/io/SuspendableReadSession;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/SuspendableReadSession;

    .line 821
    .local v3, "$this$readSuspendableSession":Lio/ktor/utils/io/SuspendableReadSession;
    iget-wide v4, v1, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$min:J

    iget-wide v6, v1, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$offset:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0xff8

    invoke-static {v4, v5, v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 823
    .local v4, "desiredSize":I
    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->L$0:Ljava/lang/Object;

    iput v2, v1, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->label:I

    invoke-interface {v3, v4, v5}, Lio/ktor/utils/io/SuspendableReadSession;->await(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "desiredSize":I
    if-ne v4, v0, :cond_0

    .line 820
    return-object v0

    .line 823
    :cond_0
    move-object v0, v1

    move-object v1, v3

    .line 825
    .end local v3    # "$this$readSuspendableSession":Lio/ktor/utils/io/SuspendableReadSession;
    .restart local v0    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;
    .local v1, "$this$readSuspendableSession":Lio/ktor/utils/io/SuspendableReadSession;
    :goto_0
    invoke-interface {v1, v2}, Lio/ktor/utils/io/SuspendableReadSession;->request(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    .end local v1    # "$this$readSuspendableSession":Lio/ktor/utils/io/SuspendableReadSession;
    if-nez v1, :cond_1

    sget-object v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    .line 826
    .local v1, "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_1
    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 856
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 826
    .end local v2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    int-to-long v2, v4

    iget-wide v4, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$offset:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 827
    iget-object v2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$bytesCopied:Lkotlin/jvm/internal/Ref$LongRef;

    move-object v3, v1

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .local v3, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 857
    .local v4, "$i$f$getReadRemaining":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6

    sub-int/2addr v5, v6

    .line 827
    .end local v3    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$getReadRemaining":I
    int-to-long v3, v5

    iget-wide v5, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$offset:J

    sub-long/2addr v3, v5

    iget-wide v5, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$max:J

    iget-object v7, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$destination:Ljava/nio/ByteBuffer;

    .local v7, "arg0$iv":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 858
    .local v8, "$i$f$getSize-impl":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    int-to-long v7, v9

    .line 827
    .end local v7    # "arg0$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "$i$f$getSize-impl":I
    iget-wide v9, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$destinationOffset:J

    sub-long/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 828
    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v6, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$destination:Ljava/nio/ByteBuffer;

    iget-wide v7, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$offset:J

    iget-object v2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$bytesCopied:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v9, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v11, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;->$destinationOffset:J

    invoke-static/range {v5 .. v12}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJJ)V

    .line 830
    .end local v1    # "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
