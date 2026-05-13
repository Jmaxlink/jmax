.class public Lio/netty/channel/kqueue/KQueueChannelConfig;
.super Lio/netty/channel/DefaultChannelConfig;
.source "KQueueChannelConfig.java"


# instance fields
.field private volatile maxBytesPerGatheringWrite:J

.field private volatile transportProvidesGuess:Z


# direct methods
.method constructor <init>(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/kqueue/AbstractKQueueChannel;

    .line 43
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelConfig;-><init>(Lio/netty/channel/Channel;)V

    .line 40
    sget-wide v0, Lio/netty/channel/unix/Limits;->SSIZE_MAX:J

    iput-wide v0, p0, Lio/netty/channel/kqueue/KQueueChannelConfig;->maxBytesPerGatheringWrite:J

    .line 44
    return-void
.end method

.method constructor <init>(Lio/netty/channel/kqueue/AbstractKQueueChannel;Lio/netty/channel/RecvByteBufAllocator;)V
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/kqueue/AbstractKQueueChannel;
    .param p2, "recvByteBufAllocator"    # Lio/netty/channel/RecvByteBufAllocator;

    .line 47
    invoke-direct {p0, p1, p2}, Lio/netty/channel/DefaultChannelConfig;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/RecvByteBufAllocator;)V

    .line 40
    sget-wide v0, Lio/netty/channel/unix/Limits;->SSIZE_MAX:J

    iput-wide v0, p0, Lio/netty/channel/kqueue/KQueueChannelConfig;->maxBytesPerGatheringWrite:J

    .line 48
    return-void
.end method


# virtual methods
.method protected final autoReadCleared()V
    .locals 1

    .line 192
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->clearReadFilter()V

    .line 193
    return-void
.end method

.method final getMaxBytesPerGatheringWrite()J
    .locals 2

    .line 200
    iget-wide v0, p0, Lio/netty/channel/kqueue/KQueueChannelConfig;->maxBytesPerGatheringWrite:J

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

    .line 59
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    sget-object v0, Lio/netty/channel/kqueue/KQueueChannelOption;->RCV_ALLOC_TRANSPORT_PROVIDES_GUESS:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueChannelConfig;->getRcvAllocTransportProvidesGuess()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    :try_start_0
    instance-of v0, p1, Lio/netty/channel/unix/IntegerUnixChannelOption;

    if-eqz v0, :cond_1

    .line 64
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/IntegerUnixChannelOption;

    .line 65
    .local v0, "opt":Lio/netty/channel/unix/IntegerUnixChannelOption;
    iget-object v1, p0, Lio/netty/channel/kqueue/KQueueChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v1, Lio/netty/channel/kqueue/AbstractKQueueChannel;

    iget-object v1, v1, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    .line 66
    invoke-virtual {v0}, Lio/netty/channel/unix/IntegerUnixChannelOption;->level()I

    move-result v2

    invoke-virtual {v0}, Lio/netty/channel/unix/IntegerUnixChannelOption;->optname()I

    move-result v3

    .line 65
    invoke-virtual {v1, v2, v3}, Lio/netty/channel/kqueue/BsdSocket;->getIntOpt(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 68
    .end local v0    # "opt":Lio/netty/channel/unix/IntegerUnixChannelOption;
    :cond_1
    instance-of v0, p1, Lio/netty/channel/unix/RawUnixChannelOption;

    if-eqz v0, :cond_2

    .line 69
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/RawUnixChannelOption;

    .line 70
    .local v0, "opt":Lio/netty/channel/unix/RawUnixChannelOption;
    invoke-virtual {v0}, Lio/netty/channel/unix/RawUnixChannelOption;->length()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 71
    .local v1, "out":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lio/netty/channel/kqueue/KQueueChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v2, Lio/netty/channel/kqueue/AbstractKQueueChannel;

    iget-object v2, v2, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/unix/RawUnixChannelOption;->level()I

    move-result v3

    invoke-virtual {v0}, Lio/netty/channel/unix/RawUnixChannelOption;->optname()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, Lio/netty/channel/kqueue/BsdSocket;->getRawOpt(IILjava/nio/ByteBuffer;)V

    .line 72
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 76
    .end local v0    # "opt":Lio/netty/channel/unix/RawUnixChannelOption;
    .end local v1    # "out":Ljava/nio/ByteBuffer;
    :cond_2
    nop

    .line 77
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
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

    .line 53
    invoke-super {p0}, Lio/netty/channel/DefaultChannelConfig;->getOptions()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lio/netty/channel/ChannelOption;

    sget-object v2, Lio/netty/channel/kqueue/KQueueChannelOption;->RCV_ALLOC_TRANSPORT_PROVIDES_GUESS:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRcvAllocTransportProvidesGuess()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lio/netty/channel/kqueue/KQueueChannelConfig;->transportProvidesGuess:Z

    return v0
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;

    .line 144
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    .line 145
    return-object p0
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setAutoRead(Z)Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoRead(Z)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0
    .param p1, "autoRead"    # Z

    .line 160
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setAutoRead(Z)Lio/netty/channel/ChannelConfig;

    .line 161
    return-object p0
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0
    .param p1, "connectTimeoutMillis"    # I

    .line 125
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;

    .line 126
    return-object p0
.end method

.method final setMaxBytesPerGatheringWrite(J)V
    .locals 2
    .param p1, "maxBytesPerGatheringWrite"    # J

    .line 196
    sget-wide v0, Lio/netty/channel/unix/Limits;->SSIZE_MAX:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/channel/kqueue/KQueueChannelConfig;->maxBytesPerGatheringWrite:J

    .line 197
    return-void
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0
    .param p1, "maxMessagesPerRead"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;

    .line 133
    return-object p0
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0
    .param p1, "estimator"    # Lio/netty/channel/MessageSizeEstimator;

    .line 186
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;

    .line 187
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

    .line 82
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/kqueue/KQueueChannelConfig;->validate(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V

    .line 84
    sget-object v0, Lio/netty/channel/kqueue/KQueueChannelOption;->RCV_ALLOC_TRANSPORT_PROVIDES_GUESS:Lio/netty/channel/ChannelOption;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 85
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setRcvAllocTransportProvidesGuess(Z)Lio/netty/channel/kqueue/KQueueChannelConfig;

    .line 103
    return v1

    .line 88
    :cond_0
    :try_start_0
    instance-of v0, p1, Lio/netty/channel/unix/IntegerUnixChannelOption;

    if-eqz v0, :cond_1

    .line 89
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/IntegerUnixChannelOption;

    .line 90
    .local v0, "opt":Lio/netty/channel/unix/IntegerUnixChannelOption;
    iget-object v2, p0, Lio/netty/channel/kqueue/KQueueChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v2, Lio/netty/channel/kqueue/AbstractKQueueChannel;

    iget-object v2, v2, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/unix/IntegerUnixChannelOption;->level()I

    move-result v3

    invoke-virtual {v0}, Lio/netty/channel/unix/IntegerUnixChannelOption;->optname()I

    move-result v4

    move-object v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lio/netty/channel/kqueue/BsdSocket;->setIntOpt(III)V

    .line 91
    return v1

    .line 92
    .end local v0    # "opt":Lio/netty/channel/unix/IntegerUnixChannelOption;
    :cond_1
    instance-of v0, p1, Lio/netty/channel/unix/RawUnixChannelOption;

    if-eqz v0, :cond_2

    .line 93
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/RawUnixChannelOption;

    .line 94
    .local v0, "opt":Lio/netty/channel/unix/RawUnixChannelOption;
    iget-object v2, p0, Lio/netty/channel/kqueue/KQueueChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v2, Lio/netty/channel/kqueue/AbstractKQueueChannel;

    iget-object v2, v2, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/unix/RawUnixChannelOption;->level()I

    move-result v3

    invoke-virtual {v0}, Lio/netty/channel/unix/RawUnixChannelOption;->optname()I

    move-result v4

    move-object v5, p2

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, v4, v5}, Lio/netty/channel/kqueue/BsdSocket;->setRawOpt(IILjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    return v1

    .line 99
    .end local v0    # "opt":Lio/netty/channel/unix/RawUnixChannelOption;
    :cond_2
    nop

    .line 100
    invoke-super {p0, p1, p2}, Lio/netty/channel/DefaultChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setRcvAllocTransportProvidesGuess(Z)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0
    .param p1, "transportProvidesGuess"    # Z

    .line 111
    iput-boolean p1, p0, Lio/netty/channel/kqueue/KQueueChannelConfig;->transportProvidesGuess:Z

    .line 112
    return-object p0
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 3
    .param p1, "allocator"    # Lio/netty/channel/RecvByteBufAllocator;

    .line 150
    invoke-interface {p1}, Lio/netty/channel/RecvByteBufAllocator;->newHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v0

    instance-of v0, v0, Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;

    if-eqz v0, :cond_0

    .line 154
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    .line 155
    return-object p0

    .line 151
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

    .line 37
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0
    .param p1, "writeBufferHighWaterMark"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;

    .line 168
    return-object p0
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0
    .param p1, "writeBufferLowWaterMark"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;

    .line 175
    return-object p0
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0
    .param p1, "writeBufferWaterMark"    # Lio/netty/channel/WriteBufferWaterMark;

    .line 180
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;

    .line 181
    return-object p0
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0
    .param p1, "writeSpinCount"    # I

    .line 138
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;

    .line 139
    return-object p0
.end method
