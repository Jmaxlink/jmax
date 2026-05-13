.class final Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FileChannels.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/util/cio/FileChannelsKt$readChannel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/WriterSuspendSession;",
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
        "Lio/ktor/utils/io/WriterSuspendSession;"
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
    c = "io.ktor.util.cio.FileChannelsKt$readChannel$1$3$1"
    f = "FileChannels.kt"
    i = {
        0x0
    }
    l = {
        0x31
    }
    m = "invokeSuspend"
    n = {
        "$this$writeSuspendSession"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $$this$writer:Lio/ktor/utils/io/WriterScope;

.field final synthetic $fileChannel:Ljava/nio/channels/FileChannel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/utils/io/WriterScope;Ljava/nio/channels/FileChannel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/WriterScope;",
            "Ljava/nio/channels/FileChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;->$$this$writer:Lio/ktor/utils/io/WriterScope;

    iput-object p2, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;->$fileChannel:Ljava/nio/channels/FileChannel;

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

    new-instance v0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;

    iget-object v1, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;->$$this$writer:Lio/ktor/utils/io/WriterScope;

    iget-object v2, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;->$fileChannel:Ljava/nio/channels/FileChannel;

    invoke-direct {v0, v1, v2, p2}, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;-><init>(Lio/ktor/utils/io/WriterScope;Ljava/nio/channels/FileChannel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lio/ktor/utils/io/WriterSuspendSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/WriterSuspendSession;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ktor/utils/io/WriterSuspendSession;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;->invoke(Lio/ktor/utils/io/WriterSuspendSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 44
    iget v1, p0, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v1, p0

    .local v1, "this":Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v2, v1, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/WriterSuspendSession;

    .local v2, "$this$writeSuspendSession":Lio/ktor/utils/io/WriterSuspendSession;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;
    .end local v2    # "$this$writeSuspendSession":Lio/ktor/utils/io/WriterSuspendSession;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/WriterSuspendSession;

    .line 45
    .restart local v2    # "$this$writeSuspendSession":Lio/ktor/utils/io/WriterSuspendSession;
    :goto_0
    nop

    .line 46
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lio/ktor/utils/io/WriterSuspendSession;->request(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4

    .line 47
    .local v4, "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    if-nez v4, :cond_1

    .line 48
    .end local v4    # "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    iget-object v4, v1, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;->$$this$writer:Lio/ktor/utils/io/WriterScope;

    invoke-interface {v4}, Lio/ktor/utils/io/WriterScope;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v4

    invoke-interface {v4}, Lio/ktor/utils/io/ByteWriteChannel;->flush()V

    .line 49
    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;->L$0:Ljava/lang/Object;

    iput v3, v1, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;->label:I

    invoke-interface {v2, v3, v4}, Lio/ktor/utils/io/WriterSuspendSession;->tryAwait(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 44
    return-object v0

    .line 50
    :cond_0
    :goto_1
    goto :goto_0

    .line 53
    .restart local v4    # "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_1
    iget-object v3, v1, Lio/ktor/util/cio/FileChannelsKt$readChannel$1$3$1;->$fileChannel:Ljava/nio/channels/FileChannel;

    check-cast v3, Ljava/nio/channels/ReadableByteChannel;

    invoke-static {v3, v4}, Lio/ktor/util/BufferViewJvmKt;->read(Ljava/nio/channels/ReadableByteChannel;Lio/ktor/utils/io/core/internal/ChunkBuffer;)I

    move-result v3

    .line 54
    .local v3, "rc":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 55
    invoke-interface {v2, v3}, Lio/ktor/utils/io/WriterSuspendSession;->written(I)V

    .end local v3    # "rc":I
    .end local v4    # "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    goto :goto_0

    .line 57
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
