.class public final Lio/ktor/network/sockets/ConnectUtilsJvmKt;
.super Ljava/lang/Object;
.source "ConnectUtilsJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectUtilsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectUtilsJvm.kt\nio/ktor/network/sockets/ConnectUtilsJvmKt\n+ 2 SelectorManager.kt\nio/ktor/network/selector/SelectorManagerKt\n*L\n1#1,64:1\n51#2,8:65\n51#2,8:73\n*S KotlinDebug\n*F\n+ 1 ConnectUtilsJvm.kt\nio/ktor/network/sockets/ConnectUtilsJvmKt\n*L\n16#1:65,8\n29#1:73,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\"\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a)\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u000bH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000c\u001a\u001e\u0010\r\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000e*\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0000\u001a\u001c\u0010\u0012\u001a\n \u000f*\u0004\u0018\u00010\u00130\u0013*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "bind",
        "Lio/ktor/network/sockets/ServerSocket;",
        "selector",
        "Lio/ktor/network/selector/SelectorManager;",
        "localAddress",
        "Lio/ktor/network/sockets/SocketAddress;",
        "socketOptions",
        "Lio/ktor/network/sockets/SocketOptions$AcceptorOptions;",
        "connect",
        "Lio/ktor/network/sockets/Socket;",
        "remoteAddress",
        "Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;",
        "(Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketAddress;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "openServerSocketChannelFor",
        "Ljava/nio/channels/ServerSocketChannel;",
        "kotlin.jvm.PlatformType",
        "Ljava/nio/channels/spi/SelectorProvider;",
        "address",
        "openSocketChannelFor",
        "Ljava/nio/channels/SocketChannel;",
        "ktor-network"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final bind(Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketAddress;Lio/ktor/network/sockets/SocketOptions$AcceptorOptions;)Lio/ktor/network/sockets/ServerSocket;
    .locals 11
    .param p0, "selector"    # Lio/ktor/network/selector/SelectorManager;
    .param p1, "localAddress"    # Lio/ktor/network/sockets/SocketAddress;
    .param p2, "socketOptions"    # Lio/ktor/network/sockets/SocketOptions$AcceptorOptions;

    const-string v0, "selector"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socketOptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    move-object v0, p0

    .local v0, "$this$buildOrClose$iv":Lio/ktor/network/selector/SelectorManager;
    const/4 v1, 0x0

    .line 73
    .local v1, "$i$f$buildOrClose":I
    nop

    .line 74
    invoke-interface {v0}, Lio/ktor/network/selector/SelectorManager;->getProvider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v2

    .local v2, "$this$bind_u24lambda_u243":Ljava/nio/channels/spi/SelectorProvider;
    const/4 v3, 0x0

    .line 29
    .local v3, "$i$a$-buildOrClose-ConnectUtilsJvmKt$bind$1":I
    invoke-static {v2, p1}, Lio/ktor/network/sockets/ConnectUtilsJvmKt;->openServerSocketChannelFor(Ljava/nio/channels/spi/SelectorProvider;Lio/ktor/network/sockets/SocketAddress;)Ljava/nio/channels/ServerSocketChannel;

    move-result-object v2

    .line 74
    .end local v2    # "$this$bind_u24lambda_u243":Ljava/nio/channels/spi/SelectorProvider;
    .end local v3    # "$i$a$-buildOrClose-ConnectUtilsJvmKt$bind$1":I
    check-cast v2, Ljava/io/Closeable;

    .line 76
    .local v2, "result$iv":Ljava/io/Closeable;
    nop

    .line 77
    :try_start_0
    move-object v3, v2

    check-cast v3, Ljava/nio/channels/ServerSocketChannel;

    .local v3, "$this$bind_u24lambda_u245":Ljava/nio/channels/ServerSocketChannel;
    const/4 v4, 0x0

    .line 30
    .local v4, "$i$a$-buildOrClose-ConnectUtilsJvmKt$bind$2":I
    instance-of v5, p1, Lio/ktor/network/sockets/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "bind$lambda$5"

    if-eqz v5, :cond_0

    :try_start_1
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Ljava/nio/channels/SelectableChannel;

    move-object v7, p2

    check-cast v7, Lio/ktor/network/sockets/SocketOptions;

    invoke-static {v5, v7}, Lio/ktor/network/sockets/JavaSocketOptionsKt;->assignOptions(Ljava/nio/channels/SelectableChannel;Lio/ktor/network/sockets/SocketOptions;)V

    .line 31
    :cond_0
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Ljava/nio/channels/SelectableChannel;

    invoke-static {v5}, Lio/ktor/network/sockets/JavaSocketOptionsKt;->nonBlocking(Ljava/nio/channels/SelectableChannel;)V

    .line 33
    new-instance v5, Lio/ktor/network/sockets/ServerSocketImpl;

    invoke-direct {v5, v3, p0}, Lio/ktor/network/sockets/ServerSocketImpl;-><init>(Ljava/nio/channels/ServerSocketChannel;Lio/ktor/network/selector/SelectorManager;)V

    move-object v6, v5

    .local v6, "$this$bind_u24lambda_u245_u24lambda_u244":Lio/ktor/network/sockets/ServerSocketImpl;
    const/4 v7, 0x0

    .line 34
    .local v7, "$i$a$-apply-ConnectUtilsJvmKt$bind$2$1":I
    invoke-static {}, Lio/ktor/network/sockets/JavaSocketOptionsKt;->getJava7NetworkApisAvailable()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 35
    invoke-virtual {v6}, Lio/ktor/network/sockets/ServerSocketImpl;->getChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v8

    if-eqz p1, :cond_1

    invoke-static {p1}, Lio/ktor/network/sockets/JavaSocketAddressUtilsKt;->toJavaAddress(Lio/ktor/network/sockets/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object v9

    :cond_1
    invoke-virtual {p2}, Lio/ktor/network/sockets/SocketOptions$AcceptorOptions;->getBacklogSize()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/nio/channels/ServerSocketChannel;->bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/ServerSocketChannel;

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v6}, Lio/ktor/network/sockets/ServerSocketImpl;->getChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v8

    if-eqz p1, :cond_3

    invoke-static {p1}, Lio/ktor/network/sockets/JavaSocketAddressUtilsKt;->toJavaAddress(Lio/ktor/network/sockets/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object v9

    :cond_3
    invoke-virtual {p2}, Lio/ktor/network/sockets/SocketOptions$AcceptorOptions;->getBacklogSize()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :goto_0
    nop

    .line 33
    .end local v6    # "$this$bind_u24lambda_u245_u24lambda_u244":Lio/ktor/network/sockets/ServerSocketImpl;
    .end local v7    # "$i$a$-apply-ConnectUtilsJvmKt$bind$2$1":I
    nop

    .line 77
    .end local v3    # "$this$bind_u24lambda_u245":Ljava/nio/channels/ServerSocketChannel;
    .end local v4    # "$i$a$-buildOrClose-ConnectUtilsJvmKt$bind$2":I
    nop

    .line 80
    .end local v0    # "$this$buildOrClose$iv":Lio/ktor/network/selector/SelectorManager;
    .end local v1    # "$i$f$buildOrClose":I
    .end local v2    # "result$iv":Ljava/io/Closeable;
    check-cast v5, Lio/ktor/network/sockets/ServerSocket;

    .line 40
    return-object v5

    .line 78
    .restart local v0    # "$this$buildOrClose$iv":Lio/ktor/network/selector/SelectorManager;
    .restart local v1    # "$i$f$buildOrClose":I
    .restart local v2    # "result$iv":Ljava/io/Closeable;
    :catchall_0
    move-exception v3

    .line 79
    .local v3, "t$iv":Ljava/lang/Throwable;
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 80
    throw v3
.end method

.method public static final connect(Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketAddress;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/SelectorManager;",
            "Lio/ktor/network/sockets/SocketAddress;",
            "Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/sockets/Socket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;

    iget v1, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;

    invoke-direct {v0, p3}, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 12
    iget v2, p3, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$buildOrClose":I
    const/4 p1, 0x0

    .local p1, "$i$a$-buildOrClose-ConnectUtilsJvmKt$connect$3":I
    const/4 p2, 0x0

    .local p2, "$i$a$-apply-ConnectUtilsJvmKt$connect$3$1":I
    iget-object v1, p3, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lio/ktor/network/sockets/SocketImpl;

    iget-object v2, p3, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    .local v2, "result$iv":Ljava/io/Closeable;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 70
    .end local p1    # "$i$a$-buildOrClose-ConnectUtilsJvmKt$connect$3":I
    .end local p2    # "$i$a$-apply-ConnectUtilsJvmKt$connect$3$1":I
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 12
    .end local v2    # "result$iv":Ljava/io/Closeable;
    .end local p0    # "$i$f$buildOrClose":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    .local p0, "selector":Lio/ktor/network/selector/SelectorManager;
    .local p1, "remoteAddress":Lio/ktor/network/sockets/SocketAddress;
    .local p2, "socketOptions":Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;
    move-object v2, p0

    .local v2, "$this$buildOrClose$iv":Lio/ktor/network/selector/SelectorManager;
    const/4 v3, 0x0

    .line 65
    .local v3, "$i$f$buildOrClose":I
    nop

    .line 66
    invoke-interface {v2}, Lio/ktor/network/selector/SelectorManager;->getProvider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v2

    .local v2, "$this$connect_u24lambda_u240":Ljava/nio/channels/spi/SelectorProvider;
    const/4 v4, 0x0

    .line 16
    .local v4, "$i$a$-buildOrClose-ConnectUtilsJvmKt$connect$2":I
    invoke-static {v2, p1}, Lio/ktor/network/sockets/ConnectUtilsJvmKt;->openSocketChannelFor(Ljava/nio/channels/spi/SelectorProvider;Lio/ktor/network/sockets/SocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object v2

    .line 66
    .end local v2    # "$this$connect_u24lambda_u240":Ljava/nio/channels/spi/SelectorProvider;
    .end local v4    # "$i$a$-buildOrClose-ConnectUtilsJvmKt$connect$2":I
    check-cast v2, Ljava/io/Closeable;

    .line 68
    .local v2, "result$iv":Ljava/io/Closeable;
    nop

    .line 69
    :try_start_1
    move-object v4, v2

    check-cast v4, Ljava/nio/channels/SocketChannel;

    .local v4, "$this$connect_u24lambda_u242":Ljava/nio/channels/SocketChannel;
    const/4 v5, 0x0

    .line 17
    .local v5, "$i$a$-buildOrClose-ConnectUtilsJvmKt$connect$3":I
    instance-of v6, p1, Lio/ktor/network/sockets/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v7, "connect$lambda$2"

    if-eqz v6, :cond_1

    :try_start_2
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v4

    check-cast v6, Ljava/nio/channels/SelectableChannel;

    move-object v8, p2

    check-cast v8, Lio/ktor/network/sockets/SocketOptions;

    invoke-static {v6, v8}, Lio/ktor/network/sockets/JavaSocketOptionsKt;->assignOptions(Ljava/nio/channels/SelectableChannel;Lio/ktor/network/sockets/SocketOptions;)V

    .line 18
    :cond_1
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v4

    check-cast v6, Ljava/nio/channels/SelectableChannel;

    invoke-static {v6}, Lio/ktor/network/sockets/JavaSocketOptionsKt;->nonBlocking(Ljava/nio/channels/SelectableChannel;)V

    .line 20
    new-instance v6, Lio/ktor/network/sockets/SocketImpl;

    invoke-direct {v6, v4, p0, p2}, Lio/ktor/network/sockets/SocketImpl;-><init>(Ljava/nio/channels/SocketChannel;Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)V

    .end local v4    # "$this$connect_u24lambda_u242":Ljava/nio/channels/SocketChannel;
    .end local p0    # "selector":Lio/ktor/network/selector/SelectorManager;
    .end local p2    # "socketOptions":Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;
    move-object p0, v6

    .local p0, "$this$connect_u24lambda_u242_u24lambda_u241":Lio/ktor/network/sockets/SocketImpl;
    const/4 p2, 0x0

    .line 21
    .local p2, "$i$a$-apply-ConnectUtilsJvmKt$connect$3$1":I
    invoke-static {p1}, Lio/ktor/network/sockets/JavaSocketAddressUtilsKt;->toJavaAddress(Lio/ktor/network/sockets/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object v4

    iput-object v2, p3, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;->L$0:Ljava/lang/Object;

    iput-object v6, p3, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, p3, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;->label:I

    invoke-virtual {p0, v4, p3}, Lio/ktor/network/sockets/SocketImpl;->connect$ktor_network(Ljava/net/SocketAddress;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local p0    # "$this$connect_u24lambda_u242_u24lambda_u241":Lio/ktor/network/sockets/SocketImpl;
    .end local p1    # "remoteAddress":Lio/ktor/network/sockets/SocketAddress;
    if-ne v4, v1, :cond_2

    .line 12
    return-object v1

    .line 21
    :cond_2
    move p0, v3

    move p1, v5

    move-object v1, v6

    .line 22
    .end local v3    # "$i$f$buildOrClose":I
    .end local v5    # "$i$a$-buildOrClose-ConnectUtilsJvmKt$connect$3":I
    .local p0, "$i$f$buildOrClose":I
    .local p1, "$i$a$-buildOrClose-ConnectUtilsJvmKt$connect$3":I
    :goto_1
    nop

    .line 20
    .end local p2    # "$i$a$-apply-ConnectUtilsJvmKt$connect$3$1":I
    nop

    .line 69
    .end local p1    # "$i$a$-buildOrClose-ConnectUtilsJvmKt$connect$3":I
    nop

    .line 23
    .end local v2    # "result$iv":Ljava/io/Closeable;
    .end local p0    # "$i$f$buildOrClose":I
    return-object v1

    .line 70
    .restart local v2    # "result$iv":Ljava/io/Closeable;
    .restart local v3    # "$i$f$buildOrClose":I
    :catchall_1
    move-exception p1

    move p0, v3

    .line 71
    .end local v3    # "$i$f$buildOrClose":I
    .restart local p0    # "$i$f$buildOrClose":I
    .local p1, "t$iv":Ljava/lang/Throwable;
    :goto_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 72
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final openServerSocketChannelFor(Ljava/nio/channels/spi/SelectorProvider;Lio/ktor/network/sockets/SocketAddress;)Ljava/nio/channels/ServerSocketChannel;
    .locals 6
    .param p0, "$this$openServerSocketChannelFor"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p1, "address"    # Lio/ktor/network/sockets/SocketAddress;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    nop

    .line 54
    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/nio/channels/spi/SelectorProvider;->openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_0
    instance-of v0, p1, Lio/ktor/network/sockets/InetSocketAddress;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/channels/spi/SelectorProvider;->openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_1
    instance-of v0, p1, Lio/ktor/network/sockets/UnixSocketAddress;

    if-eqz v0, :cond_2

    const-class v0, Ljava/nio/channels/spi/SelectorProvider;

    .line 57
    nop

    .local v0, "selectorProviderClass":Ljava/lang/Class;
    const-class v1, Ljava/net/ProtocolFamily;

    .line 58
    nop

    .line 59
    .local v1, "protocolFamilyClass":Ljava/lang/Class;
    const-string v2, "UNIX"

    invoke-static {v2}, Ljava/net/StandardProtocolFamily;->valueOf(Ljava/lang/String;)Ljava/net/StandardProtocolFamily;

    move-result-object v2

    .line 60
    .local v2, "unixProtocolFamily":Ljava/net/StandardProtocolFamily;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v4, "openServerSocketChannel"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 61
    .local v3, "openSocketChannelMethod":Ljava/lang/reflect/Method;
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type java.nio.channels.ServerSocketChannel"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v4

    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    .line 63
    .end local v0    # "selectorProviderClass":Ljava/lang/Class;
    .end local v1    # "protocolFamilyClass":Ljava/lang/Class;
    .end local v2    # "unixProtocolFamily":Ljava/net/StandardProtocolFamily;
    .end local v3    # "openSocketChannelMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v0

    .line 61
    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public static final openSocketChannelFor(Ljava/nio/channels/spi/SelectorProvider;Lio/ktor/network/sockets/SocketAddress;)Ljava/nio/channels/SocketChannel;
    .locals 6
    .param p0, "$this$openSocketChannelFor"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p1, "address"    # Lio/ktor/network/sockets/SocketAddress;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    nop

    .line 43
    instance-of v0, p1, Lio/ktor/network/sockets/InetSocketAddress;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/channels/spi/SelectorProvider;->openSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_0
    instance-of v0, p1, Lio/ktor/network/sockets/UnixSocketAddress;

    if-eqz v0, :cond_1

    const-class v0, Ljava/nio/channels/spi/SelectorProvider;

    .line 45
    nop

    .local v0, "selectorProviderClass":Ljava/lang/Class;
    const-class v1, Ljava/net/ProtocolFamily;

    .line 46
    nop

    .line 47
    .local v1, "protocolFamilyClass":Ljava/lang/Class;
    const-string v2, "UNIX"

    invoke-static {v2}, Ljava/net/StandardProtocolFamily;->valueOf(Ljava/lang/String;)Ljava/net/StandardProtocolFamily;

    move-result-object v2

    .line 48
    .local v2, "unixProtocolFamily":Ljava/net/StandardProtocolFamily;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v4, "openSocketChannel"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 49
    .local v3, "openSocketChannelMethod":Ljava/lang/reflect/Method;
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type java.nio.channels.SocketChannel"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v4

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 51
    .end local v0    # "selectorProviderClass":Ljava/lang/Class;
    .end local v1    # "protocolFamilyClass":Ljava/lang/Class;
    .end local v2    # "unixProtocolFamily":Ljava/net/StandardProtocolFamily;
    .end local v3    # "openSocketChannelMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v0

    .line 49
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
