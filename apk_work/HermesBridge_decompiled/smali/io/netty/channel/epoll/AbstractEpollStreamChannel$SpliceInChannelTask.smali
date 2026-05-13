.class final Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;
.super Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;
.source "AbstractEpollStreamChannel.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/epoll/AbstractEpollStreamChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpliceInChannelTask"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final ch:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

.field final synthetic this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 883
    const-class v0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/epoll/AbstractEpollStreamChannel;ILio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p2, "ch"    # Lio/netty/channel/epoll/AbstractEpollStreamChannel;
    .param p3, "len"    # I
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 886
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 887
    invoke-direct {p0, p1, p3, p4}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInTask;-><init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;ILio/netty/channel/ChannelPromise;)V

    .line 888
    iput-object p2, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->ch:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 889
    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 2
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 893
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 894
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 896
    :cond_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 883
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

.method public spliceIn(Lio/netty/channel/RecvByteBufAllocator$Handle;)Z
    .locals 10
    .param p1, "handle"    # Lio/netty/channel/RecvByteBufAllocator$Handle;

    .line 900
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->ch:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 901
    iget v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->len:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 902
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 903
    return v1

    .line 909
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->ch:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-static {v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$500(Lio/netty/channel/epoll/AbstractEpollStreamChannel;)Lio/netty/channel/unix/FileDescriptor;

    move-result-object v0

    .line 910
    .local v0, "pipeOut":Lio/netty/channel/unix/FileDescriptor;
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 912
    invoke-static {}, Lio/netty/channel/unix/FileDescriptor;->pipe()[Lio/netty/channel/unix/FileDescriptor;

    move-result-object v3

    .line 913
    .local v3, "pipe":[Lio/netty/channel/unix/FileDescriptor;
    iget-object v4, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->ch:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    aget-object v5, v3, v2

    invoke-static {v4, v5}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$602(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/unix/FileDescriptor;)Lio/netty/channel/unix/FileDescriptor;

    .line 914
    iget-object v4, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->ch:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    aget-object v5, v3, v1

    invoke-static {v4, v5}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->access$502(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/unix/FileDescriptor;)Lio/netty/channel/unix/FileDescriptor;

    move-result-object v4

    move-object v0, v4

    .line 917
    .end local v3    # "pipe":[Lio/netty/channel/unix/FileDescriptor;
    :cond_1
    invoke-virtual {p0, v0, p1}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->spliceIn(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/RecvByteBufAllocator$Handle;)I

    move-result v3

    .line 918
    .local v3, "splicedIn":I
    if-lez v3, :cond_4

    .line 920
    iget v4, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->len:I

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_2

    .line 921
    iget v4, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->len:I

    sub-int/2addr v4, v3

    iput v4, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->len:I

    .line 927
    :cond_2
    iget v4, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->len:I

    if-nez v4, :cond_3

    .line 928
    iget-object v4, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->promise:Lio/netty/channel/ChannelPromise;

    .local v4, "splicePromise":Lio/netty/channel/ChannelPromise;
    goto :goto_0

    .line 930
    .end local v4    # "splicePromise":Lio/netty/channel/ChannelPromise;
    :cond_3
    iget-object v4, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->ch:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v4}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v4

    invoke-interface {v4, p0}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object v4

    .line 933
    .restart local v4    # "splicePromise":Lio/netty/channel/ChannelPromise;
    :goto_0
    iget-object v5, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v5}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object v5

    invoke-virtual {v5}, Lio/netty/channel/epoll/EpollChannelConfig;->isAutoRead()Z

    move-result v5

    .line 937
    .local v5, "autoRead":Z
    iget-object v6, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->ch:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v6}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v6

    new-instance v7, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceOutTask;

    iget-object v8, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    iget-object v9, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->ch:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-direct {v7, v8, v9, v3, v5}, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceOutTask;-><init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;Lio/netty/channel/epoll/AbstractEpollStreamChannel;IZ)V

    invoke-interface {v6, v7, v4}, Lio/netty/channel/Channel$Unsafe;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 938
    iget-object v6, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->ch:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v6}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v6

    invoke-interface {v6}, Lio/netty/channel/Channel$Unsafe;->flush()V

    .line 939
    if-eqz v5, :cond_4

    invoke-interface {v4}, Lio/netty/channel/ChannelPromise;->isDone()Z

    move-result v6

    if-nez v6, :cond_4

    .line 944
    iget-object v6, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v6}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->config()Lio/netty/channel/epoll/EpollChannelConfig;

    move-result-object v6

    invoke-virtual {v6, v2}, Lio/netty/channel/epoll/EpollChannelConfig;->setAutoRead(Z)Lio/netty/channel/epoll/EpollChannelConfig;

    .line 948
    .end local v4    # "splicePromise":Lio/netty/channel/ChannelPromise;
    .end local v5    # "autoRead":Z
    :cond_4
    iget v4, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->len:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    return v1

    .line 949
    .end local v0    # "pipeOut":Lio/netty/channel/unix/FileDescriptor;
    .end local v3    # "splicedIn":I
    :catchall_0
    move-exception v0

    .line 950
    .local v0, "cause":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$SpliceInChannelTask;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 951
    return v1

    .line 900
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
