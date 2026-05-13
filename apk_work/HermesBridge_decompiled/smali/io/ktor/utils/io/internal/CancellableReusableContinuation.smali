.class public final Lio/ktor/utils/io/internal/CancellableReusableContinuation;
.super Ljava/lang/Object;
.source "CancellableReusableContinuation.kt"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCancellableReusableContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableReusableContinuation.kt\nio/ktor/utils/io/internal/CancellableReusableContinuation\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,137:1\n175#2,4:138\n175#2,4:142\n175#2,4:146\n*S KotlinDebug\n*F\n+ 1 CancellableReusableContinuation.kt\nio/ktor/utils/io/internal/CancellableReusableContinuation\n*L\n60#1:138,4\n82#1:142,4\n99#1:146,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u000c:\u0001\"B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0007\u0010\u000bJ\u001b\u0010\u000e\u001a\u00020\u00012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u00062\u0010\u0010\u0011\u001a\u000c0\u0010R\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J \u0010\u001a\u001a\u00020\u00062\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0018H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u0008J\u001f\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0015\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006#"
    }
    d2 = {
        "Lio/ktor/utils/io/internal/CancellableReusableContinuation;",
        "",
        "T",
        "<init>",
        "()V",
        "value",
        "",
        "close",
        "(Ljava/lang/Object;)V",
        "",
        "cause",
        "(Ljava/lang/Throwable;)V",
        "Lkotlin/coroutines/Continuation;",
        "actual",
        "completeSuspendBlock",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;",
        "relation",
        "notParent",
        "(Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;)V",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "parent",
        "(Lkotlin/coroutines/CoroutineContext;)V",
        "Lkotlin/Result;",
        "result",
        "resumeWith",
        "Lkotlinx/coroutines/Job;",
        "job",
        "exception",
        "resumeWithExceptionContinuationOnly",
        "(Lkotlinx/coroutines/Job;Ljava/lang/Throwable;)V",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "JobRelation",
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


# static fields
.field private static final synthetic jobCancellationHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic jobCancellationHandler:Ljava/lang/Object;

.field private volatile synthetic state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "state"

    const-class v2, Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v1, "jobCancellationHandler"

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->jobCancellationHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->state:Ljava/lang/Object;

    .line 16
    iput-object v0, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->jobCancellationHandler:Ljava/lang/Object;

    .line 14
    return-void
.end method

.method public static final synthetic access$notParent(Lio/ktor/utils/io/internal/CancellableReusableContinuation;Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;)V
    .locals 0
    .param p0, "$this"    # Lio/ktor/utils/io/internal/CancellableReusableContinuation;
    .param p1, "relation"    # Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;

    .line 14
    invoke-direct {p0, p1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->notParent(Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;)V

    return-void
.end method

.method public static final synthetic access$resumeWithExceptionContinuationOnly(Lio/ktor/utils/io/internal/CancellableReusableContinuation;Lkotlinx/coroutines/Job;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "$this"    # Lio/ktor/utils/io/internal/CancellableReusableContinuation;
    .param p1, "job"    # Lkotlinx/coroutines/Job;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 14
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->resumeWithExceptionContinuationOnly(Lkotlinx/coroutines/Job;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final notParent(Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;)V
    .locals 2
    .param p1, "relation"    # Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/internal/CancellableReusableContinuation<",
            "TT;>.JobRelation;)V"
        }
    .end annotation

    .line 75
    sget-object v0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->jobCancellationHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method private final parent(Lkotlin/coroutines/CoroutineContext;)V
    .locals 8
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;

    .line 53
    sget-object v0, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    .line 54
    .local v0, "newJob":Lkotlinx/coroutines/Job;
    iget-object v1, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->jobCancellationHandler:Ljava/lang/Object;

    check-cast v1, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->getJob()Lkotlinx/coroutines/Job;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-ne v1, v0, :cond_1

    return-void

    .line 56
    :cond_1
    if-nez v0, :cond_2

    .line 57
    sget-object v1, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->jobCancellationHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->dispose()V

    goto :goto_2

    .line 59
    :cond_2
    new-instance v1, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;

    invoke-direct {v1, p0, v0}, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;-><init>(Lio/ktor/utils/io/internal/CancellableReusableContinuation;Lkotlinx/coroutines/Job;)V

    .line 60
    .local v1, "newHandler":Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;
    move-object v2, p0

    .local v2, "$this$getAndUpdate$iv":Lio/ktor/utils/io/internal/CancellableReusableContinuation;
    const/4 v3, 0x0

    .line 138
    .local v3, "$i$f$getAndUpdate":I
    :cond_3
    nop

    .line 139
    iget-object v4, v2, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->jobCancellationHandler:Ljava/lang/Object;

    .line 140
    .local v4, "cur$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;

    .local v5, "relation":Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;
    const/4 v6, 0x0

    .line 61
    .local v6, "$i$a$-getAndUpdate-CancellableReusableContinuation$parent$oldJob$1":I
    nop

    .line 62
    if-nez v5, :cond_4

    goto :goto_1

    .line 63
    :cond_4
    invoke-virtual {v5}, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->getJob()Lkotlinx/coroutines/Job;

    move-result-object v7

    if-ne v7, v0, :cond_5

    .line 64
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->dispose()V

    .line 65
    return-void

    .line 67
    :cond_5
    nop

    .line 61
    :goto_1
    nop

    .line 140
    .end local v5    # "relation":Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;
    .end local v6    # "$i$a$-getAndUpdate-CancellableReusableContinuation$parent$oldJob$1":I
    move-object v5, v1

    .line 141
    .local v5, "upd$iv":Ljava/lang/Object;
    sget-object v6, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->jobCancellationHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v6, v2, v4, v5}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 60
    .end local v2    # "$this$getAndUpdate$iv":Lio/ktor/utils/io/internal/CancellableReusableContinuation;
    .end local v3    # "$i$f$getAndUpdate":I
    .end local v4    # "cur$iv":Ljava/lang/Object;
    .end local v5    # "upd$iv":Ljava/lang/Object;
    move-object v2, v4

    check-cast v2, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;

    .line 70
    .local v2, "oldJob":Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->dispose()V

    .line 72
    .end local v1    # "newHandler":Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;
    .end local v2    # "oldJob":Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;
    :cond_6
    :goto_2
    return-void
.end method

.method private final resumeWithExceptionContinuationOnly(Lkotlinx/coroutines/Job;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "job"    # Lkotlinx/coroutines/Job;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 99
    move-object v0, p0

    .local v0, "$this$getAndUpdate$iv":Lio/ktor/utils/io/internal/CancellableReusableContinuation;
    const/4 v1, 0x0

    .line 146
    .local v1, "$i$f$getAndUpdate":I
    :cond_0
    nop

    .line 147
    iget-object v2, v0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->state:Ljava/lang/Object;

    .line 148
    .local v2, "cur$iv":Ljava/lang/Object;
    move-object v3, v2

    .local v3, "it":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 100
    .local v4, "$i$a$-getAndUpdate-CancellableReusableContinuation$resumeWithExceptionContinuationOnly$c$1":I
    instance-of v5, v3, Lkotlin/coroutines/Continuation;

    if-nez v5, :cond_1

    return-void

    .line 101
    :cond_1
    move-object v5, v3

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-interface {v5}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    sget-object v6, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v6, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v5, v6}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v5

    if-eq v5, p1, :cond_2

    return-void

    .line 102
    :cond_2
    nop

    .line 148
    .end local v3    # "it":Ljava/lang/Object;
    .end local v4    # "$i$a$-getAndUpdate-CancellableReusableContinuation$resumeWithExceptionContinuationOnly$c$1":I
    const/4 v3, 0x0

    .line 149
    .local v3, "upd$iv":Ljava/lang/Object;
    sget-object v4, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, v0, v2, v3}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    .end local v0    # "$this$getAndUpdate$iv":Lio/ktor/utils/io/internal/CancellableReusableContinuation;
    .end local v1    # "$i$f$getAndUpdate":I
    .end local v2    # "cur$iv":Ljava/lang/Object;
    .end local v3    # "upd$iv":Ljava/lang/Object;
    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.Continuation<T of io.ktor.utils.io.internal.CancellableReusableContinuation>"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lkotlin/coroutines/Continuation;

    .line 105
    .local v0, "c":Lkotlin/coroutines/Continuation;
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 106
    return-void
.end method


# virtual methods
.method public final close(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 20
    sget-object v0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->jobCancellationHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->dispose()V

    .line 21
    :cond_0
    return-void
.end method

.method public final close(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    const-string v0, "cause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 25
    sget-object v0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->jobCancellationHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/CancellableReusableContinuation$JobRelation;->dispose()V

    .line 26
    :cond_0
    return-void
.end method

.method public final completeSuspendBlock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "actual"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "actual"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    :cond_0
    nop

    .line 34
    iget-object v0, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->state:Ljava/lang/Object;

    .line 36
    .local v0, "before":Ljava/lang/Object;
    nop

    .line 37
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 38
    sget-object v2, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v1, p1}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->parent(Lkotlin/coroutines/CoroutineContext;)V

    .line 40
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 43
    :cond_1
    sget-object v2, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v0, v1}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    instance-of v1, v0, Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 46
    const-string v1, "null cannot be cast to non-null type T of io.ktor.utils.io.internal.CancellableReusableContinuation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 44
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 2

    .line 79
    iget-object v0, p0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlin/coroutines/Continuation;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/coroutines/Continuation;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    :cond_2
    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Object;

    .line 82
    move-object v0, p0

    .local v0, "$this$getAndUpdate$iv":Lio/ktor/utils/io/internal/CancellableReusableContinuation;
    const/4 v1, 0x0

    .line 142
    .local v1, "$i$f$getAndUpdate":I
    :cond_0
    nop

    .line 143
    iget-object v2, v0, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->state:Ljava/lang/Object;

    .line 144
    .local v2, "cur$iv":Ljava/lang/Object;
    move-object v3, v2

    .local v3, "before":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 83
    .local v4, "$i$a$-getAndUpdate-CancellableReusableContinuation$resumeWith$before$1":I
    nop

    .line 84
    if-nez v3, :cond_1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p1

    goto :goto_0

    .line 85
    :cond_1
    instance-of v5, v3, Lkotlin/coroutines/Continuation;

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    .line 83
    :cond_2
    :goto_0
    nop

    .line 144
    .end local v3    # "before":Ljava/lang/Object;
    .end local v4    # "$i$a$-getAndUpdate-CancellableReusableContinuation$resumeWith$before$1":I
    move-object v3, v5

    .line 145
    .local v3, "upd$iv":Ljava/lang/Object;
    sget-object v4, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, v0, v2, v3}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    .end local v0    # "$this$getAndUpdate$iv":Lio/ktor/utils/io/internal/CancellableReusableContinuation;
    .end local v1    # "$i$f$getAndUpdate":I
    .end local v2    # "cur$iv":Ljava/lang/Object;
    .end local v3    # "upd$iv":Ljava/lang/Object;
    move-object v0, v2

    .line 90
    .local v0, "before":Ljava/lang/Object;
    instance-of v1, v0, Lkotlin/coroutines/Continuation;

    if-eqz v1, :cond_3

    .line 92
    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 93
    .local v1, "cont":Lkotlin/coroutines/Continuation;
    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 95
    .end local v1    # "cont":Lkotlin/coroutines/Continuation;
    :cond_3
    return-void

    .line 86
    .local v0, "$this$getAndUpdate$iv":Lio/ktor/utils/io/internal/CancellableReusableContinuation;
    .local v1, "$i$f$getAndUpdate":I
    .restart local v2    # "cur$iv":Ljava/lang/Object;
    .local v3, "before":Ljava/lang/Object;
    .restart local v4    # "$i$a$-getAndUpdate-CancellableReusableContinuation$resumeWith$before$1":I
    :cond_4
    return-void
.end method
