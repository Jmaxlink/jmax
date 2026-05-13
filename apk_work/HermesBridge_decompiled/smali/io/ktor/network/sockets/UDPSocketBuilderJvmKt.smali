.class public final Lio/ktor/network/sockets/UDPSocketBuilderJvmKt;
.super Ljava/lang/Object;
.source "UDPSocketBuilderJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUDPSocketBuilderJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UDPSocketBuilderJvm.kt\nio/ktor/network/sockets/UDPSocketBuilderJvmKt\n+ 2 SelectorManager.kt\nio/ktor/network/selector/SelectorManagerKt\n*L\n1#1,43:1\n51#2,8:44\n51#2,8:52\n*S KotlinDebug\n*F\n+ 1 UDPSocketBuilderJvm.kt\nio/ktor/network/sockets/UDPSocketBuilderJvmKt\n*L\n14#1:44,8\n32#1:52,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u001a.\u0010\t\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "bindUDP",
        "Lio/ktor/network/sockets/BoundDatagramSocket;",
        "Lio/ktor/network/sockets/UDPSocketBuilder$Companion;",
        "selector",
        "Lio/ktor/network/selector/SelectorManager;",
        "localAddress",
        "Lio/ktor/network/sockets/SocketAddress;",
        "options",
        "Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;",
        "connectUDP",
        "Lio/ktor/network/sockets/ConnectedDatagramSocket;",
        "remoteAddress",
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
.method public static final bindUDP(Lio/ktor/network/sockets/UDPSocketBuilder$Companion;Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketAddress;Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;)Lio/ktor/network/sockets/BoundDatagramSocket;
    .locals 7
    .param p0, "$this$bindUDP"    # Lio/ktor/network/sockets/UDPSocketBuilder$Companion;
    .param p1, "selector"    # Lio/ktor/network/selector/SelectorManager;
    .param p2, "localAddress"    # Lio/ktor/network/sockets/SocketAddress;
    .param p3, "options"    # Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    move-object v0, p1

    .local v0, "$this$buildOrClose$iv":Lio/ktor/network/selector/SelectorManager;
    const/4 v1, 0x0

    .line 52
    .local v1, "$i$f$buildOrClose":I
    nop

    .line 53
    invoke-interface {v0}, Lio/ktor/network/selector/SelectorManager;->getProvider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v2

    .local v2, "$this$bindUDP_u24lambda_u242":Ljava/nio/channels/spi/SelectorProvider;
    const/4 v3, 0x0

    .line 32
    .local v3, "$i$a$-buildOrClose-UDPSocketBuilderJvmKt$bindUDP$1":I
    invoke-virtual {v2}, Ljava/nio/channels/spi/SelectorProvider;->openDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v2

    .line 53
    .end local v2    # "$this$bindUDP_u24lambda_u242":Ljava/nio/channels/spi/SelectorProvider;
    .end local v3    # "$i$a$-buildOrClose-UDPSocketBuilderJvmKt$bindUDP$1":I
    check-cast v2, Ljava/io/Closeable;

    .line 55
    .local v2, "result$iv":Ljava/io/Closeable;
    nop

    .line 56
    :try_start_0
    move-object v3, v2

    check-cast v3, Ljava/nio/channels/DatagramChannel;

    .local v3, "$this$bindUDP_u24lambda_u243":Ljava/nio/channels/DatagramChannel;
    const/4 v4, 0x0

    .line 33
    .local v4, "$i$a$-buildOrClose-UDPSocketBuilderJvmKt$bindUDP$2":I
    const-string v5, "bindUDP$lambda$3"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Ljava/nio/channels/SelectableChannel;

    move-object v6, p3

    check-cast v6, Lio/ktor/network/sockets/SocketOptions;

    invoke-static {v5, v6}, Lio/ktor/network/sockets/JavaSocketOptionsKt;->assignOptions(Ljava/nio/channels/SelectableChannel;Lio/ktor/network/sockets/SocketOptions;)V

    .line 34
    move-object v5, v3

    check-cast v5, Ljava/nio/channels/SelectableChannel;

    invoke-static {v5}, Lio/ktor/network/sockets/JavaSocketOptionsKt;->nonBlocking(Ljava/nio/channels/SelectableChannel;)V

    .line 36
    invoke-static {}, Lio/ktor/network/sockets/JavaSocketOptionsKt;->getJava7NetworkApisAvailable()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 37
    if-eqz p2, :cond_0

    invoke-static {p2}, Lio/ktor/network/sockets/JavaSocketAddressUtilsKt;->toJavaAddress(Lio/ktor/network/sockets/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object v6

    :cond_0
    invoke-virtual {v3, v6}, Ljava/nio/channels/DatagramChannel;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v3}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v5

    if-eqz p2, :cond_2

    invoke-static {p2}, Lio/ktor/network/sockets/JavaSocketAddressUtilsKt;->toJavaAddress(Lio/ktor/network/sockets/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object v6

    :cond_2
    invoke-virtual {v5, v6}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 41
    :goto_0
    new-instance v5, Lio/ktor/network/sockets/DatagramSocketImpl;

    invoke-direct {v5, v3, p1}, Lio/ktor/network/sockets/DatagramSocketImpl;-><init>(Ljava/nio/channels/DatagramChannel;Lio/ktor/network/selector/SelectorManager;)V

    check-cast v5, Lio/ktor/network/sockets/BoundDatagramSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    .line 57
    .end local v3    # "$this$bindUDP_u24lambda_u243":Ljava/nio/channels/DatagramChannel;
    .end local v4    # "$i$a$-buildOrClose-UDPSocketBuilderJvmKt$bindUDP$2":I
    :catchall_0
    move-exception v3

    .line 58
    .local v3, "t$iv":Ljava/lang/Throwable;
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 59
    throw v3
.end method

.method public static final connectUDP(Lio/ktor/network/sockets/UDPSocketBuilder$Companion;Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketAddress;Lio/ktor/network/sockets/SocketAddress;Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;)Lio/ktor/network/sockets/ConnectedDatagramSocket;
    .locals 7
    .param p0, "$this$connectUDP"    # Lio/ktor/network/sockets/UDPSocketBuilder$Companion;
    .param p1, "selector"    # Lio/ktor/network/selector/SelectorManager;
    .param p2, "remoteAddress"    # Lio/ktor/network/sockets/SocketAddress;
    .param p3, "localAddress"    # Lio/ktor/network/sockets/SocketAddress;
    .param p4, "options"    # Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    move-object v0, p1

    .local v0, "$this$buildOrClose$iv":Lio/ktor/network/selector/SelectorManager;
    const/4 v1, 0x0

    .line 44
    .local v1, "$i$f$buildOrClose":I
    nop

    .line 45
    invoke-interface {v0}, Lio/ktor/network/selector/SelectorManager;->getProvider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v2

    .local v2, "$this$connectUDP_u24lambda_u240":Ljava/nio/channels/spi/SelectorProvider;
    const/4 v3, 0x0

    .line 14
    .local v3, "$i$a$-buildOrClose-UDPSocketBuilderJvmKt$connectUDP$1":I
    invoke-virtual {v2}, Ljava/nio/channels/spi/SelectorProvider;->openDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v2

    .line 45
    .end local v2    # "$this$connectUDP_u24lambda_u240":Ljava/nio/channels/spi/SelectorProvider;
    .end local v3    # "$i$a$-buildOrClose-UDPSocketBuilderJvmKt$connectUDP$1":I
    check-cast v2, Ljava/io/Closeable;

    .line 47
    .local v2, "result$iv":Ljava/io/Closeable;
    nop

    .line 48
    :try_start_0
    move-object v3, v2

    check-cast v3, Ljava/nio/channels/DatagramChannel;

    .local v3, "$this$connectUDP_u24lambda_u241":Ljava/nio/channels/DatagramChannel;
    const/4 v4, 0x0

    .line 15
    .local v4, "$i$a$-buildOrClose-UDPSocketBuilderJvmKt$connectUDP$2":I
    const-string v5, "connectUDP$lambda$1"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Ljava/nio/channels/SelectableChannel;

    move-object v6, p4

    check-cast v6, Lio/ktor/network/sockets/SocketOptions;

    invoke-static {v5, v6}, Lio/ktor/network/sockets/JavaSocketOptionsKt;->assignOptions(Ljava/nio/channels/SelectableChannel;Lio/ktor/network/sockets/SocketOptions;)V

    .line 16
    move-object v5, v3

    check-cast v5, Ljava/nio/channels/SelectableChannel;

    invoke-static {v5}, Lio/ktor/network/sockets/JavaSocketOptionsKt;->nonBlocking(Ljava/nio/channels/SelectableChannel;)V

    .line 18
    invoke-static {}, Lio/ktor/network/sockets/JavaSocketOptionsKt;->getJava7NetworkApisAvailable()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 19
    if-eqz p3, :cond_0

    invoke-static {p3}, Lio/ktor/network/sockets/JavaSocketAddressUtilsKt;->toJavaAddress(Lio/ktor/network/sockets/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object v6

    :cond_0
    invoke-virtual {v3, v6}, Ljava/nio/channels/DatagramChannel;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v3}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v5

    if-eqz p3, :cond_2

    invoke-static {p3}, Lio/ktor/network/sockets/JavaSocketAddressUtilsKt;->toJavaAddress(Lio/ktor/network/sockets/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object v6

    :cond_2
    invoke-virtual {v5, v6}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 23
    :goto_0
    invoke-static {p2}, Lio/ktor/network/sockets/JavaSocketAddressUtilsKt;->toJavaAddress(Lio/ktor/network/sockets/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    .line 25
    new-instance v5, Lio/ktor/network/sockets/DatagramSocketImpl;

    invoke-direct {v5, v3, p1}, Lio/ktor/network/sockets/DatagramSocketImpl;-><init>(Ljava/nio/channels/DatagramChannel;Lio/ktor/network/selector/SelectorManager;)V

    check-cast v5, Lio/ktor/network/sockets/ConnectedDatagramSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    .line 49
    .end local v3    # "$this$connectUDP_u24lambda_u241":Ljava/nio/channels/DatagramChannel;
    .end local v4    # "$i$a$-buildOrClose-UDPSocketBuilderJvmKt$connectUDP$2":I
    :catchall_0
    move-exception v3

    .line 50
    .local v3, "t$iv":Ljava/lang/Throwable;
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 51
    throw v3
.end method
