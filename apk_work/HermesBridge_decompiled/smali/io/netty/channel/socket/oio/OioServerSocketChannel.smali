.class public Lio/netty/channel/socket/oio/OioServerSocketChannel;
.super Lio/netty/channel/oio/AbstractOioMessageChannel;
.source "OioServerSocketChannel.java"

# interfaces
.implements Lio/netty/channel/socket/ServerSocketChannel;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final METADATA:Lio/netty/channel/ChannelMetadata;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final config:Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

.field final socket:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    nop

    .line 48
    const-class v0, Lio/netty/channel/socket/oio/OioServerSocketChannel;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/socket/oio/OioServerSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 50
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/netty/channel/ChannelMetadata;-><init>(ZI)V

    sput-object v0, Lio/netty/channel/socket/oio/OioServerSocketChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-static {}, Lio/netty/channel/socket/oio/OioServerSocketChannel;->newServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/socket/oio/OioServerSocketChannel;-><init>(Ljava/net/ServerSocket;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/net/ServerSocket;)V
    .locals 5
    .param p1, "socket"    # Ljava/net/ServerSocket;

    .line 76
    const-string v0, "Failed to close a partially initialized socket."

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lio/netty/channel/oio/AbstractOioMessageChannel;-><init>(Lio/netty/channel/Channel;)V

    .line 77
    const-string v1, "socket"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    const/4 v1, 0x0

    .line 81
    .local v1, "success":Z
    const/16 v2, 0x3e8

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    const/4 v1, 0x1

    .line 87
    if-nez v1, :cond_1

    .line 89
    :try_start_1
    invoke-virtual {p1}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    :cond_0
    :goto_0
    goto :goto_1

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lio/netty/channel/socket/oio/OioServerSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    sget-object v3, Lio/netty/channel/socket/oio/OioServerSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v3, v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 98
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    iput-object p1, p0, Lio/netty/channel/socket/oio/OioServerSocketChannel;->socket:Ljava/net/ServerSocket;

    .line 99
    new-instance v0, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;

    invoke-direct {v0, p0, p1}, Lio/netty/channel/socket/oio/DefaultOioServerSocketChannelConfig;-><init>(Lio/netty/channel/socket/oio/OioServerSocketChannel;Ljava/net/ServerSocket;)V

    iput-object v0, p0, Lio/netty/channel/socket/oio/OioServerSocketChannel;->config:Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    .line 100
    return-void

    .line 87
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 83
    :catch_1
    move-exception v2

    .line 84
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Lio/netty/channel/ChannelException;

    const-string v4, "Failed to set the server socket timeout."

    invoke-direct {v3, v4, v2}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "success":Z
    .end local p1    # "socket":Ljava/net/ServerSocket;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "success":Z
    .restart local p1    # "socket":Ljava/net/ServerSocket;
    :goto_2
    if-nez v1, :cond_2

    .line 89
    :try_start_3
    invoke-virtual {p1}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 95
    goto :goto_3

    .line 90
    :catch_2
    move-exception v3

    .line 91
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lio/netty/channel/socket/oio/OioServerSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    sget-object v4, Lio/netty/channel/socket/oio/OioServerSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4, v0, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v2
.end method

.method private static newServerSocket()Ljava/net/ServerSocket;
    .locals 3

    .line 54
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "failed to create a server socket"

    invoke-direct {v1, v2, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method final clearReadPending0()V
    .locals 0

    .line 205
    invoke-super {p0}, Lio/netty/channel/oio/AbstractOioMessageChannel;->clearReadPending()V

    .line 206
    return-void
.end method

.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioServerSocketChannel;->config()Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/socket/ServerSocketChannelConfig;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioServerSocketChannel;->config()Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public config()Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;
    .locals 1

    .line 114
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioServerSocketChannel;->config:Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

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

    .line 139
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioServerSocketChannel;->socket:Ljava/net/ServerSocket;

    iget-object v1, p0, Lio/netty/channel/socket/oio/OioServerSocketChannel;->config:Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;

    invoke-interface {v1}, Lio/netty/channel/socket/oio/OioServerSocketChannelConfig;->getBacklog()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 140
    return-void
.end method

.method protected doClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioServerSocketChannel;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 145
    return-void
.end method

.method protected doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected doDisconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected doReadMessages(Ljava/util/List;)I
    .locals 5
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

    .line 149
    .local p1, "buf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioServerSocketChannel;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, -0x1

    return v0

    .line 154
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioServerSocketChannel;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .local v0, "s":Ljava/net/Socket;
    :try_start_1
    new-instance v1, Lio/netty/channel/socket/oio/OioSocketChannel;

    invoke-direct {v1, p0, v0}, Lio/netty/channel/socket/oio/OioSocketChannel;-><init>(Lio/netty/channel/Channel;Ljava/net/Socket;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    const/4 v1, 0x1

    return v1

    .line 158
    :catchall_0
    move-exception v1

    .line 159
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v2, Lio/netty/channel/socket/oio/OioServerSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Failed to create a new channel from an accepted socket."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0

    .line 161
    :try_start_3
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    goto :goto_0

    .line 162
    :catchall_1
    move-exception v2

    .line 163
    .local v2, "t2":Ljava/lang/Throwable;
    :try_start_4
    sget-object v3, Lio/netty/channel/socket/oio/OioServerSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Failed to close a socket."

    invoke-interface {v3, v4, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0

    .line 168
    .end local v0    # "s":Ljava/net/Socket;
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "t2":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 166
    :catch_0
    move-exception v0

    .line 169
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method protected doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .locals 1
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected filterOutboundMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isActive()Z
    .locals 1

    .line 129
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioServerSocketChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/socket/oio/OioServerSocketChannel;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioServerSocketChannel;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 104
    invoke-super {p0}, Lio/netty/channel/oio/AbstractOioMessageChannel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioServerSocketChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected localAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 134
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioServerSocketChannel;->socket:Ljava/net/ServerSocket;

    invoke-static {v0}, Lio/netty/util/internal/SocketUtils;->localSocketAddress(Ljava/net/ServerSocket;)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 109
    sget-object v0, Lio/netty/channel/socket/oio/OioServerSocketChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method public remoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioServerSocketChannel;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected remoteAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method protected setReadPending(Z)V
    .locals 0
    .param p1, "readPending"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    invoke-super {p0, p1}, Lio/netty/channel/oio/AbstractOioMessageChannel;->setReadPending(Z)V

    .line 202
    return-void
.end method
