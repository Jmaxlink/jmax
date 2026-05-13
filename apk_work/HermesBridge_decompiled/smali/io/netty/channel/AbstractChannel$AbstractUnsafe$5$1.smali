.class Lio/netty/channel/AbstractChannel$AbstractUnsafe$5$1;
.super Ljava/lang/Object;
.source "AbstractChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;


# direct methods
.method constructor <init>(Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;)V
    .locals 0
    .param p1, "this$2"    # Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;

    .line 714
    iput-object p1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5$1;->this$2:Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 717
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5$1;->this$2:Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;

    iget-object v0, v0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;->val$outboundBuffer:Lio/netty/channel/ChannelOutboundBuffer;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5$1;->this$2:Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;

    iget-object v0, v0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;->val$outboundBuffer:Lio/netty/channel/ChannelOutboundBuffer;

    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5$1;->this$2:Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;

    iget-object v1, v1, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;->val$cause:Ljava/lang/Throwable;

    iget-object v2, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5$1;->this$2:Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;

    iget-boolean v2, v2, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;->val$notify:Z

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/ChannelOutboundBuffer;->failFlushed(Ljava/lang/Throwable;Z)V

    .line 720
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5$1;->this$2:Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;

    iget-object v0, v0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;->val$outboundBuffer:Lio/netty/channel/ChannelOutboundBuffer;

    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5$1;->this$2:Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;

    iget-object v1, v1, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;->val$closeCause:Ljava/nio/channels/ClosedChannelException;

    invoke-virtual {v0, v1}, Lio/netty/channel/ChannelOutboundBuffer;->close(Ljava/nio/channels/ClosedChannelException;)V

    .line 722
    :cond_0
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5$1;->this$2:Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;

    iget-object v0, v0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5$1;->this$2:Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;

    iget-boolean v1, v1, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;->val$wasActive:Z

    invoke-static {v0, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->access$1000(Lio/netty/channel/AbstractChannel$AbstractUnsafe;Z)V

    .line 723
    return-void
.end method
