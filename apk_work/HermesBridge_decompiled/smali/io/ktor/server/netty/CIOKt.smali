.class public final Lio/ktor/server/netty/CIOKt;
.super Ljava/lang/Object;
.source "CIO.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCIO.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CIO.kt\nio/ktor/server/netty/CIOKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,104:1\n314#2,11:105\n*S KotlinDebug\n*F\n+ 1 CIO.kt\nio/ktor/server/netty/CIOKt\n*L\n57#1:105,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a!\u0010\t\u001a\u0002H\n\"\u0004\u0008\u0000\u0010\n*\u0008\u0012\u0004\u0012\u0002H\n0\u000bH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000c\u001aA\u0010\t\u001a\u0002H\n\"\u0004\u0008\u0000\u0010\n*\u0008\u0012\u0004\u0012\u0002H\n0\u000b2\u001e\u0010\r\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\n0\u0003\u0012\u0004\u0012\u00020\u00040\u0001H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000e\u001a!\u0010\u000f\u001a\u0002H\n\"\u0004\u0008\u0000\u0010\n*\u0008\u0012\u0004\u0012\u0002H\n0\u000bH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000c\u001a\r\u0010\u0010\u001a\u00020\u0002*\u00020\u0002H\u0082\u0010\"*\u0010\u0000\u001a\u0018\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0003\u0012\u0004\u0012\u00020\u00040\u0001X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0006\"*\u0010\u0007\u001a\u0018\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0003\u0012\u0004\u0012\u00020\u00040\u0001X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0008\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0011"
    }
    d2 = {
        "identityErrorHandler",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/coroutines/Continuation;",
        "",
        "getIdentityErrorHandler$annotations",
        "()V",
        "wrappingErrorHandler",
        "getWrappingErrorHandler$annotations",
        "suspendAwait",
        "T",
        "Lio/netty/util/concurrent/Future;",
        "(Lio/netty/util/concurrent/Future;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "exception",
        "(Lio/netty/util/concurrent/Future;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "suspendWriteAwait",
        "unwrap",
        "ktor-server-netty"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final identityErrorHandler:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/Continuation<",
            "*>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final wrappingErrorHandler:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/Continuation<",
            "*>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    sget-object v0, Lio/ktor/server/netty/CIOKt$identityErrorHandler$1;->INSTANCE:Lio/ktor/server/netty/CIOKt$identityErrorHandler$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sput-object v0, Lio/ktor/server/netty/CIOKt;->identityErrorHandler:Lkotlin/jvm/functions/Function2;

    .line 30
    sget-object v0, Lio/ktor/server/netty/CIOKt$wrappingErrorHandler$1;->INSTANCE:Lio/ktor/server/netty/CIOKt$wrappingErrorHandler$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sput-object v0, Lio/ktor/server/netty/CIOKt;->wrappingErrorHandler:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/Throwable;

    .line 1
    invoke-static {p0}, Lio/ktor/server/netty/CIOKt;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic getIdentityErrorHandler$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getWrappingErrorHandler$annotations()V
    .locals 0

    return-void
.end method

.method public static final suspendAwait(Lio/netty/util/concurrent/Future;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this$suspendAwait"    # Lio/netty/util/concurrent/Future;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 26
    sget-object v0, Lio/ktor/server/netty/CIOKt;->identityErrorHandler:Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v0, p1}, Lio/ktor/server/netty/CIOKt;->suspendAwait(Lio/netty/util/concurrent/Future;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final suspendAwait(Lio/netty/util/concurrent/Future;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this$suspendAwait"    # Lio/netty/util/concurrent/Future;
    .param p1, "exception"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Throwable;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 49
    invoke-interface {p0}, Lio/netty/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    nop

    .line 51
    :try_start_0
    invoke-interface {p0}, Lio/netty/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/ktor/server/netty/CIOKt;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 57
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x0

    .line 105
    .local v0, "$i$f$suspendCancellableCoroutine":I
    move-object v1, p2

    .local v1, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 106
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 112
    .local v3, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 113
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    .local v4, "continuation":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v5, 0x0

    .line 58
    .local v5, "$i$a$-suspendCancellableCoroutine-CIOKt$suspendAwait$3":I
    new-instance v6, Lio/ktor/server/netty/CoroutineListener;

    invoke-direct {v6, p0, v4, p1}, Lio/ktor/server/netty/CoroutineListener;-><init>(Lio/netty/util/concurrent/Future;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/functions/Function2;)V

    check-cast v6, Lio/netty/util/concurrent/GenericFutureListener;

    invoke-interface {p0, v6}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 59
    nop

    .line 113
    .end local v4    # "continuation":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutine-CIOKt$suspendAwait$3":I
    nop

    .line 114
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 105
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 115
    :cond_1
    nop

    .line 57
    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    return-object v1
.end method

.method public static final suspendWriteAwait(Lio/netty/util/concurrent/Future;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this$suspendWriteAwait"    # Lio/netty/util/concurrent/Future;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 41
    sget-object v0, Lio/ktor/server/netty/CIOKt;->wrappingErrorHandler:Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v0, p1}, Lio/ktor/server/netty/CIOKt;->suspendAwait(Lio/netty/util/concurrent/Future;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "$this$unwrap"    # Ljava/lang/Throwable;

    .line 103
    nop

    :goto_0
    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    :cond_0
    return-object p0
.end method
