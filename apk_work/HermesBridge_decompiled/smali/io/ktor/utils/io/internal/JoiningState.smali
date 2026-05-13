.class public final Lio/ktor/utils/io/internal/JoiningState;
.super Ljava/lang/Object;
.source "ByteBufferChannelInternals.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0000\u0008\u0000\u0018\u00002\u00020\u0017B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0013\u0010\u0008\u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000f\u001a\u00020\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0002\u001a\u00020\u00018\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0002\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/ktor/utils/io/internal/JoiningState;",
        "Lio/ktor/utils/io/ByteBufferChannel;",
        "delegatedTo",
        "",
        "delegateClose",
        "<init>",
        "(Lio/ktor/utils/io/ByteBufferChannel;Z)V",
        "",
        "awaitClose",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "complete",
        "()V",
        "Lkotlinx/coroutines/Job;",
        "getCloseWaitJob",
        "()Lkotlinx/coroutines/Job;",
        "closeWaitJob",
        "Z",
        "getDelegateClose",
        "()Z",
        "Lio/ktor/utils/io/ByteBufferChannel;",
        "getDelegatedTo",
        "()Lio/ktor/utils/io/ByteBufferChannel;",
        "ktor-io",
        ""
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
.field private static final synthetic _closeWaitJob$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _closeWaitJob:Ljava/lang/Object;

.field private volatile synthetic closed:I

.field private final delegateClose:Z

.field private final delegatedTo:Lio/ktor/utils/io/ByteBufferChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_closeWaitJob"

    const-class v2, Lio/ktor/utils/io/internal/JoiningState;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/internal/JoiningState;->_closeWaitJob$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lio/ktor/utils/io/ByteBufferChannel;Z)V
    .locals 1
    .param p1, "delegatedTo"    # Lio/ktor/utils/io/ByteBufferChannel;
    .param p2, "delegateClose"    # Z

    const-string v0, "delegatedTo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/internal/JoiningState;->delegatedTo:Lio/ktor/utils/io/ByteBufferChannel;

    iput-boolean p2, p0, Lio/ktor/utils/io/internal/JoiningState;->delegateClose:Z

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lio/ktor/utils/io/internal/JoiningState;->_closeWaitJob:Ljava/lang/Object;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lio/ktor/utils/io/internal/JoiningState;->closed:I

    .line 13
    return-void
.end method

.method private final getCloseWaitJob()Lkotlinx/coroutines/Job;
    .locals 5

    .line 19
    nop

    :cond_0
    nop

    .line 20
    iget-object v0, p0, Lio/ktor/utils/io/internal/JoiningState;->_closeWaitJob:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Job;

    .line 21
    .local v0, "current":Lkotlinx/coroutines/Job;
    if-eqz v0, :cond_1

    return-object v0

    .line 22
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v3

    .line 23
    .local v3, "newJob":Lkotlinx/coroutines/CompletableJob;
    sget-object v4, Lio/ktor/utils/io/internal/JoiningState;->_closeWaitJob$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, p0, v1, v3}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    iget v4, p0, Lio/ktor/utils/io/internal/JoiningState;->closed:I

    if-ne v4, v2, :cond_2

    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/Job;

    invoke-static {v4, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 25
    :cond_2
    move-object v1, v3

    check-cast v1, Lkotlinx/coroutines/Job;

    return-object v1
.end method


# virtual methods
.method public final awaitClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 36
    iget v0, p0, Lio/ktor/utils/io/internal/JoiningState;->closed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 37
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/internal/JoiningState;->getCloseWaitJob()Lkotlinx/coroutines/Job;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final complete()V
    .locals 3

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lio/ktor/utils/io/internal/JoiningState;->closed:I

    .line 32
    sget-object v1, Lio/ktor/utils/io/internal/JoiningState;->_closeWaitJob$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_0

    invoke-static {v1, v2, v0, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 33
    :cond_0
    return-void
.end method

.method public final getDelegateClose()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lio/ktor/utils/io/internal/JoiningState;->delegateClose:Z

    return v0
.end method

.method public final getDelegatedTo()Lio/ktor/utils/io/ByteBufferChannel;
    .locals 1

    .line 13
    iget-object v0, p0, Lio/ktor/utils/io/internal/JoiningState;->delegatedTo:Lio/ktor/utils/io/ByteBufferChannel;

    return-object v0
.end method
