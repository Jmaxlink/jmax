.class public abstract Lio/ktor/server/netty/NettyApplicationCall;
.super Lio/ktor/server/engine/BaseApplicationCall;
.source "NettyApplicationCall.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\u0008&\u0018\u00002\u00020FB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\u000c\u001a\u00020\tH\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0013\u0010\u000f\u001a\u00020\tH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000bJ\u0013\u0010\u0011\u001a\u00020\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u000eJ\u000f\u0010\u0015\u001a\u00020\u0012H \u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0016\u001a\u00020\u0012H\u0010\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u0012H\u0010\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008 \u0010\u000bJ\u0017\u0010$\u001a\u00020\t2\u0006\u0010!\u001a\u00020\u0003H\u0010\u00a2\u0006\u0004\u0008\"\u0010#R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010%\u001a\u0004\u0008&\u0010\'R\"\u0010)\u001a\u00020(8\u0000@\u0000X\u0080.\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\"\u0010/\u001a\u00020\u00128\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u00100\u001a\u0004\u00081\u0010\u0014\"\u0004\u00082\u00103R\"\u00104\u001a\u00020(8\u0000@\u0000X\u0080.\u00a2\u0006\u0012\n\u0004\u00084\u0010*\u001a\u0004\u00085\u0010,\"\u0004\u00086\u0010.R\u0014\u0010:\u001a\u0002078&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00088\u00109R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010;R\u0014\u0010?\u001a\u00020<8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010>R\u0017\u0010A\u001a\u00020@8\u0006\u00a2\u0006\u000c\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010D\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006E"
    }
    d2 = {
        "Lio/ktor/server/netty/NettyApplicationCall;",
        "Lio/ktor/server/application/Application;",
        "application",
        "Lio/netty/channel/ChannelHandlerContext;",
        "context",
        "",
        "requestMessage",
        "<init>",
        "(Lio/ktor/server/application/Application;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V",
        "",
        "dispose$ktor_server_netty",
        "()V",
        "dispose",
        "finish$ktor_server_netty",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "finish",
        "finishComplete",
        "finishSuspend",
        "",
        "isContextCloseRequired$ktor_server_netty",
        "()Z",
        "isContextCloseRequired",
        "lastTransformed",
        "prepareEndOfStreamMessage$ktor_server_netty",
        "(Z)Ljava/lang/Object;",
        "prepareEndOfStreamMessage",
        "Lio/netty/buffer/ByteBuf;",
        "buf",
        "isLastContent",
        "prepareMessage$ktor_server_netty",
        "(Lio/netty/buffer/ByteBuf;Z)Ljava/lang/Object;",
        "prepareMessage",
        "releaseRequestMessage",
        "dst",
        "upgrade$ktor_server_netty",
        "(Lio/netty/channel/ChannelHandlerContext;)V",
        "upgrade",
        "Lio/netty/channel/ChannelHandlerContext;",
        "getContext",
        "()Lio/netty/channel/ChannelHandlerContext;",
        "Lio/netty/channel/ChannelPromise;",
        "finishedEvent",
        "Lio/netty/channel/ChannelPromise;",
        "getFinishedEvent$ktor_server_netty",
        "()Lio/netty/channel/ChannelPromise;",
        "setFinishedEvent$ktor_server_netty",
        "(Lio/netty/channel/ChannelPromise;)V",
        "isByteBufferContent",
        "Z",
        "isByteBufferContent$ktor_server_netty",
        "setByteBufferContent$ktor_server_netty",
        "(Z)V",
        "previousCallFinished",
        "getPreviousCallFinished$ktor_server_netty",
        "setPreviousCallFinished$ktor_server_netty",
        "Lio/ktor/server/netty/NettyApplicationRequest;",
        "getRequest",
        "()Lio/ktor/server/netty/NettyApplicationRequest;",
        "request",
        "Ljava/lang/Object;",
        "Lio/ktor/server/netty/NettyApplicationResponse;",
        "getResponse",
        "()Lio/ktor/server/netty/NettyApplicationResponse;",
        "response",
        "Lkotlinx/coroutines/Job;",
        "responseWriteJob",
        "Lkotlinx/coroutines/Job;",
        "getResponseWriteJob",
        "()Lkotlinx/coroutines/Job;",
        "ktor-server-netty",
        "Lio/ktor/server/engine/BaseApplicationCall;"
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
.field private static final synthetic messageReleased$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final context:Lio/netty/channel/ChannelHandlerContext;

.field public finishedEvent:Lio/netty/channel/ChannelPromise;

.field private isByteBufferContent:Z

.field private volatile synthetic messageReleased:I

.field public previousCallFinished:Lio/netty/channel/ChannelPromise;

.field private final requestMessage:Ljava/lang/Object;

.field private final responseWriteJob:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lio/ktor/server/netty/NettyApplicationCall;

    const-string v1, "messageReleased"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/server/netty/NettyApplicationCall;->messageReleased$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lio/ktor/server/application/Application;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2
    .param p1, "application"    # Lio/ktor/server/application/Application;
    .param p2, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "requestMessage"    # Ljava/lang/Object;

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestMessage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lio/ktor/server/engine/BaseApplicationCall;-><init>(Lio/ktor/server/application/Application;)V

    .line 18
    iput-object p2, p0, Lio/ktor/server/netty/NettyApplicationCall;->context:Lio/netty/channel/ChannelHandlerContext;

    .line 19
    iput-object p3, p0, Lio/ktor/server/netty/NettyApplicationCall;->requestMessage:Ljava/lang/Object;

    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationCall;->responseWriteJob:Lkotlinx/coroutines/Job;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lio/ktor/server/netty/NettyApplicationCall;->messageReleased:I

    .line 16
    return-void
.end method

.method public static final synthetic access$finishSuspend(Lio/ktor/server/netty/NettyApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/NettyApplicationCall;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 16
    invoke-direct {p0, p1}, Lio/ktor/server/netty/NettyApplicationCall;->finishSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final finishComplete()V
    .locals 3

    .line 90
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationCall;->responseWriteJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 91
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationCall;->getRequest()Lio/ktor/server/netty/NettyApplicationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/server/netty/NettyApplicationRequest;->close()V

    .line 92
    invoke-direct {p0}, Lio/ktor/server/netty/NettyApplicationCall;->releaseRequestMessage()V

    .line 93
    return-void
.end method

.method private final finishSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/server/netty/NettyApplicationCall$finishSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/server/netty/NettyApplicationCall$finishSuspend$1;

    iget v1, v0, Lio/ktor/server/netty/NettyApplicationCall$finishSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/server/netty/NettyApplicationCall$finishSuspend$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/server/netty/NettyApplicationCall$finishSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/netty/NettyApplicationCall$finishSuspend$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/server/netty/NettyApplicationCall$finishSuspend$1;-><init>(Lio/ktor/server/netty/NettyApplicationCall;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/server/netty/NettyApplicationCall$finishSuspend$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 81
    iget v2, p1, Lio/ktor/server/netty/NettyApplicationCall$finishSuspend$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object v1, p1, Lio/ktor/server/netty/NettyApplicationCall$finishSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/server/netty/NettyApplicationCall;

    .local v1, "this":Lio/ktor/server/netty/NettyApplicationCall;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 85
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 81
    .end local v1    # "this":Lio/ktor/server/netty/NettyApplicationCall;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 82
    .local v2, "this":Lio/ktor/server/netty/NettyApplicationCall;
    nop

    .line 83
    :try_start_1
    iget-object v3, v2, Lio/ktor/server/netty/NettyApplicationCall;->responseWriteJob:Lkotlinx/coroutines/Job;

    iput-object v2, p1, Lio/ktor/server/netty/NettyApplicationCall$finishSuspend$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p1, Lio/ktor/server/netty/NettyApplicationCall$finishSuspend$1;->label:I

    invoke-interface {v3, p1}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v3, v1, :cond_1

    .line 81
    return-object v1

    .line 83
    :cond_1
    move-object v1, v2

    .line 85
    .end local v2    # "this":Lio/ktor/server/netty/NettyApplicationCall;
    .restart local v1    # "this":Lio/ktor/server/netty/NettyApplicationCall;
    :goto_1
    invoke-direct {v1}, Lio/ktor/server/netty/NettyApplicationCall;->finishComplete()V

    .line 86
    .end local v1    # "this":Lio/ktor/server/netty/NettyApplicationCall;
    nop

    .line 87
    .restart local v1    # "this":Lio/ktor/server/netty/NettyApplicationCall;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 85
    .end local v1    # "this":Lio/ktor/server/netty/NettyApplicationCall;
    .restart local v2    # "this":Lio/ktor/server/netty/NettyApplicationCall;
    :catchall_1
    move-exception v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .end local v2    # "this":Lio/ktor/server/netty/NettyApplicationCall;
    .restart local v1    # "this":Lio/ktor/server/netty/NettyApplicationCall;
    :goto_2
    invoke-direct {v1}, Lio/ktor/server/netty/NettyApplicationCall;->finishComplete()V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final releaseRequestMessage()V
    .locals 3

    .line 102
    sget-object v0, Lio/ktor/server/netty/NettyApplicationCall;->messageReleased$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationCall;->requestMessage:Ljava/lang/Object;

    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public final dispose$ktor_server_netty()V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationCall;->getResponse()Lio/ktor/server/netty/NettyApplicationResponse;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/server/netty/NettyApplicationResponse;->close$ktor_server_netty()V

    .line 97
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationCall;->getRequest()Lio/ktor/server/netty/NettyApplicationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/server/netty/NettyApplicationRequest;->close()V

    .line 98
    invoke-direct {p0}, Lio/ktor/server/netty/NettyApplicationCall;->releaseRequestMessage()V

    .line 99
    return-void
.end method

.method public final finish$ktor_server_netty(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 65
    nop

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationCall;->getResponse()Lio/ktor/server/netty/NettyApplicationResponse;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/server/netty/NettyApplicationResponse;->ensureResponseSent$ktor_server_netty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationCall;->responseWriteJob:Lkotlinx/coroutines/Job;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lio/ktor/server/netty/NettyApplicationCall;->finishComplete()V

    .line 75
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 78
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/server/netty/NettyApplicationCall;->finishSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationCall;->getFinishedEvent$ktor_server_netty()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 69
    invoke-direct {p0}, Lio/ktor/server/netty/NettyApplicationCall;->finishComplete()V

    .line 70
    throw v0
.end method

.method public final getContext()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationCall;->context:Lio/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method public final getFinishedEvent$ktor_server_netty()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationCall;->finishedEvent:Lio/netty/channel/ChannelPromise;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "finishedEvent"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPreviousCallFinished$ktor_server_netty()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 25
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationCall;->previousCallFinished:Lio/netty/channel/ChannelPromise;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "previousCallFinished"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getRequest()Lio/ktor/server/netty/NettyApplicationRequest;
.end method

.method public abstract getResponse()Lio/ktor/server/netty/NettyApplicationResponse;
.end method

.method public final getResponseWriteJob()Lkotlinx/coroutines/Job;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationCall;->responseWriteJob:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public final isByteBufferContent$ktor_server_netty()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lio/ktor/server/netty/NettyApplicationCall;->isByteBufferContent:Z

    return v0
.end method

.method public abstract isContextCloseRequired$ktor_server_netty()Z
.end method

.method public prepareEndOfStreamMessage$ktor_server_netty(Z)Ljava/lang/Object;
    .locals 1
    .param p1, "lastTransformed"    # Z

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public prepareMessage$ktor_server_netty(Lio/netty/buffer/ByteBuf;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "isLastContent"    # Z

    const-string v0, "buf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    return-object p1
.end method

.method public final setByteBufferContent$ktor_server_netty(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 36
    iput-boolean p1, p0, Lio/ktor/server/netty/NettyApplicationCall;->isByteBufferContent:Z

    return-void
.end method

.method public final setFinishedEvent$ktor_server_netty(Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/netty/channel/ChannelPromise;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lio/ktor/server/netty/NettyApplicationCall;->finishedEvent:Lio/netty/channel/ChannelPromise;

    return-void
.end method

.method public final setPreviousCallFinished$ktor_server_netty(Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/netty/channel/ChannelPromise;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lio/ktor/server/netty/NettyApplicationCall;->previousCallFinished:Lio/netty/channel/ChannelPromise;

    return-void
.end method

.method public upgrade$ktor_server_netty(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "dst"    # Lio/netty/channel/ChannelHandlerContext;

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already upgraded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
