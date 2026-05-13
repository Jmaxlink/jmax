.class public final Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1;
.super Ljava/lang/Object;
.source "Blocking.kt"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;-><init>(Lkotlinx/coroutines/Job;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlocking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,316:1\n175#2,4:317\n*S KotlinDebug\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1\n*L\n148#1:317,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001e\u0010\u0007\u001a\u00020\u00022\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000b"
    }
    d2 = {
        "io/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1",
        "Lkotlin/coroutines/Continuation;",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "resumeWith",
        "result",
        "Lkotlin/Result;",
        "(Ljava/lang/Object;)V",
        "ktor-io"
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
.field private final context:Lkotlin/coroutines/CoroutineContext;

.field final synthetic this$0:Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;)V
    .locals 2
    .param p1, "$receiver"    # Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    iput-object p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1;->this$0:Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->getParent()Lkotlinx/coroutines/Job;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/ktor/utils/io/jvm/javaio/UnsafeBlockingTrampoline;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/UnsafeBlockingTrampoline;

    invoke-virtual {p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->getParent()Lkotlinx/coroutines/Job;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/jvm/javaio/UnsafeBlockingTrampoline;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/ktor/utils/io/jvm/javaio/UnsafeBlockingTrampoline;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/UnsafeBlockingTrampoline;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    :goto_0
    iput-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1;->context:Lkotlin/coroutines/CoroutineContext;

    .line 141
    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 142
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1;->context:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Object;

    .line 146
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 148
    .local v0, "value":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1;->this$0:Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    .local v1, "$this$getAndUpdate$iv":Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
    const/4 v2, 0x0

    .line 317
    .local v2, "$i$f$getAndUpdate":I
    :cond_1
    nop

    .line 318
    iget-object v3, v1, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    .line 319
    .local v3, "cur$iv":Ljava/lang/Object;
    move-object v4, v3

    .local v4, "current":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 149
    .local v5, "$i$a$-getAndUpdate-BlockingAdapter$end$1$resumeWith$before$1":I
    nop

    .line 150
    instance-of v6, v4, Ljava/lang/Thread;

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    move v6, v7

    goto :goto_0

    :cond_2
    instance-of v6, v4, Lkotlin/coroutines/Continuation;

    :goto_0
    if-eqz v6, :cond_3

    move v6, v7

    goto :goto_1

    :cond_3
    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    :goto_1
    if-eqz v6, :cond_8

    .line 149
    nop

    .line 319
    .end local v4    # "current":Ljava/lang/Object;
    .end local v5    # "$i$a$-getAndUpdate-BlockingAdapter$end$1$resumeWith$before$1":I
    move-object v4, v0

    .line 320
    .local v4, "upd$iv":Ljava/lang/Object;
    sget-object v5, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v5, v1, v3, v4}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    .end local v1    # "$this$getAndUpdate$iv":Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
    .end local v2    # "$i$f$getAndUpdate":I
    .end local v3    # "cur$iv":Ljava/lang/Object;
    .end local v4    # "upd$iv":Ljava/lang/Object;
    move-object v1, v3

    .line 155
    .local v1, "before":Ljava/lang/Object;
    nop

    .line 156
    instance-of v2, v1, Ljava/lang/Thread;

    if-eqz v2, :cond_4

    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/PollersKt;->getParkingImpl()Lio/ktor/utils/io/jvm/javaio/Parking;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/ktor/utils/io/jvm/javaio/Parking;->unpark(Ljava/lang/Object;)V

    goto :goto_2

    .line 157
    :cond_4
    instance-of v2, v1, Lkotlin/coroutines/Continuation;

    if-eqz v2, :cond_5

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_5

    .local v2, "it":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 158
    .local v3, "$i$a$-let-BlockingAdapter$end$1$resumeWith$1":I
    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 159
    nop

    .line 157
    .end local v2    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-let-BlockingAdapter$end$1$resumeWith$1":I
    :cond_5
    nop

    .line 162
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_6

    .line 163
    iget-object v2, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1;->this$0:Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    invoke-virtual {v2}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->getParent()Lkotlinx/coroutines/Job;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v3, 0x0

    invoke-static {v2, v3, v7, v3}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 166
    :cond_6
    iget-object v2, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1;->this$0:Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    invoke-static {v2}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->access$getDisposable$p(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 167
    :cond_7
    return-void

    .line 151
    .local v1, "$this$getAndUpdate$iv":Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
    .local v2, "$i$f$getAndUpdate":I
    .local v3, "cur$iv":Ljava/lang/Object;
    .local v4, "current":Ljava/lang/Object;
    .restart local v5    # "$i$a$-getAndUpdate-BlockingAdapter$end$1$resumeWith$before$1":I
    :cond_8
    return-void
.end method
