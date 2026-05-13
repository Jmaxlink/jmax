.class public Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;
.super Lio/netty/channel/kqueue/KQueueServerChannelConfig;
.source "KQueueServerSocketChannelConfig.java"


# direct methods
.method constructor <init>(Lio/netty/channel/kqueue/KQueueServerSocketChannel;)V
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/kqueue/KQueueServerSocketChannel;

    .line 36
    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/KQueueServerChannelConfig;-><init>(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setReuseAddress(Z)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    .line 42
    return-void
.end method


# virtual methods
.method public getAcceptFilter()Lio/netty/channel/kqueue/AcceptFilter;
    .locals 2

    .line 104
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/kqueue/KQueueServerSocketChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/KQueueServerSocketChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->getAcceptFilter()Lio/netty/channel/kqueue/AcceptFilter;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 52
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    sget-object v0, Lio/netty/channel/unix/UnixChannelOption;->SO_REUSEPORT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->isReusePort()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    sget-object v0, Lio/netty/channel/kqueue/KQueueChannelOption;->SO_ACCEPTFILTER:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->getAcceptFilter()Lio/netty/channel/kqueue/AcceptFilter;

    move-result-object v0

    return-object v0

    .line 58
    :cond_1
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueServerChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

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

    .line 46
    invoke-super {p0}, Lio/netty/channel/kqueue/KQueueServerChannelConfig;->getOptions()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lio/netty/channel/ChannelOption;

    sget-object v2, Lio/netty/channel/unix/UnixChannelOption;->SO_REUSEPORT:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/kqueue/KQueueChannelOption;->SO_ACCEPTFILTER:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public isReusePort()Z
    .locals 2

    .line 87
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/kqueue/KQueueServerSocketChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/KQueueServerSocketChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->isReusePort()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAcceptFilter(Lio/netty/channel/kqueue/AcceptFilter;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;
    .locals 2
    .param p1, "acceptFilter"    # Lio/netty/channel/kqueue/AcceptFilter;

    .line 95
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/kqueue/KQueueServerSocketChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/KQueueServerSocketChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/kqueue/BsdSocket;->setAcceptFilter(Lio/netty/channel/kqueue/AcceptFilter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    return-object p0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueServerChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;
    .locals 0
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;

    .line 166
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueServerChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueServerChannelConfig;

    .line 167
    return-object p0
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/kqueue/KQueueServerChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoRead(Z)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;
    .locals 0
    .param p1, "autoRead"    # Z

    .line 178
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueServerChannelConfig;->setAutoRead(Z)Lio/netty/channel/kqueue/KQueueServerChannelConfig;

    .line 179
    return-object p0
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBacklog(I)Lio/netty/channel/kqueue/KQueueServerChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setBacklog(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setBacklog(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;
    .locals 0
    .param p1, "backlog"    # I

    .line 135
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueServerChannelConfig;->setBacklog(I)Lio/netty/channel/kqueue/KQueueServerChannelConfig;

    .line 136
    return-object p0
.end method

.method public bridge synthetic setBacklog(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setBacklog(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueServerChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;
    .locals 0
    .param p1, "connectTimeoutMillis"    # I

    .line 147
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueServerChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueServerChannelConfig;

    .line 148
    return-object p0
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueServerChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;
    .locals 0
    .param p1, "maxMessagesPerRead"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueServerChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueServerChannelConfig;

    .line 155
    return-object p0
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueServerChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;
    .locals 0
    .param p1, "estimator"    # Lio/netty/channel/MessageSizeEstimator;

    .line 204
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueServerChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueServerChannelConfig;

    .line 205
    return-object p0
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 63
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->validate(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V

    .line 65
    sget-object v0, Lio/netty/channel/unix/UnixChannelOption;->SO_REUSEPORT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 66
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setReusePort(Z)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    goto :goto_0

    .line 67
    :cond_0
    sget-object v0, Lio/netty/channel/kqueue/KQueueChannelOption;->SO_ACCEPTFILTER:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 68
    move-object v0, p2

    check-cast v0, Lio/netty/channel/kqueue/AcceptFilter;

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setAcceptFilter(Lio/netty/channel/kqueue/AcceptFilter;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    .line 73
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 70
    :cond_1
    invoke-super {p0, p1, p2}, Lio/netty/channel/kqueue/KQueueServerChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setPerformancePreferences(III)Lio/netty/channel/kqueue/KQueueServerChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setPerformancePreferences(III)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setPerformancePreferences(III)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;
    .locals 0
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .line 130
    return-object p0
.end method

.method public bridge synthetic setPerformancePreferences(III)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setPerformancePreferences(III)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRcvAllocTransportProvidesGuess(Z)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setRcvAllocTransportProvidesGuess(Z)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRcvAllocTransportProvidesGuess(Z)Lio/netty/channel/kqueue/KQueueServerChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setRcvAllocTransportProvidesGuess(Z)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setRcvAllocTransportProvidesGuess(Z)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;
    .locals 0
    .param p1, "transportProvidesGuess"    # Z

    .line 112
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueServerChannelConfig;->setRcvAllocTransportProvidesGuess(Z)Lio/netty/channel/kqueue/KQueueServerChannelConfig;

    .line 113
    return-object p0
.end method

.method public bridge synthetic setReceiveBufferSize(I)Lio/netty/channel/kqueue/KQueueServerChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setReceiveBufferSize(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setReceiveBufferSize(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;
    .locals 0
    .param p1, "receiveBufferSize"    # I

    .line 124
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueServerChannelConfig;->setReceiveBufferSize(I)Lio/netty/channel/kqueue/KQueueServerChannelConfig;

    .line 125
    return-object p0
.end method

.method public bridge synthetic setReceiveBufferSize(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setReceiveBufferSize(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueServerChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;
    .locals 0
    .param p1, "allocator"    # Lio/netty/channel/RecvByteBufAllocator;

    .line 172
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueServerChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueServerChannelConfig;

    .line 173
    return-object p0
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setReuseAddress(Z)Lio/netty/channel/kqueue/KQueueServerChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setReuseAddress(Z)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setReuseAddress(Z)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;
    .locals 0
    .param p1, "reuseAddress"    # Z

    .line 118
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueServerChannelConfig;->setReuseAddress(Z)Lio/netty/channel/kqueue/KQueueServerChannelConfig;

    .line 119
    return-object p0
.end method

.method public bridge synthetic setReuseAddress(Z)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setReuseAddress(Z)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setReusePort(Z)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;
    .locals 2
    .param p1, "reusePort"    # Z

    .line 78
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/kqueue/KQueueServerSocketChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/KQueueServerSocketChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/kqueue/BsdSocket;->setReusePort(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-object p0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setTcpFastOpen(Z)Lio/netty/channel/kqueue/KQueueServerChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setTcpFastOpen(Z)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setTcpFastOpen(Z)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;
    .locals 0
    .param p1, "enableTcpFastOpen"    # Z

    .line 141
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueServerChannelConfig;->setTcpFastOpen(Z)Lio/netty/channel/kqueue/KQueueServerChannelConfig;

    .line 142
    return-object p0
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueServerChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;
    .locals 0
    .param p1, "writeBufferHighWaterMark"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueServerChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueServerChannelConfig;

    .line 186
    return-object p0
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueServerChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;
    .locals 0
    .param p1, "writeBufferLowWaterMark"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueServerChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueServerChannelConfig;

    .line 193
    return-object p0
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueServerChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;
    .locals 0
    .param p1, "writeBufferWaterMark"    # Lio/netty/channel/WriteBufferWaterMark;

    .line 198
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueServerChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueServerChannelConfig;

    .line 199
    return-object p0
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueServerChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;
    .locals 0
    .param p1, "writeSpinCount"    # I

    .line 160
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueServerChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueServerChannelConfig;

    .line 161
    return-object p0
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueServerSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method
