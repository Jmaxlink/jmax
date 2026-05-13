.class public final Lio/netty/channel/epoll/LinuxSocket;
.super Lio/netty/channel/unix/Socket;
.source "LinuxSocket.java"


# static fields
.field static final INET6_ANY:Ljava/net/InetAddress;

.field private static final INET_ANY:Ljava/net/InetAddress;

.field private static final MAX_UINT32_T:J = 0xffffffffL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, "::"

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->unsafeInetAddrByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/LinuxSocket;->INET6_ANY:Ljava/net/InetAddress;

    .line 45
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->unsafeInetAddrByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/LinuxSocket;->INET_ANY:Ljava/net/InetAddress;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "fd"    # I

    .line 49
    invoke-direct {p0, p1}, Lio/netty/channel/unix/Socket;-><init>(I)V

    .line 50
    return-void
.end method

.method private static native bindVSock(III)I
.end method

.method private static native connectVSock(III)I
.end method

.method private static deriveInetAddress(Ljava/net/NetworkInterface;Z)Ljava/net/InetAddress;
    .locals 4
    .param p0, "netInterface"    # Ljava/net/NetworkInterface;
    .param p1, "ipv6"    # Z

    .line 358
    if-eqz p1, :cond_0

    sget-object v0, Lio/netty/channel/epoll/LinuxSocket;->INET6_ANY:Ljava/net/InetAddress;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/channel/epoll/LinuxSocket;->INET_ANY:Ljava/net/InetAddress;

    .line 359
    .local v0, "ipAny":Ljava/net/InetAddress;
    :goto_0
    if-eqz p0, :cond_2

    .line 360
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 361
    .local v1, "ias":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 363
    .local v2, "ia":Ljava/net/InetAddress;
    instance-of v3, v2, Ljava/net/Inet6Address;

    .line 364
    .local v3, "isV6":Z
    if-ne v3, p1, :cond_1

    .line 365
    return-object v2

    .line 367
    .end local v2    # "ia":Ljava/net/InetAddress;
    .end local v3    # "isV6":Z
    :cond_1
    goto :goto_1

    .line 369
    .end local v1    # "ias":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    return-object v0
.end method

.method private static getIntAt([BI)I
    .locals 2
    .param p0, "array"    # [B
    .param p1, "startIndex"    # I

    .line 353
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static native getInterface(IZ)I
.end method

.method private static native getIpMulticastLoop(IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getPeerCredentials(I)Lio/netty/channel/unix/PeerCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getSoBusyPoll(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpDeferAccept(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpInfo(I[J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpKeepCnt(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpKeepIdle(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpKeepIntvl(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpNotSentLowAt(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpUserTimeout(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTimeToLive(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static inetAddress(I)Ljava/net/InetAddress;
    .locals 6
    .param p0, "value"    # I

    .line 109
    ushr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x4

    new-array v4, v4, [B

    const/4 v5, 0x0

    aput-byte v0, v4, v5

    const/4 v0, 0x1

    aput-byte v1, v4, v0

    const/4 v0, 0x2

    aput-byte v2, v4, v0

    const/4 v0, 0x3

    aput-byte v3, v4, v0

    move-object v0, v4

    .line 117
    .local v0, "var1":[B
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "ignore":Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    return-object v2
.end method

.method private static interfaceIndex(Ljava/net/InetAddress;)I
    .locals 2
    .param p0, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 161
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 162
    .local v0, "iface":Ljava/net/NetworkInterface;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v1

    return v1

    .line 166
    .end local v0    # "iface":Ljava/net/NetworkInterface;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private static interfaceIndex(Ljava/net/NetworkInterface;)I
    .locals 2
    .param p0, "networkInterface"    # Ljava/net/NetworkInterface;

    .line 156
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private static native isIpFreeBind(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isIpRecvOrigDestAddr(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isIpTransparent(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isTcpCork(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isTcpQuickAck(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isUdpGro(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native joinGroup(IZ[B[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native joinSsmGroup(IZ[B[BII[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native leaveGroup(IZ[B[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native leaveSsmGroup(IZ[B[BII[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native localVSockAddress(I)[B
.end method

.method public static newSocket(I)Lio/netty/channel/epoll/LinuxSocket;
    .locals 1
    .param p0, "fd"    # I

    .line 373
    new-instance v0, Lio/netty/channel/epoll/LinuxSocket;

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/LinuxSocket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketDgram()Lio/netty/channel/epoll/LinuxSocket;
    .locals 1

    .line 409
    invoke-static {}, Lio/netty/channel/epoll/LinuxSocket;->isIPv6Preferred()Z

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->newSocketDgram(Z)Lio/netty/channel/epoll/LinuxSocket;

    move-result-object v0

    return-object v0
.end method

.method public static newSocketDgram(Lio/netty/channel/socket/InternetProtocolFamily;)Lio/netty/channel/epoll/LinuxSocket;
    .locals 2
    .param p0, "family"    # Lio/netty/channel/socket/InternetProtocolFamily;

    .line 405
    new-instance v0, Lio/netty/channel/epoll/LinuxSocket;

    invoke-static {p0}, Lio/netty/channel/epoll/LinuxSocket;->newSocketDgram0(Lio/netty/channel/socket/InternetProtocolFamily;)I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketDgram(Z)Lio/netty/channel/epoll/LinuxSocket;
    .locals 2
    .param p0, "ipv6"    # Z

    .line 401
    new-instance v0, Lio/netty/channel/epoll/LinuxSocket;

    invoke-static {p0}, Lio/netty/channel/epoll/LinuxSocket;->newSocketDgram0(Z)I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketDomain()Lio/netty/channel/epoll/LinuxSocket;
    .locals 2

    .line 413
    new-instance v0, Lio/netty/channel/epoll/LinuxSocket;

    invoke-static {}, Lio/netty/channel/epoll/LinuxSocket;->newSocketDomain0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketDomainDgram()Lio/netty/channel/epoll/LinuxSocket;
    .locals 2

    .line 417
    new-instance v0, Lio/netty/channel/epoll/LinuxSocket;

    invoke-static {}, Lio/netty/channel/epoll/LinuxSocket;->newSocketDomainDgram0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketStream()Lio/netty/channel/epoll/LinuxSocket;
    .locals 1

    .line 397
    invoke-static {}, Lio/netty/channel/epoll/LinuxSocket;->isIPv6Preferred()Z

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->newSocketStream(Z)Lio/netty/channel/epoll/LinuxSocket;

    move-result-object v0

    return-object v0
.end method

.method public static newSocketStream(Lio/netty/channel/socket/InternetProtocolFamily;)Lio/netty/channel/epoll/LinuxSocket;
    .locals 2
    .param p0, "protocol"    # Lio/netty/channel/socket/InternetProtocolFamily;

    .line 393
    new-instance v0, Lio/netty/channel/epoll/LinuxSocket;

    invoke-static {p0}, Lio/netty/channel/epoll/LinuxSocket;->newSocketStream0(Lio/netty/channel/socket/InternetProtocolFamily;)I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketStream(Z)Lio/netty/channel/epoll/LinuxSocket;
    .locals 2
    .param p0, "ipv6"    # Z

    .line 389
    new-instance v0, Lio/netty/channel/epoll/LinuxSocket;

    invoke-static {p0}, Lio/netty/channel/epoll/LinuxSocket;->newSocketStream0(Z)I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;-><init>(I)V

    return-object v0
.end method

.method public static newVSockStream()Lio/netty/channel/epoll/LinuxSocket;
    .locals 2

    .line 377
    new-instance v0, Lio/netty/channel/epoll/LinuxSocket;

    invoke-static {}, Lio/netty/channel/epoll/LinuxSocket;->newVSockStream0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;-><init>(I)V

    return-object v0
.end method

.method static newVSockStream0()I
    .locals 3

    .line 381
    invoke-static {}, Lio/netty/channel/epoll/LinuxSocket;->newVSockStreamFd()I

    move-result v0

    .line 382
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 385
    return v0

    .line 383
    :cond_0
    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "newVSockStream"

    invoke-static {v2, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static native newVSockStreamFd()I
.end method

.method private static native remoteVSockAddress(I)[B
.end method

.method private static native sendFile(ILio/netty/channel/DefaultFileRegion;JJJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setInterface(IZ[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setIpFreeBind(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setIpMulticastLoop(IZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setIpRecvOrigDestAddr(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setIpTransparent(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setSoBusyPoll(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpCork(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpDeferAccept(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpFastOpen(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpKeepCnt(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpKeepIdle(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpKeepIntvl(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpMd5Sig(IZ[BI[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpNotSentLowAt(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpQuickAck(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpUserTimeout(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTimeToLive(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setUdpGro(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static unsafeInetAddrByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "inetName"    # Ljava/lang/String;

    .line 422
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "uhe":Ljava/net/UnknownHostException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public bindVSock(Lio/netty/channel/epoll/VSockAddress;)V
    .locals 3
    .param p1, "address"    # Lio/netty/channel/epoll/VSockAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/channel/epoll/VSockAddress;->getCid()I

    move-result v1

    invoke-virtual {p1}, Lio/netty/channel/epoll/VSockAddress;->getPort()I

    move-result v2

    invoke-static {v0, v1, v2}, Lio/netty/channel/epoll/LinuxSocket;->bindVSock(III)I

    move-result v0

    .line 319
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 322
    return-void

    .line 320
    :cond_0
    const-string v1, "bindVSock"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v1

    throw v1
.end method

.method public connectVSock(Lio/netty/channel/epoll/VSockAddress;)Z
    .locals 3
    .param p1, "address"    # Lio/netty/channel/epoll/VSockAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/channel/epoll/VSockAddress;->getCid()I

    move-result v1

    invoke-virtual {p1}, Lio/netty/channel/epoll/VSockAddress;->getPort()I

    move-result v2

    invoke-static {v0, v1, v2}, Lio/netty/channel/epoll/LinuxSocket;->connectVSock(III)I

    move-result v0

    .line 326
    .local v0, "res":I
    if-gez v0, :cond_0

    .line 327
    const-string v1, "connectVSock"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->handleConnectErrno(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 329
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method family()Lio/netty/channel/socket/InternetProtocolFamily;
    .locals 1

    .line 53
    iget-boolean v0, p0, Lio/netty/channel/epoll/LinuxSocket;->ipv6:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/channel/socket/InternetProtocolFamily;->IPv6:Lio/netty/channel/socket/InternetProtocolFamily;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/channel/socket/InternetProtocolFamily;->IPv4:Lio/netty/channel/socket/InternetProtocolFamily;

    :goto_0
    return-object v0
.end method

.method getInterface()Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    .line 90
    .local v0, "inf":Ljava/net/NetworkInterface;
    if-eqz v0, :cond_0

    .line 91
    invoke-static {v0}, Lio/netty/util/internal/SocketUtils;->addressesFromNetworkInterface(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    move-result-object v1

    .line 92
    .local v1, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    return-object v2

    .line 96
    .end local v1    # "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getNetworkInterface()Ljava/net/NetworkInterface;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    iget-boolean v1, p0, Lio/netty/channel/epoll/LinuxSocket;->ipv6:Z

    invoke-static {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;->getInterface(IZ)I

    move-result v0

    .line 101
    .local v0, "ret":I
    iget-boolean v1, p0, Lio/netty/channel/epoll/LinuxSocket;->ipv6:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 102
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v1

    const/4 v3, 0x7

    if-lt v1, v3, :cond_0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    move-result-object v2

    :cond_0
    return-object v2

    .line 104
    :cond_1
    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->inetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    .line 105
    .local v1, "address":Ljava/net/InetAddress;
    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method getPeerCredentials()Lio/netty/channel/unix/PeerCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getPeerCredentials(I)Lio/netty/channel/unix/PeerCredentials;

    move-result-object v0

    return-object v0
.end method

.method getSoBusyPoll()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getSoBusyPoll(I)I

    move-result v0

    return v0
.end method

.method getTcpDeferAccept()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpDeferAccept(I)I

    move-result v0

    return v0
.end method

.method getTcpInfo(Lio/netty/channel/epoll/EpollTcpInfo;)V
    .locals 2
    .param p1, "info"    # Lio/netty/channel/epoll/EpollTcpInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    iget-object v1, p1, Lio/netty/channel/epoll/EpollTcpInfo;->info:[J

    invoke-static {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;->getTcpInfo(I[J)V

    .line 230
    return-void
.end method

.method getTcpKeepCnt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpKeepCnt(I)I

    move-result v0

    return v0
.end method

.method getTcpKeepIdle()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpKeepIdle(I)I

    move-result v0

    return v0
.end method

.method getTcpKeepIntvl()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpKeepIntvl(I)I

    move-result v0

    return v0
.end method

.method getTcpNotSentLowAt()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpNotSentLowAt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method getTcpUserTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpUserTimeout(I)I

    move-result v0

    return v0
.end method

.method getTimeToLive()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTimeToLive(I)I

    move-result v0

    return v0
.end method

.method isIpFreeBind()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->isIpFreeBind(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isIpRecvOrigDestAddr()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->isIpRecvOrigDestAddr(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isIpTransparent()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->isIpTransparent(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isLoopbackModeDisabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    iget-boolean v1, p0, Lio/netty/channel/epoll/LinuxSocket;->ipv6:Z

    invoke-static {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;->getIpMulticastLoop(IZ)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTcpCork()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->isTcpCork(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTcpQuickAck()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->isTcpQuickAck(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUdpGro()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->isUdpGro(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)V
    .locals 16
    .param p1, "group"    # Ljava/net/InetAddress;
    .param p2, "netInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v1

    .line 125
    .local v1, "g":Lio/netty/channel/unix/NativeInetAddress;
    move-object/from16 v2, p1

    instance-of v3, v2, Ljava/net/Inet6Address;

    .line 126
    .local v3, "isIpv6":Z
    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lio/netty/channel/epoll/LinuxSocket;->deriveInetAddress(Ljava/net/NetworkInterface;Z)Ljava/net/InetAddress;

    move-result-object v5

    invoke-static {v5}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v5

    .line 127
    .local v5, "i":Lio/netty/channel/unix/NativeInetAddress;
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p3, :cond_2

    .line 128
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_1

    .line 131
    invoke-static/range {p3 .. p3}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v8

    .line 132
    .local v8, "s":Lio/netty/channel/unix/NativeInetAddress;
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v9

    iget-boolean v10, v0, Lio/netty/channel/epoll/LinuxSocket;->ipv6:Z

    if-eqz v10, :cond_0

    if-eqz v3, :cond_0

    move v10, v6

    goto :goto_0

    :cond_0
    move v10, v7

    :goto_0
    invoke-virtual {v1}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v11

    invoke-virtual {v5}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v12

    .line 133
    invoke-virtual {v1}, Lio/netty/channel/unix/NativeInetAddress;->scopeId()I

    move-result v13

    invoke-static/range {p2 .. p2}, Lio/netty/channel/epoll/LinuxSocket;->interfaceIndex(Ljava/net/NetworkInterface;)I

    move-result v14

    invoke-virtual {v8}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v15

    .line 132
    invoke-static/range {v9 .. v15}, Lio/netty/channel/epoll/LinuxSocket;->joinSsmGroup(IZ[B[BII[B)V

    .line 134
    .end local v8    # "s":Lio/netty/channel/unix/NativeInetAddress;
    goto :goto_2

    .line 129
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Source address is different type to group"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 135
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v8

    iget-boolean v9, v0, Lio/netty/channel/epoll/LinuxSocket;->ipv6:Z

    if-eqz v9, :cond_3

    if-eqz v3, :cond_3

    move v9, v6

    goto :goto_1

    :cond_3
    move v9, v7

    :goto_1
    invoke-virtual {v1}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v10

    invoke-virtual {v5}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v11

    invoke-virtual {v1}, Lio/netty/channel/unix/NativeInetAddress;->scopeId()I

    move-result v12

    invoke-static/range {p2 .. p2}, Lio/netty/channel/epoll/LinuxSocket;->interfaceIndex(Ljava/net/NetworkInterface;)I

    move-result v13

    invoke-static/range {v8 .. v13}, Lio/netty/channel/epoll/LinuxSocket;->joinGroup(IZ[B[BII)V

    .line 137
    :goto_2
    return-void
.end method

.method leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)V
    .locals 16
    .param p1, "group"    # Ljava/net/InetAddress;
    .param p2, "netInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v1

    .line 141
    .local v1, "g":Lio/netty/channel/unix/NativeInetAddress;
    move-object/from16 v2, p1

    instance-of v3, v2, Ljava/net/Inet6Address;

    .line 142
    .local v3, "isIpv6":Z
    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lio/netty/channel/epoll/LinuxSocket;->deriveInetAddress(Ljava/net/NetworkInterface;Z)Ljava/net/InetAddress;

    move-result-object v5

    invoke-static {v5}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v5

    .line 143
    .local v5, "i":Lio/netty/channel/unix/NativeInetAddress;
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p3, :cond_2

    .line 144
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_1

    .line 147
    invoke-static/range {p3 .. p3}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v8

    .line 148
    .local v8, "s":Lio/netty/channel/unix/NativeInetAddress;
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v9

    iget-boolean v10, v0, Lio/netty/channel/epoll/LinuxSocket;->ipv6:Z

    if-eqz v10, :cond_0

    if-eqz v3, :cond_0

    move v10, v6

    goto :goto_0

    :cond_0
    move v10, v7

    :goto_0
    invoke-virtual {v1}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v11

    invoke-virtual {v5}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v12

    .line 149
    invoke-virtual {v1}, Lio/netty/channel/unix/NativeInetAddress;->scopeId()I

    move-result v13

    invoke-static/range {p2 .. p2}, Lio/netty/channel/epoll/LinuxSocket;->interfaceIndex(Ljava/net/NetworkInterface;)I

    move-result v14

    invoke-virtual {v8}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v15

    .line 148
    invoke-static/range {v9 .. v15}, Lio/netty/channel/epoll/LinuxSocket;->leaveSsmGroup(IZ[B[BII[B)V

    .line 150
    .end local v8    # "s":Lio/netty/channel/unix/NativeInetAddress;
    goto :goto_2

    .line 145
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Source address is different type to group"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 151
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v8

    iget-boolean v9, v0, Lio/netty/channel/epoll/LinuxSocket;->ipv6:Z

    if-eqz v9, :cond_3

    if-eqz v3, :cond_3

    move v9, v6

    goto :goto_1

    :cond_3
    move v9, v7

    :goto_1
    invoke-virtual {v1}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v10

    invoke-virtual {v5}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v11

    invoke-virtual {v1}, Lio/netty/channel/unix/NativeInetAddress;->scopeId()I

    move-result v12

    invoke-static/range {p2 .. p2}, Lio/netty/channel/epoll/LinuxSocket;->interfaceIndex(Ljava/net/NetworkInterface;)I

    move-result v13

    invoke-static/range {v8 .. v13}, Lio/netty/channel/epoll/LinuxSocket;->leaveGroup(IZ[B[BII)V

    .line 153
    :goto_2
    return-void
.end method

.method public localVSockAddress()Lio/netty/channel/epoll/VSockAddress;
    .locals 4

    .line 343
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->localVSockAddress(I)[B

    move-result-object v0

    .line 344
    .local v0, "addr":[B
    if-nez v0, :cond_0

    .line 345
    const/4 v1, 0x0

    return-object v1

    .line 347
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;->getIntAt([BI)I

    move-result v1

    .line 348
    .local v1, "cid":I
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lio/netty/channel/epoll/LinuxSocket;->getIntAt([BI)I

    move-result v2

    .line 349
    .local v2, "port":I
    new-instance v3, Lio/netty/channel/epoll/VSockAddress;

    invoke-direct {v3, v1, v2}, Lio/netty/channel/epoll/VSockAddress;-><init>(II)V

    return-object v3
.end method

.method recvmmsg([Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I
    .locals 2
    .param p1, "msgs"    # [Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    iget-boolean v1, p0, Lio/netty/channel/epoll/LinuxSocket;->ipv6:Z

    invoke-static {v0, v1, p1, p2, p3}, Lio/netty/channel/epoll/Native;->recvmmsg(IZ[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I

    move-result v0

    return v0
.end method

.method recvmsg(Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;)I
    .locals 2
    .param p1, "msg"    # Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    iget-boolean v1, p0, Lio/netty/channel/epoll/LinuxSocket;->ipv6:Z

    invoke-static {v0, v1, p1}, Lio/netty/channel/epoll/Native;->recvmsg(IZLio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;)I

    move-result v0

    return v0
.end method

.method public remoteVSockAddress()Lio/netty/channel/epoll/VSockAddress;
    .locals 4

    .line 333
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->remoteVSockAddress(I)[B

    move-result-object v0

    .line 334
    .local v0, "addr":[B
    if-nez v0, :cond_0

    .line 335
    const/4 v1, 0x0

    return-object v1

    .line 337
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;->getIntAt([BI)I

    move-result v1

    .line 338
    .local v1, "cid":I
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lio/netty/channel/epoll/LinuxSocket;->getIntAt([BI)I

    move-result v2

    .line 339
    .local v2, "port":I
    new-instance v3, Lio/netty/channel/epoll/VSockAddress;

    invoke-direct {v3, v1, v2}, Lio/netty/channel/epoll/VSockAddress;-><init>(II)V

    return-object v3
.end method

.method sendFile(Lio/netty/channel/DefaultFileRegion;JJJ)J
    .locals 8
    .param p1, "src"    # Lio/netty/channel/DefaultFileRegion;
    .param p2, "baseOffset"    # J
    .param p4, "offset"    # J
    .param p6, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-virtual {p1}, Lio/netty/channel/DefaultFileRegion;->open()V

    .line 310
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v7}, Lio/netty/channel/epoll/LinuxSocket;->sendFile(ILio/netty/channel/DefaultFileRegion;JJJ)J

    move-result-wide v0

    .line 311
    .local v0, "res":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 312
    return-wide v0

    .line 314
    :cond_0
    const-string v2, "sendfile"

    long-to-int v3, v0

    invoke-static {v2, v3}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    return-wide v2
.end method

.method sendmmsg([Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I
    .locals 2
    .param p1, "msgs"    # [Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    iget-boolean v1, p0, Lio/netty/channel/epoll/LinuxSocket;->ipv6:Z

    invoke-static {v0, v1, p1, p2, p3}, Lio/netty/channel/epoll/Native;->sendmmsg(IZ[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I

    move-result v0

    return v0
.end method

.method setInterface(Ljava/net/InetAddress;)V
    .locals 6
    .param p1, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-static {p1}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v0

    .line 76
    .local v0, "a":Lio/netty/channel/unix/NativeInetAddress;
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v1

    iget-boolean v2, p0, Lio/netty/channel/epoll/LinuxSocket;->ipv6:Z

    invoke-virtual {v0}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/channel/unix/NativeInetAddress;->scopeId()I

    move-result v4

    invoke-static {p1}, Lio/netty/channel/epoll/LinuxSocket;->interfaceIndex(Ljava/net/InetAddress;)I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lio/netty/channel/epoll/LinuxSocket;->setInterface(IZ[BII)V

    .line 77
    return-void
.end method

.method setIpFreeBind(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setIpFreeBind(II)V

    .line 214
    return-void
.end method

.method setIpRecvOrigDestAddr(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setIpRecvOrigDestAddr(II)V

    .line 222
    return-void
.end method

.method setIpTransparent(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setIpTransparent(II)V

    .line 218
    return-void
.end method

.method setLoopbackModeDisabled(Z)V
    .locals 3
    .param p1, "loopbackModeDisabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    iget-boolean v1, p0, Lio/netty/channel/epoll/LinuxSocket;->ipv6:Z

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2}, Lio/netty/channel/epoll/LinuxSocket;->setIpMulticastLoop(IZI)V

    .line 295
    return-void
.end method

.method setNetworkInterface(Ljava/net/NetworkInterface;)V
    .locals 7
    .param p1, "netInterface"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->family()Lio/netty/channel/socket/InternetProtocolFamily;

    move-result-object v0

    sget-object v1, Lio/netty/channel/socket/InternetProtocolFamily;->IPv6:Lio/netty/channel/socket/InternetProtocolFamily;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lio/netty/channel/epoll/LinuxSocket;->deriveInetAddress(Ljava/net/NetworkInterface;Z)Ljava/net/InetAddress;

    move-result-object v0

    .line 81
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->family()Lio/netty/channel/socket/InternetProtocolFamily;

    move-result-object v1

    sget-object v2, Lio/netty/channel/socket/InternetProtocolFamily;->IPv4:Lio/netty/channel/socket/InternetProtocolFamily;

    if-ne v1, v2, :cond_1

    sget-object v1, Lio/netty/channel/epoll/LinuxSocket;->INET_ANY:Ljava/net/InetAddress;

    goto :goto_1

    :cond_1
    sget-object v1, Lio/netty/channel/epoll/LinuxSocket;->INET6_ANY:Ljava/net/InetAddress;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    invoke-static {v0}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v1

    .line 85
    .local v1, "nativeAddress":Lio/netty/channel/unix/NativeInetAddress;
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v2

    iget-boolean v3, p0, Lio/netty/channel/epoll/LinuxSocket;->ipv6:Z

    invoke-virtual {v1}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v4

    invoke-virtual {v1}, Lio/netty/channel/unix/NativeInetAddress;->scopeId()I

    move-result v5

    invoke-static {p1}, Lio/netty/channel/epoll/LinuxSocket;->interfaceIndex(Ljava/net/NetworkInterface;)I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lio/netty/channel/epoll/LinuxSocket;->setInterface(IZ[BII)V

    .line 86
    return-void

    .line 82
    .end local v1    # "nativeAddress":Lio/netty/channel/unix/NativeInetAddress;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkInterface does not support "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->family()Lio/netty/channel/socket/InternetProtocolFamily;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setSoBusyPoll(I)V
    .locals 1
    .param p1, "loopMicros"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setSoBusyPoll(II)V

    .line 183
    return-void
.end method

.method setTcpCork(Z)V
    .locals 1
    .param p1, "tcpCork"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpCork(II)V

    .line 179
    return-void
.end method

.method setTcpDeferAccept(I)V
    .locals 1
    .param p1, "deferAccept"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpDeferAccept(II)V

    .line 171
    return-void
.end method

.method setTcpFastOpen(I)V
    .locals 1
    .param p1, "tcpFastopenBacklog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpFastOpen(II)V

    .line 194
    return-void
.end method

.method setTcpKeepCnt(I)V
    .locals 1
    .param p1, "probes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpKeepCnt(II)V

    .line 206
    return-void
.end method

.method setTcpKeepIdle(I)V
    .locals 1
    .param p1, "seconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpKeepIdle(II)V

    .line 198
    return-void
.end method

.method setTcpKeepIntvl(I)V
    .locals 1
    .param p1, "seconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpKeepIntvl(II)V

    .line 202
    return-void
.end method

.method setTcpMd5Sig(Ljava/net/InetAddress;[B)V
    .locals 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-static {p1}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v0

    .line 234
    .local v0, "a":Lio/netty/channel/unix/NativeInetAddress;
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v1

    iget-boolean v2, p0, Lio/netty/channel/epoll/LinuxSocket;->ipv6:Z

    invoke-virtual {v0}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/channel/unix/NativeInetAddress;->scopeId()I

    move-result v4

    invoke-static {v1, v2, v3, v4, p2}, Lio/netty/channel/epoll/LinuxSocket;->setTcpMd5Sig(IZ[BI[B)V

    .line 235
    return-void
.end method

.method setTcpNotSentLowAt(J)V
    .locals 2
    .param p1, "tcpNotSentLowAt"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    long-to-int v1, p1

    invoke-static {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpNotSentLowAt(II)V

    .line 190
    return-void

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tcpNotSentLowAt must be a uint32_t"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setTcpQuickAck(Z)V
    .locals 1
    .param p1, "quickAck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpQuickAck(II)V

    .line 175
    return-void
.end method

.method setTcpUserTimeout(I)V
    .locals 1
    .param p1, "milliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpUserTimeout(II)V

    .line 210
    return-void
.end method

.method setTimeToLive(I)V
    .locals 1
    .param p1, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTimeToLive(II)V

    .line 72
    return-void
.end method

.method setUdpGro(Z)V
    .locals 1
    .param p1, "gro"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setUdpGro(II)V

    .line 303
    return-void
.end method
