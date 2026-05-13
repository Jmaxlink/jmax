.class public final Lio/ktor/network/selector/ActorSelectorManager;
.super Lio/ktor/network/selector/SelectorManagerSupport;
.source "ActorSelectorManager.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActorSelectorManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActorSelectorManager.kt\nio/ktor/network/selector/ActorSelectorManager\n+ 2 ActorSelectorManager.kt\nio/ktor/network/selector/ActorSelectorManager$ContinuationHolder\n*L\n1#1,204:1\n109#1,4:205\n195#2,6:209\n*S KotlinDebug\n*F\n+ 1 ActorSelectorManager.kt\nio/ktor/network/selector/ActorSelectorManager\n*L\n96#1:205,4\n166#1:209,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001*B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0018\u001a\u00020\u000bH\u0016J\u0011\u0010\u0019\u001a\u00020\u000bH\u0082H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u0013H\u0016J\'\u0010\u001d\u001a\u00020\u000b2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u001f\u001a\u00020\u0015H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010 J\u001e\u0010!\u001a\u00020\u000b2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u001f\u001a\u00020\u0015H\u0002J\u0010\u0010\"\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u0013H\u0014J\u0019\u0010#\u001a\u00020$2\u0006\u0010\u001f\u001a\u00020\u0015H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010%J\u0008\u0010&\u001a\u00020\u000bH\u0002J\u001d\u0010\'\u001a\u0004\u0018\u00010\u0013*\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(J\u001d\u0010)\u001a\u0004\u0018\u00010\u0013*\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u000c0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006+"
    }
    d2 = {
        "Lio/ktor/network/selector/ActorSelectorManager;",
        "Lio/ktor/network/selector/SelectorManagerSupport;",
        "Ljava/io/Closeable;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Lkotlin/coroutines/CoroutineContext;)V",
        "closed",
        "",
        "continuation",
        "Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;",
        "",
        "Lkotlin/coroutines/Continuation;",
        "coroutineContext",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "inSelect",
        "selectionQueue",
        "Lio/ktor/network/selector/LockFreeMPSCQueue;",
        "Lio/ktor/network/selector/Selectable;",
        "selectorRef",
        "Ljava/nio/channels/Selector;",
        "wakeup",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "close",
        "dispatchIfNeeded",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "notifyClosed",
        "selectable",
        "process",
        "mb",
        "selector",
        "(Lio/ktor/network/selector/LockFreeMPSCQueue;Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "processInterests",
        "publishInterest",
        "select",
        "",
        "(Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "selectWakeup",
        "receiveOrNull",
        "(Lio/ktor/network/selector/LockFreeMPSCQueue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "receiveOrNullSuspend",
        "ContinuationHolder",
        "ktor-network"
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
.field private volatile closed:Z

.field private final continuation:Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder<",
            "Lkotlin/Unit;",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private volatile inSelect:Z

.field private final selectionQueue:Lio/ktor/network/selector/LockFreeMPSCQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/network/selector/LockFreeMPSCQueue<",
            "Lio/ktor/network/selector/Selectable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile selectorRef:Ljava/nio/channels/Selector;

.field private final wakeup:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;)V
    .locals 7
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lio/ktor/network/selector/SelectorManagerSupport;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->wakeup:Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    new-instance v0, Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;

    invoke-direct {v0}, Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;-><init>()V

    iput-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->continuation:Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;

    .line 33
    new-instance v0, Lio/ktor/network/selector/LockFreeMPSCQueue;

    invoke-direct {v0}, Lio/ktor/network/selector/LockFreeMPSCQueue;-><init>()V

    iput-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->selectionQueue:Lio/ktor/network/selector/LockFreeMPSCQueue;

    .line 35
    new-instance v0, Lkotlinx/coroutines/CoroutineName;

    const-string v1, "selector"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 37
    nop

    .line 38
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lio/ktor/network/selector/ActorSelectorManager$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lio/ktor/network/selector/ActorSelectorManager$1;-><init>(Lio/ktor/network/selector/ActorSelectorManager;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 62
    nop

    .line 19
    return-void
.end method

.method public static final synthetic access$getSelectionQueue$p(Lio/ktor/network/selector/ActorSelectorManager;)Lio/ktor/network/selector/LockFreeMPSCQueue;
    .locals 1
    .param p0, "$this"    # Lio/ktor/network/selector/ActorSelectorManager;

    .line 18
    iget-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->selectionQueue:Lio/ktor/network/selector/LockFreeMPSCQueue;

    return-object v0
.end method

.method public static final synthetic access$process(Lio/ktor/network/selector/ActorSelectorManager;Lio/ktor/network/selector/LockFreeMPSCQueue;Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/network/selector/ActorSelectorManager;
    .param p1, "mb"    # Lio/ktor/network/selector/LockFreeMPSCQueue;
    .param p2, "selector"    # Ljava/nio/channels/Selector;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/network/selector/ActorSelectorManager;->process(Lio/ktor/network/selector/LockFreeMPSCQueue;Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$receiveOrNull(Lio/ktor/network/selector/ActorSelectorManager;Lio/ktor/network/selector/LockFreeMPSCQueue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/network/selector/ActorSelectorManager;
    .param p1, "$receiver"    # Lio/ktor/network/selector/LockFreeMPSCQueue;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2}, Lio/ktor/network/selector/ActorSelectorManager;->receiveOrNull(Lio/ktor/network/selector/LockFreeMPSCQueue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$receiveOrNullSuspend(Lio/ktor/network/selector/ActorSelectorManager;Lio/ktor/network/selector/LockFreeMPSCQueue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/network/selector/ActorSelectorManager;
    .param p1, "$receiver"    # Lio/ktor/network/selector/LockFreeMPSCQueue;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2}, Lio/ktor/network/selector/ActorSelectorManager;->receiveOrNullSuspend(Lio/ktor/network/selector/LockFreeMPSCQueue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$select(Lio/ktor/network/selector/ActorSelectorManager;Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/network/selector/ActorSelectorManager;
    .param p1, "selector"    # Ljava/nio/channels/Selector;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2}, Lio/ktor/network/selector/ActorSelectorManager;->select(Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setClosed$p(Lio/ktor/network/selector/ActorSelectorManager;Z)V
    .locals 0
    .param p0, "$this"    # Lio/ktor/network/selector/ActorSelectorManager;
    .param p1, "<set-?>"    # Z

    .line 18
    iput-boolean p1, p0, Lio/ktor/network/selector/ActorSelectorManager;->closed:Z

    return-void
.end method

.method public static final synthetic access$setSelectorRef$p(Lio/ktor/network/selector/ActorSelectorManager;Ljava/nio/channels/Selector;)V
    .locals 0
    .param p0, "$this"    # Lio/ktor/network/selector/ActorSelectorManager;
    .param p1, "<set-?>"    # Ljava/nio/channels/Selector;

    .line 18
    iput-object p1, p0, Lio/ktor/network/selector/ActorSelectorManager;->selectorRef:Ljava/nio/channels/Selector;

    return-void
.end method

.method private final dispatchIfNeeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    const/4 v0, 0x0

    .line 109
    .local v0, "$i$f$dispatchIfNeeded":I
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p1}, Lkotlinx/coroutines/YieldKt;->yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 112
    return-object v1
.end method

.method private final process(Lio/ktor/network/selector/LockFreeMPSCQueue;Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/LockFreeMPSCQueue<",
            "Lio/ktor/network/selector/Selectable;",
            ">;",
            "Ljava/nio/channels/Selector;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;

    iget v1, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/network/selector/ActorSelectorManager$process$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/network/selector/ActorSelectorManager$process$1;-><init>(Lio/ktor/network/selector/ActorSelectorManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 64
    iget v2, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->label:I

    const-string v3, "selector.keys()"

    const-string v4, "selector.selectedKeys()"

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
    iget-object p1, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/nio/channels/Selector;

    .local p1, "selector":Ljava/nio/channels/Selector;
    iget-object p2, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lio/ktor/network/selector/LockFreeMPSCQueue;

    .local p2, "mb":Lio/ktor/network/selector/LockFreeMPSCQueue;
    iget-object v2, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/selector/ActorSelectorManager;

    .local v2, "this":Lio/ktor/network/selector/ActorSelectorManager;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_6

    .end local v2    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    .end local p1    # "selector":Ljava/nio/channels/Selector;
    .end local p2    # "mb":Lio/ktor/network/selector/LockFreeMPSCQueue;
    :pswitch_1
    iget-object p1, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/nio/channels/Selector;

    .restart local p1    # "selector":Ljava/nio/channels/Selector;
    iget-object p2, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lio/ktor/network/selector/LockFreeMPSCQueue;

    .restart local p2    # "mb":Lio/ktor/network/selector/LockFreeMPSCQueue;
    iget-object v2, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/selector/ActorSelectorManager;

    .restart local v2    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .end local v2    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    .end local p1    # "selector":Ljava/nio/channels/Selector;
    .end local p2    # "mb":Lio/ktor/network/selector/LockFreeMPSCQueue;
    :pswitch_2
    iget-object p1, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/nio/channels/Selector;

    .restart local p1    # "selector":Ljava/nio/channels/Selector;
    iget-object p2, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lio/ktor/network/selector/LockFreeMPSCQueue;

    .restart local p2    # "mb":Lio/ktor/network/selector/LockFreeMPSCQueue;
    iget-object v2, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/selector/ActorSelectorManager;

    .restart local v2    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    .end local v2    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    .end local p1    # "selector":Ljava/nio/channels/Selector;
    .end local p2    # "mb":Lio/ktor/network/selector/LockFreeMPSCQueue;
    :pswitch_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .restart local v2    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    .local p2, "selector":Ljava/nio/channels/Selector;
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    .line 65
    .restart local p1    # "selector":Ljava/nio/channels/Selector;
    .local p2, "mb":Lio/ktor/network/selector/LockFreeMPSCQueue;
    :goto_1
    iget-boolean v5, v2, Lio/ktor/network/selector/ActorSelectorManager;->closed:Z

    if-nez v5, :cond_a

    .line 66
    invoke-direct {v2, p2, p1}, Lio/ktor/network/selector/ActorSelectorManager;->processInterests(Lio/ktor/network/selector/LockFreeMPSCQueue;Ljava/nio/channels/Selector;)V

    .line 68
    invoke-virtual {v2}, Lio/ktor/network/selector/ActorSelectorManager;->getPending()I

    move-result v5

    if-lez v5, :cond_5

    .line 69
    iput-object v2, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$0:Ljava/lang/Object;

    iput-object p2, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$1:Ljava/lang/Object;

    iput-object p1, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$2:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->label:I

    invoke-direct {v2, p1, p3}, Lio/ktor/network/selector/ActorSelectorManager;->select(Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_1

    .line 64
    return-object v1

    .line 69
    :cond_1
    move-object v7, v1

    move-object v1, v0

    move-object v0, v5

    move-object v5, v2

    move-object v2, v7

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    .local v1, "$result":Ljava/lang/Object;
    .local v5, "this":Lio/ktor/network/selector/ActorSelectorManager;
    :goto_2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 70
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v0, v6}, Lio/ktor/network/selector/ActorSelectorManager;->handleSelectedKeys(Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_3

    .line 72
    :cond_2
    invoke-virtual {p2}, Lio/ktor/network/selector/LockFreeMPSCQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/network/selector/Selectable;

    .line 73
    .local v0, "received":Lio/ktor/network/selector/Selectable;
    if-eqz v0, :cond_3

    invoke-virtual {v5, p1, v0}, Lio/ktor/network/selector/ActorSelectorManager;->applyInterest(Ljava/nio/channels/Selector;Lio/ktor/network/selector/Selectable;)V

    .line 65
    .end local v0    # "received":Lio/ktor/network/selector/Selectable;
    :goto_3
    move-object v0, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_1

    .line 73
    :cond_3
    iput-object v5, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$0:Ljava/lang/Object;

    iput-object p2, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$1:Ljava/lang/Object;

    iput-object p1, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$2:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->label:I

    invoke-static {p3}, Lkotlinx/coroutines/YieldKt;->yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_4

    .line 64
    return-object v2

    .line 73
    :cond_4
    move-object v0, v1

    move-object v1, v2

    move-object v2, v5

    .line 76
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v5    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    .local v0, "$result":Ljava/lang/Object;
    .restart local v2    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    :goto_4
    goto :goto_1

    .line 79
    :cond_5
    invoke-virtual {v2}, Lio/ktor/network/selector/ActorSelectorManager;->getCancelled()I

    move-result v5

    if-lez v5, :cond_7

    .line 80
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectNow()I

    .line 81
    invoke-virtual {v2}, Lio/ktor/network/selector/ActorSelectorManager;->getPending()I

    move-result v5

    if-lez v5, :cond_6

    .line 82
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Lio/ktor/network/selector/ActorSelectorManager;->handleSelectedKeys(Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_5

    .line 84
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lio/ktor/network/selector/ActorSelectorManager;->setCancelled(I)V

    .line 86
    :goto_5
    goto/16 :goto_1

    .line 89
    :cond_7
    iput-object v2, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$0:Ljava/lang/Object;

    iput-object p2, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$1:Ljava/lang/Object;

    iput-object p1, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->L$2:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, p3, Lio/ktor/network/selector/ActorSelectorManager$process$1;->label:I

    invoke-direct {v2, p2, p3}, Lio/ktor/network/selector/ActorSelectorManager;->receiveOrNull(Lio/ktor/network/selector/LockFreeMPSCQueue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_8

    .line 64
    return-object v1

    .line 89
    :cond_8
    move-object v7, v1

    move-object v1, v0

    move-object v0, v5

    move-object v5, v2

    move-object v2, v7

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v5    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    :goto_6
    check-cast v0, Lio/ktor/network/selector/Selectable;

    if-nez v0, :cond_9

    move-object v0, v1

    .end local v5    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    .end local p1    # "selector":Ljava/nio/channels/Selector;
    .end local p2    # "mb":Lio/ktor/network/selector/LockFreeMPSCQueue;
    goto :goto_7

    .line 90
    .local v0, "received":Lio/ktor/network/selector/Selectable;
    .restart local v5    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    .restart local p1    # "selector":Ljava/nio/channels/Selector;
    .restart local p2    # "mb":Lio/ktor/network/selector/LockFreeMPSCQueue;
    :cond_9
    invoke-virtual {v5, p1, v0}, Lio/ktor/network/selector/ActorSelectorManager;->applyInterest(Ljava/nio/channels/Selector;Lio/ktor/network/selector/Selectable;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v5

    .end local v0    # "received":Lio/ktor/network/selector/Selectable;
    goto/16 :goto_1

    .line 92
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v5    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    .end local p1    # "selector":Ljava/nio/channels/Selector;
    .end local p2    # "mb":Lio/ktor/network/selector/LockFreeMPSCQueue;
    .local v0, "$result":Ljava/lang/Object;
    :cond_a
    :goto_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final processInterests(Lio/ktor/network/selector/LockFreeMPSCQueue;Ljava/nio/channels/Selector;)V
    .locals 1
    .param p1, "mb"    # Lio/ktor/network/selector/LockFreeMPSCQueue;
    .param p2, "selector"    # Ljava/nio/channels/Selector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/LockFreeMPSCQueue<",
            "Lio/ktor/network/selector/Selectable;",
            ">;",
            "Ljava/nio/channels/Selector;",
            ")V"
        }
    .end annotation

    .line 121
    nop

    :goto_0
    nop

    .line 122
    invoke-virtual {p1}, Lio/ktor/network/selector/LockFreeMPSCQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/network/selector/Selectable;

    if-nez v0, :cond_0

    .line 125
    return-void

    .line 123
    .local v0, "selectable":Lio/ktor/network/selector/Selectable;
    :cond_0
    invoke-virtual {p0, p2, v0}, Lio/ktor/network/selector/ActorSelectorManager;->applyInterest(Ljava/nio/channels/Selector;Lio/ktor/network/selector/Selectable;)V

    .end local v0    # "selectable":Lio/ktor/network/selector/Selectable;
    goto :goto_0
.end method

.method private final receiveOrNull(Lio/ktor/network/selector/LockFreeMPSCQueue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "$this$receiveOrNull"    # Lio/ktor/network/selector/LockFreeMPSCQueue;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/LockFreeMPSCQueue<",
            "Lio/ktor/network/selector/Selectable;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/selector/Selectable;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 156
    invoke-virtual {p1}, Lio/ktor/network/selector/LockFreeMPSCQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/network/selector/Selectable;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lio/ktor/network/selector/ActorSelectorManager;->receiveOrNullSuspend(Lio/ktor/network/selector/LockFreeMPSCQueue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final receiveOrNullSuspend(Lio/ktor/network/selector/LockFreeMPSCQueue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/LockFreeMPSCQueue<",
            "Lio/ktor/network/selector/Selectable;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/selector/Selectable;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;

    iget v1, v0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;-><init>(Lio/ktor/network/selector/ActorSelectorManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 158
    iget v2, p2, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p2, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/network/selector/LockFreeMPSCQueue;

    .local p1, "$this$receiveOrNullSuspend":Lio/ktor/network/selector/LockFreeMPSCQueue;
    iget-object v2, p2, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/selector/ActorSelectorManager;

    .local v2, "this":Lio/ktor/network/selector/ActorSelectorManager;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v2    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    .end local p1    # "$this$receiveOrNullSuspend":Lio/ktor/network/selector/LockFreeMPSCQueue;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 159
    .restart local v2    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    .restart local p1    # "$this$receiveOrNullSuspend":Lio/ktor/network/selector/LockFreeMPSCQueue;
    :goto_1
    nop

    .line 160
    invoke-virtual {p1}, Lio/ktor/network/selector/LockFreeMPSCQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/ktor/network/selector/Selectable;

    .line 161
    .local v3, "selectable":Lio/ktor/network/selector/Selectable;
    if-eqz v3, :cond_1

    return-object v3

    .line 163
    .end local v3    # "selectable":Lio/ktor/network/selector/Selectable;
    :cond_1
    iget-boolean v3, v2, Lio/ktor/network/selector/ActorSelectorManager;->closed:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    return-object v4

    .line 165
    :cond_2
    iput-object v2, p2, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p2, Lio/ktor/network/selector/ActorSelectorManager$receiveOrNullSuspend$1;->label:I

    move-object v5, p2

    check-cast v5, Lkotlin/coroutines/Continuation;

    .local v5, "it":Lkotlin/coroutines/Continuation;
    const/4 v6, 0x0

    .line 166
    .local v6, "$i$a$-suspendCoroutineUninterceptedOrReturn-ActorSelectorManager$receiveOrNullSuspend$2":I
    iget-object v7, v2, Lio/ktor/network/selector/ActorSelectorManager;->continuation:Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;

    .local v7, "this_$iv":Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;
    const/4 v8, 0x0

    .line 209
    .local v8, "$i$f$suspendIf":I
    const/4 v9, 0x0

    .line 166
    .local v9, "$i$a$-suspendIf-ActorSelectorManager$receiveOrNullSuspend$2$1":I
    invoke-virtual {p1}, Lio/ktor/network/selector/LockFreeMPSCQueue;->isEmpty()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    iget-boolean v10, v2, Lio/ktor/network/selector/ActorSelectorManager;->closed:Z

    if-nez v10, :cond_3

    move v9, v3

    goto :goto_2

    :cond_3
    move v9, v11

    .line 209
    .end local v9    # "$i$a$-suspendIf-ActorSelectorManager$receiveOrNullSuspend$2$1":I
    :goto_2
    if-nez v9, :cond_4

    goto :goto_4

    .line 210
    :cond_4
    invoke-static {v7}, Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;->access$getRef$p(Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v9

    invoke-static {v9, v4, v5}, Lio/ktor/network/selector/ActorSelectorManager$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 213
    const/4 v9, 0x0

    .line 166
    .restart local v9    # "$i$a$-suspendIf-ActorSelectorManager$receiveOrNullSuspend$2$1":I
    invoke-virtual {p1}, Lio/ktor/network/selector/LockFreeMPSCQueue;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-boolean v10, v2, Lio/ktor/network/selector/ActorSelectorManager;->closed:Z

    if-nez v10, :cond_5

    goto :goto_3

    :cond_5
    move v3, v11

    .line 213
    .end local v9    # "$i$a$-suspendIf-ActorSelectorManager$receiveOrNullSuspend$2$1":I
    :goto_3
    if-nez v3, :cond_6

    invoke-static {v7}, Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;->access$getRef$p(Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-static {v3, v5, v4}, Lio/ktor/network/selector/ActorSelectorManager$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    .line 214
    .end local v5    # "it":Lkotlin/coroutines/Continuation;
    .end local v7    # "this_$iv":Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;
    :cond_6
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 166
    .end local v8    # "$i$f$suspendIf":I
    :goto_4
    if-nez v4, :cond_7

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 165
    .end local v6    # "$i$a$-suspendCoroutineUninterceptedOrReturn-ActorSelectorManager$receiveOrNullSuspend$2":I
    :cond_7
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_8

    move-object v3, p2

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_8
    if-ne v4, v1, :cond_9

    .line 158
    return-object v1

    .line 165
    :cond_9
    :goto_5
    goto :goto_1

    .line 211
    .end local v2    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    .end local p1    # "$this$receiveOrNullSuspend":Lio/ktor/network/selector/LockFreeMPSCQueue;
    .restart local v6    # "$i$a$-suspendCoroutineUninterceptedOrReturn-ActorSelectorManager$receiveOrNullSuspend$2":I
    .restart local v8    # "$i$f$suspendIf":I
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Continuation is already set"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final select(Ljava/nio/channels/Selector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/Selector;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/network/selector/ActorSelectorManager$select$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/network/selector/ActorSelectorManager$select$1;

    iget v1, v0, Lio/ktor/network/selector/ActorSelectorManager$select$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/network/selector/ActorSelectorManager$select$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/network/selector/ActorSelectorManager$select$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/network/selector/ActorSelectorManager$select$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/network/selector/ActorSelectorManager$select$1;-><init>(Lio/ktor/network/selector/ActorSelectorManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/network/selector/ActorSelectorManager$select$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 94
    iget v2, p2, Lio/ktor/network/selector/ActorSelectorManager$select$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$f$dispatchIfNeeded":I
    iget-object v1, p2, Lio/ktor/network/selector/ActorSelectorManager$select$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/nio/channels/Selector;

    .local v1, "selector":Ljava/nio/channels/Selector;
    iget-object v2, p2, Lio/ktor/network/selector/ActorSelectorManager$select$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/selector/ActorSelectorManager;

    .local v2, "this":Lio/ktor/network/selector/ActorSelectorManager;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "selector":Ljava/nio/channels/Selector;
    .end local v2    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    .end local p1    # "$i$f$dispatchIfNeeded":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 95
    .restart local v2    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    .local p1, "selector":Ljava/nio/channels/Selector;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lio/ktor/network/selector/ActorSelectorManager;->inSelect:Z

    .line 96
    const/4 v4, 0x0

    .line 205
    .local v4, "$i$f$dispatchIfNeeded":I
    iput-object v2, p2, Lio/ktor/network/selector/ActorSelectorManager$select$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lio/ktor/network/selector/ActorSelectorManager$select$1;->L$1:Ljava/lang/Object;

    iput v3, p2, Lio/ktor/network/selector/ActorSelectorManager$select$1;->label:I

    invoke-static {p2}, Lkotlinx/coroutines/YieldKt;->yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 94
    return-object v1

    .line 205
    :cond_1
    move-object v1, p1

    move p1, v4

    .line 208
    .end local v4    # "$i$f$dispatchIfNeeded":I
    .restart local v1    # "selector":Ljava/nio/channels/Selector;
    .local p1, "$i$f$dispatchIfNeeded":I
    :goto_1
    nop

    .line 97
    .end local p1    # "$i$f$dispatchIfNeeded":I
    iget-object p1, v2, Lio/ktor/network/selector/ActorSelectorManager;->wakeup:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    const/4 v3, 0x0

    if-nez p1, :cond_2

    .line 98
    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/Selector;->select(J)I

    move-result p1

    .line 99
    .end local v1    # "selector":Ljava/nio/channels/Selector;
    .local p1, "count":I
    iput-boolean v3, v2, Lio/ktor/network/selector/ActorSelectorManager;->inSelect:Z

    .line 100
    .end local v2    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    nop

    .end local p1    # "count":I
    goto :goto_2

    .line 102
    .restart local v1    # "selector":Ljava/nio/channels/Selector;
    .restart local v2    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    :cond_2
    iput-boolean v3, v2, Lio/ktor/network/selector/ActorSelectorManager;->inSelect:Z

    .line 103
    iget-object p1, v2, Lio/ktor/network/selector/ActorSelectorManager;->wakeup:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 104
    .end local v2    # "this":Lio/ktor/network/selector/ActorSelectorManager;
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectNow()I

    move-result p1

    .end local v1    # "selector":Ljava/nio/channels/Selector;
    :goto_2
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    .line 97
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final selectWakeup()V
    .locals 4

    .line 115
    iget-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->wakeup:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->inSelect:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->selectorRef:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->closed:Z

    .line 176
    iget-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->selectionQueue:Lio/ktor/network/selector/LockFreeMPSCQueue;

    invoke-virtual {v0}, Lio/ktor/network/selector/LockFreeMPSCQueue;->close()V

    .line 177
    iget-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->continuation:Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;->resume(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-direct {p0}, Lio/ktor/network/selector/ActorSelectorManager;->selectWakeup()V

    .line 180
    :cond_0
    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public notifyClosed(Lio/ktor/network/selector/Selectable;)V
    .locals 4
    .param p1, "selectable"    # Lio/ktor/network/selector/Selectable;

    const-string v0, "selectable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, v0}, Lio/ktor/network/selector/ActorSelectorManager;->cancelAllSuspensions(Lio/ktor/network/selector/Selectable;Ljava/lang/Throwable;)V

    .line 129
    iget-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->selectorRef:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    .local v0, "selector":Ljava/nio/channels/Selector;
    const/4 v1, 0x0

    .line 130
    .local v1, "$i$a$-let-ActorSelectorManager$notifyClosed$1":I
    invoke-interface {p1}, Lio/ktor/network/selector/Selectable;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "keyFor(selector)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v2, "key":Ljava/nio/channels/SelectionKey;
    const/4 v3, 0x0

    .line 131
    .local v3, "$i$a$-let-ActorSelectorManager$notifyClosed$1$1":I
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 132
    invoke-direct {p0}, Lio/ktor/network/selector/ActorSelectorManager;->selectWakeup()V

    .line 133
    nop

    .line 130
    .end local v2    # "key":Ljava/nio/channels/SelectionKey;
    .end local v3    # "$i$a$-let-ActorSelectorManager$notifyClosed$1$1":I
    nop

    .line 129
    .end local v0    # "selector":Ljava/nio/channels/Selector;
    .end local v1    # "$i$a$-let-ActorSelectorManager$notifyClosed$1":I
    :cond_0
    nop

    .line 135
    return-void
.end method

.method protected publishInterest(Lio/ktor/network/selector/Selectable;)V
    .locals 2
    .param p1, "selectable"    # Lio/ktor/network/selector/Selectable;

    const-string v0, "selectable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    nop

    .line 142
    :try_start_0
    iget-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->selectionQueue:Lio/ktor/network/selector/LockFreeMPSCQueue;

    invoke-virtual {v0, p1}, Lio/ktor/network/selector/LockFreeMPSCQueue;->addLast(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lio/ktor/network/selector/ActorSelectorManager;->continuation:Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/network/selector/ActorSelectorManager$ContinuationHolder;->resume(Ljava/lang/Object;)Z

    .line 144
    invoke-direct {p0}, Lio/ktor/network/selector/ActorSelectorManager;->selectWakeup()V

    goto :goto_0

    .line 145
    :cond_0
    invoke-interface {p1}, Lio/ktor/network/selector/Selectable;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    .end local p1    # "selectable":Lio/ktor/network/selector/Selectable;
    throw v0

    .line 148
    .restart local p1    # "selectable":Lio/ktor/network/selector/Selectable;
    :cond_1
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p1    # "selectable":Lio/ktor/network/selector/Selectable;
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .restart local p1    # "selectable":Lio/ktor/network/selector/Selectable;
    :catchall_0
    move-exception v0

    .line 151
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, v0}, Lio/ktor/network/selector/ActorSelectorManager;->cancelAllSuspensions(Lio/ktor/network/selector/Selectable;Ljava/lang/Throwable;)V

    .line 153
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
