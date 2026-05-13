.class public final Lio/netty/channel/epoll/EpollDomainDatagramChannel;
.super Lio/netty/channel/epoll/AbstractEpollChannel;
.source "EpollDomainDatagramChannel.java"

# interfaces
.implements Lio/netty/channel/unix/DomainDatagramChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EXPECTED_TYPES:Ljava/lang/String;

.field private static final METADATA:Lio/netty/channel/ChannelMetadata;


# instance fields
.field private final config:Lio/netty/channel/epoll/EpollDomainDatagramChannelConfig;

.field private volatile connected:Z

.field private volatile local:Lio/netty/channel/unix/DomainSocketAddress;

.field private volatile remote:Lio/netty/channel/unix/DomainSocketAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    nop

    .line 47
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/netty/channel/ChannelMetadata;-><init>(ZI)V

    sput-object v0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/channel/unix/DomainDatagramPacket;

    .line 51
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lio/netty/channel/AddressedEnvelope;

    .line 52
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lio/netty/buffer/ByteBuf;

    .line 53
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/channel/unix/DomainSocketAddress;

    .line 54
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/buffer/ByteBuf;

    .line 55
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->EXPECTED_TYPES:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-static {}, Lio/netty/channel/epoll/LinuxSocket;->newSocketDomainDgram()Lio/netty/channel/epoll/LinuxSocket;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;-><init>(Lio/netty/channel/epoll/LinuxSocket;Z)V

    .line 65
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "fd"    # I

    .line 68
    new-instance v0, Lio/netty/channel/epoll/LinuxSocket;

    invoke-direct {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;-><init>(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;-><init>(Lio/netty/channel/epoll/LinuxSocket;Z)V

    .line 69
    return-void
.end method

.method private constructor <init>(Lio/netty/channel/epoll/LinuxSocket;Z)V
    .locals 1
    .param p1, "socket"    # Lio/netty/channel/epoll/LinuxSocket;
    .param p2, "active"    # Z

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lio/netty/channel/epoll/AbstractEpollChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/epoll/LinuxSocket;Z)V

    .line 73
    new-instance v0, Lio/netty/channel/epoll/EpollDomainDatagramChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannelConfig;-><init>(Lio/netty/channel/epoll/EpollDomainDatagramChannel;)V

    iput-object v0, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->config:Lio/netty/channel/epoll/EpollDomainDatagramChannelConfig;

    .line 74
    return-void
.end method

.method private doWriteMessage(Ljava/lang/Object;)Z
    .locals 14
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    instance-of v0, p1, Lio/netty/channel/AddressedEnvelope;

    if-eqz v0, :cond_0

    .line 162
    move-object v0, p1

    check-cast v0, Lio/netty/channel/AddressedEnvelope;

    .line 164
    .local v0, "envelope":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<Lio/netty/buffer/ByteBuf;Lio/netty/channel/unix/DomainSocketAddress;>;"
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 165
    .local v1, "data":Lio/netty/buffer/ByteBuf;
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    .line 166
    .local v0, "remoteAddress":Lio/netty/channel/unix/DomainSocketAddress;
    goto :goto_0

    .line 167
    .end local v0    # "remoteAddress":Lio/netty/channel/unix/DomainSocketAddress;
    .end local v1    # "data":Lio/netty/buffer/ByteBuf;
    :cond_0
    move-object v1, p1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 168
    .restart local v1    # "data":Lio/netty/buffer/ByteBuf;
    const/4 v0, 0x0

    .line 171
    .restart local v0    # "remoteAddress":Lio/netty/channel/unix/DomainSocketAddress;
    :goto_0
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    .line 172
    .local v2, "dataLen":I
    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 173
    return v3

    .line 177
    :cond_1
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 178
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v12

    .line 179
    .local v12, "memoryAddress":J
    if-nez v0, :cond_2

    .line 180
    iget-object v4, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v7

    invoke-virtual {v4, v12, v13, v6, v7}, Lio/netty/channel/epoll/LinuxSocket;->sendAddress(JII)I

    move-result v4

    int-to-long v6, v4

    .local v6, "writtenBytes":J
    goto :goto_1

    .line 182
    .end local v6    # "writtenBytes":J
    :cond_2
    iget-object v6, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v9

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v10

    .line 183
    invoke-virtual {v0}, Lio/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    .line 182
    move-wide v7, v12

    invoke-virtual/range {v6 .. v11}, Lio/netty/channel/epoll/LinuxSocket;->sendToAddressDomainSocket(JII[B)I

    move-result v4

    int-to-long v6, v4

    .line 185
    .end local v12    # "memoryAddress":J
    .restart local v6    # "writtenBytes":J
    :goto_1
    goto/16 :goto_3

    .end local v6    # "writtenBytes":J
    :cond_3
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v4

    if-le v4, v3, :cond_6

    .line 186
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v4

    check-cast v4, Lio/netty/channel/epoll/EpollEventLoop;

    invoke-virtual {v4}, Lio/netty/channel/epoll/EpollEventLoop;->cleanIovArray()Lio/netty/channel/unix/IovArray;

    move-result-object v4

    .line 187
    .local v4, "array":Lio/netty/channel/unix/IovArray;
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v7

    invoke-virtual {v4, v1, v6, v7}, Lio/netty/channel/unix/IovArray;->add(Lio/netty/buffer/ByteBuf;II)Z

    .line 188
    invoke-virtual {v4}, Lio/netty/channel/unix/IovArray;->count()I

    move-result v6

    .line 189
    .local v6, "cnt":I
    if-eqz v6, :cond_5

    .line 191
    if-nez v0, :cond_4

    .line 192
    iget-object v7, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v4, v5}, Lio/netty/channel/unix/IovArray;->memoryAddress(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v6}, Lio/netty/channel/epoll/LinuxSocket;->writevAddresses(JI)J

    move-result-wide v7

    move-wide v6, v7

    .local v7, "writtenBytes":J
    goto :goto_2

    .line 194
    .end local v7    # "writtenBytes":J
    :cond_4
    iget-object v7, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v4, v5}, Lio/netty/channel/unix/IovArray;->memoryAddress(I)J

    move-result-wide v8

    .line 195
    invoke-virtual {v0}, Lio/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    .line 194
    invoke-virtual {v7, v8, v9, v6, v10}, Lio/netty/channel/epoll/LinuxSocket;->sendToAddressesDomainSocket(JI[B)I

    move-result v7

    int-to-long v7, v7

    move-wide v6, v7

    .line 197
    .end local v4    # "array":Lio/netty/channel/unix/IovArray;
    .local v6, "writtenBytes":J
    :goto_2
    goto :goto_3

    .line 189
    .restart local v4    # "array":Lio/netty/channel/unix/IovArray;
    .local v6, "cnt":I
    :cond_5
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 198
    .end local v4    # "array":Lio/netty/channel/unix/IovArray;
    .end local v6    # "cnt":I
    :cond_6
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    invoke-virtual {v1, v4, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 199
    .local v4, "nioData":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_7

    .line 200
    iget-object v6, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    invoke-virtual {v6, v4, v7, v8}, Lio/netty/channel/epoll/LinuxSocket;->send(Ljava/nio/ByteBuffer;II)I

    move-result v6

    int-to-long v6, v6

    .local v6, "writtenBytes":J
    goto :goto_3

    .line 202
    .end local v6    # "writtenBytes":J
    :cond_7
    iget-object v6, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    .line 203
    invoke-virtual {v0}, Lio/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    .line 202
    invoke-virtual {v6, v4, v7, v8, v9}, Lio/netty/channel/epoll/LinuxSocket;->sendToDomainSocket(Ljava/nio/ByteBuffer;II[B)I

    move-result v6

    int-to-long v6, v6

    .line 207
    .end local v4    # "nioData":Ljava/nio/ByteBuffer;
    .restart local v6    # "writtenBytes":J
    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_8

    goto :goto_4

    :cond_8
    move v3, v5

    :goto_4
    return v3
.end method


# virtual methods
.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->config()Lio/netty/channel/epoll/EpollDomainDatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->config()Lio/netty/channel/epoll/EpollDomainDatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public config()Lio/netty/channel/epoll/EpollDomainDatagramChannelConfig;
    .locals 1

    .line 78
    iget-object v0, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->config:Lio/netty/channel/epoll/EpollDomainDatagramChannelConfig;

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/unix/DomainDatagramChannelConfig;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->config()Lio/netty/channel/epoll/EpollDomainDatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method protected doBind(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    invoke-super {p0, p1}, Lio/netty/channel/epoll/AbstractEpollChannel;->doBind(Ljava/net/SocketAddress;)V

    .line 84
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    iput-object v0, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->local:Lio/netty/channel/unix/DomainSocketAddress;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->active:Z

    .line 86
    return-void
.end method

.method protected doClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    invoke-super {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->doClose()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->active:Z

    iput-boolean v0, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->connected:Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->local:Lio/netty/channel/unix/DomainSocketAddress;

    .line 93
    iput-object v0, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->remote:Lio/netty/channel/unix/DomainSocketAddress;

    .line 94
    return-void
.end method

.method protected doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    invoke-super {p0, p1, p2}, Lio/netty/channel/epoll/AbstractEpollChannel;->doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    if-eqz p2, :cond_0

    .line 100
    move-object v0, p2

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    iput-object v0, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->local:Lio/netty/channel/unix/DomainSocketAddress;

    .line 102
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    iput-object v0, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->remote:Lio/netty/channel/unix/DomainSocketAddress;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->connected:Z

    .line 104
    return v0

    .line 106
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected doDisconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->doClose()V

    .line 112
    return-void
.end method

.method protected doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .locals 5
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->maxMessagesPerWrite()I

    move-result v0

    .line 117
    .local v0, "maxMessagesPerWrite":I
    :goto_0
    if-lez v0, :cond_4

    .line 118
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v1

    .line 119
    .local v1, "msg":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 120
    goto :goto_4

    .line 124
    :cond_0
    const/4 v2, 0x0

    .line 125
    .local v2, "done":Z
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->config()Lio/netty/channel/epoll/EpollDomainDatagramChannelConfig;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/channel/epoll/EpollDomainDatagramChannelConfig;->getWriteSpinCount()I

    move-result v3

    .local v3, "i":I
    :goto_1
    if-lez v3, :cond_2

    .line 126
    invoke-direct {p0, v1}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->doWriteMessage(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    const/4 v2, 0x1

    .line 128
    goto :goto_2

    .line 125
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 132
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 133
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    add-int/lit8 v0, v0, -0x1

    .line 145
    .end local v2    # "done":Z
    goto :goto_3

    .line 136
    .restart local v2    # "done":Z
    :cond_3
    goto :goto_4

    .line 138
    .end local v2    # "done":Z
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Ljava/io/IOException;
    add-int/lit8 v0, v0, -0x1

    .line 144
    invoke-virtual {p1, v2}, Lio/netty/channel/ChannelOutboundBuffer;->remove(Ljava/lang/Throwable;)Z

    .line 146
    .end local v1    # "msg":Ljava/lang/Object;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    goto :goto_0

    .line 148
    :cond_4
    :goto_4
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 150
    sget v1, Lio/netty/channel/epoll/Native;->EPOLLOUT:I

    invoke-virtual {p0, v1}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->clearFlag(I)V

    goto :goto_5

    .line 153
    :cond_5
    sget v1, Lio/netty/channel/epoll/Native;->EPOLLOUT:I

    invoke-virtual {p0, v1}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->setFlag(I)V

    .line 155
    :goto_5
    return-void
.end method

.method protected filterOutboundMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "msg"    # Ljava/lang/Object;

    .line 212
    instance-of v0, p1, Lio/netty/channel/unix/DomainDatagramPacket;

    if-eqz v0, :cond_1

    .line 213
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/DomainDatagramPacket;

    .line 214
    .local v0, "packet":Lio/netty/channel/unix/DomainDatagramPacket;
    invoke-virtual {v0}, Lio/netty/channel/unix/DomainDatagramPacket;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 215
    .local v1, "content":Lio/netty/buffer/ByteBuf;
    invoke-static {v1}, Lio/netty/channel/unix/UnixChannelUtil;->isBufferCopyNeededForWrite(Lio/netty/buffer/ByteBuf;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lio/netty/channel/unix/DomainDatagramPacket;

    .line 216
    invoke-virtual {p0, v0, v1}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->newDirectBuffer(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/channel/unix/DomainDatagramPacket;->recipient()Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Lio/netty/channel/unix/DomainSocketAddress;

    invoke-direct {v2, v3, v4}, Lio/netty/channel/unix/DomainDatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/channel/unix/DomainSocketAddress;)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 215
    :goto_0
    return-object v2

    .line 219
    .end local v0    # "packet":Lio/netty/channel/unix/DomainDatagramPacket;
    .end local v1    # "content":Lio/netty/buffer/ByteBuf;
    :cond_1
    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_3

    .line 220
    move-object v0, p1

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 221
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-static {v0}, Lio/netty/channel/unix/UnixChannelUtil;->isBufferCopyNeededForWrite(Lio/netty/buffer/ByteBuf;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->newDirectBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1

    .line 224
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_3
    instance-of v0, p1, Lio/netty/channel/AddressedEnvelope;

    if-eqz v0, :cond_6

    .line 226
    move-object v0, p1

    check-cast v0, Lio/netty/channel/AddressedEnvelope;

    .line 227
    .local v0, "e":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<Ljava/lang/Object;Ljava/net/SocketAddress;>;"
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lio/netty/buffer/ByteBuf;

    if-eqz v1, :cond_6

    .line 228
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v1

    instance-of v1, v1, Lio/netty/channel/unix/DomainSocketAddress;

    if-eqz v1, :cond_6

    .line 230
    :cond_4
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 231
    .restart local v1    # "content":Lio/netty/buffer/ByteBuf;
    invoke-static {v1}, Lio/netty/channel/unix/UnixChannelUtil;->isBufferCopyNeededForWrite(Lio/netty/buffer/ByteBuf;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lio/netty/channel/DefaultAddressedEnvelope;

    .line 233
    invoke-virtual {p0, v0, v1}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->newDirectBuffer(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Lio/netty/channel/unix/DomainSocketAddress;

    invoke-direct {v2, v3, v4}, Lio/netty/channel/DefaultAddressedEnvelope;-><init>(Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_2

    :cond_5
    move-object v2, v0

    .line 231
    :goto_2
    return-object v2

    .line 237
    .end local v0    # "e":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<Ljava/lang/Object;Ljava/net/SocketAddress;>;"
    .end local v1    # "content":Lio/netty/buffer/ByteBuf;
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->EXPECTED_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isActive()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->config:Lio/netty/channel/epoll/EpollDomainDatagramChannelConfig;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollDomainDatagramChannelConfig;->getActiveOnOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->active:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->connected:Z

    return v0
.end method

.method public bridge synthetic isOpen()Z
    .locals 1

    .line 44
    invoke-super {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public localAddress()Lio/netty/channel/unix/DomainSocketAddress;
    .locals 1

    .line 253
    invoke-super {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    return-object v0
.end method

.method public bridge synthetic localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->localAddress()Lio/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected localAddress0()Lio/netty/channel/unix/DomainSocketAddress;
    .locals 1

    .line 258
    iget-object v0, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->local:Lio/netty/channel/unix/DomainSocketAddress;

    return-object v0
.end method

.method protected bridge synthetic localAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->localAddress0()Lio/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 263
    sget-object v0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method protected bridge synthetic newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->newUnsafe()Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;

    move-result-object v0

    return-object v0
.end method

.method protected newUnsafe()Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
    .locals 1

    .line 268
    new-instance v0, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel$EpollDomainDatagramChannelUnsafe;-><init>(Lio/netty/channel/epoll/EpollDomainDatagramChannel;)V

    return-object v0
.end method

.method public peerCredentials()Lio/netty/channel/unix/PeerCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->getPeerCredentials()Lio/netty/channel/unix/PeerCredentials;

    move-result-object v0

    return-object v0
.end method

.method public remoteAddress()Lio/netty/channel/unix/DomainSocketAddress;
    .locals 1

    .line 281
    invoke-super {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    return-object v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->remoteAddress()Lio/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected remoteAddress0()Lio/netty/channel/unix/DomainSocketAddress;
    .locals 1

    .line 286
    iget-object v0, p0, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->remote:Lio/netty/channel/unix/DomainSocketAddress;

    return-object v0
.end method

.method protected bridge synthetic remoteAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDomainDatagramChannel;->remoteAddress0()Lio/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    return-object v0
.end method
