.class public abstract Lio/netty/channel/oio/AbstractOioChannel;
.super Lio/netty/channel/AbstractChannel;
.source "AbstractOioChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final SO_TIMEOUT:I = 0x3e8


# instance fields
.field private final clearReadPendingRunnable:Ljava/lang/Runnable;

.field readPending:Z

.field final readTask:Ljava/lang/Runnable;

.field readWhenInactive:Z


# direct methods
.method protected constructor <init>(Lio/netty/channel/Channel;)V
    .locals 1
    .param p1, "parent"    # Lio/netty/channel/Channel;

    .line 55
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel;-><init>(Lio/netty/channel/Channel;)V

    .line 38
    new-instance v0, Lio/netty/channel/oio/AbstractOioChannel$1;

    invoke-direct {v0, p0}, Lio/netty/channel/oio/AbstractOioChannel$1;-><init>(Lio/netty/channel/oio/AbstractOioChannel;)V

    iput-object v0, p0, Lio/netty/channel/oio/AbstractOioChannel;->readTask:Ljava/lang/Runnable;

    .line 44
    new-instance v0, Lio/netty/channel/oio/AbstractOioChannel$2;

    invoke-direct {v0, p0}, Lio/netty/channel/oio/AbstractOioChannel$2;-><init>(Lio/netty/channel/oio/AbstractOioChannel;)V

    iput-object v0, p0, Lio/netty/channel/oio/AbstractOioChannel;->clearReadPendingRunnable:Ljava/lang/Runnable;

    .line 56
    return-void
.end method


# virtual methods
.method protected final clearReadPending()V
    .locals 3

    .line 154
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioChannel;->isRegistered()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 156
    .local v0, "eventLoop":Lio/netty/channel/EventLoop;
    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    iput-boolean v1, p0, Lio/netty/channel/oio/AbstractOioChannel;->readPending:Z

    goto :goto_0

    .line 159
    :cond_0
    iget-object v1, p0, Lio/netty/channel/oio/AbstractOioChannel;->clearReadPendingRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 161
    .end local v0    # "eventLoop":Lio/netty/channel/EventLoop;
    :goto_0
    goto :goto_1

    .line 163
    :cond_1
    iput-boolean v1, p0, Lio/netty/channel/oio/AbstractOioChannel;->readPending:Z

    .line 165
    :goto_1
    return-void
.end method

.method protected doBeginRead()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Lio/netty/channel/oio/AbstractOioChannel;->readPending:Z

    if-eqz v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioChannel;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 108
    iput-boolean v1, p0, Lio/netty/channel/oio/AbstractOioChannel;->readWhenInactive:Z

    .line 109
    return-void

    .line 112
    :cond_1
    iput-boolean v1, p0, Lio/netty/channel/oio/AbstractOioChannel;->readPending:Z

    .line 113
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    iget-object v1, p0, Lio/netty/channel/oio/AbstractOioChannel;->readTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method protected abstract doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doRead()V
.end method

.method protected isCompatible(Lio/netty/channel/EventLoop;)Z
    .locals 1
    .param p1, "loop"    # Lio/netty/channel/EventLoop;

    .line 93
    instance-of v0, p1, Lio/netty/channel/ThreadPerChannelEventLoop;

    return v0
.end method

.method protected isReadPending()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    iget-boolean v0, p0, Lio/netty/channel/oio/AbstractOioChannel;->readPending:Z

    return v0
.end method

.method protected newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 2

    .line 60
    new-instance v0, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/channel/oio/AbstractOioChannel$DefaultOioUnsafe;-><init>(Lio/netty/channel/oio/AbstractOioChannel;Lio/netty/channel/oio/AbstractOioChannel$1;)V

    return-object v0
.end method

.method protected setReadPending(Z)V
    .locals 2
    .param p1, "readPending"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 135
    .local v0, "eventLoop":Lio/netty/channel/EventLoop;
    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iput-boolean p1, p0, Lio/netty/channel/oio/AbstractOioChannel;->readPending:Z

    goto :goto_0

    .line 138
    :cond_0
    new-instance v1, Lio/netty/channel/oio/AbstractOioChannel$3;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/oio/AbstractOioChannel$3;-><init>(Lio/netty/channel/oio/AbstractOioChannel;Z)V

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 145
    .end local v0    # "eventLoop":Lio/netty/channel/EventLoop;
    :goto_0
    goto :goto_1

    .line 146
    :cond_1
    iput-boolean p1, p0, Lio/netty/channel/oio/AbstractOioChannel;->readPending:Z

    .line 148
    :goto_1
    return-void
.end method
