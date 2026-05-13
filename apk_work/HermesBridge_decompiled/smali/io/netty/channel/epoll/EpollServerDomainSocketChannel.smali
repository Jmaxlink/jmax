.class public final Lio/netty/channel/epoll/EpollServerDomainSocketChannel;
.super Lio/netty/channel/epoll/AbstractEpollServerChannel;
.source "EpollServerDomainSocketChannel.java"

# interfaces
.implements Lio/netty/channel/unix/ServerDomainSocketChannel;


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final config:Lio/netty/channel/epoll/EpollServerChannelConfig;

.field private volatile local:Lio/netty/channel/unix/DomainSocketAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-static {}, Lio/netty/channel/epoll/LinuxSocket;->newSocketDomain()Lio/netty/channel/epoll/LinuxSocket;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/netty/channel/epoll/AbstractEpollServerChannel;-><init>(Lio/netty/channel/epoll/LinuxSocket;Z)V

    .line 35
    new-instance v0, Lio/netty/channel/epoll/EpollServerChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/EpollServerChannelConfig;-><init>(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    iput-object v0, p0, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->config:Lio/netty/channel/epoll/EpollServerChannelConfig;

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "fd"    # I

    .line 43
    invoke-direct {p0, p1}, Lio/netty/channel/epoll/AbstractEpollServerChannel;-><init>(I)V

    .line 35
    new-instance v0, Lio/netty/channel/epoll/EpollServerChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/EpollServerChannelConfig;-><init>(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    iput-object v0, p0, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->config:Lio/netty/channel/epoll/EpollServerChannelConfig;

    .line 44
    return-void
.end method

.method constructor <init>(Lio/netty/channel/epoll/LinuxSocket;)V
    .locals 1
    .param p1, "fd"    # Lio/netty/channel/epoll/LinuxSocket;

    .line 47
    invoke-direct {p0, p1}, Lio/netty/channel/epoll/AbstractEpollServerChannel;-><init>(Lio/netty/channel/epoll/LinuxSocket;)V

    .line 35
    new-instance v0, Lio/netty/channel/epoll/EpollServerChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/EpollServerChannelConfig;-><init>(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    iput-object v0, p0, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->config:Lio/netty/channel/epoll/EpollServerChannelConfig;

    .line 48
    return-void
.end method

.method constructor <init>(Lio/netty/channel/epoll/LinuxSocket;Z)V
    .locals 1
    .param p1, "fd"    # Lio/netty/channel/epoll/LinuxSocket;
    .param p2, "active"    # Z

    .line 51
    invoke-direct {p0, p1, p2}, Lio/netty/channel/epoll/AbstractEpollServerChannel;-><init>(Lio/netty/channel/epoll/LinuxSocket;Z)V

    .line 35
    new-instance v0, Lio/netty/channel/epoll/EpollServerChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/EpollServerChannelConfig;-><init>(Lio/netty/channel/epoll/AbstractEpollChannel;)V

    iput-object v0, p0, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->config:Lio/netty/channel/epoll/EpollServerChannelConfig;

    .line 52
    return-void
.end method


# virtual methods
.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->config()Lio/netty/channel/epoll/EpollServerChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->config()Lio/netty/channel/epoll/EpollServerChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public config()Lio/netty/channel/epoll/EpollServerChannelConfig;
    .locals 1

    .line 91
    iget-object v0, p0, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->config:Lio/netty/channel/epoll/EpollServerChannelConfig;

    return-object v0
.end method

.method protected doBind(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->bind(Ljava/net/SocketAddress;)V

    .line 67
    iget-object v0, p0, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    iget-object v1, p0, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->config:Lio/netty/channel/epoll/EpollServerChannelConfig;

    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollServerChannelConfig;->getBacklog()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;->listen(I)V

    .line 68
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    iput-object v0, p0, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->local:Lio/netty/channel/unix/DomainSocketAddress;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->active:Z

    .line 70
    return-void
.end method

.method protected doClose()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    const-string v0, "Failed to delete a domain socket file: {}"

    :try_start_0
    invoke-super {p0}, Lio/netty/channel/epoll/AbstractEpollServerChannel;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v1, p0, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->local:Lio/netty/channel/unix/DomainSocketAddress;

    .line 78
    .local v1, "local":Lio/netty/channel/unix/DomainSocketAddress;
    if-eqz v1, :cond_0

    .line 80
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lio/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v2, "socketFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    .line 82
    .local v3, "success":Z
    if-nez v3, :cond_0

    sget-object v4, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    sget-object v4, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-virtual {v1}, Lio/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    .end local v1    # "local":Lio/netty/channel/unix/DomainSocketAddress;
    .end local v2    # "socketFile":Ljava/io/File;
    .end local v3    # "success":Z
    :cond_0
    nop

    .line 87
    return-void

    .line 77
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->local:Lio/netty/channel/unix/DomainSocketAddress;

    .line 78
    .local v2, "local":Lio/netty/channel/unix/DomainSocketAddress;
    if-eqz v2, :cond_1

    .line 80
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lio/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v3, "socketFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    .line 82
    .local v4, "success":Z
    if-nez v4, :cond_1

    sget-object v5, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v5}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    sget-object v5, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-virtual {v2}, Lio/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    .end local v2    # "local":Lio/netty/channel/unix/DomainSocketAddress;
    .end local v3    # "socketFile":Ljava/io/File;
    .end local v4    # "success":Z
    :cond_1
    throw v1
.end method

.method public localAddress()Lio/netty/channel/unix/DomainSocketAddress;
    .locals 1

    .line 101
    invoke-super {p0}, Lio/netty/channel/epoll/AbstractEpollServerChannel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    return-object v0
.end method

.method public bridge synthetic localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->localAddress()Lio/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected localAddress0()Lio/netty/channel/unix/DomainSocketAddress;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->local:Lio/netty/channel/unix/DomainSocketAddress;

    return-object v0
.end method

.method protected bridge synthetic localAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->localAddress0()Lio/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected newChildChannel(I[BII)Lio/netty/channel/Channel;
    .locals 2
    .param p1, "fd"    # I
    .param p2, "addr"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    new-instance v0, Lio/netty/channel/epoll/EpollDomainSocketChannel;

    new-instance v1, Lio/netty/channel/unix/Socket;

    invoke-direct {v1, p1}, Lio/netty/channel/unix/Socket;-><init>(I)V

    invoke-direct {v0, p0, v1}, Lio/netty/channel/epoll/EpollDomainSocketChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/unix/FileDescriptor;)V

    return-object v0
.end method

.method public remoteAddress()Lio/netty/channel/unix/DomainSocketAddress;
    .locals 1

    .line 96
    invoke-super {p0}, Lio/netty/channel/epoll/AbstractEpollServerChannel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    return-object v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollServerDomainSocketChannel;->remoteAddress()Lio/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    return-object v0
.end method
