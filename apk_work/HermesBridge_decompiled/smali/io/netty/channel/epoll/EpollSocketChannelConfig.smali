.class public final Lio/netty/channel/epoll/EpollSocketChannelConfig;
.super Lio/netty/channel/epoll/EpollChannelConfig;
.source "EpollSocketChannelConfig.java"

# interfaces
.implements Lio/netty/channel/socket/SocketChannelConfig;


# instance fields
.field private volatile allowHalfClosure:Z

.field private volatile tcpFastopen:Z


# direct methods
.method constructor <init>(Lio/netty/channel/epoll/EpollSocketChannel;)V
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/epoll/EpollSocketChannel;

    .line 48
    invoke-direct {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;-><init>(Lio/netty/channel/Channel;)V

    .line 50
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->canEnableTcpNoDelayByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setTcpNoDelay(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    .line 53
    :cond_0
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->calculateMaxBytesPerGatheringWrite()V

    .line 54
    return-void
.end method

.method private calculateMaxBytesPerGatheringWrite()V
    .locals 3

    .line 660
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->getSendBufferSize()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 661
    .local v0, "newSendBufferSize":I
    if-lez v0, :cond_0

    .line 662
    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setMaxBytesPerGatheringWrite(J)V

    .line 664
    :cond_0
    return-void
.end method


# virtual methods
.method public getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 70
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_RCVBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->getReceiveBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_SNDBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->getSendBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 76
    :cond_1
    sget-object v0, Lio/netty/channel/ChannelOption;->TCP_NODELAY:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_2

    .line 77
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->isTcpNoDelay()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 79
    :cond_2
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_KEEPALIVE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_3

    .line 80
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->isKeepAlive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 82
    :cond_3
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_REUSEADDR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_4

    .line 83
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->isReuseAddress()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 85
    :cond_4
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_LINGER:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_5

    .line 86
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->getSoLinger()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 88
    :cond_5
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_TOS:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_6

    .line 89
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->getTrafficClass()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 91
    :cond_6
    sget-object v0, Lio/netty/channel/ChannelOption;->ALLOW_HALF_CLOSURE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_7

    .line 92
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->isAllowHalfClosure()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 94
    :cond_7
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_CORK:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_8

    .line 95
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->isTcpCork()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 97
    :cond_8
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_NOTSENT_LOWAT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_9

    .line 98
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->getTcpNotSentLowAt()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 100
    :cond_9
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_KEEPIDLE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_a

    .line 101
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->getTcpKeepIdle()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 103
    :cond_a
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_KEEPINTVL:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_b

    .line 104
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->getTcpKeepIntvl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 106
    :cond_b
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_KEEPCNT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_c

    .line 107
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->getTcpKeepCnt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 109
    :cond_c
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_USER_TIMEOUT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_d

    .line 110
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->getTcpUserTimeout()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 112
    :cond_d
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_QUICKACK:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_e

    .line 113
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->isTcpQuickAck()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 115
    :cond_e
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->IP_TRANSPARENT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_f

    .line 116
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->isIpTransparent()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 118
    :cond_f
    sget-object v0, Lio/netty/channel/ChannelOption;->TCP_FASTOPEN_CONNECT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_10

    .line 119
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->isTcpFastOpenConnect()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 121
    :cond_10
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->SO_BUSY_POLL:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_11

    .line 122
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->getSoBusyPoll()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 124
    :cond_11
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 58
    nop

    .line 59
    invoke-super {p0}, Lio/netty/channel/epoll/EpollChannelConfig;->getOptions()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x12

    new-array v1, v1, [Lio/netty/channel/ChannelOption;

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_RCVBUF:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_SNDBUF:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->TCP_NODELAY:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_KEEPALIVE:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_REUSEADDR:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_LINGER:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->IP_TOS:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->ALLOW_HALF_CLOSURE:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/epoll/EpollChannelOption;->TCP_CORK:Lio/netty/channel/ChannelOption;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/epoll/EpollChannelOption;->TCP_NOTSENT_LOWAT:Lio/netty/channel/ChannelOption;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/epoll/EpollChannelOption;->TCP_KEEPCNT:Lio/netty/channel/ChannelOption;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/epoll/EpollChannelOption;->TCP_KEEPIDLE:Lio/netty/channel/ChannelOption;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/epoll/EpollChannelOption;->TCP_KEEPINTVL:Lio/netty/channel/ChannelOption;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/epoll/EpollChannelOption;->TCP_MD5SIG:Lio/netty/channel/ChannelOption;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/epoll/EpollChannelOption;->TCP_QUICKACK:Lio/netty/channel/ChannelOption;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/epoll/EpollChannelOption;->IP_TRANSPARENT:Lio/netty/channel/ChannelOption;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->TCP_FASTOPEN_CONNECT:Lio/netty/channel/ChannelOption;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/epoll/EpollChannelOption;->SO_BUSY_POLL:Lio/netty/channel/ChannelOption;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 58
    invoke-virtual {p0, v0, v1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReceiveBufferSize()I
    .locals 2

    .line 181
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->getReceiveBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSendBufferSize()I
    .locals 2

    .line 190
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->getSendBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSoBusyPoll()I
    .locals 2

    .line 257
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->getSoBusyPoll()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSoLinger()I
    .locals 2

    .line 199
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->getSoLinger()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTcpKeepCnt()I
    .locals 2

    .line 302
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpKeepCnt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTcpKeepIdle()I
    .locals 2

    .line 280
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpKeepIdle()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTcpKeepIntvl()I
    .locals 2

    .line 291
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpKeepIntvl()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTcpNotSentLowAt()J
    .locals 2

    .line 269
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpNotSentLowAt()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTcpUserTimeout()I
    .locals 2

    .line 313
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpUserTimeout()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTrafficClass()I
    .locals 2

    .line 208
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTrafficClass()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAllowHalfClosure()Z
    .locals 1

    .line 574
    iget-boolean v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->allowHalfClosure:Z

    return v0
.end method

.method public isIpTransparent()Z
    .locals 2

    .line 495
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->isIpTransparent()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isKeepAlive()Z
    .locals 2

    .line 217
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->isKeepAlive()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isReuseAddress()Z
    .locals 2

    .line 226
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->isReuseAddress()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isTcpCork()Z
    .locals 2

    .line 246
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->isTcpCork()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isTcpFastOpenConnect()Z
    .locals 1

    .line 569
    iget-boolean v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->tcpFastopen:Z

    return v0
.end method

.method public isTcpNoDelay()Z
    .locals 2

    .line 235
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->isTcpNoDelay()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isTcpQuickAck()Z
    .locals 2

    .line 548
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->isTcpQuickAck()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 0
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;

    .line 604
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/epoll/EpollChannelConfig;

    .line 605
    return-object p0
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/DuplexChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAllowHalfClosure(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 0
    .param p1, "allowHalfClosure"    # Z

    .line 579
    iput-boolean p1, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->allowHalfClosure:Z

    .line 580
    return-object p0
.end method

.method public bridge synthetic setAllowHalfClosure(Z)Lio/netty/channel/socket/DuplexChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setAllowHalfClosure(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAllowHalfClosure(Z)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setAllowHalfClosure(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoClose(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setAutoClose(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoClose(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 0
    .param p1, "autoClose"    # Z

    .line 622
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setAutoClose(Z)Lio/netty/channel/ChannelConfig;

    .line 623
    return-object p0
.end method

.method public bridge synthetic setAutoClose(Z)Lio/netty/channel/socket/DuplexChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setAutoClose(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoClose(Z)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setAutoClose(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoRead(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 0
    .param p1, "autoRead"    # Z

    .line 616
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setAutoRead(Z)Lio/netty/channel/epoll/EpollChannelConfig;

    .line 617
    return-object p0
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/socket/DuplexChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setConnectTimeoutMillis(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 0
    .param p1, "connectTimeoutMillis"    # I

    .line 585
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/epoll/EpollChannelConfig;

    .line 586
    return-object p0
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setEpollMode(Lio/netty/channel/epoll/EpollMode;)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setEpollMode(Lio/netty/channel/epoll/EpollMode;)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setEpollMode(Lio/netty/channel/epoll/EpollMode;)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 0
    .param p1, "mode"    # Lio/netty/channel/epoll/EpollMode;

    .line 654
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setEpollMode(Lio/netty/channel/epoll/EpollMode;)Lio/netty/channel/epoll/EpollChannelConfig;

    .line 655
    return-object p0
.end method

.method public setIpTransparent(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 2
    .param p1, "transparent"    # Z

    .line 507
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setIpTransparent(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    return-object p0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setKeepAlive(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 2
    .param p1, "keepAlive"    # Z

    .line 322
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setKeepAlive(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    return-object p0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setKeepAlive(Z)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setKeepAlive(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMaxMessagesPerRead(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 0
    .param p1, "maxMessagesPerRead"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 592
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/epoll/EpollChannelConfig;

    .line 593
    return-object p0
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/socket/DuplexChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 0
    .param p1, "estimator"    # Lio/netty/channel/MessageSizeEstimator;

    .line 648
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/epoll/EpollChannelConfig;

    .line 649
    return-object p0
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/DuplexChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 129
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->validate(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V

    .line 131
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_RCVBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 132
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setReceiveBufferSize(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    goto/16 :goto_0

    .line 133
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_SNDBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 134
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setSendBufferSize(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    goto/16 :goto_0

    .line 135
    :cond_1
    sget-object v0, Lio/netty/channel/ChannelOption;->TCP_NODELAY:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_2

    .line 136
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setTcpNoDelay(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    goto/16 :goto_0

    .line 137
    :cond_2
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_KEEPALIVE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_3

    .line 138
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setKeepAlive(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    goto/16 :goto_0

    .line 139
    :cond_3
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_REUSEADDR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_4

    .line 140
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setReuseAddress(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    goto/16 :goto_0

    .line 141
    :cond_4
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_LINGER:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_5

    .line 142
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setSoLinger(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    goto/16 :goto_0

    .line 143
    :cond_5
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_TOS:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_6

    .line 144
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setTrafficClass(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    goto/16 :goto_0

    .line 145
    :cond_6
    sget-object v0, Lio/netty/channel/ChannelOption;->ALLOW_HALF_CLOSURE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_7

    .line 146
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setAllowHalfClosure(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    goto/16 :goto_0

    .line 147
    :cond_7
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_CORK:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_8

    .line 148
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setTcpCork(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    goto/16 :goto_0

    .line 149
    :cond_8
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_NOTSENT_LOWAT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_9

    .line 150
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setTcpNotSentLowAt(J)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    goto/16 :goto_0

    .line 151
    :cond_9
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_KEEPIDLE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_a

    .line 152
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setTcpKeepIdle(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    goto/16 :goto_0

    .line 153
    :cond_a
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_KEEPCNT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_b

    .line 154
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setTcpKeepCnt(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    goto :goto_0

    .line 155
    :cond_b
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_KEEPINTVL:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_c

    .line 156
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setTcpKeepIntvl(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    goto :goto_0

    .line 157
    :cond_c
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_USER_TIMEOUT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_d

    .line 158
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setTcpUserTimeout(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    goto :goto_0

    .line 159
    :cond_d
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->IP_TRANSPARENT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_e

    .line 160
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setIpTransparent(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    goto :goto_0

    .line 161
    :cond_e
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_MD5SIG:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_f

    .line 163
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    .line 164
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/InetAddress;[B>;"
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setTcpMd5Sig(Ljava/util/Map;)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    .line 165
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/InetAddress;[B>;"
    goto :goto_0

    :cond_f
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->TCP_QUICKACK:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_10

    .line 166
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setTcpQuickAck(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    goto :goto_0

    .line 167
    :cond_10
    sget-object v0, Lio/netty/channel/ChannelOption;->TCP_FASTOPEN_CONNECT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_11

    .line 168
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setTcpFastOpenConnect(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    goto :goto_0

    .line 169
    :cond_11
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->SO_BUSY_POLL:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_12

    .line 170
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setSoBusyPoll(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    .line 175
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 172
    :cond_12
    invoke-super {p0, p1, p2}, Lio/netty/channel/epoll/EpollChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setPerformancePreferences(III)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 0
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .line 332
    return-object p0
.end method

.method public bridge synthetic setPerformancePreferences(III)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setPerformancePreferences(III)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setReceiveBufferSize(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 2
    .param p1, "receiveBufferSize"    # I

    .line 338
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    return-object p0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setReceiveBufferSize(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setReceiveBufferSize(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 0
    .param p1, "allocator"    # Lio/netty/channel/RecvByteBufAllocator;

    .line 610
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/epoll/EpollChannelConfig;

    .line 611
    return-object p0
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/DuplexChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setReuseAddress(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 2
    .param p1, "reuseAddress"    # Z

    .line 348
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    return-object p0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setReuseAddress(Z)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setReuseAddress(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setSendBufferSize(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 2
    .param p1, "sendBufferSize"    # I

    .line 358
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setSendBufferSize(I)V

    .line 359
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->calculateMaxBytesPerGatheringWrite()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    return-object p0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setSendBufferSize(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setSendBufferSize(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setSoBusyPoll(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 2
    .param p1, "loopMicros"    # I

    .line 403
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setSoBusyPoll(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    return-object p0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSoLinger(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 2
    .param p1, "soLinger"    # I

    .line 369
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setSoLinger(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    return-object p0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setSoLinger(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setSoLinger(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setTcpCork(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 2
    .param p1, "tcpCork"    # Z

    .line 391
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpCork(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    return-object p0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTcpFastOpenConnect(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 0
    .param p1, "fastOpenConnect"    # Z

    .line 561
    iput-boolean p1, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->tcpFastopen:Z

    .line 562
    return-object p0
.end method

.method public setTcpKeepCnt(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 2
    .param p1, "probes"    # I

    .line 470
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpKeepCnt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    return-object p0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTcpKeepCntl(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 1
    .param p1, "probes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 462
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setTcpKeepCnt(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public setTcpKeepIdle(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 2
    .param p1, "seconds"    # I

    .line 438
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpKeepIdle(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    return-object p0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTcpKeepIntvl(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 2
    .param p1, "seconds"    # I

    .line 450
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpKeepIntvl(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    return-object p0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTcpMd5Sig(Ljava/util/Map;)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "[B>;)",
            "Lio/netty/channel/epoll/EpollSocketChannelConfig;"
        }
    .end annotation

    .line 521
    .local p1, "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/InetAddress;[B>;"
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/EpollSocketChannel;->setTcpMd5Sig(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    return-object p0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTcpNoDelay(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 2
    .param p1, "tcpNoDelay"    # Z

    .line 379
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpNoDelay(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    return-object p0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setTcpNoDelay(Z)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setTcpNoDelay(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setTcpNotSentLowAt(J)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 2
    .param p1, "tcpNotSentLowAt"    # J

    .line 416
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/epoll/LinuxSocket;->setTcpNotSentLowAt(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    return-object p0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTcpQuickAck(Z)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 2
    .param p1, "quickAck"    # Z

    .line 535
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpQuickAck(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    return-object p0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTcpUserTimeout(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 2
    .param p1, "milliseconds"    # I

    .line 482
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpUserTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    return-object p0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTrafficClass(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 2
    .param p1, "trafficClass"    # I

    .line 426
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/EpollSocketChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/EpollSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTrafficClass(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    return-object p0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setTrafficClass(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setTrafficClass(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferHighWaterMark(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 0
    .param p1, "writeBufferHighWaterMark"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 629
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/epoll/EpollChannelConfig;

    .line 630
    return-object p0
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferLowWaterMark(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 0
    .param p1, "writeBufferLowWaterMark"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 636
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/epoll/EpollChannelConfig;

    .line 637
    return-object p0
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 0
    .param p1, "writeBufferWaterMark"    # Lio/netty/channel/WriteBufferWaterMark;

    .line 642
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/epoll/EpollChannelConfig;

    .line 643
    return-object p0
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/DuplexChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteSpinCount(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;
    .locals 0
    .param p1, "writeSpinCount"    # I

    .line 598
    invoke-super {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/epoll/EpollChannelConfig;

    .line 599
    return-object p0
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/socket/DuplexChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/epoll/EpollSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method
