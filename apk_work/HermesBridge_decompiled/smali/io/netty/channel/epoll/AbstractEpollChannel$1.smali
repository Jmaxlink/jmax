.class Lio/netty/channel/epoll/AbstractEpollChannel$1;
.super Ljava/lang/Object;
.source "AbstractEpollChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/epoll/AbstractEpollChannel;->doClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/epoll/AbstractEpollChannel;


# direct methods
.method constructor <init>(Lio/netty/channel/epoll/AbstractEpollChannel;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/epoll/AbstractEpollChannel;

    .line 178
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollChannel$1;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 182
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollChannel$1;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollChannel;->doDeregister()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    .line 184
    .local v0, "cause":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/netty/channel/epoll/AbstractEpollChannel$1;->this$0:Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-virtual {v1}, Lio/netty/channel/epoll/AbstractEpollChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    .line 186
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
