.class public Lio/netty/channel/unix/Socket;
.super Lio/netty/channel/unix/FileDescriptor;
.source "Socket.java"


# static fields
.field public static final UDS_SUN_PATH_SIZE:I = 0x64
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static volatile isIpv6Preferred:Z


# instance fields
.field protected final ipv6:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "fd"    # I

    .line 56
    invoke-direct {p0, p1}, Lio/netty/channel/unix/FileDescriptor;-><init>(I)V

    .line 57
    invoke-static {p1}, Lio/netty/channel/unix/Socket;->isIPv6(I)Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    .line 58
    return-void
.end method

.method private static native accept(I[B)I
.end method

.method private static native bind(IZ[BII)I
.end method

.method private static native bindDomainSocket(I[B)I
.end method

.method private static native connect(IZ[BII)I
.end method

.method private static native connectDomainSocket(I[B)I
.end method

.method private static native disconnect(IZ)I
.end method

.method private static native finishConnect(I)I
.end method

.method private static native getIntOpt(III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getRawOptAddress(IIIJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getRawOptArray(III[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getReceiveBufferSize(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getSendBufferSize(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getSoError(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getSoLinger(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTrafficClass(IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static initialize()V
    .locals 1

    .line 584
    invoke-static {}, Lio/netty/util/NetUtil;->isIpV4StackPreferred()Z

    move-result v0

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isIPv6Preferred0(Z)Z

    move-result v0

    sput-boolean v0, Lio/netty/channel/unix/Socket;->isIpv6Preferred:Z

    .line 585
    return-void
.end method

.method private static native isBroadcast(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isIPv6(I)Z
.end method

.method public static isIPv6Preferred()Z
    .locals 1

    .line 548
    sget-boolean v0, Lio/netty/channel/unix/Socket;->isIpv6Preferred:Z

    return v0
.end method

.method private static native isIPv6Preferred0(Z)Z
.end method

.method private static native isKeepAlive(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isReuseAddress(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isReusePort(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isTcpNoDelay(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native listen(II)I
.end method

.method private static native localAddress(I)[B
.end method

.method private static native localDomainSocketAddress(I)[B
.end method

.method private static native msgFastopen()I
.end method

.method public static newSocketDgram()Lio/netty/channel/unix/Socket;
    .locals 2

    .line 572
    new-instance v0, Lio/netty/channel/unix/Socket;

    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketDgram0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/Socket;-><init>(I)V

    return-object v0
.end method

.method protected static newSocketDgram0()I
    .locals 1

    .line 604
    invoke-static {}, Lio/netty/channel/unix/Socket;->isIPv6Preferred()Z

    move-result v0

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->newSocketDgram0(Z)I

    move-result v0

    return v0
.end method

.method protected static newSocketDgram0(Lio/netty/channel/socket/InternetProtocolFamily;)I
    .locals 1
    .param p0, "family"    # Lio/netty/channel/socket/InternetProtocolFamily;

    .line 608
    invoke-static {p0}, Lio/netty/channel/unix/Socket;->shouldUseIpv6(Lio/netty/channel/socket/InternetProtocolFamily;)Z

    move-result v0

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->newSocketDgram0(Z)I

    move-result v0

    return v0
.end method

.method protected static newSocketDgram0(Z)I
    .locals 3
    .param p0, "ipv6"    # Z

    .line 612
    invoke-static {p0}, Lio/netty/channel/unix/Socket;->newSocketDgramFd(Z)I

    move-result v0

    .line 613
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 616
    return v0

    .line 614
    :cond_0
    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "newSocketDgram"

    invoke-static {v2, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static native newSocketDgramFd(Z)I
.end method

.method public static newSocketDomain()Lio/netty/channel/unix/Socket;
    .locals 2

    .line 576
    new-instance v0, Lio/netty/channel/unix/Socket;

    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketDomain0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/Socket;-><init>(I)V

    return-object v0
.end method

.method protected static newSocketDomain0()I
    .locals 3

    .line 620
    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketDomainFd()I

    move-result v0

    .line 621
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 624
    return v0

    .line 622
    :cond_0
    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "newSocketDomain"

    invoke-static {v2, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static newSocketDomainDgram()Lio/netty/channel/unix/Socket;
    .locals 2

    .line 580
    new-instance v0, Lio/netty/channel/unix/Socket;

    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketDomainDgram0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/Socket;-><init>(I)V

    return-object v0
.end method

.method protected static newSocketDomainDgram0()I
    .locals 3

    .line 628
    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketDomainDgramFd()I

    move-result v0

    .line 629
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 632
    return v0

    .line 630
    :cond_0
    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "newSocketDomainDgram"

    invoke-static {v2, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static native newSocketDomainDgramFd()I
.end method

.method private static native newSocketDomainFd()I
.end method

.method public static newSocketStream()Lio/netty/channel/unix/Socket;
    .locals 2

    .line 568
    new-instance v0, Lio/netty/channel/unix/Socket;

    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketStream0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/Socket;-><init>(I)V

    return-object v0
.end method

.method protected static newSocketStream0()I
    .locals 1

    .line 588
    invoke-static {}, Lio/netty/channel/unix/Socket;->isIPv6Preferred()Z

    move-result v0

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->newSocketStream0(Z)I

    move-result v0

    return v0
.end method

.method protected static newSocketStream0(Lio/netty/channel/socket/InternetProtocolFamily;)I
    .locals 1
    .param p0, "protocol"    # Lio/netty/channel/socket/InternetProtocolFamily;

    .line 592
    invoke-static {p0}, Lio/netty/channel/unix/Socket;->shouldUseIpv6(Lio/netty/channel/socket/InternetProtocolFamily;)Z

    move-result v0

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->newSocketStream0(Z)I

    move-result v0

    return v0
.end method

.method protected static newSocketStream0(Z)I
    .locals 3
    .param p0, "ipv6"    # Z

    .line 596
    invoke-static {p0}, Lio/netty/channel/unix/Socket;->newSocketStreamFd(Z)I

    move-result v0

    .line 597
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 600
    return v0

    .line 598
    :cond_0
    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "newSocketStream"

    invoke-static {v2, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static native newSocketStreamFd(Z)I
.end method

.method private static native recv(ILjava/nio/ByteBuffer;II)I
.end method

.method private static native recvAddress(IJII)I
.end method

.method private static native recvFd(I)I
.end method

.method private static native recvFrom(ILjava/nio/ByteBuffer;II)Lio/netty/channel/unix/DatagramSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native recvFromAddress(IJII)Lio/netty/channel/unix/DatagramSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native recvFromAddressDomainSocket(IJII)Lio/netty/channel/unix/DomainDatagramSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native recvFromDomainSocket(ILjava/nio/ByteBuffer;II)Lio/netty/channel/unix/DomainDatagramSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native remoteAddress(I)[B
.end method

.method private static native remoteDomainSocketAddress(I)[B
.end method

.method private static native send(ILjava/nio/ByteBuffer;II)I
.end method

.method private static native sendAddress(IJII)I
.end method

.method private static native sendFd(II)I
.end method

.method private static native sendTo(IZLjava/nio/ByteBuffer;II[BIII)I
.end method

.method private static native sendToAddress(IZJII[BIII)I
.end method

.method private static native sendToAddressDomainSocket(IJII[B)I
.end method

.method private static native sendToAddresses(IZJI[BIII)I
.end method

.method private static native sendToAddressesDomainSocket(IJI[B)I
.end method

.method private static native sendToDomainSocket(ILjava/nio/ByteBuffer;II[B)I
.end method

.method private static native setBroadcast(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setIntOpt(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setKeepAlive(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setRawOptAddress(IIIJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setRawOptArray(III[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setReceiveBufferSize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setReuseAddress(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setReusePort(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setSendBufferSize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setSoLinger(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpNoDelay(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTrafficClass(IZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static shouldUseIpv6(Lio/netty/channel/socket/InternetProtocolFamily;)Z
    .locals 1
    .param p0, "family"    # Lio/netty/channel/socket/InternetProtocolFamily;

    .line 552
    if-nez p0, :cond_0

    invoke-static {}, Lio/netty/channel/unix/Socket;->isIPv6Preferred()Z

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/channel/socket/InternetProtocolFamily;->IPv6:Lio/netty/channel/socket/InternetProtocolFamily;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static native shutdown(IZZ)I
.end method

.method protected static useIpv6(Lio/netty/channel/unix/Socket;Ljava/net/InetAddress;)Z
    .locals 1
    .param p0, "socket"    # Lio/netty/channel/unix/Socket;
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 71
    iget-boolean v0, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private useIpv6(Ljava/net/InetAddress;)Z
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 63
    invoke-static {p0, p1}, Lio/netty/channel/unix/Socket;->useIpv6(Lio/netty/channel/unix/Socket;Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final accept([B)I
    .locals 2
    .param p1, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->accept(I[B)I

    move-result v0

    .line 400
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 401
    return v0

    .line 403
    :cond_0
    sget v1, Lio/netty/channel/unix/Errors;->ERRNO_EAGAIN_NEGATIVE:I

    if-eq v0, v1, :cond_2

    sget v1, Lio/netty/channel/unix/Errors;->ERRNO_EWOULDBLOCK_NEGATIVE:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 407
    :cond_1
    const-string v1, "accept"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v1

    throw v1

    .line 405
    :cond_2
    :goto_0
    const/4 v1, -0x1

    return v1
.end method

.method public final bind(Ljava/net/SocketAddress;)V
    .locals 9
    .param p1, "socketAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    const-string v1, "bind"

    if-eqz v0, :cond_1

    .line 373
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 374
    .local v0, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 375
    .local v2, "inetAddress":Ljava/net/InetAddress;
    invoke-static {v2}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v3

    .line 376
    .local v3, "address":Lio/netty/channel/unix/NativeInetAddress;
    iget v4, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-direct {p0, v2}, Lio/netty/channel/unix/Socket;->useIpv6(Ljava/net/InetAddress;)Z

    move-result v5

    iget-object v6, v3, Lio/netty/channel/unix/NativeInetAddress;->address:[B

    iget v7, v3, Lio/netty/channel/unix/NativeInetAddress;->scopeId:I

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Lio/netty/channel/unix/Socket;->bind(IZ[BII)I

    move-result v4

    .line 377
    .local v4, "res":I
    if-ltz v4, :cond_0

    .line 380
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    .end local v3    # "address":Lio/netty/channel/unix/NativeInetAddress;
    .end local v4    # "res":I
    goto :goto_0

    .line 378
    .restart local v0    # "addr":Ljava/net/InetSocketAddress;
    .restart local v2    # "inetAddress":Ljava/net/InetAddress;
    .restart local v3    # "address":Lio/netty/channel/unix/NativeInetAddress;
    .restart local v4    # "res":I
    :cond_0
    invoke-static {v1, v4}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v1

    throw v1

    .line 380
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    .end local v3    # "address":Lio/netty/channel/unix/NativeInetAddress;
    .end local v4    # "res":I
    :cond_1
    instance-of v0, p1, Lio/netty/channel/unix/DomainSocketAddress;

    if-eqz v0, :cond_3

    .line 381
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    .line 382
    .local v0, "addr":Lio/netty/channel/unix/DomainSocketAddress;
    iget v2, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-virtual {v0}, Lio/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lio/netty/channel/unix/Socket;->bindDomainSocket(I[B)I

    move-result v2

    .line 383
    .local v2, "res":I
    if-ltz v2, :cond_2

    .line 386
    .end local v0    # "addr":Lio/netty/channel/unix/DomainSocketAddress;
    .end local v2    # "res":I
    nop

    .line 389
    :goto_0
    return-void

    .line 384
    .restart local v0    # "addr":Lio/netty/channel/unix/DomainSocketAddress;
    .restart local v2    # "res":I
    :cond_2
    invoke-static {v1, v2}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v1

    throw v1

    .line 387
    .end local v0    # "addr":Lio/netty/channel/unix/DomainSocketAddress;
    .end local v2    # "res":I
    :cond_3
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected SocketAddress implementation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final connect(Ljava/net/SocketAddress;)Z
    .locals 8
    .param p1, "socketAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 340
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 341
    .local v0, "inetSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 342
    .local v1, "inetAddress":Ljava/net/InetAddress;
    invoke-static {v1}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v2

    .line 343
    .local v2, "address":Lio/netty/channel/unix/NativeInetAddress;
    iget v3, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-direct {p0, v1}, Lio/netty/channel/unix/Socket;->useIpv6(Ljava/net/InetAddress;)Z

    move-result v4

    iget-object v5, v2, Lio/netty/channel/unix/NativeInetAddress;->address:[B

    iget v6, v2, Lio/netty/channel/unix/NativeInetAddress;->scopeId:I

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Lio/netty/channel/unix/Socket;->connect(IZ[BII)I

    move-result v0

    .line 344
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    .end local v2    # "address":Lio/netty/channel/unix/NativeInetAddress;
    .local v0, "res":I
    goto :goto_0

    .end local v0    # "res":I
    :cond_0
    instance-of v0, p1, Lio/netty/channel/unix/DomainSocketAddress;

    if-eqz v0, :cond_2

    .line 345
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    .line 346
    .local v0, "unixDomainSocketAddress":Lio/netty/channel/unix/DomainSocketAddress;
    iget v1, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-virtual {v0}, Lio/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/channel/unix/Socket;->connectDomainSocket(I[B)I

    move-result v0

    .line 347
    .local v0, "res":I
    nop

    .line 350
    :goto_0
    if-gez v0, :cond_1

    .line 351
    const-string v1, "connect"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->handleConnectErrno(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 353
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 348
    .end local v0    # "res":I
    :cond_2
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected SocketAddress implementation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final disconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    iget-boolean v1, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    invoke-static {v0, v1}, Lio/netty/channel/unix/Socket;->disconnect(IZ)I

    move-result v0

    .line 366
    .local v0, "res":I
    if-gez v0, :cond_0

    .line 367
    const-string v1, "disconnect"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->handleConnectErrno(Ljava/lang/String;I)Z

    .line 369
    :cond_0
    return-void
.end method

.method public final finishConnect()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->finishConnect(I)I

    move-result v0

    .line 358
    .local v0, "res":I
    if-gez v0, :cond_0

    .line 359
    const-string v1, "finishConnect"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->handleConnectErrno(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 361
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getIntOpt(II)I
    .locals 1
    .param p1, "level"    # I
    .param p2, "optname"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1, p2}, Lio/netty/channel/unix/Socket;->getIntOpt(III)I

    move-result v0

    return v0
.end method

.method public getRawOpt(IILjava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "level"    # I
    .param p2, "optname"    # I
    .param p3, "out"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget v1, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {p3}, Lio/netty/channel/unix/Buffer;->memoryAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v4, v2

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lio/netty/channel/unix/Socket;->getRawOptAddress(IIIJI)V

    goto :goto_0

    .line 537
    :cond_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    iget v1, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int v5, v0, v2

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lio/netty/channel/unix/Socket;->getRawOptArray(III[BII)V

    goto :goto_0

    .line 540
    :cond_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 541
    .local v0, "outArray":[B
    iget v1, p0, Lio/netty/channel/unix/Socket;->fd:I

    const/4 v5, 0x0

    array-length v6, v0

    move v2, p1

    move v3, p2

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lio/netty/channel/unix/Socket;->getRawOptArray(III[BII)V

    .line 542
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 544
    .end local v0    # "outArray":[B
    :goto_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 545
    return-void
.end method

.method public final getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->getReceiveBufferSize(I)I

    move-result v0

    return v0
.end method

.method public final getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->getSendBufferSize(I)I

    move-result v0

    return v0
.end method

.method public final getSoError()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->getSoError(I)I

    move-result v0

    return v0
.end method

.method public final getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->getSoLinger(I)I

    move-result v0

    return v0
.end method

.method public final getTrafficClass()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    iget-boolean v1, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    invoke-static {v0, v1}, Lio/netty/channel/unix/Socket;->getTrafficClass(IZ)I

    move-result v0

    return v0
.end method

.method public final isBroadcast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isBroadcast(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInputShutdown()Z
    .locals 1

    .line 116
    iget v0, p0, Lio/netty/channel/unix/Socket;->state:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isInputShutdown(I)Z

    move-result v0

    return v0
.end method

.method public final isKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isKeepAlive(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isOutputShutdown()Z
    .locals 1

    .line 120
    iget v0, p0, Lio/netty/channel/unix/Socket;->state:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isOutputShutdown(I)Z

    move-result v0

    return v0
.end method

.method public final isReuseAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isReuseAddress(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isReusePort()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isReusePort(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isShutdown()Z
    .locals 2

    .line 111
    iget v0, p0, Lio/netty/channel/unix/Socket;->state:I

    .line 112
    .local v0, "state":I
    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isInputShutdown(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isOutputShutdown(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isTcpNoDelay(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final listen(I)V
    .locals 2
    .param p1, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->listen(II)I

    move-result v0

    .line 393
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 396
    return-void

    .line 394
    :cond_0
    const-string v1, "listen"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v1

    throw v1
.end method

.method public final localAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 423
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->localAddress(I)[B

    move-result-object v0

    .line 426
    .local v0, "addr":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lio/netty/channel/unix/NativeInetAddress;->address([BII)Ljava/net/InetSocketAddress;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public final localDomainSocketAddress()Lio/netty/channel/unix/DomainSocketAddress;
    .locals 3

    .line 430
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->localDomainSocketAddress(I)[B

    move-result-object v0

    .line 431
    .local v0, "addr":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/netty/channel/unix/DomainSocketAddress;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lio/netty/channel/unix/DomainSocketAddress;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public recv(Ljava/nio/ByteBuffer;II)I
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lio/netty/channel/unix/Socket;->intValue()I

    move-result v0

    invoke-static {v0, p1, p2, p3}, Lio/netty/channel/unix/Socket;->recv(ILjava/nio/ByteBuffer;II)I

    move-result v0

    .line 273
    .local v0, "res":I
    if-lez v0, :cond_0

    .line 274
    return v0

    .line 276
    :cond_0
    if-nez v0, :cond_1

    .line 277
    const/4 v1, -0x1

    return v1

    .line 279
    :cond_1
    const-string v1, "recv"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public recvAddress(JII)I
    .locals 2
    .param p1, "address"    # J
    .param p3, "pos"    # I
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Lio/netty/channel/unix/Socket;->intValue()I

    move-result v0

    invoke-static {v0, p1, p2, p3, p4}, Lio/netty/channel/unix/Socket;->recvAddress(IJII)I

    move-result v0

    .line 284
    .local v0, "res":I
    if-lez v0, :cond_0

    .line 285
    return v0

    .line 287
    :cond_0
    if-nez v0, :cond_1

    .line 288
    const/4 v1, -0x1

    return v1

    .line 290
    :cond_1
    const-string v1, "recvAddress"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public final recvFd()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->recvFd(I)I

    move-result v0

    .line 311
    .local v0, "res":I
    if-lez v0, :cond_0

    .line 312
    return v0

    .line 314
    :cond_0
    if-nez v0, :cond_1

    .line 315
    const/4 v1, -0x1

    return v1

    .line 318
    :cond_1
    sget v1, Lio/netty/channel/unix/Errors;->ERRNO_EAGAIN_NEGATIVE:I

    if-eq v0, v1, :cond_3

    sget v1, Lio/netty/channel/unix/Errors;->ERRNO_EWOULDBLOCK_NEGATIVE:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 322
    :cond_2
    const-string v1, "recvFd"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v1

    throw v1

    .line 320
    :cond_3
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public final recvFrom(Ljava/nio/ByteBuffer;II)Lio/netty/channel/unix/DatagramSocketAddress;
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1, p2, p3}, Lio/netty/channel/unix/Socket;->recvFrom(ILjava/nio/ByteBuffer;II)Lio/netty/channel/unix/DatagramSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final recvFromAddress(JII)Lio/netty/channel/unix/DatagramSocketAddress;
    .locals 1
    .param p1, "memoryAddress"    # J
    .param p3, "pos"    # I
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1, p2, p3, p4}, Lio/netty/channel/unix/Socket;->recvFromAddress(IJII)Lio/netty/channel/unix/DatagramSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final recvFromAddressDomainSocket(JII)Lio/netty/channel/unix/DomainDatagramSocketAddress;
    .locals 1
    .param p1, "memoryAddress"    # J
    .param p3, "pos"    # I
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1, p2, p3, p4}, Lio/netty/channel/unix/Socket;->recvFromAddressDomainSocket(IJII)Lio/netty/channel/unix/DomainDatagramSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final recvFromDomainSocket(Ljava/nio/ByteBuffer;II)Lio/netty/channel/unix/DomainDatagramSocketAddress;
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1, p2, p3}, Lio/netty/channel/unix/Socket;->recvFromDomainSocket(ILjava/nio/ByteBuffer;II)Lio/netty/channel/unix/DomainDatagramSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final remoteAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 411
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->remoteAddress(I)[B

    move-result-object v0

    .line 414
    .local v0, "addr":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lio/netty/channel/unix/NativeInetAddress;->address([BII)Ljava/net/InetSocketAddress;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public final remoteDomainSocketAddress()Lio/netty/channel/unix/DomainSocketAddress;
    .locals 3

    .line 418
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->remoteDomainSocketAddress(I)[B

    move-result-object v0

    .line 419
    .local v0, "addr":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/netty/channel/unix/DomainSocketAddress;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lio/netty/channel/unix/DomainSocketAddress;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public send(Ljava/nio/ByteBuffer;II)I
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lio/netty/channel/unix/Socket;->intValue()I

    move-result v0

    invoke-static {v0, p1, p2, p3}, Lio/netty/channel/unix/Socket;->send(ILjava/nio/ByteBuffer;II)I

    move-result v0

    .line 295
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 296
    return v0

    .line 298
    :cond_0
    const-string v1, "send"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public sendAddress(JII)I
    .locals 2
    .param p1, "address"    # J
    .param p3, "pos"    # I
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lio/netty/channel/unix/Socket;->intValue()I

    move-result v0

    invoke-static {v0, p1, p2, p3, p4}, Lio/netty/channel/unix/Socket;->sendAddress(IJII)I

    move-result v0

    .line 303
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 304
    return v0

    .line 306
    :cond_0
    const-string v1, "sendAddress"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public final sendFd(I)I
    .locals 2
    .param p1, "fdToSend"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->sendFd(II)I

    move-result v0

    .line 327
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 328
    return v0

    .line 330
    :cond_0
    sget v1, Lio/netty/channel/unix/Errors;->ERRNO_EAGAIN_NEGATIVE:I

    if-eq v0, v1, :cond_2

    sget v1, Lio/netty/channel/unix/Errors;->ERRNO_EWOULDBLOCK_NEGATIVE:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 334
    :cond_1
    const-string v1, "sendFd"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v1

    throw v1

    .line 332
    :cond_2
    :goto_0
    const/4 v1, -0x1

    return v1
.end method

.method public final sendTo(Ljava/nio/ByteBuffer;IILjava/net/InetAddress;I)I
    .locals 7
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "addr"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lio/netty/channel/unix/Socket;->sendTo(Ljava/nio/ByteBuffer;IILjava/net/InetAddress;IZ)I

    move-result v0

    return v0
.end method

.method public final sendTo(Ljava/nio/ByteBuffer;IILjava/net/InetAddress;IZ)I
    .locals 14
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "addr"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .param p6, "fastOpen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    move-object v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    .line 134
    invoke-virtual/range {p4 .. p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 135
    .local v2, "address":[B
    move-object v3, v1

    check-cast v3, Ljava/net/Inet6Address;

    invoke-virtual {v3}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v3

    .local v3, "scopeId":I
    goto :goto_0

    .line 138
    .end local v2    # "address":[B
    .end local v3    # "scopeId":I
    :cond_0
    const/4 v3, 0x0

    .line 139
    .restart local v3    # "scopeId":I
    invoke-virtual/range {p4 .. p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-static {v2}, Lio/netty/channel/unix/NativeInetAddress;->ipv4MappedIpv6Address([B)[B

    move-result-object v2

    .line 141
    .restart local v2    # "address":[B
    :goto_0
    const/4 v13, 0x0

    if-eqz p6, :cond_1

    invoke-static {}, Lio/netty/channel/unix/Socket;->msgFastopen()I

    move-result v4

    move v12, v4

    goto :goto_1

    :cond_1
    move v12, v13

    .line 142
    .local v12, "flags":I
    :goto_1
    iget v4, v0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-direct {p0, v1}, Lio/netty/channel/unix/Socket;->useIpv6(Ljava/net/InetAddress;)Z

    move-result v5

    move-object v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object v9, v2

    move v10, v3

    move/from16 v11, p5

    invoke-static/range {v4 .. v12}, Lio/netty/channel/unix/Socket;->sendTo(IZLjava/nio/ByteBuffer;II[BIII)I

    move-result v4

    .line 143
    .local v4, "res":I
    if-ltz v4, :cond_2

    .line 144
    return v4

    .line 146
    :cond_2
    sget v5, Lio/netty/channel/unix/Errors;->ERRNO_EINPROGRESS_NEGATIVE:I

    if-ne v4, v5, :cond_3

    if-eqz p6, :cond_3

    .line 150
    return v13

    .line 152
    :cond_3
    sget v5, Lio/netty/channel/unix/Errors;->ERROR_ECONNREFUSED_NEGATIVE:I

    if-eq v4, v5, :cond_4

    .line 155
    const-string v5, "sendTo"

    invoke-static {v5, v4}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v5

    return v5

    .line 153
    :cond_4
    new-instance v5, Ljava/net/PortUnreachableException;

    const-string v6, "sendTo failed"

    invoke-direct {v5, v6}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final sendToAddress(JIILjava/net/InetAddress;I)I
    .locals 8
    .param p1, "memoryAddress"    # J
    .param p3, "pos"    # I
    .param p4, "limit"    # I
    .param p5, "addr"    # Ljava/net/InetAddress;
    .param p6, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lio/netty/channel/unix/Socket;->sendToAddress(JIILjava/net/InetAddress;IZ)I

    move-result v0

    return v0
.end method

.method public final sendToAddress(JIILjava/net/InetAddress;IZ)I
    .locals 15
    .param p1, "memoryAddress"    # J
    .param p3, "pos"    # I
    .param p4, "limit"    # I
    .param p5, "addr"    # Ljava/net/InetAddress;
    .param p6, "port"    # I
    .param p7, "fastOpen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    move-object v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    .line 178
    invoke-virtual/range {p5 .. p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 179
    .local v2, "address":[B
    move-object v3, v1

    check-cast v3, Ljava/net/Inet6Address;

    invoke-virtual {v3}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v3

    .local v3, "scopeId":I
    goto :goto_0

    .line 182
    .end local v2    # "address":[B
    .end local v3    # "scopeId":I
    :cond_0
    const/4 v3, 0x0

    .line 183
    .restart local v3    # "scopeId":I
    invoke-virtual/range {p5 .. p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-static {v2}, Lio/netty/channel/unix/NativeInetAddress;->ipv4MappedIpv6Address([B)[B

    move-result-object v2

    .line 185
    .restart local v2    # "address":[B
    :goto_0
    const/4 v14, 0x0

    if-eqz p7, :cond_1

    invoke-static {}, Lio/netty/channel/unix/Socket;->msgFastopen()I

    move-result v4

    move v13, v4

    goto :goto_1

    :cond_1
    move v13, v14

    .line 186
    .local v13, "flags":I
    :goto_1
    iget v4, v0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-direct {p0, v1}, Lio/netty/channel/unix/Socket;->useIpv6(Ljava/net/InetAddress;)Z

    move-result v5

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move-object v10, v2

    move v11, v3

    move/from16 v12, p6

    invoke-static/range {v4 .. v13}, Lio/netty/channel/unix/Socket;->sendToAddress(IZJII[BIII)I

    move-result v4

    .line 187
    .local v4, "res":I
    if-ltz v4, :cond_2

    .line 188
    return v4

    .line 190
    :cond_2
    sget v5, Lio/netty/channel/unix/Errors;->ERRNO_EINPROGRESS_NEGATIVE:I

    if-ne v4, v5, :cond_3

    if-eqz p7, :cond_3

    .line 194
    return v14

    .line 196
    :cond_3
    sget v5, Lio/netty/channel/unix/Errors;->ERROR_ECONNREFUSED_NEGATIVE:I

    if-eq v4, v5, :cond_4

    .line 199
    const-string v5, "sendToAddress"

    invoke-static {v5, v4}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v5

    return v5

    .line 197
    :cond_4
    new-instance v5, Ljava/net/PortUnreachableException;

    const-string v6, "sendToAddress failed"

    invoke-direct {v5, v6}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final sendToAddressDomainSocket(JII[B)I
    .locals 6
    .param p1, "memoryAddress"    # J
    .param p3, "pos"    # I
    .param p4, "limit"    # I
    .param p5, "path"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lio/netty/channel/unix/Socket;->sendToAddressDomainSocket(IJII[B)I

    move-result v0

    .line 204
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 205
    return v0

    .line 207
    :cond_0
    const-string v1, "sendToAddressDomainSocket"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public final sendToAddresses(JILjava/net/InetAddress;I)I
    .locals 7
    .param p1, "memoryAddress"    # J
    .param p3, "length"    # I
    .param p4, "addr"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lio/netty/channel/unix/Socket;->sendToAddresses(JILjava/net/InetAddress;IZ)I

    move-result v0

    return v0
.end method

.method public final sendToAddresses(JILjava/net/InetAddress;IZ)I
    .locals 14
    .param p1, "memoryAddress"    # J
    .param p3, "length"    # I
    .param p4, "addr"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .param p6, "fastOpen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    move-object v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual/range {p4 .. p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 222
    .local v2, "address":[B
    move-object v3, v1

    check-cast v3, Ljava/net/Inet6Address;

    invoke-virtual {v3}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v3

    .local v3, "scopeId":I
    goto :goto_0

    .line 225
    .end local v2    # "address":[B
    .end local v3    # "scopeId":I
    :cond_0
    const/4 v3, 0x0

    .line 226
    .restart local v3    # "scopeId":I
    invoke-virtual/range {p4 .. p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-static {v2}, Lio/netty/channel/unix/NativeInetAddress;->ipv4MappedIpv6Address([B)[B

    move-result-object v2

    .line 228
    .restart local v2    # "address":[B
    :goto_0
    const/4 v13, 0x0

    if-eqz p6, :cond_1

    invoke-static {}, Lio/netty/channel/unix/Socket;->msgFastopen()I

    move-result v4

    move v12, v4

    goto :goto_1

    :cond_1
    move v12, v13

    .line 229
    .local v12, "flags":I
    :goto_1
    iget v4, v0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-direct {p0, v1}, Lio/netty/channel/unix/Socket;->useIpv6(Ljava/net/InetAddress;)Z

    move-result v5

    move-wide v6, p1

    move/from16 v8, p3

    move-object v9, v2

    move v10, v3

    move/from16 v11, p5

    invoke-static/range {v4 .. v12}, Lio/netty/channel/unix/Socket;->sendToAddresses(IZJI[BIII)I

    move-result v4

    .line 230
    .local v4, "res":I
    if-ltz v4, :cond_2

    .line 231
    return v4

    .line 233
    :cond_2
    sget v5, Lio/netty/channel/unix/Errors;->ERRNO_EINPROGRESS_NEGATIVE:I

    if-ne v4, v5, :cond_3

    if-eqz p6, :cond_3

    .line 237
    return v13

    .line 239
    :cond_3
    sget v5, Lio/netty/channel/unix/Errors;->ERROR_ECONNREFUSED_NEGATIVE:I

    if-eq v4, v5, :cond_4

    .line 242
    const-string v5, "sendToAddresses"

    invoke-static {v5, v4}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v5

    return v5

    .line 240
    :cond_4
    new-instance v5, Ljava/net/PortUnreachableException;

    const-string v6, "sendToAddresses failed"

    invoke-direct {v5, v6}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final sendToAddressesDomainSocket(JI[B)I
    .locals 2
    .param p1, "memoryAddress"    # J
    .param p3, "length"    # I
    .param p4, "path"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1, p2, p3, p4}, Lio/netty/channel/unix/Socket;->sendToAddressesDomainSocket(IJI[B)I

    move-result v0

    .line 247
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 248
    return v0

    .line 250
    :cond_0
    const-string v1, "sendToAddressesDomainSocket"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public final sendToDomainSocket(Ljava/nio/ByteBuffer;II[B)I
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "path"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1, p2, p3, p4}, Lio/netty/channel/unix/Socket;->sendToDomainSocket(ILjava/nio/ByteBuffer;II[B)I

    move-result v0

    .line 160
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 161
    return v0

    .line 163
    :cond_0
    const-string v1, "sendToDomainSocket"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public final setBroadcast(Z)V
    .locals 1
    .param p1, "broadcast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setBroadcast(II)V

    .line 504
    return-void
.end method

.method public setIntOpt(III)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "optname"    # I
    .param p3, "optvalue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1, p2, p3}, Lio/netty/channel/unix/Socket;->setIntOpt(IIII)V

    .line 512
    return-void
.end method

.method public final setKeepAlive(Z)V
    .locals 1
    .param p1, "keepAlive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 475
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setKeepAlive(II)V

    .line 476
    return-void
.end method

.method public setRawOpt(IILjava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "level"    # I
    .param p2, "optname"    # I
    .param p3, "optvalue"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 516
    .local v0, "limit":I
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    iget v2, p0, Lio/netty/channel/unix/Socket;->fd:I

    .line 518
    invoke-static {p3}, Lio/netty/channel/unix/Buffer;->memoryAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v5, v1

    add-long/2addr v5, v3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 517
    move v3, p1

    move v4, p2

    invoke-static/range {v2 .. v7}, Lio/netty/channel/unix/Socket;->setRawOptAddress(IIIJI)V

    goto :goto_0

    .line 519
    :cond_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 520
    iget v2, p0, Lio/netty/channel/unix/Socket;->fd:I

    .line 521
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int v6, v1, v3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 520
    move v3, p1

    move v4, p2

    invoke-static/range {v2 .. v7}, Lio/netty/channel/unix/Socket;->setRawOptArray(III[BII)V

    goto :goto_0

    .line 523
    :cond_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 524
    .local v1, "bytes":[B
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 525
    iget v2, p0, Lio/netty/channel/unix/Socket;->fd:I

    const/4 v6, 0x0

    array-length v7, v1

    move v3, p1

    move v4, p2

    move-object v5, v1

    invoke-static/range {v2 .. v7}, Lio/netty/channel/unix/Socket;->setRawOptArray(III[BII)V

    .line 527
    .end local v1    # "bytes":[B
    :goto_0
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 528
    return-void
.end method

.method public final setReceiveBufferSize(I)V
    .locals 1
    .param p1, "receiveBufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setReceiveBufferSize(II)V

    .line 480
    return-void
.end method

.method public final setReuseAddress(Z)V
    .locals 1
    .param p1, "reuseAddress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setReuseAddress(II)V

    .line 496
    return-void
.end method

.method public final setReusePort(Z)V
    .locals 1
    .param p1, "reusePort"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setReusePort(II)V

    .line 500
    return-void
.end method

.method public final setSendBufferSize(I)V
    .locals 1
    .param p1, "sendBufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setSendBufferSize(II)V

    .line 484
    return-void
.end method

.method public final setSoLinger(I)V
    .locals 1
    .param p1, "soLinger"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setSoLinger(II)V

    .line 492
    return-void
.end method

.method public final setTcpNoDelay(Z)V
    .locals 1
    .param p1, "tcpNoDelay"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setTcpNoDelay(II)V

    .line 488
    return-void
.end method

.method public final setTrafficClass(I)V
    .locals 2
    .param p1, "trafficClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    iget-boolean v1, p0, Lio/netty/channel/unix/Socket;->ipv6:Z

    invoke-static {v0, v1, p1}, Lio/netty/channel/unix/Socket;->setTrafficClass(IZI)V

    .line 508
    return-void
.end method

.method public final shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lio/netty/channel/unix/Socket;->shutdown(ZZ)V

    .line 76
    return-void
.end method

.method public final shutdown(ZZ)V
    .locals 3
    .param p1, "read"    # Z
    .param p2, "write"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    nop

    :goto_0
    iget v0, p0, Lio/netty/channel/unix/Socket;->state:I

    .line 85
    .local v0, "oldState":I
    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isClosed(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 88
    move v1, v0

    .line 89
    .local v1, "newState":I
    if-eqz p1, :cond_0

    invoke-static {v1}, Lio/netty/channel/unix/Socket;->isInputShutdown(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    invoke-static {v1}, Lio/netty/channel/unix/Socket;->inputShutdown(I)I

    move-result v1

    .line 92
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {v1}, Lio/netty/channel/unix/Socket;->isOutputShutdown(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    invoke-static {v1}, Lio/netty/channel/unix/Socket;->outputShutdown(I)I

    move-result v1

    .line 97
    :cond_1
    if-ne v1, v0, :cond_2

    .line 98
    return-void

    .line 100
    :cond_2
    invoke-virtual {p0, v0, v1}, Lio/netty/channel/unix/Socket;->casState(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    nop

    .line 104
    .end local v0    # "oldState":I
    .end local v1    # "newState":I
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1, p2}, Lio/netty/channel/unix/Socket;->shutdown(IZZ)I

    move-result v0

    .line 105
    .local v0, "res":I
    if-gez v0, :cond_3

    .line 106
    const-string v1, "shutdown"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    .line 108
    :cond_3
    return-void

    .line 103
    .end local v0    # "res":I
    :cond_4
    goto :goto_0

    .line 86
    .local v0, "oldState":I
    :cond_5
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socket{fd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
