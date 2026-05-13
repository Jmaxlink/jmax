.class final Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;
.super Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;
.source "AbstractEpollStreamChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/epoll/AbstractEpollStreamChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpliceFdTask"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final fd:Lio/netty/channel/unix/FileDescriptor;

.field private offset:I

.field private final promise:Lio/netty/channel/ChannelPromise;

.field final synthetic this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 990
    const-class v0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/unix/FileDescriptor;IILio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p2, "fd"    # Lio/netty/channel/unix/FileDescriptor;
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .param p5, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 995
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 996
    invoke-direct {p0, p1, p4, p5}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;-><init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;ILio/netty/channel/ChannelPromise;)V

    .line 997
    iput-object p2, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->fd:Lio/netty/channel/unix/FileDescriptor;

    .line 998
    iput-object p5, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->promise:Lio/netty/channel/ChannelPromise;

    .line 999
    iput p3, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->offset:I

    .line 1000
    return-void
.end method


# virtual methods
.method public spliceIn(Lio/netty/channel/RecvByteBufAllocator$Handle;)Z
    .locals 14
    .param p1, "handle"    # Lio/netty/channel/RecvByteBufAllocator$Handle;

    .line 1004
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1005
    iget v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->len:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1006
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 1007
    return v1

    .line 1011
    :cond_0
    :try_start_0
    invoke-static {}, Lio/netty/channel/unix/FileDescriptor;->pipe()[Lio/netty/channel/unix/FileDescriptor;

    move-result-object v0

    .line 1012
    .local v0, "pipe":[Lio/netty/channel/unix/FileDescriptor;
    const/4 v2, 0x0

    aget-object v3, v0, v2

    .line 1013
    .local v3, "pipeIn":Lio/netty/channel/unix/FileDescriptor;
    aget-object v4, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1015
    .local v4, "pipeOut":Lio/netty/channel/unix/FileDescriptor;
    :try_start_1
    invoke-virtual {p0, v4, p1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->spliceIn(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/RecvByteBufAllocator$Handle;)I

    move-result v5

    .line 1016
    .local v5, "splicedIn":I
    if-lez v5, :cond_2

    .line 1018
    iget v6, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->len:I

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_1

    .line 1019
    iget v6, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->len:I

    sub-int/2addr v6, v5

    iput v6, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->len:I

    .line 1022
    :cond_1
    invoke-virtual {v3}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v6

    iget-object v7, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->fd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v7}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v9

    iget v7, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->offset:I

    int-to-long v10, v7

    int-to-long v12, v5

    const-wide/16 v7, -0x1

    invoke-static/range {v6 .. v13}, Lio/netty/channel/epoll/Native;->splice(IJIJJ)I

    move-result v6

    .line 1023
    .local v6, "splicedOut":I
    iget v7, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->offset:I

    add-int/2addr v7, v6

    iput v7, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->offset:I

    .line 1024
    sub-int/2addr v5, v6

    .line 1025
    .end local v6    # "splicedOut":I
    if-gtz v5, :cond_1

    .line 1026
    iget v6, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->len:I

    if-nez v6, :cond_2

    .line 1027
    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1028
    nop

    .line 1033
    :try_start_2
    invoke-static {v3}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$700(Lio/netty/channel/unix/FileDescriptor;)V

    .line 1034
    invoke-static {v4}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$700(Lio/netty/channel/unix/FileDescriptor;)V

    .line 1028
    return v1

    .line 1031
    :cond_2
    nop

    .line 1033
    invoke-static {v3}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$700(Lio/netty/channel/unix/FileDescriptor;)V

    .line 1034
    invoke-static {v4}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$700(Lio/netty/channel/unix/FileDescriptor;)V

    .line 1031
    return v2

    .line 1033
    .end local v5    # "splicedIn":I
    :catchall_0
    move-exception v2

    invoke-static {v3}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$700(Lio/netty/channel/unix/FileDescriptor;)V

    .line 1034
    invoke-static {v4}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$700(Lio/netty/channel/unix/FileDescriptor;)V

    .line 1035
    nop

    .end local p1    # "handle":Lio/netty/channel/RecvByteBufAllocator$Handle;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1036
    .end local v0    # "pipe":[Lio/netty/channel/unix/FileDescriptor;
    .end local v3    # "pipeIn":Lio/netty/channel/unix/FileDescriptor;
    .end local v4    # "pipeOut":Lio/netty/channel/unix/FileDescriptor;
    .restart local p1    # "handle":Lio/netty/channel/RecvByteBufAllocator$Handle;
    :catchall_1
    move-exception v0

    .line 1037
    .local v0, "cause":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceFdTask;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 1038
    return v1

    .line 1004
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
