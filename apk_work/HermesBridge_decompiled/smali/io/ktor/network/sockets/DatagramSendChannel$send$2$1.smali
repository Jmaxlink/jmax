.class final Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DatagramSendChannel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/sockets/DatagramSendChannel;->send(Lio/ktor/network/sockets/Datagram;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDatagramSendChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatagramSendChannel.kt\nio/ktor/network/sockets/DatagramSendChannel$send$2$1\n+ 2 Pool.kt\nio/ktor/utils/io/pool/PoolKt\n*L\n1#1,154:1\n159#2,5:155\n*S KotlinDebug\n*F\n+ 1 DatagramSendChannel.kt\nio/ktor/network/sockets/DatagramSendChannel$send$2$1\n*L\n77#1:155,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.sockets.DatagramSendChannel$send$2$1"
    f = "DatagramSendChannel.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x56
    }
    m = "invokeSuspend"
    n = {
        "$this$useInstance$iv",
        "instance$iv"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $element:Lio/ktor/network/sockets/Datagram;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ktor/network/sockets/DatagramSendChannel;


# direct methods
.method constructor <init>(Lio/ktor/network/sockets/Datagram;Lio/ktor/network/sockets/DatagramSendChannel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/sockets/Datagram;",
            "Lio/ktor/network/sockets/DatagramSendChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;->$element:Lio/ktor/network/sockets/Datagram;

    iput-object p2, p0, Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;->this$0:Lio/ktor/network/sockets/DatagramSendChannel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;

    iget-object v1, p0, Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;->$element:Lio/ktor/network/sockets/Datagram;

    iget-object v2, p0, Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;->this$0:Lio/ktor/network/sockets/DatagramSendChannel;

    invoke-direct {v0, v1, v2, p2}, Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;-><init>(Lio/ktor/network/sockets/Datagram;Lio/ktor/network/sockets/DatagramSendChannel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 76
    iget v1, p0, Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$f$useInstance":I
    const/4 v2, 0x0

    .local v2, "$i$a$-useInstance-DatagramSendChannel$send$2$1$1":I
    iget-object v3, v0, Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;->L$1:Ljava/lang/Object;

    .local v3, "instance$iv":Ljava/lang/Object;
    iget-object v4, v0, Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/pool/ObjectPool;

    .local v4, "$this$useInstance$iv":Lio/ktor/utils/io/pool/ObjectPool;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 159
    .end local v2    # "$i$a$-useInstance-DatagramSendChannel$send$2$1$1":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 76
    .end local v0    # "this":Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;
    .end local v1    # "$i$f$useInstance":I
    .end local v3    # "instance$iv":Ljava/lang/Object;
    .end local v4    # "$this$useInstance$iv":Lio/ktor/utils/io/pool/ObjectPool;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 77
    .local v1, "this":Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {}, Lio/ktor/network/util/PoolsKt;->getDefaultDatagramByteBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v4

    .restart local v4    # "$this$useInstance$iv":Lio/ktor/utils/io/pool/ObjectPool;
    iget-object v2, v1, Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;->$element:Lio/ktor/network/sockets/Datagram;

    iget-object v3, v1, Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;->this$0:Lio/ktor/network/sockets/DatagramSendChannel;

    const/4 v5, 0x0

    .line 155
    .local v5, "$i$f$useInstance":I
    invoke-interface {v4}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v6

    .line 156
    .local v6, "instance$iv":Ljava/lang/Object;
    nop

    .line 157
    :try_start_1
    move-object v7, v6

    check-cast v7, Ljava/nio/ByteBuffer;

    .local v7, "buffer":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 78
    .local v8, "$i$a$-useInstance-DatagramSendChannel$send$2$1$1":I
    invoke-static {v2, v7}, Lio/ktor/network/sockets/DatagramSendChannelKt;->access$writeMessageTo(Lio/ktor/network/sockets/Datagram;Ljava/nio/ByteBuffer;)V

    .line 80
    invoke-virtual {v3}, Lio/ktor/network/sockets/DatagramSendChannel;->getChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v9

    invoke-virtual {v2}, Lio/ktor/network/sockets/Datagram;->getAddress()Lio/ktor/network/sockets/SocketAddress;

    move-result-object v10

    invoke-static {v10}, Lio/ktor/network/sockets/JavaSocketAddressUtilsKt;->toJavaAddress(Lio/ktor/network/sockets/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    move-result v9

    .line 81
    .local v9, "rc":I
    if-eqz v9, :cond_0

    .line 82
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "rc":I
    invoke-virtual {v3}, Lio/ktor/network/sockets/DatagramSendChannel;->getSocket()Lio/ktor/network/sockets/DatagramSocketImpl;

    move-result-object v0

    sget-object v2, Lio/ktor/network/selector/SelectInterest;->WRITE:Lio/ktor/network/selector/SelectInterest;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lio/ktor/network/sockets/DatagramSocketImpl;->interestOp(Lio/ktor/network/selector/SelectInterest;Z)V

    .line 83
    move-object v0, v1

    move v1, v5

    move-object v3, v6

    goto :goto_1

    .line 86
    .restart local v7    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-virtual {v2}, Lio/ktor/network/sockets/Datagram;->getAddress()Lio/ktor/network/sockets/SocketAddress;

    move-result-object v2

    iput-object v4, v1, Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;->L$1:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v1, Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;->label:I

    invoke-static {v3, v7, v2, v1}, Lio/ktor/network/sockets/DatagramSendChannel;->access$sendSuspend(Lio/ktor/network/sockets/DatagramSendChannel;Ljava/nio/ByteBuffer;Lio/ktor/network/sockets/SocketAddress;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    if-ne v2, v0, :cond_1

    .line 76
    return-object v0

    .line 86
    :cond_1
    move-object v0, v1

    move v1, v5

    move-object v3, v6

    move v2, v8

    .line 87
    .end local v5    # "$i$f$useInstance":I
    .end local v6    # "instance$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-useInstance-DatagramSendChannel$send$2$1$1":I
    .restart local v0    # "this":Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;
    .local v1, "$i$f$useInstance":I
    .restart local v2    # "$i$a$-useInstance-DatagramSendChannel$send$2$1$1":I
    .restart local v3    # "instance$iv":Ljava/lang/Object;
    :goto_0
    nop

    .end local v2    # "$i$a$-useInstance-DatagramSendChannel$send$2$1$1":I
    :goto_1
    :try_start_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    nop

    .line 159
    invoke-interface {v4, v3}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 157
    .end local v3    # "instance$iv":Ljava/lang/Object;
    .end local v4    # "$this$useInstance$iv":Lio/ktor/utils/io/pool/ObjectPool;
    nop

    .line 88
    .end local v1    # "$i$f$useInstance":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 159
    .end local v0    # "this":Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;
    .local v1, "this":Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;
    .restart local v4    # "$this$useInstance$iv":Lio/ktor/utils/io/pool/ObjectPool;
    .restart local v5    # "$i$f$useInstance":I
    .restart local v6    # "instance$iv":Ljava/lang/Object;
    :catchall_1
    move-exception v2

    move-object v0, v1

    move v1, v5

    move-object v3, v6

    .end local v5    # "$i$f$useInstance":I
    .end local v6    # "instance$iv":Ljava/lang/Object;
    .restart local v0    # "this":Lio/ktor/network/sockets/DatagramSendChannel$send$2$1;
    .local v1, "$i$f$useInstance":I
    .restart local v3    # "instance$iv":Ljava/lang/Object;
    :goto_2
    invoke-interface {v4, v3}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
