.class public final Lio/ktor/network/sockets/BoundDatagramSocket$DefaultImpls;
.super Ljava/lang/Object;
.source "Datagram.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/sockets/BoundDatagramSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static dispose(Lio/ktor/network/sockets/BoundDatagramSocket;)V
    .locals 1
    .param p0, "$this"    # Lio/ktor/network/sockets/BoundDatagramSocket;

    .line 68
    move-object v0, p0

    check-cast v0, Lio/ktor/network/sockets/ASocket;

    invoke-static {v0}, Lio/ktor/network/sockets/ASocket$DefaultImpls;->dispose(Lio/ktor/network/sockets/ASocket;)V

    return-void
.end method

.method public static receive(Lio/ktor/network/sockets/BoundDatagramSocket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/network/sockets/BoundDatagramSocket;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/sockets/BoundDatagramSocket;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/sockets/Datagram;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 68
    move-object v0, p0

    check-cast v0, Lio/ktor/network/sockets/DatagramReadWriteChannel;

    invoke-static {v0, p1}, Lio/ktor/network/sockets/DatagramReadWriteChannel$DefaultImpls;->receive(Lio/ktor/network/sockets/DatagramReadWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static send(Lio/ktor/network/sockets/BoundDatagramSocket;Lio/ktor/network/sockets/Datagram;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lio/ktor/network/sockets/BoundDatagramSocket;
    .param p1, "datagram"    # Lio/ktor/network/sockets/Datagram;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/sockets/BoundDatagramSocket;",
            "Lio/ktor/network/sockets/Datagram;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 68
    move-object v0, p0

    check-cast v0, Lio/ktor/network/sockets/DatagramReadWriteChannel;

    invoke-static {v0, p1, p2}, Lio/ktor/network/sockets/DatagramReadWriteChannel$DefaultImpls;->send(Lio/ktor/network/sockets/DatagramReadWriteChannel;Lio/ktor/network/sockets/Datagram;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
