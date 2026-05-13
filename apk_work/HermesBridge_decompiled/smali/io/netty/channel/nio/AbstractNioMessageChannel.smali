.class public abstract Lio/netty/channel/nio/AbstractNioMessageChannel;
.super Lio/netty/channel/nio/AbstractNioChannel;
.source "AbstractNioMessageChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;
    }
.end annotation


# instance fields
.field inputShutdown:Z


# direct methods
.method protected constructor <init>(Lio/netty/channel/Channel;Ljava/nio/channels/SelectableChannel;I)V
    .locals 0
    .param p1, "parent"    # Lio/netty/channel/Channel;
    .param p2, "ch"    # Ljava/nio/channels/SelectableChannel;
    .param p3, "readInterestOp"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/nio/AbstractNioChannel;-><init>(Lio/netty/channel/Channel;Ljava/nio/channels/SelectableChannel;I)V

    .line 43
    return-void
.end method


# virtual methods
.method protected closeOnReadError(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 185
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioMessageChannel;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 187
    return v1

    .line 189
    :cond_0
    instance-of v0, p1, Ljava/net/PortUnreachableException;

    if-eqz v0, :cond_1

    .line 190
    const/4 v0, 0x0

    return v0

    .line 192
    :cond_1
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 195
    instance-of v0, p0, Lio/netty/channel/ServerChannel;

    xor-int/2addr v0, v1

    return v0

    .line 197
    :cond_2
    return v1
.end method

.method protected continueOnWriteError()Z
    .locals 1

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method protected continueReading(Lio/netty/channel/RecvByteBufAllocator$Handle;)Z
    .locals 1
    .param p1, "allocHandle"    # Lio/netty/channel/RecvByteBufAllocator$Handle;

    .line 59
    invoke-interface {p1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->continueReading()Z

    move-result v0

    return v0
.end method

.method protected doBeginRead()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    iget-boolean v0, p0, Lio/netty/channel/nio/AbstractNioMessageChannel;->inputShutdown:Z

    if-eqz v0, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    invoke-super {p0}, Lio/netty/channel/nio/AbstractNioChannel;->doBeginRead()V

    .line 56
    return-void
.end method

.method protected abstract doReadMessages(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .locals 7
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioMessageChannel;->selectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 132
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    .line 134
    .local v1, "interestOps":I
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioMessageChannel;->maxMessagesPerWrite()I

    move-result v2

    .line 135
    .local v2, "maxMessagesPerWrite":I
    :goto_0
    if-lez v2, :cond_5

    .line 136
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v3

    .line 137
    .local v3, "msg":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 138
    goto :goto_4

    .line 141
    :cond_0
    const/4 v4, 0x0

    .line 142
    .local v4, "done":Z
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioMessageChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/ChannelConfig;->getWriteSpinCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_2

    .line 143
    invoke-virtual {p0, v3, p1}, Lio/netty/channel/nio/AbstractNioMessageChannel;->doWriteMessage(Ljava/lang/Object;Lio/netty/channel/ChannelOutboundBuffer;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 144
    const/4 v4, 0x1

    .line 145
    goto :goto_2

    .line 142
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 149
    .end local v5    # "i":I
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 150
    add-int/lit8 v2, v2, -0x1

    .line 151
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v4    # "done":Z
    goto :goto_3

    .line 153
    .restart local v4    # "done":Z
    :cond_3
    goto :goto_4

    .line 155
    .end local v4    # "done":Z
    :catch_0
    move-exception v4

    .line 156
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioMessageChannel;->continueOnWriteError()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 157
    add-int/lit8 v2, v2, -0x1

    .line 158
    invoke-virtual {p1, v4}, Lio/netty/channel/ChannelOutboundBuffer;->remove(Ljava/lang/Throwable;)Z

    .line 163
    .end local v3    # "msg":Ljava/lang/Object;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    goto :goto_0

    .line 160
    .restart local v3    # "msg":Ljava/lang/Object;
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_4
    throw v4

    .line 164
    .end local v3    # "msg":Ljava/lang/Object;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 166
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_7

    .line 167
    and-int/lit8 v3, v1, -0x5

    invoke-virtual {v0, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_5

    .line 171
    :cond_6
    and-int/lit8 v3, v1, 0x4

    if-nez v3, :cond_7

    .line 172
    or-int/lit8 v3, v1, 0x4

    invoke-virtual {v0, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 175
    :cond_7
    :goto_5
    return-void
.end method

.method protected abstract doWriteMessage(Ljava/lang/Object;Lio/netty/channel/ChannelOutboundBuffer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected bridge synthetic newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioMessageChannel;->newUnsafe()Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;

    move-result-object v0

    return-object v0
.end method

.method protected newUnsafe()Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;
    .locals 2

    .line 47
    new-instance v0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;-><init>(Lio/netty/channel/nio/AbstractNioMessageChannel;Lio/netty/channel/nio/AbstractNioMessageChannel$1;)V

    return-object v0
.end method
