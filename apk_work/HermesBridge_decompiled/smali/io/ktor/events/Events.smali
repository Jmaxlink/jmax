.class public final Lio/ktor/events/Events;
.super Ljava/lang/Object;
.source "Events.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/events/Events$HandlerRegistration;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEvents.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Events.kt\nio/ktor/events/Events\n+ 2 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n341#2,6:94\n341#2,3:100\n344#2,3:104\n1#3:103\n*S KotlinDebug\n*F\n+ 1 Events.kt\nio/ktor/events/Events\n*L\n33#1:94,6\n46#1:100,3\n46#1:104,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u0014B\u0005\u00a2\u0006\u0002\u0010\u0002J\'\u0010\u0008\u001a\u00020\t\"\u0004\u0008\u0000\u0010\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u00052\u0006\u0010\u000c\u001a\u0002H\n\u00a2\u0006\u0002\u0010\rJ8\u0010\u000e\u001a\u00020\u000f\"\u0004\u0008\u0000\u0010\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u00052\u001c\u0010\u0010\u001a\u0018\u0012\u0004\u0012\u0002H\n\u0012\u0004\u0012\u00020\t0\u0011j\u0008\u0012\u0004\u0012\u0002H\n`\u0012J8\u0010\u0013\u001a\u00020\t\"\u0004\u0008\u0000\u0010\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u00052\u001c\u0010\u0010\u001a\u0018\u0012\u0004\u0012\u0002H\n\u0012\u0004\u0012\u00020\t0\u0011j\u0008\u0012\u0004\u0012\u0002H\n`\u0012R$\u0010\u0003\u001a\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/ktor/events/Events;",
        "",
        "()V",
        "handlers",
        "Lio/ktor/util/collections/CopyOnWriteHashMap;",
        "Lio/ktor/events/EventDefinition;",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;",
        "getHandlers$annotations",
        "raise",
        "",
        "T",
        "definition",
        "value",
        "(Lio/ktor/events/EventDefinition;Ljava/lang/Object;)V",
        "subscribe",
        "Lkotlinx/coroutines/DisposableHandle;",
        "handler",
        "Lkotlin/Function1;",
        "Lio/ktor/events/EventHandler;",
        "unsubscribe",
        "HandlerRegistration",
        "ktor-events"
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
.field private final handlers:Lio/ktor/util/collections/CopyOnWriteHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/collections/CopyOnWriteHashMap<",
            "Lio/ktor/events/EventDefinition<",
            "*>;",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lio/ktor/util/collections/CopyOnWriteHashMap;

    invoke-direct {v0}, Lio/ktor/util/collections/CopyOnWriteHashMap;-><init>()V

    iput-object v0, p0, Lio/ktor/events/Events;->handlers:Lio/ktor/util/collections/CopyOnWriteHashMap;

    .line 14
    return-void
.end method

.method private static synthetic getHandlers$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final raise(Lio/ktor/events/EventDefinition;Ljava/lang/Object;)V
    .locals 9
    .param p1, "definition"    # Lio/ktor/events/EventDefinition;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/events/EventDefinition<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "definition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "exception":Ljava/lang/Object;
    iget-object v1, p0, Lio/ktor/events/Events;->handlers:Lio/ktor/util/collections/CopyOnWriteHashMap;

    invoke-virtual {v1, p1}, Lio/ktor/util/collections/CopyOnWriteHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    if-eqz v1, :cond_4

    .local v1, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    const/4 v2, 0x0

    .line 100
    .local v2, "$i$f$forEach":I
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 101
    .local v3, "cur$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :goto_0
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 102
    instance-of v4, v3, Lio/ktor/events/Events$HandlerRegistration;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lio/ktor/events/Events$HandlerRegistration;

    .local v4, "registration":Lio/ktor/events/Events$HandlerRegistration;
    const/4 v5, 0x0

    .line 47
    .local v5, "$i$a$-forEach-Events$raise$1":I
    nop

    .line 49
    :try_start_0
    invoke-virtual {v4}, Lio/ktor/events/Events$HandlerRegistration;->getHandler()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type kotlin.Function1<T of io.ktor.events.Events.raise$lambda$2, kotlin.Unit>{ io.ktor.events.EventsKt.EventHandler<T of io.ktor.events.Events.raise$lambda$2> }"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v6, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 50
    :catchall_0
    move-exception v6

    .line 51
    .local v6, "e":Ljava/lang/Throwable;
    move-object v7, v0

    check-cast v7, Ljava/lang/Throwable;

    if-eqz v7, :cond_0

    invoke-static {v7, v6}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_1

    move-object v7, p0

    .line 103
    .local v7, "$this$raise_u24lambda_u242_u24lambda_u241":Lio/ktor/events/Events;
    const/4 v8, 0x0

    .line 51
    .local v8, "$i$a$-run-Events$raise$1$1":I
    move-object v0, v6

    .line 53
    .end local v6    # "e":Ljava/lang/Throwable;
    .end local v7    # "$this$raise_u24lambda_u242_u24lambda_u241":Lio/ktor/events/Events;
    .end local v8    # "$i$a$-run-Events$raise$1$1":I
    :cond_1
    :goto_2
    nop

    .line 102
    .end local v4    # "registration":Lio/ktor/events/Events$HandlerRegistration;
    .end local v5    # "$i$a$-forEach-Events$raise$1":I
    nop

    .line 104
    :cond_2
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v3

    goto :goto_0

    .line 106
    :cond_3
    nop

    .line 54
    .end local v1    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .end local v2    # "$i$f$forEach":I
    .end local v3    # "cur$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :cond_4
    if-nez v0, :cond_5

    .line 55
    return-void

    .line 54
    :cond_5
    move-object v1, v0

    .line 103
    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 54
    .local v2, "$i$a$-let-Events$raise$2":I
    throw v1
.end method

.method public final subscribe(Lio/ktor/events/EventDefinition;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
    .locals 3
    .param p1, "definition"    # Lio/ktor/events/EventDefinition;
    .param p2, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/events/EventDefinition<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/DisposableHandle;"
        }
    .end annotation

    const-string v0, "definition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lio/ktor/events/Events$HandlerRegistration;

    invoke-direct {v0, p2}, Lio/ktor/events/Events$HandlerRegistration;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 24
    .local v0, "registration":Lio/ktor/events/Events$HandlerRegistration;
    iget-object v1, p0, Lio/ktor/events/Events;->handlers:Lio/ktor/util/collections/CopyOnWriteHashMap;

    sget-object v2, Lio/ktor/events/Events$subscribe$1;->INSTANCE:Lio/ktor/events/Events$subscribe$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, p1, v2}, Lio/ktor/util/collections/CopyOnWriteHashMap;->computeIfAbsent(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->addLast(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 25
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/DisposableHandle;

    return-object v1
.end method

.method public final unsubscribe(Lio/ktor/events/EventDefinition;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p1, "definition"    # Lio/ktor/events/EventDefinition;
    .param p2, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/events/EventDefinition<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "definition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lio/ktor/events/Events;->handlers:Lio/ktor/util/collections/CopyOnWriteHashMap;

    invoke-virtual {v0, p1}, Lio/ktor/util/collections/CopyOnWriteHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    if-eqz v0, :cond_3

    .local v0, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    const/4 v1, 0x0

    .line 94
    .local v1, "$i$f$forEach":I
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 95
    .local v2, "cur$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :goto_0
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 96
    instance-of v3, v2, Lio/ktor/events/Events$HandlerRegistration;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lio/ktor/events/Events$HandlerRegistration;

    .local v3, "it":Lio/ktor/events/Events$HandlerRegistration;
    const/4 v4, 0x0

    .line 34
    .local v4, "$i$a$-forEach-Events$unsubscribe$1":I
    invoke-virtual {v3}, Lio/ktor/events/Events$HandlerRegistration;->getHandler()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lio/ktor/events/Events$HandlerRegistration;->remove()Z

    .line 35
    :cond_0
    nop

    .line 96
    .end local v3    # "it":Lio/ktor/events/Events$HandlerRegistration;
    .end local v4    # "$i$a$-forEach-Events$unsubscribe$1":I
    nop

    .line 97
    :cond_1
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v2

    goto :goto_0

    .line 99
    :cond_2
    nop

    .line 36
    .end local v0    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .end local v1    # "$i$f$forEach":I
    .end local v2    # "cur$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    :cond_3
    return-void
.end method
