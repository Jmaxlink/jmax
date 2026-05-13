.class Lio/netty/channel/epoll/EpollDatagramChannel$2;
.super Ljava/lang/Object;
.source "EpollDatagramChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/epoll/EpollDatagramChannel;->leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

.field final synthetic val$multicastAddress:Ljava/net/InetAddress;

.field final synthetic val$networkInterface:Ljava/net/NetworkInterface;

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;

.field final synthetic val$source:Ljava/net/InetAddress;


# direct methods
.method constructor <init>(Lio/netty/channel/epoll/EpollDatagramChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/epoll/EpollDatagramChannel;

    .line 250
    iput-object p1, p0, Lio/netty/channel/epoll/EpollDatagramChannel$2;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    iput-object p2, p0, Lio/netty/channel/epoll/EpollDatagramChannel$2;->val$multicastAddress:Ljava/net/InetAddress;

    iput-object p3, p0, Lio/netty/channel/epoll/EpollDatagramChannel$2;->val$networkInterface:Ljava/net/NetworkInterface;

    iput-object p4, p0, Lio/netty/channel/epoll/EpollDatagramChannel$2;->val$source:Ljava/net/InetAddress;

    iput-object p5, p0, Lio/netty/channel/epoll/EpollDatagramChannel$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 253
    iget-object v0, p0, Lio/netty/channel/epoll/EpollDatagramChannel$2;->this$0:Lio/netty/channel/epoll/EpollDatagramChannel;

    iget-object v1, p0, Lio/netty/channel/epoll/EpollDatagramChannel$2;->val$multicastAddress:Ljava/net/InetAddress;

    iget-object v2, p0, Lio/netty/channel/epoll/EpollDatagramChannel$2;->val$networkInterface:Ljava/net/NetworkInterface;

    iget-object v3, p0, Lio/netty/channel/epoll/EpollDatagramChannel$2;->val$source:Ljava/net/InetAddress;

    iget-object v4, p0, Lio/netty/channel/epoll/EpollDatagramChannel$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-static {v0, v1, v2, v3, v4}, Lio/netty/channel/epoll/EpollDatagramChannel;->access$100(Lio/netty/channel/epoll/EpollDatagramChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)V

    .line 254
    return-void
.end method
