.class public final Lio/ktor/network/sockets/JavaSocketOptionsKt;
.super Ljava/lang/Object;
.source "JavaSocketOptions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJavaSocketOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaSocketOptions.kt\nio/ktor/network/sockets/JavaSocketOptionsKt\n+ 2 TypeOfService.kt\nio/ktor/network/sockets/TypeOfService\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n23#2:141\n23#2:142\n23#2:144\n23#2:145\n1#3:143\n*S KotlinDebug\n*F\n+ 1 JavaSocketOptions.kt\nio/ktor/network/sockets/JavaSocketOptionsKt\n*L\n28#1:141\n30#1:142\n98#1:144\n100#1:145\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0014\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u001a\u000c\u0010\t\u001a\u00020\u0005*\u00020\u0006H\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\n"
    }
    d2 = {
        "java7NetworkApisAvailable",
        "",
        "getJava7NetworkApisAvailable",
        "()Z",
        "assignOptions",
        "",
        "Ljava/nio/channels/SelectableChannel;",
        "options",
        "Lio/ktor/network/sockets/SocketOptions;",
        "nonBlocking",
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


# static fields
.field private static final java7NetworkApisAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    nop

    .line 14
    :try_start_0
    const-string v0, "java.net.StandardSocketOptions"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    const/4 v0, 0x1

    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    .local v0, "exception":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    move v0, v1

    .line 13
    .end local v0    # "exception":Ljava/lang/ClassNotFoundException;
    :goto_0
    sput-boolean v0, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    return-void
.end method

.method public static final assignOptions(Ljava/nio/channels/SelectableChannel;Lio/ktor/network/sockets/SocketOptions;)V
    .locals 9
    .param p0, "$this$assignOptions"    # Ljava/nio/channels/SelectableChannel;
    .param p1, "options"    # Lio/ktor/network/sockets/SocketOptions;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    instance-of v0, p0, Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 86
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 25
    if-eqz v0, :cond_14

    .line 26
    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getTypeOfService-zieKYfw()B

    move-result v0

    sget-object v5, Lio/ktor/network/sockets/TypeOfService;->Companion:Lio/ktor/network/sockets/TypeOfService$Companion;

    invoke-virtual {v5}, Lio/ktor/network/sockets/TypeOfService$Companion;->getUNDEFINED-zieKYfw()B

    move-result v5

    invoke-static {v0, v5}, Lio/ktor/network/sockets/TypeOfService;->equals-impl0(BB)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    sget-boolean v0, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v0, :cond_0

    .line 28
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    sget-object v5, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getTypeOfService-zieKYfw()B

    move-result v6

    .local v6, "arg0$iv":B
    const/4 v7, 0x0

    .line 141
    .local v7, "$i$f$getIntValue-impl":I
    and-int/lit16 v8, v6, 0xff

    .end local v6    # "arg0$iv":B
    .end local v7    # "$i$f$getIntValue-impl":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 28
    invoke-virtual {v0, v5, v6}, Ljava/nio/channels/SocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    goto :goto_0

    .line 30
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getTypeOfService-zieKYfw()B

    move-result v5

    .local v5, "arg0$iv":B
    const/4 v6, 0x0

    .line 142
    .local v6, "$i$f$getIntValue-impl":I
    and-int/lit16 v7, v5, 0xff

    .line 30
    .end local v5    # "arg0$iv":B
    .end local v6    # "$i$f$getIntValue-impl":I
    invoke-virtual {v0, v7}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 34
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getReuseAddress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    sget-boolean v0, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v0, :cond_2

    .line 36
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    sget-object v5, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-virtual {v0, v5, v4}, Ljava/nio/channels/SocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    goto :goto_1

    .line 38
    :cond_2
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 41
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getReusePort()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    sget-object v0, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->INSTANCE:Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;

    move-object v5, p0

    check-cast v5, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, v5}, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->setReusePort(Ljava/nio/channels/SocketChannel;)V

    .line 45
    :cond_4
    instance-of v0, p1, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    if-eqz v0, :cond_c

    .line 46
    move-object v0, p1

    check-cast v0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    invoke-virtual {v0}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->getReceiveBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 143
    .local v5, "it":I
    const/4 v6, 0x0

    .line 46
    .local v6, "$i$a$-takeIf-JavaSocketOptionsKt$assignOptions$1":I
    if-lez v5, :cond_5

    move v5, v3

    goto :goto_2

    :cond_5
    move v5, v2

    .end local v5    # "it":I
    .end local v6    # "$i$a$-takeIf-JavaSocketOptionsKt$assignOptions$1":I
    :goto_2
    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_8

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .local v0, "it":I
    const/4 v5, 0x0

    .line 47
    .local v5, "$i$a$-let-JavaSocketOptionsKt$assignOptions$2":I
    sget-boolean v6, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v6, :cond_7

    .line 48
    move-object v6, p0

    check-cast v6, Ljava/nio/channels/SocketChannel;

    sget-object v7, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/nio/channels/SocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    goto :goto_4

    .line 50
    :cond_7
    move-object v6, p0

    check-cast v6, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 47
    :goto_4
    nop

    .line 46
    .end local v0    # "it":I
    .end local v5    # "$i$a$-let-JavaSocketOptionsKt$assignOptions$2":I
    nop

    .line 53
    :cond_8
    move-object v0, p1

    check-cast v0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    invoke-virtual {v0}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->getSendBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 143
    .local v5, "it":I
    const/4 v6, 0x0

    .line 53
    .local v6, "$i$a$-takeIf-JavaSocketOptionsKt$assignOptions$3":I
    if-lez v5, :cond_9

    move v5, v3

    goto :goto_5

    :cond_9
    move v5, v2

    .end local v5    # "it":I
    .end local v6    # "$i$a$-takeIf-JavaSocketOptionsKt$assignOptions$3":I
    :goto_5
    if-eqz v5, :cond_a

    goto :goto_6

    :cond_a
    move-object v0, v1

    :goto_6
    if-eqz v0, :cond_c

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .restart local v0    # "it":I
    const/4 v5, 0x0

    .line 54
    .local v5, "$i$a$-let-JavaSocketOptionsKt$assignOptions$4":I
    sget-boolean v6, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v6, :cond_b

    .line 55
    move-object v6, p0

    check-cast v6, Ljava/nio/channels/SocketChannel;

    sget-object v7, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/nio/channels/SocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    goto :goto_7

    .line 57
    :cond_b
    move-object v6, p0

    check-cast v6, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 54
    :goto_7
    nop

    .line 53
    .end local v0    # "it":I
    .end local v5    # "$i$a$-let-JavaSocketOptionsKt$assignOptions$4":I
    nop

    .line 61
    :cond_c
    instance-of v0, p1, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    if-eqz v0, :cond_14

    .line 62
    move-object v0, p1

    check-cast v0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    invoke-virtual {v0}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->getLingerSeconds()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 143
    .local v5, "it":I
    const/4 v6, 0x0

    .line 62
    .local v6, "$i$a$-takeIf-JavaSocketOptionsKt$assignOptions$5":I
    if-ltz v5, :cond_d

    move v5, v3

    goto :goto_8

    :cond_d
    move v5, v2

    .end local v5    # "it":I
    .end local v6    # "$i$a$-takeIf-JavaSocketOptionsKt$assignOptions$5":I
    :goto_8
    if-eqz v5, :cond_e

    goto :goto_9

    :cond_e
    move-object v0, v1

    :goto_9
    if-eqz v0, :cond_10

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .restart local v0    # "it":I
    const/4 v5, 0x0

    .line 63
    .local v5, "$i$a$-let-JavaSocketOptionsKt$assignOptions$6":I
    sget-boolean v6, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v6, :cond_f

    .line 64
    move-object v6, p0

    check-cast v6, Ljava/nio/channels/SocketChannel;

    sget-object v7, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/nio/channels/SocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    goto :goto_a

    .line 66
    :cond_f
    move-object v6, p0

    check-cast v6, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6, v3, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 63
    :goto_a
    nop

    .line 62
    .end local v0    # "it":I
    .end local v5    # "$i$a$-let-JavaSocketOptionsKt$assignOptions$6":I
    nop

    .line 69
    :cond_10
    move-object v0, p1

    check-cast v0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    invoke-virtual {v0}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->getKeepAlive()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "it":Z
    const/4 v5, 0x0

    .line 70
    .local v5, "$i$a$-let-JavaSocketOptionsKt$assignOptions$7":I
    sget-boolean v6, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v6, :cond_11

    .line 71
    move-object v6, p0

    check-cast v6, Ljava/nio/channels/SocketChannel;

    sget-object v7, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/nio/channels/SocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    goto :goto_b

    .line 73
    :cond_11
    move-object v6, p0

    check-cast v6, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 70
    :goto_b
    nop

    .line 69
    .end local v0    # "it":Z
    .end local v5    # "$i$a$-let-JavaSocketOptionsKt$assignOptions$7":I
    nop

    .line 76
    :cond_12
    sget-boolean v0, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v0, :cond_13

    .line 77
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    sget-object v5, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    move-object v6, p1

    check-cast v6, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    invoke-virtual {v6}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->getNoDelay()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/nio/channels/SocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    goto :goto_c

    .line 79
    :cond_13
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    move-object v5, p1

    check-cast v5, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    invoke-virtual {v5}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->getNoDelay()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 83
    :cond_14
    :goto_c
    instance-of v0, p0, Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_17

    .line 84
    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getReuseAddress()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 85
    sget-boolean v0, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v0, :cond_15

    .line 86
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    sget-object v5, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-virtual {v0, v5, v4}, Ljava/nio/channels/ServerSocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;

    goto :goto_d

    .line 88
    :cond_15
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 91
    :cond_16
    :goto_d
    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getReusePort()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 92
    sget-object v0, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->INSTANCE:Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;

    move-object v5, p0

    check-cast v5, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0, v5}, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->setReusePort(Ljava/nio/channels/ServerSocketChannel;)V

    .line 95
    :cond_17
    instance-of v0, p0, Ljava/nio/channels/DatagramChannel;

    if-eqz v0, :cond_26

    .line 96
    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getTypeOfService-zieKYfw()B

    move-result v0

    sget-object v5, Lio/ktor/network/sockets/TypeOfService;->Companion:Lio/ktor/network/sockets/TypeOfService$Companion;

    invoke-virtual {v5}, Lio/ktor/network/sockets/TypeOfService$Companion;->getUNDEFINED-zieKYfw()B

    move-result v5

    invoke-static {v0, v5}, Lio/ktor/network/sockets/TypeOfService;->equals-impl0(BB)Z

    move-result v0

    if-nez v0, :cond_19

    .line 97
    sget-boolean v0, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v0, :cond_18

    .line 98
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    sget-object v5, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getTypeOfService-zieKYfw()B

    move-result v6

    .local v6, "arg0$iv":B
    const/4 v7, 0x0

    .line 144
    .restart local v7    # "$i$f$getIntValue-impl":I
    and-int/lit16 v8, v6, 0xff

    .end local v6    # "arg0$iv":B
    .end local v7    # "$i$f$getIntValue-impl":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 98
    invoke-virtual {v0, v5, v6}, Ljava/nio/channels/DatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    goto :goto_e

    .line 100
    :cond_18
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getTypeOfService-zieKYfw()B

    move-result v5

    .local v5, "arg0$iv":B
    const/4 v6, 0x0

    .line 145
    .local v6, "$i$f$getIntValue-impl":I
    and-int/lit16 v7, v5, 0xff

    .line 100
    .end local v5    # "arg0$iv":B
    .end local v6    # "$i$f$getIntValue-impl":I
    invoke-virtual {v0, v7}, Ljava/net/DatagramSocket;->setTrafficClass(I)V

    .line 104
    :cond_19
    :goto_e
    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getReuseAddress()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 105
    sget-boolean v0, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v0, :cond_1a

    .line 106
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    sget-object v5, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-virtual {v0, v5, v4}, Ljava/nio/channels/DatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    goto :goto_f

    .line 108
    :cond_1a
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 111
    :cond_1b
    :goto_f
    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getReusePort()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 112
    sget-object v0, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->INSTANCE:Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;

    move-object v4, p0

    check-cast v4, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, v4}, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->setReusePort(Ljava/nio/channels/DatagramChannel;)V

    .line 115
    :cond_1c
    instance-of v0, p1, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;

    if-eqz v0, :cond_1e

    .line 116
    sget-boolean v0, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v0, :cond_1d

    .line 117
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    sget-object v4, Ljava/net/StandardSocketOptions;->SO_BROADCAST:Ljava/net/SocketOption;

    move-object v5, p1

    check-cast v5, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;

    invoke-virtual {v5}, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;->getBroadcast()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/DatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    goto :goto_10

    .line 119
    :cond_1d
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    move-object v4, p1

    check-cast v4, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;

    invoke-virtual {v4}, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;->getBroadcast()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 122
    :cond_1e
    :goto_10
    instance-of v0, p1, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    if-eqz v0, :cond_26

    .line 123
    move-object v0, p1

    check-cast v0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    invoke-virtual {v0}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->getReceiveBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 143
    .local v4, "it":I
    const/4 v5, 0x0

    .line 123
    .local v5, "$i$a$-takeIf-JavaSocketOptionsKt$assignOptions$8":I
    if-lez v4, :cond_1f

    move v4, v3

    goto :goto_11

    :cond_1f
    move v4, v2

    .end local v4    # "it":I
    .end local v5    # "$i$a$-takeIf-JavaSocketOptionsKt$assignOptions$8":I
    :goto_11
    if-eqz v4, :cond_20

    goto :goto_12

    :cond_20
    move-object v0, v1

    :goto_12
    if-eqz v0, :cond_22

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .local v0, "it":I
    const/4 v4, 0x0

    .line 124
    .local v4, "$i$a$-let-JavaSocketOptionsKt$assignOptions$9":I
    sget-boolean v5, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v5, :cond_21

    .line 125
    move-object v5, p0

    check-cast v5, Ljava/nio/channels/DatagramChannel;

    sget-object v6, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/channels/DatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    goto :goto_13

    .line 127
    :cond_21
    move-object v5, p0

    check-cast v5, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v5}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    .line 124
    :goto_13
    nop

    .line 123
    .end local v0    # "it":I
    .end local v4    # "$i$a$-let-JavaSocketOptionsKt$assignOptions$9":I
    nop

    .line 130
    :cond_22
    move-object v0, p1

    check-cast v0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    invoke-virtual {v0}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->getSendBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 143
    .local v4, "it":I
    const/4 v5, 0x0

    .line 130
    .local v5, "$i$a$-takeIf-JavaSocketOptionsKt$assignOptions$10":I
    if-lez v4, :cond_23

    move v2, v3

    .end local v4    # "it":I
    .end local v5    # "$i$a$-takeIf-JavaSocketOptionsKt$assignOptions$10":I
    :cond_23
    if-eqz v2, :cond_24

    move-object v1, v0

    :cond_24
    if-eqz v1, :cond_26

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    .restart local v0    # "it":I
    const/4 v1, 0x0

    .line 131
    .local v1, "$i$a$-let-JavaSocketOptionsKt$assignOptions$11":I
    sget-boolean v2, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v2, :cond_25

    .line 132
    move-object v2, p0

    check-cast v2, Ljava/nio/channels/DatagramChannel;

    sget-object v3, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/DatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    goto :goto_14

    .line 134
    :cond_25
    move-object v2, p0

    check-cast v2, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v2}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->setSendBufferSize(I)V

    .line 131
    :goto_14
    nop

    .line 130
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-JavaSocketOptionsKt$assignOptions$11":I
    nop

    .line 139
    :cond_26
    return-void
.end method

.method public static final getJava7NetworkApisAvailable()Z
    .locals 1

    .line 13
    sget-boolean v0, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    return v0
.end method

.method public static final nonBlocking(Ljava/nio/channels/SelectableChannel;)V
    .locals 1
    .param p0, "$this$nonBlocking"    # Ljava/nio/channels/SelectableChannel;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 22
    return-void
.end method
