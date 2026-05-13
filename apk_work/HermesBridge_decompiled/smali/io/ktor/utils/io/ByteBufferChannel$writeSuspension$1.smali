.class final Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ByteBufferChannel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ByteBufferChannel;-><init>(ZLio/ktor/utils/io/pool/ObjectPool;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteBufferChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel$writeSuspension$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel\n*L\n1#1,2411:1\n1#2:2412\n1#2:2416\n2341#3,3:2413\n2345#3,6:2417\n*S KotlinDebug\n*F\n+ 1 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel$writeSuspension$1\n*L\n2280#1:2416\n2280#1:2413,3\n2280#1:2417,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "ucont",
        "Lkotlin/coroutines/Continuation;",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lio/ktor/utils/io/ByteBufferChannel;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/ByteBufferChannel;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 2271
    move-object v0, p1

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p1, "ucont"    # Lkotlin/coroutines/Continuation;
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

    const-string v0, "ucont"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2272
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {v0}, Lio/ktor/utils/io/ByteBufferChannel;->access$getWriteSuspensionSize$p(Lio/ktor/utils/io/ByteBufferChannel;)I

    move-result v0

    .line 2275
    .local v0, "size":I
    :cond_0
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {v1}, Lio/ktor/utils/io/ByteBufferChannel;->access$getClosed(Lio/ktor/utils/io/ByteBufferChannel;)Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2412
    .local v1, "it":Ljava/lang/Throwable;
    :cond_1
    const/4 v2, 0x0

    .line 2275
    .local v2, "$i$a$-let-ByteBufferChannel$writeSuspension$1$1":I
    invoke-static {v1}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 2276
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-ByteBufferChannel$writeSuspension$1$1":I
    :cond_2
    :goto_0
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {v1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->access$writeSuspendPredicate(Lio/ktor/utils/io/ByteBufferChannel;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2277
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 2278
    goto :goto_3

    .line 2280
    :cond_3
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    .local v1, "this_$iv":Lio/ktor/utils/io/ByteBufferChannel;
    iget-object v2, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    iget-object v3, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    .local v3, "updater$iv":Lio/ktor/utils/io/ByteBufferChannel;
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    .local v4, "continuation$iv":Lkotlin/coroutines/Continuation;
    iget-object v5, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    const/4 v6, 0x0

    .line 2413
    .local v6, "$i$f$setContinuation":I
    :cond_4
    nop

    .line 2414
    const/4 v7, 0x0

    .line 2280
    .local v7, "$i$a$-setContinuation-ByteBufferChannel$writeSuspension$1$2":I
    invoke-static {v2}, Lio/ktor/utils/io/ByteBufferChannel;->access$getWriteOp(Lio/ktor/utils/io/ByteBufferChannel;)Lkotlin/coroutines/Continuation;

    move-result-object v7

    .line 2414
    .end local v7    # "$i$a$-setContinuation-ByteBufferChannel$writeSuspension$1$2":I
    nop

    .line 2415
    .local v7, "current$iv":Lkotlin/coroutines/Continuation;
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_5

    move v10, v8

    goto :goto_1

    :cond_5
    move v10, v9

    :goto_1
    if-eqz v10, :cond_a

    .line 2417
    const/4 v10, 0x0

    .line 2280
    .local v10, "$i$a$-setContinuation-ByteBufferChannel$writeSuspension$1$3":I
    invoke-static {v5, v0}, Lio/ktor/utils/io/ByteBufferChannel;->access$writeSuspendPredicate(Lio/ktor/utils/io/ByteBufferChannel;I)Z

    move-result v10

    .line 2417
    .end local v10    # "$i$a$-setContinuation-ByteBufferChannel$writeSuspension$1$3":I
    if-nez v10, :cond_6

    .line 2418
    move v8, v9

    goto :goto_2

    .line 2421
    :cond_6
    sget-object v10, Lio/ktor/utils/io/ByteBufferChannel;->_writeOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v11, 0x0

    invoke-static {v10, v3, v11, v4}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2422
    const/4 v2, 0x0

    .line 2280
    .local v2, "$i$a$-setContinuation-ByteBufferChannel$writeSuspension$1$3":I
    invoke-static {v5, v0}, Lio/ktor/utils/io/ByteBufferChannel;->access$writeSuspendPredicate(Lio/ktor/utils/io/ByteBufferChannel;I)Z

    move-result v2

    .line 2422
    .end local v2    # "$i$a$-setContinuation-ByteBufferChannel$writeSuspension$1$3":I
    if-nez v2, :cond_8

    sget-object v2, Lio/ktor/utils/io/ByteBufferChannel;->_writeOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, v3, v4, v11}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    move v8, v9

    .end local v1    # "this_$iv":Lio/ktor/utils/io/ByteBufferChannel;
    .end local v3    # "updater$iv":Lio/ktor/utils/io/ByteBufferChannel;
    .end local v4    # "continuation$iv":Lkotlin/coroutines/Continuation;
    .end local v6    # "$i$f$setContinuation":I
    .end local v7    # "current$iv":Lkotlin/coroutines/Continuation;
    :cond_8
    :goto_2
    if-eqz v8, :cond_0

    .line 2282
    :goto_3
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {v1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->access$flushImpl(Lio/ktor/utils/io/ByteBufferChannel;I)V

    .line 2284
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {v1}, Lio/ktor/utils/io/ByteBufferChannel;->access$shouldResumeReadOp(Lio/ktor/utils/io/ByteBufferChannel;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2285
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {v1}, Lio/ktor/utils/io/ByteBufferChannel;->access$resumeReadOp(Lio/ktor/utils/io/ByteBufferChannel;)V

    .line 2288
    :cond_9
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 2416
    .restart local v1    # "this_$iv":Lio/ktor/utils/io/ByteBufferChannel;
    .restart local v3    # "updater$iv":Lio/ktor/utils/io/ByteBufferChannel;
    .restart local v4    # "continuation$iv":Lkotlin/coroutines/Continuation;
    .restart local v6    # "$i$f$setContinuation":I
    .restart local v7    # "current$iv":Lkotlin/coroutines/Continuation;
    :cond_a
    const/4 v2, 0x0

    .line 2415
    .local v2, "$i$a$-check-ByteBufferChannel$setContinuation$1$iv":I
    nop

    .end local v2    # "$i$a$-check-ByteBufferChannel$setContinuation$1$iv":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "Operation is already in progress"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
