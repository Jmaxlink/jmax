.class public final Lio/ktor/server/netty/cio/RequestBodyHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "RequestBodyHandler.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/netty/cio/RequestBodyHandler$Upgrade;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0008\u0000\u0018\u00002\u00020@2\u00020A:\u0001>B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ#\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0017\u001a\u00020\u00072\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0019\u0010\u001d\u001a\u00020\u00072\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0004J\u0019\u0010\u001e\u001a\u00020\u00072\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0004J\r\u0010 \u001a\u00020\u001f\u00a2\u0006\u0004\u0008 \u0010!J#\u0010#\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008#\u0010$J#\u0010#\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020%H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008#\u0010\'J\u000f\u0010(\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008(\u0010\u000bJ\u0017\u0010*\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008*\u0010+J\r\u0010,\u001a\u00020\u001f\u00a2\u0006\u0004\u0008,\u0010!R\u0017\u0010\u0002\u001a\u00020\u00018\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0002\u0010-\u001a\u0004\u0008.\u0010/R\u0014\u00103\u001a\u0002008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u00102R\u001a\u00106\u001a\u0008\u0012\u0004\u0012\u000205048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0014\u00109\u001a\u0002088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u001a\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00050;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006?"
    }
    d2 = {
        "Lio/ktor/server/netty/cio/RequestBodyHandler;",
        "Lio/netty/channel/ChannelHandlerContext;",
        "context",
        "<init>",
        "(Lio/netty/channel/ChannelHandlerContext;)V",
        "",
        "msg",
        "",
        "channelRead",
        "(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V",
        "close",
        "()V",
        "consumeAndReleaseQueue",
        "Lio/netty/buffer/ByteBuf;",
        "buf",
        "Lio/ktor/utils/io/ByteWriteChannel;",
        "dst",
        "",
        "copy",
        "(Lio/netty/buffer/ByteBuf;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ctx",
        "",
        "cause",
        "exceptionCaught",
        "(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V",
        "Lio/netty/util/ReferenceCounted;",
        "content",
        "handleBytesRead",
        "(Lio/netty/util/ReferenceCounted;)V",
        "handlerAdded",
        "handlerRemoved",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "newChannel",
        "()Lio/ktor/utils/io/ByteReadChannel;",
        "current",
        "processContent",
        "(Lio/ktor/utils/io/ByteWriteChannel;Lio/netty/buffer/ByteBuf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lio/netty/buffer/ByteBufHolder;",
        "event",
        "(Lio/ktor/utils/io/ByteWriteChannel;Lio/netty/buffer/ByteBufHolder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "requestMoreEvents",
        "token",
        "tryOfferChannelOrToken",
        "(Ljava/lang/Object;)V",
        "upgrade",
        "Lio/netty/channel/ChannelHandlerContext;",
        "getContext",
        "()Lio/netty/channel/ChannelHandlerContext;",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "coroutineContext",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "",
        "handlerJob",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "Lkotlinx/coroutines/Job;",
        "job",
        "Lkotlinx/coroutines/Job;",
        "Lkotlinx/coroutines/channels/Channel;",
        "queue",
        "Lkotlinx/coroutines/channels/Channel;",
        "Upgrade",
        "ktor-server-netty",
        "Lio/netty/channel/ChannelInboundHandlerAdapter;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic buffersInProcessingCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic buffersInProcessingCount:I

.field private final context:Lio/netty/channel/ChannelHandlerContext;

.field private final handlerJob:Lkotlinx/coroutines/CompletableDeferred;

.field private final job:Lkotlinx/coroutines/Job;

.field private final queue:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lio/ktor/server/netty/cio/RequestBodyHandler;

    const-string v1, "buffersInProcessingCount"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/server/netty/cio/RequestBodyHandler;->buffersInProcessingCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 5
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->context:Lio/netty/channel/ChannelHandlerContext;

    .line 22
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->handlerJob:Lkotlinx/coroutines/CompletableDeferred;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->buffersInProcessingCount:I

    .line 25
    const v0, 0x7fffffff

    const/4 v2, 0x6

    invoke-static {v0, v1, v1, v2, v1}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->queue:Lkotlinx/coroutines/channels/Channel;

    .line 31
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v2}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    const-string v3, "context.executor()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    invoke-static {v2}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    sget-object v3, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    new-instance v4, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;

    invoke-direct {v4, p0, v1}, Lio/ktor/server/netty/cio/RequestBodyHandler$job$1;-><init>(Lio/ktor/server/netty/cio/RequestBodyHandler;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v2, v3, v4}, Lkotlinx/coroutines/BuildersKt;->launch(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->job:Lkotlinx/coroutines/Job;

    .line 19
    return-void
.end method

.method public static final synthetic access$consumeAndReleaseQueue(Lio/ktor/server/netty/cio/RequestBodyHandler;)V
    .locals 0
    .param p0, "$this"    # Lio/ktor/server/netty/cio/RequestBodyHandler;

    .line 18
    invoke-direct {p0}, Lio/ktor/server/netty/cio/RequestBodyHandler;->consumeAndReleaseQueue()V

    return-void
.end method

.method public static final synthetic access$copy(Lio/ktor/server/netty/cio/RequestBodyHandler;Lio/netty/buffer/ByteBuf;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/cio/RequestBodyHandler;
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "dst"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/server/netty/cio/RequestBodyHandler;->copy(Lio/netty/buffer/ByteBuf;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getQueue$p(Lio/ktor/server/netty/cio/RequestBodyHandler;)Lkotlinx/coroutines/channels/Channel;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/cio/RequestBodyHandler;

    .line 18
    iget-object v0, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->queue:Lkotlinx/coroutines/channels/Channel;

    return-object v0
.end method

.method public static final synthetic access$processContent(Lio/ktor/server/netty/cio/RequestBodyHandler;Lio/ktor/utils/io/ByteWriteChannel;Lio/netty/buffer/ByteBuf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/cio/RequestBodyHandler;
    .param p1, "current"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p2, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/server/netty/cio/RequestBodyHandler;->processContent(Lio/ktor/utils/io/ByteWriteChannel;Lio/netty/buffer/ByteBuf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$processContent(Lio/ktor/server/netty/cio/RequestBodyHandler;Lio/ktor/utils/io/ByteWriteChannel;Lio/netty/buffer/ByteBufHolder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/cio/RequestBodyHandler;
    .param p1, "current"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p2, "event"    # Lio/netty/buffer/ByteBufHolder;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/server/netty/cio/RequestBodyHandler;->processContent(Lio/ktor/utils/io/ByteWriteChannel;Lio/netty/buffer/ByteBufHolder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$requestMoreEvents(Lio/ktor/server/netty/cio/RequestBodyHandler;)V
    .locals 0
    .param p0, "$this"    # Lio/ktor/server/netty/cio/RequestBodyHandler;

    .line 18
    invoke-direct {p0}, Lio/ktor/server/netty/cio/RequestBodyHandler;->requestMoreEvents()V

    return-void
.end method

.method private final consumeAndReleaseQueue()V
    .locals 2

    .line 150
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->queue:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/Channel;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 151
    nop

    .line 152
    :try_start_0
    iget-object v0, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->queue:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/Channel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    move-object v0, v1

    .line 151
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    if-nez v0, :cond_1

    .line 155
    goto :goto_2

    .line 157
    .local v0, "e":Ljava/lang/Object;
    :cond_1
    nop

    .line 158
    instance-of v1, v0, Lio/ktor/utils/io/ByteChannel;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v1}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    goto :goto_0

    .line 159
    :cond_2
    instance-of v1, v0, Lio/netty/util/ReferenceCounted;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/netty/util/ReferenceCounted;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    goto :goto_0

    .line 164
    .end local v0    # "e":Ljava/lang/Object;
    :cond_3
    :goto_2
    return-void
.end method

.method private final copy(Lio/netty/buffer/ByteBuf;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/server/netty/cio/RequestBodyHandler$copy$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/server/netty/cio/RequestBodyHandler$copy$1;

    iget v1, v0, Lio/ktor/server/netty/cio/RequestBodyHandler$copy$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/server/netty/cio/RequestBodyHandler$copy$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/server/netty/cio/RequestBodyHandler$copy$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/netty/cio/RequestBodyHandler$copy$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/server/netty/cio/RequestBodyHandler$copy$1;-><init>(Lio/ktor/server/netty/cio/RequestBodyHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lio/ktor/server/netty/cio/RequestBodyHandler$copy$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 166
    iget v2, p3, Lio/ktor/server/netty/cio/RequestBodyHandler$copy$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget p1, p3, Lio/ktor/server/netty/cio/RequestBodyHandler$copy$1;->I$0:I

    .local p1, "length":I
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p1    # "length":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 167
    .local p1, "buf":Lio/netty/buffer/ByteBuf;
    .local p2, "dst":Lio/ktor/utils/io/ByteWriteChannel;
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    .line 168
    .local v2, "length":I
    if-lez v2, :cond_2

    .line 169
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual {p1, v3, v2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 170
    .local p1, "buffer":Ljava/nio/ByteBuffer;
    const-string v3, "buffer"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput v2, p3, Lio/ktor/server/netty/cio/RequestBodyHandler$copy$1;->I$0:I

    const/4 v3, 0x1

    iput v3, p3, Lio/ktor/server/netty/cio/RequestBodyHandler$copy$1;->label:I

    invoke-interface {p2, p1, p3}, Lio/ktor/utils/io/ByteWriteChannel;->writeFully(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    .end local p2    # "dst":Lio/ktor/utils/io/ByteWriteChannel;
    if-ne p1, v1, :cond_1

    .line 166
    return-object v1

    .line 170
    :cond_1
    move p1, v2

    .line 173
    .end local v2    # "length":I
    .local p1, "length":I
    :goto_1
    move v2, p1

    .end local p1    # "length":I
    .restart local v2    # "length":I
    :cond_2
    const/4 p1, 0x0

    invoke-static {v2, p1}, Ljava/lang/Integer;->max(II)I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final handleBytesRead(Lio/netty/util/ReferenceCounted;)V
    .locals 2
    .param p1, "content"    # Lio/netty/util/ReferenceCounted;

    .line 177
    sget-object v0, Lio/ktor/server/netty/cio/RequestBodyHandler;->buffersInProcessingCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 178
    iget-object v0, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->queue:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    return-void

    .line 179
    :cond_0
    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to process received buffer: queue offer failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final processContent(Lio/ktor/utils/io/ByteWriteChannel;Lio/netty/buffer/ByteBuf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lio/netty/buffer/ByteBuf;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$2;

    iget v1, v0, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$2;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$2;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$2;

    invoke-direct {v0, p0, p3}, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$2;-><init>(Lio/ktor/server/netty/cio/RequestBodyHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$2;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 134
    iget v2, p3, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$2;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p3, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/netty/buffer/ByteBuf;

    .local p1, "buf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    goto :goto_1

    .line 138
    :catchall_0
    move-exception p2

    goto :goto_2

    .line 134
    .end local p1    # "buf":Lio/netty/buffer/ByteBuf;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 135
    .local v2, "this":Lio/ktor/server/netty/cio/RequestBodyHandler;
    .local p1, "current":Lio/ktor/utils/io/ByteWriteChannel;
    .local p2, "buf":Lio/netty/buffer/ByteBuf;
    nop

    .line 136
    :try_start_1
    iput-object p2, p3, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$2;->L$0:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p3, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$2;->label:I

    invoke-direct {v2, p2, p1, p3}, Lio/ktor/server/netty/cio/RequestBodyHandler;->copy(Lio/netty/buffer/ByteBuf;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v2    # "this":Lio/ktor/server/netty/cio/RequestBodyHandler;
    .end local p1    # "current":Lio/ktor/utils/io/ByteWriteChannel;
    if-ne v3, v1, :cond_1

    .line 134
    return-object v1

    .line 136
    :cond_1
    move-object p1, p2

    .line 138
    .end local p2    # "buf":Lio/netty/buffer/ByteBuf;
    .local p1, "buf":Lio/netty/buffer/ByteBuf;
    :goto_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 136
    .end local p1    # "buf":Lio/netty/buffer/ByteBuf;
    return-object v3

    .line 138
    .restart local p2    # "buf":Lio/netty/buffer/ByteBuf;
    :catchall_1
    move-exception p1

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    .end local p2    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "buf":Lio/netty/buffer/ByteBuf;
    :goto_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final processContent(Lio/ktor/utils/io/ByteWriteChannel;Lio/netty/buffer/ByteBufHolder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lio/netty/buffer/ByteBufHolder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$1;

    iget v1, v0, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$1;-><init>(Lio/ktor/server/netty/cio/RequestBodyHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 125
    iget v2, p3, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p3, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/netty/buffer/ByteBufHolder;

    .local p1, "event":Lio/netty/buffer/ByteBufHolder;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    goto :goto_1

    .line 130
    :catchall_0
    move-exception p2

    goto :goto_2

    .line 125
    .end local p1    # "event":Lio/netty/buffer/ByteBufHolder;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 126
    .local v2, "this":Lio/ktor/server/netty/cio/RequestBodyHandler;
    .local p1, "current":Lio/ktor/utils/io/ByteWriteChannel;
    .local p2, "event":Lio/netty/buffer/ByteBufHolder;
    nop

    .line 127
    :try_start_1
    invoke-interface {p2}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 128
    .local v3, "buf":Lio/netty/buffer/ByteBuf;
    const-string v4, "buf"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p3, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p3, Lio/ktor/server/netty/cio/RequestBodyHandler$processContent$1;->label:I

    invoke-direct {v2, v3, p1, p3}, Lio/ktor/server/netty/cio/RequestBodyHandler;->copy(Lio/netty/buffer/ByteBuf;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v2    # "this":Lio/ktor/server/netty/cio/RequestBodyHandler;
    .end local v3    # "buf":Lio/netty/buffer/ByteBuf;
    .end local p1    # "current":Lio/ktor/utils/io/ByteWriteChannel;
    if-ne v4, v1, :cond_1

    .line 125
    return-object v1

    .line 128
    :cond_1
    move-object p1, p2

    .line 130
    .end local p2    # "event":Lio/netty/buffer/ByteBufHolder;
    .local p1, "event":Lio/netty/buffer/ByteBufHolder;
    :goto_1
    invoke-interface {p1}, Lio/netty/buffer/ByteBufHolder;->release()Z

    .line 128
    .end local p1    # "event":Lio/netty/buffer/ByteBufHolder;
    return-object v4

    .line 130
    .restart local p2    # "event":Lio/netty/buffer/ByteBufHolder;
    :catchall_1
    move-exception p1

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    .end local p2    # "event":Lio/netty/buffer/ByteBufHolder;
    .restart local p1    # "event":Lio/netty/buffer/ByteBufHolder;
    :goto_2
    invoke-interface {p1}, Lio/netty/buffer/ByteBufHolder;->release()Z

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final requestMoreEvents()V
    .locals 1

    .line 143
    sget-object v0, Lio/ktor/server/netty/cio/RequestBodyHandler;->buffersInProcessingCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 146
    :cond_0
    return-void
.end method

.method private final tryOfferChannelOrToken(Ljava/lang/Object;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->queue:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    .local v0, "result":Ljava/lang/Object;
    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->queue:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v1}, Lkotlinx/coroutines/channels/Channel;->isClosedForSend()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    const-string v1, "HTTP pipeline has been terminated."

    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlinx/coroutines/ExceptionsKt;->CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v1

    throw v1

    .line 106
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start request processing: failed to offer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 108
    nop

    .line 107
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 108
    nop

    .line 107
    const-string v3, " to the HTTP pipeline queue. Queue closed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 109
    iget-object v3, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->queue:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v3}, Lkotlinx/coroutines/channels/Channel;->isClosedForSend()Z

    move-result v3

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    nop

    .line 119
    instance-of v0, p2, Lio/netty/buffer/ByteBufHolder;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/netty/util/ReferenceCounted;

    invoke-direct {p0, v0}, Lio/ktor/server/netty/cio/RequestBodyHandler;->handleBytesRead(Lio/netty/util/ReferenceCounted;)V

    goto :goto_0

    .line 120
    :cond_0
    instance-of v0, p2, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/netty/util/ReferenceCounted;

    invoke-direct {p0, v0}, Lio/ktor/server/netty/cio/RequestBodyHandler;->handleBytesRead(Lio/netty/util/ReferenceCounted;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 123
    :goto_0
    return-void
.end method

.method public final close()V
    .locals 3

    .line 114
    iget-object v0, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->queue:Lkotlinx/coroutines/channels/Channel;

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;

    const-string v0, "cause"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->handlerJob:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0, p2}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 187
    iget-object v0, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->queue:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v0, p2}, Lkotlinx/coroutines/channels/Channel;->close(Ljava/lang/Throwable;)Z

    .line 188
    return-void
.end method

.method public final getContext()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->context:Lio/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->handlerJob:Lkotlinx/coroutines/CompletableDeferred;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 198
    iget-object v0, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->job:Lkotlinx/coroutines/Job;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->start()Z

    .line 199
    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 191
    iget-object v0, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->queue:Lkotlinx/coroutines/channels/Channel;

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->job:Lkotlinx/coroutines/Job;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lio/ktor/server/netty/cio/RequestBodyHandler;->consumeAndReleaseQueue()V

    .line 193
    iget-object v0, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->handlerJob:Lkotlinx/coroutines/CompletableDeferred;

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 195
    :cond_0
    return-void
.end method

.method public final newChannel()Lio/ktor/utils/io/ByteReadChannel;
    .locals 3

    .line 92
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lio/ktor/utils/io/ByteChannelKt;->ByteChannel$default(ZILjava/lang/Object;)Lio/ktor/utils/io/ByteChannel;

    move-result-object v0

    .line 93
    .local v0, "result":Lio/ktor/utils/io/ByteChannel;
    invoke-direct {p0, v0}, Lio/ktor/server/netty/cio/RequestBodyHandler;->tryOfferChannelOrToken(Ljava/lang/Object;)V

    .line 94
    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/ByteReadChannel;

    return-object v1
.end method

.method public final upgrade()Lio/ktor/utils/io/ByteReadChannel;
    .locals 4

    .line 78
    iget-object v0, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->queue:Lkotlinx/coroutines/channels/Channel;

    sget-object v1, Lio/ktor/server/netty/cio/RequestBodyHandler$Upgrade;->INSTANCE:Lio/ktor/server/netty/cio/RequestBodyHandler$Upgrade;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "result":Ljava/lang/Object;
    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lio/ktor/server/netty/cio/RequestBodyHandler;->newChannel()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v1

    return-object v1

    .line 81
    :cond_0
    iget-object v1, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->queue:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v1}, Lkotlinx/coroutines/channels/Channel;->isClosedForSend()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const-string v1, "HTTP pipeline has been terminated."

    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlinx/coroutines/ExceptionsKt;->CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v1

    throw v1

    .line 84
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start request processing: failed to offer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 86
    sget-object v3, Lio/ktor/server/netty/cio/RequestBodyHandler$Upgrade;->INSTANCE:Lio/ktor/server/netty/cio/RequestBodyHandler$Upgrade;

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 86
    nop

    .line 85
    const-string v3, " to the HTTP pipeline queue. Queue closed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    iget-object v3, p0, Lio/ktor/server/netty/cio/RequestBodyHandler;->queue:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v3}, Lkotlinx/coroutines/channels/Channel;->isClosedForSend()Z

    move-result v3

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
