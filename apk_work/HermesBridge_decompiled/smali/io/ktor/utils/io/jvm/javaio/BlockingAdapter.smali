.class abstract Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
.super Ljava/lang/Object;
.source "Blocking.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlocking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/BlockingAdapter\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,316:1\n164#2,4:317\n164#2,4:321\n*S KotlinDebug\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/BlockingAdapter\n*L\n209#1:317,4\n285#1:321,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\"\u0018\u00002\u00020\u0010B\u0013\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0013\u0010\n\u001a\u00020\u0007H\u00a4@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001b\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u0005H\u0084H\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001d\u0010\u0015\u001a\u00020\u00102\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u000bJ\r\u0010\u0016\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0015\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ%\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0019\u0010\u001fR\u0016\u0010!\u001a\u0004\u0018\u00010 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R$\u0010\u001e\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u00058\u0004@BX\u0084\u000e\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010&\u001a\u0004\u0008\'\u0010(R$\u0010\u001d\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u00058\u0004@BX\u0084\u000e\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010&\u001a\u0004\u0008)\u0010(R\u0019\u0010\u0002\u001a\u0004\u0018\u00010\u00018\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0002\u0010*\u001a\u0004\u0008+\u0010,\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006-"
    }
    d2 = {
        "Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;",
        "Lkotlinx/coroutines/Job;",
        "parent",
        "<init>",
        "(Lkotlinx/coroutines/Job;)V",
        "",
        "rc",
        "",
        "finish",
        "(I)V",
        "loop",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Ljava/lang/Thread;",
        "thread",
        "parkingLoop",
        "(Ljava/lang/Thread;)V",
        "",
        "rendezvous",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation;",
        "ucont",
        "rendezvousBlock",
        "shutdown",
        "()V",
        "jobToken",
        "submitAndAwait",
        "(Ljava/lang/Object;)I",
        "",
        "buffer",
        "offset",
        "length",
        "([BII)I",
        "Lkotlinx/coroutines/DisposableHandle;",
        "disposable",
        "Lkotlinx/coroutines/DisposableHandle;",
        "end",
        "Lkotlin/coroutines/Continuation;",
        "<set-?>",
        "I",
        "getLength",
        "()I",
        "getOffset",
        "Lkotlinx/coroutines/Job;",
        "getParent",
        "()Lkotlinx/coroutines/Job;",
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
.field static final synthetic state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private final disposable:Lkotlinx/coroutines/DisposableHandle;

.field private final end:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private length:I

.field private offset:I

.field private final parent:Lkotlinx/coroutines/Job;

.field volatile synthetic result:I

.field volatile synthetic state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "state"

    const-class v2, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;-><init>(Lkotlinx/coroutines/Job;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 5
    .param p1, "parent"    # Lkotlinx/coroutines/Job;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->parent:Lkotlinx/coroutines/Job;

    .line 141
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1;-><init>(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    iput-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->end:Lkotlin/coroutines/Continuation;

    .line 172
    iput-object p0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->result:I

    .line 174
    iget-object v1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->parent:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$disposable$1;

    invoke-direct {v3, p0}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$disposable$1;-><init>(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v3}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->disposable:Lkotlinx/coroutines/DisposableHandle;

    .line 185
    nop

    .line 186
    new-instance v1, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$block$1;

    invoke-direct {v1, p0, v2}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$block$1;-><init>(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 187
    .local v1, "block":Lkotlin/jvm/functions/Function1;
    iget-object v2, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->end:Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v2, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    if-eq v2, p0, :cond_1

    move v0, v3

    :cond_1
    if-eqz v0, :cond_2

    .line 189
    .end local v1    # "block":Lkotlin/jvm/functions/Function1;
    nop

    .line 139
    return-void

    .line 188
    .restart local v1    # "block":Lkotlin/jvm/functions/Function1;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/Job;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 139
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;-><init>(Lkotlinx/coroutines/Job;)V

    .line 307
    return-void
.end method

.method public static final synthetic access$getDisposable$p(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;)Lkotlinx/coroutines/DisposableHandle;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    .line 139
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->disposable:Lkotlinx/coroutines/DisposableHandle;

    return-object v0
.end method

.method public static final synthetic access$getEnd$p(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;)Lkotlin/coroutines/Continuation;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    .line 139
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->end:Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public static final synthetic access$rendezvousBlock(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
    .param p1, "ucont"    # Lkotlin/coroutines/Continuation;

    .line 139
    invoke-direct {p0, p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->rendezvousBlock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic getState$annotations()V
    .locals 0

    return-void
.end method

.method private final parkingLoop(Ljava/lang/Thread;)V
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 246
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/PollersKt;->isParkingAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/BlockingKt;->access$getADAPTER_LOGGER()Lorg/slf4j/Logger;

    move-result-object v0

    .line 259
    nop

    .line 248
    const-string v1, "Blocking network thread detected. \nIt can possible lead to a performance decline or even a deadlock.\nPlease make sure you\'re using blocking IO primitives like InputStream and OutputStream only in \nthe context of Dispatchers.IO:\n```\nwithContext(Dispatchers.IO) {\n    myInputStream.read()\n}\n```"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 264
    :cond_1
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/EventLoopKt;->processNextEventInCurrentThread()J

    move-result-wide v0

    .line 265
    .local v0, "nextEventTimeNanos":J
    iget-object v2, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    if-ne v2, p1, :cond_3

    .line 267
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 268
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/PollersKt;->getParkingImpl()Lio/ktor/utils/io/jvm/javaio/Parking;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/ktor/utils/io/jvm/javaio/Parking;->park(J)V

    .line 270
    .end local v0    # "nextEventTimeNanos":J
    :cond_2
    goto :goto_0

    .line 271
    :cond_3
    return-void
.end method

.method private final rendezvous$$forInline(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1, "rc"    # I
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 275
    .local v0, "$i$f$rendezvous":I
    iput p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->result:I

    .line 277
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object v1, p2

    check-cast v1, Lkotlin/coroutines/Continuation;

    .local v1, "ucont":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 278
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-BlockingAdapter$rendezvous$2":I
    invoke-static {p0, v1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->access$rendezvousBlock(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .line 277
    .end local v1    # "ucont":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-BlockingAdapter$rendezvous$2":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_0

    move-object v1, p2

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    return-object v3
.end method

.method private final rendezvousBlock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "ucont"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 283
    const/4 v0, 0x0

    .line 285
    .local v0, "thread":Ljava/lang/Object;
    move-object v1, p0

    .local v1, "$this$update$iv":Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
    const/4 v2, 0x0

    .line 321
    .local v2, "$i$f$update":I
    :cond_0
    nop

    .line 322
    iget-object v3, v1, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    .line 323
    .local v3, "cur$iv":Ljava/lang/Object;
    move-object v4, v3

    .local v4, "value":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 286
    .local v5, "$i$a$-update-BlockingAdapter$rendezvousBlock$1":I
    nop

    .line 287
    instance-of v6, v4, Ljava/lang/Thread;

    if-eqz v6, :cond_1

    .line 288
    move-object v0, v4

    .line 289
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v6

    goto :goto_0

    .line 292
    :cond_1
    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v6

    .line 286
    :goto_0
    nop

    .line 323
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "$i$a$-update-BlockingAdapter$rendezvousBlock$1":I
    move-object v4, v6

    .line 324
    .local v4, "upd$iv":Ljava/lang/Object;
    sget-object v5, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v5, v1, v3, v4}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 297
    .end local v1    # "$this$update$iv":Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
    .end local v2    # "$i$f$update":I
    .end local v3    # "cur$iv":Ljava/lang/Object;
    .end local v4    # "upd$iv":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 298
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/PollersKt;->getParkingImpl()Lio/ktor/utils/io/jvm/javaio/Parking;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/ktor/utils/io/jvm/javaio/Parking;->unpark(Ljava/lang/Object;)V

    .line 301
    :cond_2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 293
    .restart local v1    # "$this$update$iv":Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
    .restart local v2    # "$i$f$update":I
    .restart local v3    # "cur$iv":Ljava/lang/Object;
    .local v4, "value":Ljava/lang/Object;
    .restart local v5    # "$i$a$-update-BlockingAdapter$rendezvousBlock$1":I
    :cond_3
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Already suspended or in finished state"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method protected final finish(I)V
    .locals 0
    .param p1, "rc"    # I

    .line 305
    iput p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->result:I

    .line 306
    return-void
.end method

.method protected final getLength()I
    .locals 1

    .line 182
    iget v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->length:I

    return v0
.end method

.method protected final getOffset()I
    .locals 1

    .line 180
    iget v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->offset:I

    return v0
.end method

.method public final getParent()Lkotlinx/coroutines/Job;
    .locals 1

    .line 139
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->parent:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method protected abstract loop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method protected final rendezvous(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "rc"    # I
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 275
    .local v0, "$i$f$rendezvous":I
    iput p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->result:I

    .line 277
    move-object v1, p2

    .local v1, "ucont":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 278
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-BlockingAdapter$rendezvous$2":I
    invoke-static {p0, v1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->access$rendezvousBlock(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .line 277
    .end local v1    # "ucont":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-BlockingAdapter$rendezvous$2":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v1
.end method

.method public final shutdown()V
    .locals 3

    .line 194
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->disposable:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 195
    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->end:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public final submitAndAwait(Ljava/lang/Object;)I
    .locals 9
    .param p1, "jobToken"    # Ljava/lang/Object;

    const-string v0, "jobToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 207
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x0

    .line 209
    .local v1, "cont":Ljava/lang/Object;
    move-object v2, p0

    .local v2, "$this$update$iv":Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
    const/4 v3, 0x0

    .line 317
    .local v3, "$i$f$update":I
    :cond_0
    nop

    .line 318
    iget-object v4, v2, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    .line 319
    .local v4, "cur$iv":Ljava/lang/Object;
    move-object v5, v4

    .local v5, "value":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 210
    .local v6, "$i$a$-update-BlockingAdapter$submitAndAwait$1":I
    nop

    .line 211
    instance-of v7, v5, Lkotlin/coroutines/Continuation;

    if-eqz v7, :cond_1

    .line 213
    const-string v7, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any>"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v5

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 214
    move-object v7, v0

    goto :goto_0

    .line 217
    :cond_1
    instance-of v7, v5, Lkotlin/Unit;

    if-eqz v7, :cond_2

    .line 218
    iget v7, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->result:I

    return v7

    .line 221
    :cond_2
    instance-of v7, v5, Ljava/lang/Throwable;

    if-nez v7, :cond_6

    .line 225
    instance-of v7, v5, Ljava/lang/Thread;

    if-nez v7, :cond_5

    .line 226
    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 227
    new-instance v7, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v7}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 210
    :goto_0
    nop

    .line 225
    const-string v8, "when (value) {\n         \u2026Exception()\n            }"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    nop

    .line 319
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "$i$a$-update-BlockingAdapter$submitAndAwait$1":I
    move-object v5, v7

    .line 320
    .local v5, "upd$iv":Ljava/lang/Object;
    sget-object v6, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v6, v2, v4, v5}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 231
    .end local v2    # "$this$update$iv":Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
    .end local v3    # "$i$f$update":I
    .end local v4    # "cur$iv":Ljava/lang/Object;
    .end local v5    # "upd$iv":Ljava/lang/Object;
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 233
    const-string v2, "thread"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->parkingLoop(Ljava/lang/Thread;)V

    .line 235
    iget-object v2, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->state:Ljava/lang/Object;

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 236
    .local v3, "$i$a$-let-BlockingAdapter$submitAndAwait$2":I
    instance-of v4, v2, Ljava/lang/Throwable;

    if-nez v4, :cond_3

    .line 239
    nop

    .line 235
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-let-BlockingAdapter$submitAndAwait$2":I
    nop

    .line 241
    iget v2, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->result:I

    return v2

    .line 237
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-let-BlockingAdapter$submitAndAwait$2":I
    :cond_3
    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 226
    .local v2, "$this$update$iv":Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
    .local v3, "$i$f$update":I
    .restart local v4    # "cur$iv":Ljava/lang/Object;
    .local v5, "value":Ljava/lang/Object;
    .restart local v6    # "$i$a$-update-BlockingAdapter$submitAndAwait$1":I
    :cond_4
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Not yet started"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 225
    :cond_5
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "There is already thread owning adapter"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 222
    :cond_6
    move-object v7, v5

    check-cast v7, Ljava/lang/Throwable;

    throw v7
.end method

.method public final submitAndAwait([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iput p2, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->offset:I

    .line 200
    iput p3, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->length:I

    .line 201
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->submitAndAwait(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
