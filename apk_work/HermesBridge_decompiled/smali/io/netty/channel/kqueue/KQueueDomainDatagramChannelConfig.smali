.class public final Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;
.super Lio/netty/channel/kqueue/KQueueChannelConfig;
.source "KQueueDomainDatagramChannelConfig.java"

# interfaces
.implements Lio/netty/channel/unix/DomainDatagramChannelConfig;


# instance fields
.field private activeOnOpen:Z


# direct methods
.method constructor <init>(Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;)V
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;

    .line 41
    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;-><init>(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V

    .line 42
    new-instance v0, Lio/netty/channel/FixedRecvByteBufAllocator;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Lio/netty/channel/FixedRecvByteBufAllocator;-><init>(I)V

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    .line 43
    return-void
.end method

.method private setActiveOnOpen(Z)V
    .locals 2
    .param p1, "activeOnOpen"    # Z

    .line 81
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iput-boolean p1, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->activeOnOpen:Z

    .line 85
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only changed before channel was registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getActiveOnOpen()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->activeOnOpen:Z

    return v0
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

    .line 55
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    sget-object v0, Lio/netty/channel/ChannelOption;->DATAGRAM_CHANNEL_ACTIVE_ON_REGISTRATION:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 56
    iget-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->activeOnOpen:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_SNDBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->getSendBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 61
    :cond_1
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

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

    .line 48
    invoke-super {p0}, Lio/netty/channel/kqueue/KQueueChannelConfig;->getOptions()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lio/netty/channel/ChannelOption;

    sget-object v2, Lio/netty/channel/ChannelOption;->DATAGRAM_CHANNEL_ACTIVE_ON_REGISTRATION:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_SNDBUF:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSendBufferSize()I
    .locals 2

    .line 159
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->getSendBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;
    .locals 0
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;

    .line 93
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueChannelConfig;

    .line 94
    return-object p0
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/unix/DomainDatagramChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoClose(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setAutoClose(Z)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoClose(Z)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;
    .locals 0
    .param p1, "autoClose"    # Z

    .line 99
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setAutoClose(Z)Lio/netty/channel/ChannelConfig;

    .line 100
    return-object p0
.end method

.method public bridge synthetic setAutoClose(Z)Lio/netty/channel/unix/DomainDatagramChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setAutoClose(Z)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setAutoRead(Z)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setAutoRead(Z)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoRead(Z)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;
    .locals 0
    .param p1, "autoRead"    # Z

    .line 105
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setAutoRead(Z)Lio/netty/channel/kqueue/KQueueChannelConfig;

    .line 106
    return-object p0
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/unix/DomainDatagramChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setAutoRead(Z)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;
    .locals 0
    .param p1, "connectTimeoutMillis"    # I

    .line 111
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueChannelConfig;

    .line 112
    return-object p0
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/unix/DomainDatagramChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;
    .locals 0
    .param p1, "maxMessagesPerRead"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueChannelConfig;

    .line 119
    return-object p0
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/unix/DomainDatagramChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMaxMessagesPerWrite(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setMaxMessagesPerWrite(I)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMaxMessagesPerWrite(I)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;
    .locals 0
    .param p1, "maxMessagesPerWrite"    # I

    .line 124
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setMaxMessagesPerWrite(I)Lio/netty/channel/ChannelConfig;

    .line 125
    return-object p0
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;
    .locals 0
    .param p1, "estimator"    # Lio/netty/channel/MessageSizeEstimator;

    .line 130
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueChannelConfig;

    .line 131
    return-object p0
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/unix/DomainDatagramChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

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

    .line 67
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->validate(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V

    .line 69
    sget-object v0, Lio/netty/channel/ChannelOption;->DATAGRAM_CHANNEL_ACTIVE_ON_REGISTRATION:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 70
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setActiveOnOpen(Z)V

    goto :goto_0

    .line 71
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_SNDBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 72
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setSendBufferSize(I)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    .line 77
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_1
    invoke-super {p0, p1, p2}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setRcvAllocTransportProvidesGuess(Z)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setRcvAllocTransportProvidesGuess(Z)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setRcvAllocTransportProvidesGuess(Z)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;
    .locals 0
    .param p1, "transportProvidesGuess"    # Z

    .line 136
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setRcvAllocTransportProvidesGuess(Z)Lio/netty/channel/kqueue/KQueueChannelConfig;

    .line 137
    return-object p0
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;
    .locals 0
    .param p1, "allocator"    # Lio/netty/channel/RecvByteBufAllocator;

    .line 142
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueChannelConfig;

    .line 143
    return-object p0
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/unix/DomainDatagramChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setSendBufferSize(I)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;
    .locals 2
    .param p1, "sendBufferSize"    # I

    .line 149
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;

    iget-object v0, v0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/kqueue/BsdSocket;->setSendBufferSize(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    return-object p0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setSendBufferSize(I)Lio/netty/channel/unix/DomainDatagramChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setSendBufferSize(I)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;
    .locals 0
    .param p1, "writeBufferWaterMark"    # Lio/netty/channel/WriteBufferWaterMark;

    .line 167
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueChannelConfig;

    .line 168
    return-object p0
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/unix/DomainDatagramChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;
    .locals 0
    .param p1, "writeSpinCount"    # I

    .line 173
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueChannelConfig;

    .line 174
    return-object p0
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/unix/DomainDatagramChannelConfig;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method
