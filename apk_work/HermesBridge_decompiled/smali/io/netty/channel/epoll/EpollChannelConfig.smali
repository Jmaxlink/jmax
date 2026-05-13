.class public Lio/netty/channel/epoll/EpollChannelConfig;
.super Lio/netty/channel/DefaultChannelConfig;
.source "EpollChannelConfig.java"


# instance fields
.field private volatile maxBytesPerGatheringWrite:J


# direct methods
.method protected constructor <init>(Lio/netty/channel/Channel;)V
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 40
    invoke-static {p1}, Lio/netty/channel/epoll/EpollChannelConfig;->checkAbstractEpollChannel(Lio/netty/channel/Channel;)Lio/netty/channel/Channel;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/DefaultChannelConfig;-><init>(Lio/netty/channel/Channel;)V

    .line 37
    sget-wide v0, Lio/netty/channel/unix/Limits;->SSIZE_MAX:J

    iput-wide v0, p0, Lio/netty/channel/epoll/EpollChannelConfig;->maxBytesPerGatheringWrite:J

    .line 41
    return-void
.end method

.method protected constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/RecvByteBufAllocator;)V
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "recvByteBufAllocator"    # Lio/netty/channel/RecvByteBufAllocator;

    .line 44
    invoke-static {p1}, Lio/netty/channel/epoll/EpollChannelConfig;->checkAbstractEpollChannel(Lio/netty/channel/Channel;)Lio/netty/channel/Channel;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/netty/channel/DefaultChannelConfig;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/RecvByteBufAllocator;)V

    .line 37
    sget-wide v0, Lio/netty/channel/unix/Limits;->SSIZE_MAX:J

    iput-wide v0, p0, Lio/netty/channel/epoll/EpollChannelConfig;->maxBytesPerGatheringWrite:J

    .line 45
    return-void
.end method

.method private static checkAbstractEpollChannel(Lio/netty/channel/Channel;)Lio/netty/channel/Channel;
    .locals 3
    .param p0, "channel"    # Lio/netty/channel/Channel;

    .line 52
    instance-of v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel;

    if-eqz v0, :cond_0

    .line 55
    return-object p0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel is not AbstractEpollChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkChannelNotRegistered()V
    .locals 2

    .line 220
    iget-object v0, p0, Lio/netty/channel/epoll/EpollChannelConfig;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    return-void

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EpollMode can only be changed before channel is registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final autoReadCleared()V
    .locals 1

    .line 227
    iget-object v0, p0, Lio/netty/channel/epoll/EpollChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->clearEpollIn()V

    .line 228
    return-void
.end method

.method public getEpollMode()Lio/netty/channel/epoll/EpollMode;
    .locals 2

    .line 185
    iget-object v0, p0, Lio/netty/channel/epoll/EpollChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/AbstractEpollChannel;

    sget v1, Lio/netty/channel/epoll/Native;->EPOLLET:I

    invoke-virtual {v0, v1}, Lio/netty/channel/epoll/AbstractEpollChannel;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/channel/epoll/EpollMode;->EDGE_TRIGGERED:Lio/netty/channel/epoll/EpollMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/channel/epoll/EpollMode;->LEVEL_TRIGGERED:Lio/netty/channel/epoll/EpollMode;

    :goto_0
    return-object v0
.end method

.method protected final getMaxBytesPerGatheringWrite()J
    .locals 2

    .line 235
    iget-wide v0, p0, Lio/netty/channel/epoll/EpollChannelConfig;->maxBytesPerGatheringWrite:J

    return-wide v0
.end method

.method public getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 66
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->EPOLL_MODE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollChannelConfig;->getEpollMode()Lio/netty/channel/epoll/EpollMode;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    :try_start_0
    instance-of v0, p1, Lio/netty/channel/unix/IntegerUnixChannelOption;

    if-eqz v0, :cond_1

    .line 71
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/IntegerUnixChannelOption;

    .line 72
    .local v0, "opt":Lio/netty/channel/unix/IntegerUnixChannelOption;
    iget-object v1, p0, Lio/netty/channel/epoll/EpollChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v1, Lio/netty/channel/epoll/AbstractEpollChannel;

    iget-object v1, v1, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    .line 73
    invoke-virtual {v0}, Lio/netty/channel/unix/IntegerUnixChannelOption;->level()I

    move-result v2

    invoke-virtual {v0}, Lio/netty/channel/unix/IntegerUnixChannelOption;->optname()I

    move-result v3

    .line 72
    invoke-virtual {v1, v2, v3}, Lio/netty/channel/epoll/LinuxSocket;->getIntOpt(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 75
    .end local v0    # "opt":Lio/netty/channel/unix/IntegerUnixChannelOption;
    :cond_1
    instance-of v0, p1, Lio/netty/channel/unix/RawUnixChannelOption;

    if-eqz v0, :cond_2

    .line 76
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/RawUnixChannelOption;

    .line 77
    .local v0, "opt":Lio/netty/channel/unix/RawUnixChannelOption;
    invoke-virtual {v0}, Lio/netty/channel/unix/RawUnixChannelOption;->length()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 78
    .local v1, "out":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lio/netty/channel/epoll/EpollChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v2, Lio/netty/channel/epoll/AbstractEpollChannel;

    iget-object v2, v2, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/unix/RawUnixChannelOption;->level()I

    move-result v3

    invoke-virtual {v0}, Lio/netty/channel/unix/RawUnixChannelOption;->optname()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, Lio/netty/channel/epoll/LinuxSocket;->getRawOpt(IILjava/nio/ByteBuffer;)V

    .line 79
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 83
    .end local v0    # "opt":Lio/netty/channel/unix/RawUnixChannelOption;
    .end local v1    # "out":Ljava/nio/ByteBuffer;
    :cond_2
    nop

    .line 84
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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

    .line 60
    invoke-super {p0}, Lio/netty/channel/DefaultChannelConfig;->getOptions()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lio/netty/channel/ChannelOption;

    sget-object v2, Lio/netty/channel/epoll/EpollChannelOption;->EPOLL_MODE:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lio/netty/channel/epoll/EpollChannelConfig;->getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;

    .line 132
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    .line 133
    return-object p0
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setAutoRead(Z)Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoRead(Z)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0
    .param p1, "autoRead"    # Z

    .line 148
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setAutoRead(Z)Lio/netty/channel/ChannelConfig;

    .line 149
    return-object p0
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setConnectTimeoutMillis(I)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0
    .param p1, "connectTimeoutMillis"    # I

    .line 113
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;

    .line 114
    return-object p0
.end method

.method public setEpollMode(Lio/netty/channel/epoll/EpollMode;)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 2
    .param p1, "mode"    # Lio/netty/channel/epoll/EpollMode;

    .line 198
    const-string v0, "mode"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    :try_start_0
    sget-object v0, Lio/netty/channel/epoll/EpollChannelConfig$1;->$SwitchMap$io$netty$channel$epoll$EpollMode:[I

    invoke-virtual {p1}, Lio/netty/channel/epoll/EpollMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 211
    new-instance v0, Ljava/lang/Error;

    goto :goto_1

    .line 207
    :pswitch_0
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollChannelConfig;->checkChannelNotRegistered()V

    .line 208
    iget-object v0, p0, Lio/netty/channel/epoll/EpollChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/AbstractEpollChannel;

    sget v1, Lio/netty/channel/epoll/Native;->EPOLLET:I

    invoke-virtual {v0, v1}, Lio/netty/channel/epoll/AbstractEpollChannel;->clearFlag(I)V

    .line 209
    goto :goto_0

    .line 203
    :pswitch_1
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollChannelConfig;->checkChannelNotRegistered()V

    .line 204
    iget-object v0, p0, Lio/netty/channel/epoll/EpollChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/AbstractEpollChannel;

    sget v1, Lio/netty/channel/epoll/Native;->EPOLLET:I

    invoke-virtual {v0, v1}, Lio/netty/channel/epoll/AbstractEpollChannel;->setFlag(I)V

    .line 205
    nop

    .line 215
    :goto_0
    nop

    .line 216
    return-object p0

    .line 211
    :goto_1
    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    .end local p1    # "mode":Lio/netty/channel/epoll/EpollMode;
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .restart local p1    # "mode":Lio/netty/channel/epoll/EpollMode;
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final setMaxBytesPerGatheringWrite(J)V
    .locals 0
    .param p1, "maxBytesPerGatheringWrite"    # J

    .line 231
    iput-wide p1, p0, Lio/netty/channel/epoll/EpollChannelConfig;->maxBytesPerGatheringWrite:J

    .line 232
    return-void
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMaxMessagesPerRead(I)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0
    .param p1, "maxMessagesPerRead"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;

    .line 121
    return-object p0
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0
    .param p1, "estimator"    # Lio/netty/channel/MessageSizeEstimator;

    .line 174
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;

    .line 175
    return-object p0
.end method

.method public setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 89
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/epoll/EpollChannelConfig;->validate(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V

    .line 90
    sget-object v0, Lio/netty/channel/epoll/EpollChannelOption;->EPOLL_MODE:Lio/netty/channel/ChannelOption;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 91
    move-object v0, p2

    check-cast v0, Lio/netty/channel/epoll/EpollMode;

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollChannelConfig;->setEpollMode(Lio/netty/channel/epoll/EpollMode;)Lio/netty/channel/epoll/EpollChannelConfig;

    .line 108
    return v1

    .line 94
    :cond_0
    :try_start_0
    instance-of v0, p1, Lio/netty/channel/unix/IntegerUnixChannelOption;

    if-eqz v0, :cond_1

    .line 95
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/IntegerUnixChannelOption;

    .line 96
    .local v0, "opt":Lio/netty/channel/unix/IntegerUnixChannelOption;
    iget-object v2, p0, Lio/netty/channel/epoll/EpollChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v2, Lio/netty/channel/epoll/AbstractEpollChannel;

    iget-object v2, v2, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/unix/IntegerUnixChannelOption;->level()I

    move-result v3

    invoke-virtual {v0}, Lio/netty/channel/unix/IntegerUnixChannelOption;->optname()I

    move-result v4

    move-object v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lio/netty/channel/epoll/LinuxSocket;->setIntOpt(III)V

    .line 97
    return v1

    .line 98
    .end local v0    # "opt":Lio/netty/channel/unix/IntegerUnixChannelOption;
    :cond_1
    instance-of v0, p1, Lio/netty/channel/unix/RawUnixChannelOption;

    if-eqz v0, :cond_2

    .line 99
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/RawUnixChannelOption;

    .line 100
    .local v0, "opt":Lio/netty/channel/unix/RawUnixChannelOption;
    iget-object v2, p0, Lio/netty/channel/epoll/EpollChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v2, Lio/netty/channel/epoll/AbstractEpollChannel;

    iget-object v2, v2, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/unix/RawUnixChannelOption;->level()I

    move-result v3

    invoke-virtual {v0}, Lio/netty/channel/unix/RawUnixChannelOption;->optname()I

    move-result v4

    move-object v5, p2

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, v4, v5}, Lio/netty/channel/epoll/LinuxSocket;->setRawOpt(IILjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return v1

    .line 105
    .end local v0    # "opt":Lio/netty/channel/unix/RawUnixChannelOption;
    :cond_2
    nop

    .line 106
    invoke-super {p0, p1, p2}, Lio/netty/channel/DefaultChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 3
    .param p1, "allocator"    # Lio/netty/channel/RecvByteBufAllocator;

    .line 138
    invoke-interface {p1}, Lio/netty/channel/RecvByteBufAllocator;->newHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v0

    instance-of v0, v0, Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;

    if-eqz v0, :cond_0

    .line 142
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    .line 143
    return-object p0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allocator.newHandle() must return an object of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferHighWaterMark(I)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0
    .param p1, "writeBufferHighWaterMark"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;

    .line 156
    return-object p0
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferLowWaterMark(I)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0
    .param p1, "writeBufferLowWaterMark"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;

    .line 163
    return-object p0
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0
    .param p1, "writeBufferWaterMark"    # Lio/netty/channel/WriteBufferWaterMark;

    .line 168
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;

    .line 169
    return-object p0
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/EpollChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteSpinCount(I)Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 0
    .param p1, "writeSpinCount"    # I

    .line 126
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;

    .line 127
    return-object p0
.end method

.method protected socket()Lio/netty/channel/epoll/LinuxSocket;
    .locals 1

    .line 48
    iget-object v0, p0, Lio/netty/channel/epoll/EpollChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/epoll/AbstractEpollChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    return-object v0
.end method
