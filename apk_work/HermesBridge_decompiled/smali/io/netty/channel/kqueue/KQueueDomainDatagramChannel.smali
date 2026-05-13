.class public final Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;
.super Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;
.source "KQueueDomainDatagramChannel.java"

# interfaces
.implements Lio/netty/channel/unix/DomainDatagramChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EXPECTED_TYPES:Ljava/lang/String;


# instance fields
.field private final config:Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

.field private volatile connected:Z

.field private volatile local:Lio/netty/channel/unix/DomainSocketAddress;

.field private volatile remote:Lio/netty/channel/unix/DomainSocketAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    nop

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/channel/unix/DomainDatagramPacket;

    .line 47
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lio/netty/channel/AddressedEnvelope;

    .line 48
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lio/netty/buffer/ByteBuf;

    .line 49
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/channel/unix/DomainSocketAddress;

    .line 50
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/buffer/ByteBuf;

    .line 51
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->EXPECTED_TYPES:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-static {}, Lio/netty/channel/kqueue/BsdSocket;->newSocketDomainDgram()Lio/netty/channel/kqueue/BsdSocket;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;-><init>(Lio/netty/channel/kqueue/BsdSocket;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "fd"    # I

    .line 64
    new-instance v0, Lio/netty/channel/kqueue/BsdSocket;

    invoke-direct {v0, p1}, Lio/netty/channel/kqueue/BsdSocket;-><init>(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;-><init>(Lio/netty/channel/kqueue/BsdSocket;Z)V

    .line 65
    return-void
.end method

.method private constructor <init>(Lio/netty/channel/kqueue/BsdSocket;Z)V
    .locals 1
    .param p1, "socket"    # Lio/netty/channel/kqueue/BsdSocket;
    .param p2, "active"    # Z

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Z)V

    .line 69
    new-instance v0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;-><init>(Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;)V

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->config:Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    .line 70
    return-void
.end method


# virtual methods
.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->config()Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->config()Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public config()Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->config:Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/unix/DomainDatagramChannelConfig;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->config()Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

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

    .line 79
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;->doBind(Ljava/net/SocketAddress;)V

    .line 80
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->local:Lio/netty/channel/unix/DomainSocketAddress;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->active:Z

    .line 82
    return-void
.end method

.method protected doClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;->doClose()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->active:Z

    iput-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->connected:Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->local:Lio/netty/channel/unix/DomainSocketAddress;

    .line 89
    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->remote:Lio/netty/channel/unix/DomainSocketAddress;

    .line 90
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

    .line 94
    invoke-super {p0, p1, p2}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;->doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    if-eqz p2, :cond_0

    .line 96
    move-object v0, p2

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->local:Lio/netty/channel/unix/DomainSocketAddress;

    .line 98
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->remote:Lio/netty/channel/unix/DomainSocketAddress;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->connected:Z

    .line 100
    return v0

    .line 102
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

    .line 107
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->doClose()V

    .line 108
    return-void
.end method

.method protected doWriteMessage(Ljava/lang/Object;)Z
    .locals 14
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    instance-of v0, p1, Lio/netty/channel/AddressedEnvelope;

    if-eqz v0, :cond_0

    .line 116
    move-object v0, p1

    check-cast v0, Lio/netty/channel/AddressedEnvelope;

    .line 118
    .local v0, "envelope":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<Lio/netty/buffer/ByteBuf;Lio/netty/channel/unix/DomainSocketAddress;>;"
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 119
    .local v1, "data":Lio/netty/buffer/ByteBuf;
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    .line 120
    .local v0, "remoteAddress":Lio/netty/channel/unix/DomainSocketAddress;
    goto :goto_0

    .line 121
    .end local v0    # "remoteAddress":Lio/netty/channel/unix/DomainSocketAddress;
    .end local v1    # "data":Lio/netty/buffer/ByteBuf;
    :cond_0
    move-object v1, p1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 122
    .restart local v1    # "data":Lio/netty/buffer/ByteBuf;
    const/4 v0, 0x0

    .line 125
    .restart local v0    # "remoteAddress":Lio/netty/channel/unix/DomainSocketAddress;
    :goto_0
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    .line 126
    .local v2, "dataLen":I
    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 127
    return v3

    .line 131
    :cond_1
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 132
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v12

    .line 133
    .local v12, "memoryAddress":J
    if-nez v0, :cond_2

    .line 134
    iget-object v4, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v7

    invoke-virtual {v4, v12, v13, v6, v7}, Lio/netty/channel/kqueue/BsdSocket;->writeAddress(JII)I

    move-result v4

    int-to-long v6, v4

    .local v6, "writtenBytes":J
    goto :goto_1

    .line 136
    .end local v6    # "writtenBytes":J
    :cond_2
    iget-object v6, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v9

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v10

    .line 137
    invoke-virtual {v0}, Lio/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    .line 136
    move-wide v7, v12

    invoke-virtual/range {v6 .. v11}, Lio/netty/channel/kqueue/BsdSocket;->sendToAddressDomainSocket(JII[B)I

    move-result v4

    int-to-long v6, v4

    .line 139
    .end local v12    # "memoryAddress":J
    .restart local v6    # "writtenBytes":J
    :goto_1
    goto/16 :goto_3

    .end local v6    # "writtenBytes":J
    :cond_3
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v4

    if-le v4, v3, :cond_6

    .line 140
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v4

    check-cast v4, Lio/netty/channel/kqueue/KQueueEventLoop;

    invoke-virtual {v4}, Lio/netty/channel/kqueue/KQueueEventLoop;->cleanArray()Lio/netty/channel/unix/IovArray;

    move-result-object v4

    .line 141
    .local v4, "array":Lio/netty/channel/unix/IovArray;
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v7

    invoke-virtual {v4, v1, v6, v7}, Lio/netty/channel/unix/IovArray;->add(Lio/netty/buffer/ByteBuf;II)Z

    .line 142
    invoke-virtual {v4}, Lio/netty/channel/unix/IovArray;->count()I

    move-result v6

    .line 143
    .local v6, "cnt":I
    if-eqz v6, :cond_5

    .line 145
    if-nez v0, :cond_4

    .line 146
    iget-object v7, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v4, v5}, Lio/netty/channel/unix/IovArray;->memoryAddress(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v6}, Lio/netty/channel/kqueue/BsdSocket;->writevAddresses(JI)J

    move-result-wide v7

    move-wide v6, v7

    .local v7, "writtenBytes":J
    goto :goto_2

    .line 148
    .end local v7    # "writtenBytes":J
    :cond_4
    iget-object v7, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v4, v5}, Lio/netty/channel/unix/IovArray;->memoryAddress(I)J

    move-result-wide v8

    .line 149
    invoke-virtual {v0}, Lio/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    .line 148
    invoke-virtual {v7, v8, v9, v6, v10}, Lio/netty/channel/kqueue/BsdSocket;->sendToAddressesDomainSocket(JI[B)I

    move-result v7

    int-to-long v7, v7

    move-wide v6, v7

    .line 151
    .end local v4    # "array":Lio/netty/channel/unix/IovArray;
    .local v6, "writtenBytes":J
    :goto_2
    goto :goto_3

    .line 143
    .restart local v4    # "array":Lio/netty/channel/unix/IovArray;
    .local v6, "cnt":I
    :cond_5
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 152
    .end local v4    # "array":Lio/netty/channel/unix/IovArray;
    .end local v6    # "cnt":I
    :cond_6
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    invoke-virtual {v1, v4, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 153
    .local v4, "nioData":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_7

    .line 154
    iget-object v6, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    invoke-virtual {v6, v4, v7, v8}, Lio/netty/channel/kqueue/BsdSocket;->write(Ljava/nio/ByteBuffer;II)I

    move-result v6

    int-to-long v6, v6

    .local v6, "writtenBytes":J
    goto :goto_3

    .line 156
    .end local v6    # "writtenBytes":J
    :cond_7
    iget-object v6, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    .line 157
    invoke-virtual {v0}, Lio/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    .line 156
    invoke-virtual {v6, v4, v7, v8, v9}, Lio/netty/channel/kqueue/BsdSocket;->sendToDomainSocket(Ljava/nio/ByteBuffer;II[B)I

    move-result v6

    int-to-long v6, v6

    .line 161
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

.method protected filterOutboundMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "msg"    # Ljava/lang/Object;

    .line 166
    instance-of v0, p1, Lio/netty/channel/unix/DomainDatagramPacket;

    if-eqz v0, :cond_1

    .line 167
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/DomainDatagramPacket;

    .line 168
    .local v0, "packet":Lio/netty/channel/unix/DomainDatagramPacket;
    invoke-virtual {v0}, Lio/netty/channel/unix/DomainDatagramPacket;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 169
    .local v1, "content":Lio/netty/buffer/ByteBuf;
    invoke-static {v1}, Lio/netty/channel/unix/UnixChannelUtil;->isBufferCopyNeededForWrite(Lio/netty/buffer/ByteBuf;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lio/netty/channel/unix/DomainDatagramPacket;

    .line 170
    invoke-virtual {p0, v0, v1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->newDirectBuffer(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/channel/unix/DomainDatagramPacket;->recipient()Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Lio/netty/channel/unix/DomainSocketAddress;

    invoke-direct {v2, v3, v4}, Lio/netty/channel/unix/DomainDatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/channel/unix/DomainSocketAddress;)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 169
    :goto_0
    return-object v2

    .line 173
    .end local v0    # "packet":Lio/netty/channel/unix/DomainDatagramPacket;
    .end local v1    # "content":Lio/netty/buffer/ByteBuf;
    :cond_1
    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_3

    .line 174
    move-object v0, p1

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 175
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-static {v0}, Lio/netty/channel/unix/UnixChannelUtil;->isBufferCopyNeededForWrite(Lio/netty/buffer/ByteBuf;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->newDirectBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1

    .line 178
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_3
    instance-of v0, p1, Lio/netty/channel/AddressedEnvelope;

    if-eqz v0, :cond_6

    .line 180
    move-object v0, p1

    check-cast v0, Lio/netty/channel/AddressedEnvelope;

    .line 181
    .local v0, "e":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<Ljava/lang/Object;Ljava/net/SocketAddress;>;"
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lio/netty/buffer/ByteBuf;

    if-eqz v1, :cond_6

    .line 182
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v1

    instance-of v1, v1, Lio/netty/channel/unix/DomainSocketAddress;

    if-eqz v1, :cond_6

    .line 184
    :cond_4
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 185
    .restart local v1    # "content":Lio/netty/buffer/ByteBuf;
    invoke-static {v1}, Lio/netty/channel/unix/UnixChannelUtil;->isBufferCopyNeededForWrite(Lio/netty/buffer/ByteBuf;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lio/netty/channel/DefaultAddressedEnvelope;

    .line 187
    invoke-virtual {p0, v0, v1}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->newDirectBuffer(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Lio/netty/channel/unix/DomainSocketAddress;

    invoke-direct {v2, v3, v4}, Lio/netty/channel/DefaultAddressedEnvelope;-><init>(Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_2

    :cond_5
    move-object v2, v0

    .line 185
    :goto_2
    return-object v2

    .line 191
    .end local v0    # "e":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<Ljava/lang/Object;Ljava/net/SocketAddress;>;"
    .end local v1    # "content":Lio/netty/buffer/ByteBuf;
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->EXPECTED_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isActive()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->config:Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannelConfig;->getActiveOnOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->active:Z

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

    .line 202
    iget-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->connected:Z

    return v0
.end method

.method public bridge synthetic isOpen()Z
    .locals 1

    .line 42
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public localAddress()Lio/netty/channel/unix/DomainSocketAddress;
    .locals 1

    .line 207
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    return-object v0
.end method

.method public bridge synthetic localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->localAddress()Lio/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected localAddress0()Lio/netty/channel/unix/DomainSocketAddress;
    .locals 1

    .line 212
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->local:Lio/netty/channel/unix/DomainSocketAddress;

    return-object v0
.end method

.method protected bridge synthetic localAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->localAddress0()Lio/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 42
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->newUnsafe()Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;

    move-result-object v0

    return-object v0
.end method

.method protected newUnsafe()Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
    .locals 1

    .line 217
    new-instance v0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel$KQueueDomainDatagramChannelUnsafe;-><init>(Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;)V

    return-object v0
.end method

.method public peerCredentials()Lio/netty/channel/unix/PeerCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->getPeerCredentials()Lio/netty/channel/unix/PeerCredentials;

    move-result-object v0

    return-object v0
.end method

.method public remoteAddress()Lio/netty/channel/unix/DomainSocketAddress;
    .locals 1

    .line 230
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    return-object v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->remoteAddress()Lio/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected remoteAddress0()Lio/netty/channel/unix/DomainSocketAddress;
    .locals 1

    .line 235
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->remote:Lio/netty/channel/unix/DomainSocketAddress;

    return-object v0
.end method

.method protected bridge synthetic remoteAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainDatagramChannel;->remoteAddress0()Lio/netty/channel/unix/DomainSocketAddress;

    move-result-object v0

    return-object v0
.end method
