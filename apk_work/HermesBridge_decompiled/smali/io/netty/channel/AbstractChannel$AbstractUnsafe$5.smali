.class Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;
.super Ljava/lang/Object;
.source "AbstractChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/AbstractChannel$AbstractUnsafe;->close(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;Ljava/nio/channels/ClosedChannelException;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

.field final synthetic val$cause:Ljava/lang/Throwable;

.field final synthetic val$closeCause:Ljava/nio/channels/ClosedChannelException;

.field final synthetic val$notify:Z

.field final synthetic val$outboundBuffer:Lio/netty/channel/ChannelOutboundBuffer;

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;

.field final synthetic val$wasActive:Z


# direct methods
.method constructor <init>(Lio/netty/channel/AbstractChannel$AbstractUnsafe;Lio/netty/channel/ChannelPromise;Lio/netty/channel/ChannelOutboundBuffer;Ljava/lang/Throwable;ZLjava/nio/channels/ClosedChannelException;Z)V
    .locals 0
    .param p1, "this$1"    # Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    .line 706
    iput-object p1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    iput-object p2, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;->val$promise:Lio/netty/channel/ChannelPromise;

    iput-object p3, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;->val$outboundBuffer:Lio/netty/channel/ChannelOutboundBuffer;

    iput-object p4, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;->val$cause:Ljava/lang/Throwable;

    iput-boolean p5, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;->val$notify:Z

    iput-object p6, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;->val$closeCause:Ljava/nio/channels/ClosedChannelException;

    iput-boolean p7, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;->val$wasActive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 711
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-static {v0, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->access$900(Lio/netty/channel/AbstractChannel$AbstractUnsafe;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    new-instance v1, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5$1;

    invoke-direct {v1, p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5$1;-><init>(Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;)V

    invoke-static {v0, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->access$1100(Lio/netty/channel/AbstractChannel$AbstractUnsafe;Ljava/lang/Runnable;)V

    .line 725
    nop

    .line 726
    return-void

    .line 714
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    new-instance v2, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5$1;

    invoke-direct {v2, p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5$1;-><init>(Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;)V

    invoke-static {v1, v2}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->access$1100(Lio/netty/channel/AbstractChannel$AbstractUnsafe;Ljava/lang/Runnable;)V

    .line 725
    throw v0
.end method
