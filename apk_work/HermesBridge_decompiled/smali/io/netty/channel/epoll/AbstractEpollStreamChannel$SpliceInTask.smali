.class public abstract Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;
.super Ljava/lang/Object;
.source "AbstractEpollStreamChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/epoll/AbstractEpollStreamChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "SpliceInTask"
.end annotation


# instance fields
.field len:I

.field final promise:Lio/netty/channel/ChannelPromise;

.field final synthetic this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;


# direct methods
.method protected constructor <init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;ILio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/epoll/AbstractEpollStreamChannel;
    .param p2, "len"    # I
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 856
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    iput-object p3, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->promise:Lio/netty/channel/ChannelPromise;

    .line 858
    iput p2, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->len:I

    .line 859
    return-void
.end method


# virtual methods
.method protected final spliceIn(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/RecvByteBufAllocator$Handle;)I
    .locals 11
    .param p1, "pipeOut"    # Lio/netty/channel/unix/FileDescriptor;
    .param p2, "handle"    # Lio/netty/channel/RecvByteBufAllocator$Handle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 865
    invoke-interface {p2}, Lio/netty/channel/RecvByteBufAllocator$Handle;->guess()I

    move-result v0

    iget v1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->len:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 866
    .local v0, "length":I
    const/4 v1, 0x0

    .line 869
    .local v1, "splicedIn":I
    :goto_0
    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    iget-object v2, v2, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v2}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v6

    const-wide/16 v7, -0x1

    int-to-long v9, v0

    const-wide/16 v4, -0x1

    invoke-static/range {v3 .. v10}, Lio/netty/channel/epoll/Native;->splice(IJIJJ)I

    move-result v2

    .line 870
    .local v2, "localSplicedIn":I
    invoke-interface {p2, v2}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead(I)V

    .line 871
    if-nez v2, :cond_0

    .line 872
    nop

    .line 878
    .end local v2    # "localSplicedIn":I
    return v1

    .line 874
    .restart local v2    # "localSplicedIn":I
    :cond_0
    add-int/2addr v1, v2

    .line 875
    sub-int/2addr v0, v2

    .line 876
    .end local v2    # "localSplicedIn":I
    goto :goto_0
.end method

.method abstract spliceIn(Lio/netty/channel/RecvByteBufAllocator$Handle;)Z
.end method
