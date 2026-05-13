.class final Lio/ktor/server/netty/CoroutineListener;
.super Ljava/lang/Object;
.source "CIO.kt"

# interfaces
.implements Lio/netty/util/concurrent/GenericFutureListener;
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "F::",
        "Lio/netty/util/concurrent/Future<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/GenericFutureListener<",
        "TF;>;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u000e\u0008\u0001\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u0008\u0012\u0004\u0012\u0002H\u00020\u00042#\u0012\u0015\u0012\u0013\u0018\u00010\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0005j\u0002`\u000bB;\u0012\u0006\u0010\u000c\u001a\u00028\u0001\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000e\u0012\u001e\u0010\u000f\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0011\u0012\u0004\u0012\u00020\n0\u0010\u00a2\u0006\u0002\u0010\u0012J\u0013\u0010\u0014\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0006H\u0096\u0002J\u0015\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u0017R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u000f\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0011\u0012\u0004\u0012\u00020\n0\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00028\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0013\u00a8\u0006\u0018"
    }
    d2 = {
        "Lio/ktor/server/netty/CoroutineListener;",
        "T",
        "F",
        "Lio/netty/util/concurrent/Future;",
        "Lio/netty/util/concurrent/GenericFutureListener;",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "",
        "Lkotlinx/coroutines/CompletionHandler;",
        "future",
        "continuation",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "exception",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "(Lio/netty/util/concurrent/Future;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/functions/Function2;)V",
        "Lio/netty/util/concurrent/Future;",
        "invoke",
        "p1",
        "operationComplete",
        "(Lio/netty/util/concurrent/Future;)V",
        "ktor-server-netty"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final exception:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final future:Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/netty/util/concurrent/Future;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1, "future"    # Lio/netty/util/concurrent/Future;
    .param p2, "continuation"    # Lkotlinx/coroutines/CancellableContinuation;
    .param p3, "exception"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Throwable;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "future"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lio/ktor/server/netty/CoroutineListener;->future:Lio/netty/util/concurrent/Future;

    .line 78
    iput-object p2, p0, Lio/ktor/server/netty/CoroutineListener;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 79
    iput-object p3, p0, Lio/ktor/server/netty/CoroutineListener;->exception:Lkotlin/jvm/functions/Function2;

    .line 81
    nop

    .line 82
    iget-object v0, p0, Lio/ktor/server/netty/CoroutineListener;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    move-object v1, p0

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 83
    nop

    .line 76
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 76
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lio/ktor/server/netty/CoroutineListener;->invoke(Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "p1"    # Ljava/lang/Throwable;

    .line 97
    iget-object v0, p0, Lio/ktor/server/netty/CoroutineListener;->future:Lio/netty/util/concurrent/Future;

    move-object v1, p0

    check-cast v1, Lio/netty/util/concurrent/GenericFutureListener;

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 98
    iget-object v0, p0, Lio/ktor/server/netty/CoroutineListener;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/ktor/server/netty/CoroutineListener;->future:Lio/netty/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    .line 99
    :cond_0
    return-void
.end method

.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 4
    .param p1, "future"    # Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    const-string v0, "future"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    nop

    .line 87
    :try_start_0
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    nop

    .line 93
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Lio/ktor/server/netty/CoroutineListener;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v1, Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 94
    return-void

    .line 88
    .end local v0    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 89
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/ktor/server/netty/CoroutineListener;->exception:Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/ktor/server/netty/CIOKt;->access$unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Lio/ktor/server/netty/CoroutineListener;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method
