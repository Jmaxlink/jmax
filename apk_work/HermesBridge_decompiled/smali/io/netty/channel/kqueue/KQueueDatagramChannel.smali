.class public final Lio/netty/channel/kqueue/KQueueDatagramChannel;
.super Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;
.source "KQueueDatagramChannel.java"

# interfaces
.implements Lio/netty/channel/socket/DatagramChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EXPECTED_TYPES:Ljava/lang/String;


# instance fields
.field private final config:Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

.field private volatile connected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    nop

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/channel/socket/DatagramPacket;

    .line 52
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lio/netty/channel/AddressedEnvelope;

    .line 53
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lio/netty/buffer/ByteBuf;

    .line 54
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Ljava/net/InetSocketAddress;

    .line 55
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/buffer/ByteBuf;

    .line 56
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->EXPECTED_TYPES:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 62
    invoke-static {}, Lio/netty/channel/kqueue/BsdSocket;->newSocketDgram()Lio/netty/channel/kqueue/BsdSocket;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Z)V

    .line 63
    new-instance v0, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;-><init>(Lio/netty/channel/kqueue/KQueueDatagramChannel;)V

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->config:Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "fd"    # I

    .line 72
    new-instance v0, Lio/netty/channel/kqueue/BsdSocket;

    invoke-direct {v0, p1}, Lio/netty/channel/kqueue/BsdSocket;-><init>(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/netty/channel/kqueue/KQueueDatagramChannel;-><init>(Lio/netty/channel/kqueue/BsdSocket;Z)V

    .line 73
    return-void
.end method

.method constructor <init>(Lio/netty/channel/kqueue/BsdSocket;Z)V
    .locals 1
    .param p1, "socket"    # Lio/netty/channel/kqueue/BsdSocket;
    .param p2, "active"    # Z

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Z)V

    .line 77
    new-instance v0, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;-><init>(Lio/netty/channel/kqueue/KQueueDatagramChannel;)V

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->config:Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    .line 78
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/socket/InternetProtocolFamily;)V
    .locals 3
    .param p1, "protocol"    # Lio/netty/channel/socket/InternetProtocolFamily;

    .line 67
    invoke-static {p1}, Lio/netty/channel/kqueue/BsdSocket;->newSocketDgram(Lio/netty/channel/socket/InternetProtocolFamily;)Lio/netty/channel/kqueue/BsdSocket;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Z)V

    .line 68
    new-instance v0, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;-><init>(Lio/netty/channel/kqueue/KQueueDatagramChannel;)V

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->config:Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    .line 69
    return-void
.end method

.method private static checkUnresolved(Lio/netty/channel/AddressedEnvelope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/AddressedEnvelope<",
            "**>;)V"
        }
    .end annotation

    .line 301
    .local p0, "envelope":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<**>;"
    invoke-interface {p0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    .line 302
    invoke-interface {p0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    new-instance v0, Ljava/nio/channels/UnresolvedAddressException;

    invoke-direct {v0}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    throw v0

    .line 305
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public block(Ljava/net/InetAddress;Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "sourceToBlock"    # Ljava/net/InetAddress;

    .line 218
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->block(Ljava/net/InetAddress;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public block(Ljava/net/InetAddress;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "sourceToBlock"    # Ljava/net/InetAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 225
    nop

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 225
    invoke-virtual {p0, p1, v0, p2, p3}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->block(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 229
    :catchall_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Throwable;
    invoke-interface {p3, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 232
    .end local v0    # "e":Ljava/lang/Throwable;
    return-object p3
.end method

.method public block(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "sourceToBlock"    # Ljava/net/InetAddress;

    .line 202
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->block(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public block(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "sourceToBlock"    # Ljava/net/InetAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 209
    const-string v0, "multicastAddress"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    const-string v0, "sourceToBlock"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    const-string v0, "networkInterface"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multicast not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 213
    return-object p4
.end method

.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->config()Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->config()Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public config()Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;
    .locals 1

    .line 343
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->config:Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->config()Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

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

    .line 242
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;->doBind(Ljava/net/SocketAddress;)V

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->active:Z

    .line 244
    return-void
.end method

.method protected doClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 364
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;->doClose()V

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->connected:Z

    .line 366
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

    .line 355
    invoke-super {p0, p1, p2}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;->doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->connected:Z

    .line 357
    return v0

    .line 359
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected doDisconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->disconnect()V

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->active:Z

    iput-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->connected:Z

    .line 350
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->resetCachedAddresses()V

    .line 351
    return-void
.end method

.method protected doWriteMessage(Ljava/lang/Object;)Z
    .locals 17
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lio/netty/channel/AddressedEnvelope;

    if-eqz v2, :cond_0

    .line 252
    move-object v2, v1

    check-cast v2, Lio/netty/channel/AddressedEnvelope;

    .line 254
    .local v2, "envelope":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;>;"
    invoke-interface {v2}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/buffer/ByteBuf;

    .line 255
    .local v3, "data":Lio/netty/buffer/ByteBuf;
    invoke-interface {v2}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 256
    .local v2, "remoteAddress":Ljava/net/InetSocketAddress;
    goto :goto_0

    .line 257
    .end local v2    # "remoteAddress":Ljava/net/InetSocketAddress;
    .end local v3    # "data":Lio/netty/buffer/ByteBuf;
    :cond_0
    move-object v3, v1

    check-cast v3, Lio/netty/buffer/ByteBuf;

    .line 258
    .restart local v3    # "data":Lio/netty/buffer/ByteBuf;
    const/4 v2, 0x0

    .line 261
    .restart local v2    # "remoteAddress":Ljava/net/InetSocketAddress;
    :goto_0
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    .line 262
    .local v4, "dataLen":I
    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 263
    return v5

    .line 267
    :cond_1
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    .line 268
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v14

    .line 269
    .local v14, "memoryAddress":J
    if-nez v2, :cond_2

    .line 270
    iget-object v6, v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v8

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v9

    invoke-virtual {v6, v14, v15, v8, v9}, Lio/netty/channel/kqueue/BsdSocket;->writeAddress(JII)I

    move-result v6

    int-to-long v8, v6

    .local v8, "writtenBytes":J
    goto :goto_1

    .line 272
    .end local v8    # "writtenBytes":J
    :cond_2
    iget-object v8, v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v11

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v12

    .line 273
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    .line 272
    move-wide v9, v14

    move-wide v15, v14

    .end local v14    # "memoryAddress":J
    .local v15, "memoryAddress":J
    move v14, v6

    invoke-virtual/range {v8 .. v14}, Lio/netty/channel/kqueue/BsdSocket;->sendToAddress(JIILjava/net/InetAddress;I)I

    move-result v6

    int-to-long v8, v6

    .line 275
    .end local v15    # "memoryAddress":J
    .restart local v8    # "writtenBytes":J
    :goto_1
    goto/16 :goto_3

    .end local v8    # "writtenBytes":J
    :cond_3
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v6

    if-le v6, v5, :cond_6

    .line 276
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v6

    check-cast v6, Lio/netty/channel/kqueue/KQueueEventLoop;

    invoke-virtual {v6}, Lio/netty/channel/kqueue/KQueueEventLoop;->cleanArray()Lio/netty/channel/unix/IovArray;

    move-result-object v6

    .line 277
    .local v6, "array":Lio/netty/channel/unix/IovArray;
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v8

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v9

    invoke-virtual {v6, v3, v8, v9}, Lio/netty/channel/unix/IovArray;->add(Lio/netty/buffer/ByteBuf;II)Z

    .line 278
    invoke-virtual {v6}, Lio/netty/channel/unix/IovArray;->count()I

    move-result v8

    .line 279
    .local v8, "cnt":I
    if-eqz v8, :cond_5

    .line 281
    if-nez v2, :cond_4

    .line 282
    iget-object v9, v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v6, v7}, Lio/netty/channel/unix/IovArray;->memoryAddress(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11, v8}, Lio/netty/channel/kqueue/BsdSocket;->writevAddresses(JI)J

    move-result-wide v9

    move-wide v8, v9

    .local v9, "writtenBytes":J
    goto :goto_2

    .line 284
    .end local v9    # "writtenBytes":J
    :cond_4
    iget-object v10, v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v6, v7}, Lio/netty/channel/unix/IovArray;->memoryAddress(I)J

    move-result-wide v11

    .line 285
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v15

    .line 284
    move v13, v8

    invoke-virtual/range {v10 .. v15}, Lio/netty/channel/kqueue/BsdSocket;->sendToAddresses(JILjava/net/InetAddress;I)I

    move-result v9

    int-to-long v9, v9

    move-wide v8, v9

    .line 287
    .end local v6    # "array":Lio/netty/channel/unix/IovArray;
    .local v8, "writtenBytes":J
    :goto_2
    goto :goto_3

    .line 279
    .restart local v6    # "array":Lio/netty/channel/unix/IovArray;
    .local v8, "cnt":I
    :cond_5
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 288
    .end local v6    # "array":Lio/netty/channel/unix/IovArray;
    .end local v8    # "cnt":I
    :cond_6
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v8

    invoke-virtual {v3, v6, v8}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 289
    .local v6, "nioData":Ljava/nio/ByteBuffer;
    if-nez v2, :cond_7

    .line 290
    iget-object v8, v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    invoke-virtual {v8, v6, v9, v10}, Lio/netty/channel/kqueue/BsdSocket;->write(Ljava/nio/ByteBuffer;II)I

    move-result v8

    int-to-long v8, v8

    .local v8, "writtenBytes":J
    goto :goto_3

    .line 292
    .end local v8    # "writtenBytes":J
    :cond_7
    iget-object v9, v0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v12

    .line 293
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v14

    .line 292
    move-object v10, v6

    invoke-virtual/range {v9 .. v14}, Lio/netty/channel/kqueue/BsdSocket;->sendTo(Ljava/nio/ByteBuffer;IILjava/net/InetAddress;I)I

    move-result v8

    int-to-long v8, v8

    .line 297
    .end local v6    # "nioData":Ljava/nio/ByteBuffer;
    .restart local v8    # "writtenBytes":J
    :goto_3
    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_8

    goto :goto_4

    :cond_8
    move v5, v7

    :goto_4
    return v5
.end method

.method protected filterOutboundMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "msg"    # Ljava/lang/Object;

    .line 309
    instance-of v0, p1, Lio/netty/channel/socket/DatagramPacket;

    if-eqz v0, :cond_1

    .line 310
    move-object v0, p1

    check-cast v0, Lio/netty/channel/socket/DatagramPacket;

    .line 311
    .local v0, "packet":Lio/netty/channel/socket/DatagramPacket;
    invoke-static {v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->checkUnresolved(Lio/netty/channel/AddressedEnvelope;)V

    .line 312
    invoke-virtual {v0}, Lio/netty/channel/socket/DatagramPacket;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 313
    .local v1, "content":Lio/netty/buffer/ByteBuf;
    invoke-static {v1}, Lio/netty/channel/unix/UnixChannelUtil;->isBufferCopyNeededForWrite(Lio/netty/buffer/ByteBuf;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lio/netty/channel/socket/DatagramPacket;

    .line 314
    invoke-virtual {p0, v0, v1}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newDirectBuffer(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/channel/socket/DatagramPacket;->recipient()Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v3, v4}, Lio/netty/channel/socket/DatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 313
    :goto_0
    return-object v2

    .line 317
    .end local v0    # "packet":Lio/netty/channel/socket/DatagramPacket;
    .end local v1    # "content":Lio/netty/buffer/ByteBuf;
    :cond_1
    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_3

    .line 318
    move-object v0, p1

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 319
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-static {v0}, Lio/netty/channel/unix/UnixChannelUtil;->isBufferCopyNeededForWrite(Lio/netty/buffer/ByteBuf;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newDirectBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1

    .line 322
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_3
    instance-of v0, p1, Lio/netty/channel/AddressedEnvelope;

    if-eqz v0, :cond_6

    .line 324
    move-object v0, p1

    check-cast v0, Lio/netty/channel/AddressedEnvelope;

    .line 325
    .local v0, "e":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<Ljava/lang/Object;Ljava/net/SocketAddress;>;"
    invoke-static {v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->checkUnresolved(Lio/netty/channel/AddressedEnvelope;)V

    .line 327
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lio/netty/buffer/ByteBuf;

    if-eqz v1, :cond_6

    .line 328
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_6

    .line 330
    :cond_4
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 331
    .restart local v1    # "content":Lio/netty/buffer/ByteBuf;
    invoke-static {v1}, Lio/netty/channel/unix/UnixChannelUtil;->isBufferCopyNeededForWrite(Lio/netty/buffer/ByteBuf;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lio/netty/channel/DefaultAddressedEnvelope;

    .line 333
    invoke-virtual {p0, v0, v1}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newDirectBuffer(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v3, v4}, Lio/netty/channel/DefaultAddressedEnvelope;-><init>(Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_2

    :cond_5
    move-object v2, v0

    .line 331
    :goto_2
    return-object v2

    .line 337
    .end local v0    # "e":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<Ljava/lang/Object;Ljava/net/SocketAddress;>;"
    .end local v1    # "content":Lio/netty/buffer/ByteBuf;
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 338
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/netty/channel/kqueue/KQueueDatagramChannel;->EXPECTED_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isActive()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->config:Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->getActiveOnOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->active:Z

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

    .line 98
    iget-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDatagramChannel;->connected:Z

    return v0
.end method

.method public bridge synthetic isOpen()Z
    .locals 1

    .line 49
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public joinGroup(Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;

    .line 103
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->joinGroup(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public joinGroup(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->config()Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/kqueue/KQueueDatagramChannelConfig;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    .line 110
    .local v0, "iface":Ljava/net/NetworkInterface;
    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v1

    move-object v0, v1

    .line 113
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 114
    .end local v0    # "iface":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/net/SocketException;
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 117
    .end local v0    # "e":Ljava/net/SocketException;
    return-object p2
.end method

.method public joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;

    .line 136
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 144
    const-string v0, "multicastAddress"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    const-string v0, "networkInterface"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multicast not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 148
    return-object p4
.end method

.method public joinGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;

    .line 123
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->joinGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public joinGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 130
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p3}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public leaveGroup(Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;

    .line 153
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->leaveGroup(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public leaveGroup(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 159
    nop

    .line 160
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 159
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/net/SocketException;
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 164
    .end local v0    # "e":Ljava/net/SocketException;
    return-object p2
.end method

.method public leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;

    .line 183
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 190
    const-string v0, "multicastAddress"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    const-string v0, "networkInterface"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multicast not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 195
    return-object p4
.end method

.method public leaveGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;

    .line 170
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->leaveGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public leaveGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 177
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p3}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 87
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 49
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->newUnsafe()Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;

    move-result-object v0

    return-object v0
.end method

.method protected newUnsafe()Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
    .locals 1

    .line 237
    new-instance v0, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;

    invoke-direct {v0, p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel$KQueueDatagramChannelUnsafe;-><init>(Lio/netty/channel/kqueue/KQueueDatagramChannel;)V

    return-object v0
.end method

.method public remoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 82
    invoke-super {p0}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDatagramChannel;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method
