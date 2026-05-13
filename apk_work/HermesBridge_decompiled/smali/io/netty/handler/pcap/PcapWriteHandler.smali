.class public final Lio/netty/handler/pcap/PcapWriteHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "PcapWriteHandler.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/pcap/PcapWriteHandler$WildcardAddressHolder;,
        Lio/netty/handler/pcap/PcapWriteHandler$Builder;,
        Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;
    }
.end annotation


# instance fields
.field private final captureZeroByte:Z

.field private channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

.field private handlerAddr:Ljava/net/InetSocketAddress;

.field private initiatorAddr:Ljava/net/InetSocketAddress;

.field private isServerPipeline:Z

.field private final logger:Lio/netty/util/internal/logging/InternalLogger;

.field private final outputStream:Ljava/io/OutputStream;

.field private pCapWriter:Lio/netty/handler/pcap/PcapWriter;

.field private receiveSegmentNumber:I

.field private sendSegmentNumber:I

.field private final sharedOutputStream:Z

.field private final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/netty/handler/pcap/State;",
            ">;"
        }
    .end annotation
.end field

.field private final writePcapGlobalHeader:Z


# direct methods
.method private constructor <init>(Lio/netty/handler/pcap/PcapWriteHandler$Builder;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "builder"    # Lio/netty/handler/pcap/PcapWriteHandler$Builder;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .line 182
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 75
    const-class v0, Lio/netty/handler/pcap/PcapWriteHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    .line 114
    iput v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    .line 139
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/netty/handler/pcap/State;->INIT:Lio/netty/handler/pcap/State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 183
    iput-object p2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->outputStream:Ljava/io/OutputStream;

    .line 184
    invoke-static {p1}, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->access$000(Lio/netty/handler/pcap/PcapWriteHandler$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->captureZeroByte:Z

    .line 185
    invoke-static {p1}, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->access$100(Lio/netty/handler/pcap/PcapWriteHandler$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->sharedOutputStream:Z

    .line 186
    invoke-static {p1}, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->access$200(Lio/netty/handler/pcap/PcapWriteHandler$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->writePcapGlobalHeader:Z

    .line 187
    invoke-static {p1}, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->access$300(Lio/netty/handler/pcap/PcapWriteHandler$Builder;)Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    .line 188
    invoke-static {p1}, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->access$400(Lio/netty/handler/pcap/PcapWriteHandler$Builder;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    .line 189
    invoke-static {p1}, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->access$500(Lio/netty/handler/pcap/PcapWriteHandler$Builder;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    .line 190
    invoke-static {p1}, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->access$600(Lio/netty/handler/pcap/PcapWriteHandler$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->isServerPipeline:Z

    .line 191
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/pcap/PcapWriteHandler$Builder;Ljava/io/OutputStream;Lio/netty/handler/pcap/PcapWriteHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/pcap/PcapWriteHandler$Builder;
    .param p2, "x1"    # Ljava/io/OutputStream;
    .param p3, "x2"    # Lio/netty/handler/pcap/PcapWriteHandler$1;

    .line 70
    invoke-direct {p0, p1, p2}, Lio/netty/handler/pcap/PcapWriteHandler;-><init>(Lio/netty/handler/pcap/PcapWriteHandler$Builder;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/pcap/PcapWriteHandler;-><init>(Ljava/io/OutputStream;ZZ)V

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZZ)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "captureZeroByte"    # Z
    .param p3, "writePcapGlobalHeader"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 75
    const-class v0, Lio/netty/handler/pcap/PcapWriteHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    .line 114
    iput v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    .line 139
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/netty/handler/pcap/State;->INIT:Lio/netty/handler/pcap/State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 176
    const-string v0, "OutputStream"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->outputStream:Ljava/io/OutputStream;

    .line 177
    iput-boolean p2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->captureZeroByte:Z

    .line 178
    iput-boolean p3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->writePcapGlobalHeader:Z

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->sharedOutputStream:Z

    .line 180
    return-void
.end method

.method public static builder()Lio/netty/handler/pcap/PcapWriteHandler$Builder;
    .locals 2

    .line 739
    new-instance v0, Lio/netty/handler/pcap/PcapWriteHandler$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/pcap/PcapWriteHandler$Builder;-><init>(Lio/netty/handler/pcap/PcapWriteHandler$1;)V

    return-object v0
.end method

.method private completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 7
    .param p1, "srcAddr"    # Ljava/net/InetSocketAddress;
    .param p2, "dstAddr"    # Ljava/net/InetSocketAddress;
    .param p3, "tcpBuf"    # Lio/netty/buffer/ByteBuf;
    .param p4, "byteBufAllocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p5, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 406
    invoke-interface {p4}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 407
    .local v0, "ipBuf":Lio/netty/buffer/ByteBuf;
    invoke-interface {p4}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 408
    .local v1, "ethernetBuf":Lio/netty/buffer/ByteBuf;
    invoke-interface {p4}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 411
    .local v2, "pcap":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_0

    .line 412
    nop

    .line 413
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    check-cast v3, Ljava/net/Inet4Address;

    invoke-static {v3}, Lio/netty/util/NetUtil;->ipv4AddressToInt(Ljava/net/Inet4Address;)I

    move-result v3

    .line 414
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    check-cast v4, Ljava/net/Inet4Address;

    invoke-static {v4}, Lio/netty/util/NetUtil;->ipv4AddressToInt(Ljava/net/Inet4Address;)I

    move-result v4

    .line 412
    invoke-static {v0, p3, v3, v4}, Lio/netty/handler/pcap/IPPacket;->writeTCPv4(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;II)V

    .line 416
    invoke-static {v1, v0}, Lio/netty/handler/pcap/EthernetPacket;->writeIPv4(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_1

    .line 418
    nop

    .line 419
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    .line 420
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 418
    invoke-static {v0, p3, v3, v4}, Lio/netty/handler/pcap/IPPacket;->writeTCPv6(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;[B[B)V

    .line 422
    invoke-static {v1, v0}, Lio/netty/handler/pcap/EthernetPacket;->writeIPv6(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    .line 430
    :goto_0
    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->pCapWriter:Lio/netty/handler/pcap/PcapWriter;

    invoke-virtual {v3, v2, v1}, Lio/netty/handler/pcap/PcapWriter;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    .line 435
    goto :goto_1

    .line 424
    :cond_1
    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Source and Destination IP Address versions are not same. Source Address: {}, Destination Address: {}"

    .line 425
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 424
    invoke-interface {v3, v4, v5, v6}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 436
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 437
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 426
    return-void

    .line 435
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 431
    :catch_0
    move-exception v3

    .line 432
    .local v3, "ex":Ljava/io/IOException;
    :try_start_1
    iget-object v4, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "Caught Exception While Writing Packet into Pcap"

    invoke-interface {v4, v5, v3}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 433
    invoke-interface {p5, v3}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    nop

    .end local v3    # "ex":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 436
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 437
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 438
    nop

    .line 439
    return-void

    .line 435
    :goto_2
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 436
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 437
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 438
    throw v3
.end method

.method private completeUDPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 7
    .param p1, "srcAddr"    # Ljava/net/InetSocketAddress;
    .param p2, "dstAddr"    # Ljava/net/InetSocketAddress;
    .param p3, "udpBuf"    # Lio/netty/buffer/ByteBuf;
    .param p4, "byteBufAllocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p5, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 511
    invoke-interface {p4}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 512
    .local v0, "ipBuf":Lio/netty/buffer/ByteBuf;
    invoke-interface {p4}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 513
    .local v1, "ethernetBuf":Lio/netty/buffer/ByteBuf;
    invoke-interface {p4}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 516
    .local v2, "pcap":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_0

    .line 517
    nop

    .line 518
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    check-cast v3, Ljava/net/Inet4Address;

    invoke-static {v3}, Lio/netty/util/NetUtil;->ipv4AddressToInt(Ljava/net/Inet4Address;)I

    move-result v3

    .line 519
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    check-cast v4, Ljava/net/Inet4Address;

    invoke-static {v4}, Lio/netty/util/NetUtil;->ipv4AddressToInt(Ljava/net/Inet4Address;)I

    move-result v4

    .line 517
    invoke-static {v0, p3, v3, v4}, Lio/netty/handler/pcap/IPPacket;->writeUDPv4(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;II)V

    .line 521
    invoke-static {v1, v0}, Lio/netty/handler/pcap/EthernetPacket;->writeIPv4(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    goto :goto_0

    .line 522
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_1

    .line 523
    nop

    .line 524
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    .line 525
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 523
    invoke-static {v0, p3, v3, v4}, Lio/netty/handler/pcap/IPPacket;->writeUDPv6(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;[B[B)V

    .line 527
    invoke-static {v1, v0}, Lio/netty/handler/pcap/EthernetPacket;->writeIPv6(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    .line 535
    :goto_0
    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->pCapWriter:Lio/netty/handler/pcap/PcapWriter;

    invoke-virtual {v3, v2, v1}, Lio/netty/handler/pcap/PcapWriter;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    .line 540
    goto :goto_1

    .line 529
    :cond_1
    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Source and Destination IP Address versions are not same. Source Address: {}, Destination Address: {}"

    .line 530
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 529
    invoke-interface {v3, v4, v5, v6}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 541
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 542
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 531
    return-void

    .line 540
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 536
    :catch_0
    move-exception v3

    .line 537
    .local v3, "ex":Ljava/io/IOException;
    :try_start_1
    iget-object v4, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "Caught Exception While Writing Packet into Pcap"

    invoke-interface {v4, v5, v3}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 538
    invoke-interface {p5, v3}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    nop

    .end local v3    # "ex":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 541
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 542
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 543
    nop

    .line 544
    return-void

    .line 540
    :goto_2
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 541
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 542
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 543
    throw v3
.end method

.method private static getLocalAddress(Lio/netty/channel/Channel;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    .locals 4
    .param p0, "ch"    # Lio/netty/channel/Channel;
    .param p1, "remote"    # Ljava/net/InetSocketAddress;

    .line 556
    invoke-interface {p0}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 557
    .local v0, "local":Ljava/net/InetSocketAddress;
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_0

    .line 559
    new-instance v1, Ljava/net/InetSocketAddress;

    sget-object v2, Lio/netty/handler/pcap/PcapWriteHandler$WildcardAddressHolder;->wildcard6:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v1

    .line 561
    :cond_0
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_1

    .line 562
    new-instance v1, Ljava/net/InetSocketAddress;

    sget-object v2, Lio/netty/handler/pcap/PcapWriteHandler$WildcardAddressHolder;->wildcard4:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v1

    .line 565
    :cond_1
    return-object v0
.end method

.method private handleTCP(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Z)V
    .locals 18
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "isWriteOperation"    # Z

    .line 327
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    instance-of v0, v10, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_4

    .line 330
    move-object v0, v10

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, v9, Lio/netty/handler/pcap/PcapWriteHandler;->captureZeroByte:Z

    if-nez v0, :cond_0

    .line 331
    iget-object v0, v9, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Discarding Zero Byte TCP Packet. isWriteOperation {}"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    return-void

    .line 335
    :cond_0
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v11

    .line 336
    .local v11, "byteBufAllocator":Lio/netty/buffer/ByteBufAllocator;
    move-object v0, v10

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v12

    .line 337
    .local v12, "packet":Lio/netty/buffer/ByteBuf;
    invoke-interface {v11}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v13

    .line 338
    .local v13, "tcpBuf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v12}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v14

    .line 341
    .local v14, "bytes":I
    const/4 v0, 0x0

    const/4 v15, 0x1

    if-eqz p3, :cond_2

    .line 344
    :try_start_0
    iget-boolean v1, v9, Lio/netty/handler/pcap/PcapWriteHandler;->isServerPipeline:Z

    if-eqz v1, :cond_1

    .line 345
    iget-object v1, v9, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    .line 346
    .local v1, "srcAddr":Ljava/net/InetSocketAddress;
    iget-object v2, v9, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .local v2, "dstAddr":Ljava/net/InetSocketAddress;
    goto :goto_0

    .line 348
    .end local v1    # "srcAddr":Ljava/net/InetSocketAddress;
    .end local v2    # "dstAddr":Ljava/net/InetSocketAddress;
    :cond_1
    iget-object v1, v9, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    .line 349
    .restart local v1    # "srcAddr":Ljava/net/InetSocketAddress;
    iget-object v2, v9, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 352
    .end local v1    # "srcAddr":Ljava/net/InetSocketAddress;
    .local v16, "srcAddr":Ljava/net/InetSocketAddress;
    .local v17, "dstAddr":Ljava/net/InetSocketAddress;
    :goto_0
    iget v3, v9, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    iget v4, v9, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    .line 353
    invoke-virtual/range {v17 .. v17}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    new-array v7, v15, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v1, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ACK:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v1, v7, v0

    .line 352
    move-object v1, v13

    move-object v2, v12

    invoke-static/range {v1 .. v7}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    .line 354
    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object v4, v13

    move-object v5, v11

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V

    .line 355
    iget v4, v9, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    iget v5, v9, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    const/4 v8, 0x0

    const/4 v2, 0x1

    move-object/from16 v1, p0

    move v3, v14

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v8}, Lio/netty/handler/pcap/PcapWriteHandler;->logTCP(ZIIILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Z)V

    .line 357
    iget v1, v9, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    add-int/2addr v1, v14

    iput v1, v9, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    .line 359
    iget v2, v9, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    iget v3, v9, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    invoke-virtual/range {v17 .. v17}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    .line 360
    invoke-virtual/range {v16 .. v16}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    new-array v6, v15, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v1, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ACK:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v1, v6, v0

    .line 359
    const/4 v1, 0x0

    move-object v0, v13

    invoke-static/range {v0 .. v6}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    .line 361
    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    move-object v4, v13

    move-object v5, v11

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V

    .line 362
    iget v4, v9, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    iget v5, v9, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    const/4 v8, 0x1

    const/4 v2, 0x1

    move-object/from16 v1, p0

    move v3, v14

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v8}, Lio/netty/handler/pcap/PcapWriteHandler;->logTCP(ZIIILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Z)V

    .line 363
    .end local v16    # "srcAddr":Ljava/net/InetSocketAddress;
    .end local v17    # "dstAddr":Ljava/net/InetSocketAddress;
    goto/16 :goto_2

    .line 366
    :cond_2
    iget-boolean v1, v9, Lio/netty/handler/pcap/PcapWriteHandler;->isServerPipeline:Z

    if-eqz v1, :cond_3

    .line 367
    iget-object v1, v9, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    .line 368
    .restart local v1    # "srcAddr":Ljava/net/InetSocketAddress;
    iget-object v2, v9, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .restart local v2    # "dstAddr":Ljava/net/InetSocketAddress;
    goto :goto_1

    .line 370
    .end local v1    # "srcAddr":Ljava/net/InetSocketAddress;
    .end local v2    # "dstAddr":Ljava/net/InetSocketAddress;
    :cond_3
    iget-object v1, v9, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    .line 371
    .restart local v1    # "srcAddr":Ljava/net/InetSocketAddress;
    iget-object v2, v9, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 374
    .end local v1    # "srcAddr":Ljava/net/InetSocketAddress;
    .restart local v16    # "srcAddr":Ljava/net/InetSocketAddress;
    .restart local v17    # "dstAddr":Ljava/net/InetSocketAddress;
    :goto_1
    iget v3, v9, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    iget v4, v9, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    .line 375
    invoke-virtual/range {v17 .. v17}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    new-array v7, v15, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v1, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ACK:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v1, v7, v0

    .line 374
    move-object v1, v13

    move-object v2, v12

    invoke-static/range {v1 .. v7}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    .line 376
    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object v4, v13

    move-object v5, v11

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V

    .line 377
    iget v4, v9, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    iget v5, v9, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move v3, v14

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v8}, Lio/netty/handler/pcap/PcapWriteHandler;->logTCP(ZIIILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Z)V

    .line 379
    iget v1, v9, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    add-int/2addr v1, v14

    iput v1, v9, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    .line 381
    iget v2, v9, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    iget v3, v9, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    invoke-virtual/range {v17 .. v17}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    .line 382
    invoke-virtual/range {v16 .. v16}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    new-array v6, v15, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v1, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ACK:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v1, v6, v0

    .line 381
    const/4 v1, 0x0

    move-object v0, v13

    invoke-static/range {v0 .. v6}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    .line 383
    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    move-object v4, v13

    move-object v5, v11

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V

    .line 384
    iget v4, v9, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    iget v5, v9, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    const/4 v8, 0x1

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move v3, v14

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v8}, Lio/netty/handler/pcap/PcapWriteHandler;->logTCP(ZIIILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    .end local v16    # "srcAddr":Ljava/net/InetSocketAddress;
    .end local v17    # "dstAddr":Ljava/net/InetSocketAddress;
    :goto_2
    invoke-virtual {v13}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 388
    nop

    .line 389
    .end local v11    # "byteBufAllocator":Lio/netty/buffer/ByteBufAllocator;
    .end local v12    # "packet":Lio/netty/buffer/ByteBuf;
    .end local v13    # "tcpBuf":Lio/netty/buffer/ByteBuf;
    .end local v14    # "bytes":I
    goto :goto_3

    .line 387
    .restart local v11    # "byteBufAllocator":Lio/netty/buffer/ByteBufAllocator;
    .restart local v12    # "packet":Lio/netty/buffer/ByteBuf;
    .restart local v13    # "tcpBuf":Lio/netty/buffer/ByteBuf;
    .restart local v14    # "bytes":I
    :catchall_0
    move-exception v0

    invoke-virtual {v13}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 388
    throw v0

    .line 390
    .end local v11    # "byteBufAllocator":Lio/netty/buffer/ByteBufAllocator;
    .end local v12    # "packet":Lio/netty/buffer/ByteBuf;
    .end local v13    # "tcpBuf":Lio/netty/buffer/ByteBuf;
    .end local v14    # "bytes":I
    :cond_4
    iget-object v0, v9, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Discarding Pcap Write for TCP Object: {}"

    invoke-interface {v0, v1, v10}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 392
    :goto_3
    return-void
.end method

.method private handleUDP(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 11
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;

    .line 449
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 452
    .local v0, "udpBuf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    instance-of v1, p2, Lio/netty/channel/socket/DatagramPacket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v6, "Writing UDP Data of {} Bytes, Src Addr {}, Dst Addr {}"

    const-string v7, "Discarding Zero Byte UDP Packet"

    if-eqz v1, :cond_2

    .line 455
    :try_start_1
    move-object v1, p2

    check-cast v1, Lio/netty/channel/socket/DatagramPacket;

    invoke-virtual {v1}, Lio/netty/channel/socket/DatagramPacket;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->captureZeroByte:Z

    if-nez v1, :cond_0

    .line 456
    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 457
    return-void

    .line 460
    :cond_0
    :try_start_2
    move-object v1, p2

    check-cast v1, Lio/netty/channel/socket/DatagramPacket;

    invoke-virtual {v1}, Lio/netty/channel/socket/DatagramPacket;->duplicate()Lio/netty/channel/socket/DatagramPacket;

    move-result-object v1

    move-object v7, v1

    .line 461
    .local v7, "datagramPacket":Lio/netty/channel/socket/DatagramPacket;
    invoke-virtual {v7}, Lio/netty/channel/socket/DatagramPacket;->sender()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 462
    .local v1, "srcAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v7}, Lio/netty/channel/socket/DatagramPacket;->recipient()Ljava/net/SocketAddress;

    move-result-object v8

    check-cast v8, Ljava/net/InetSocketAddress;

    .line 466
    .local v8, "dstAddr":Ljava/net/InetSocketAddress;
    if-nez v1, :cond_1

    .line 467
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v9

    invoke-static {v9, v8}, Lio/netty/handler/pcap/PcapWriteHandler;->getLocalAddress(Lio/netty/channel/Channel;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v9

    move-object v1, v9

    goto :goto_0

    .line 466
    :cond_1
    move-object v9, v1

    .line 470
    .end local v1    # "srcAddr":Ljava/net/InetSocketAddress;
    .local v9, "srcAddr":Ljava/net/InetSocketAddress;
    :goto_0
    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-array v5, v5, [Ljava/lang/Object;

    .line 471
    invoke-virtual {v7}, Lio/netty/channel/socket/DatagramPacket;->content()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v10}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v4

    aput-object v9, v5, v3

    aput-object v8, v5, v2

    .line 470
    invoke-interface {v1, v6, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    invoke-virtual {v7}, Lio/netty/channel/socket/DatagramPacket;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lio/netty/handler/pcap/UDPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;II)V

    .line 474
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v5

    move-object v1, p0

    move-object v2, v9

    move-object v3, v8

    move-object v4, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/pcap/PcapWriteHandler;->completeUDPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V

    .line 475
    .end local v7    # "datagramPacket":Lio/netty/channel/socket/DatagramPacket;
    .end local v8    # "dstAddr":Ljava/net/InetSocketAddress;
    .end local v9    # "srcAddr":Ljava/net/InetSocketAddress;
    goto/16 :goto_1

    :cond_2
    instance-of v1, p2, Lio/netty/buffer/ByteBuf;

    if-eqz v1, :cond_5

    .line 476
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    instance-of v1, v1, Lio/netty/channel/socket/DatagramChannel;

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    check-cast v1, Lio/netty/channel/socket/DatagramChannel;

    invoke-interface {v1}, Lio/netty/channel/socket/DatagramChannel;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 479
    :cond_3
    move-object v1, p2

    check-cast v1, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->captureZeroByte:Z

    if-nez v1, :cond_4

    .line 480
    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 495
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 481
    return-void

    .line 484
    :cond_4
    :try_start_3
    move-object v1, p2

    check-cast v1, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    move-object v7, v1

    .line 486
    .local v7, "byteBuf":Lio/netty/buffer/ByteBuf;
    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-array v5, v5, [Ljava/lang/Object;

    .line 487
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v4

    iget-object v4, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    aput-object v4, v5, v3

    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    aput-object v3, v5, v2

    .line 486
    invoke-interface {v1, v6, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    iget-object v2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-static {v0, v7, v1, v2}, Lio/netty/handler/pcap/UDPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;II)V

    .line 490
    iget-object v2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v5

    move-object v1, p0

    move-object v4, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/pcap/PcapWriteHandler;->completeUDPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V

    .line 491
    .end local v7    # "byteBuf":Lio/netty/buffer/ByteBuf;
    goto :goto_1

    .line 492
    :cond_5
    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Discarding Pcap Write for UDP Object: {}"

    invoke-interface {v1, v2, p2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 495
    :goto_1
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 496
    nop

    .line 497
    return-void

    .line 495
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 496
    throw v1
.end method

.method private initializeIfNecessary(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 10
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/netty/handler/pcap/State;->INIT:Lio/netty/handler/pcap/State;

    if-eq v0, v1, :cond_0

    .line 206
    return-void

    .line 209
    :cond_0
    new-instance v0, Lio/netty/handler/pcap/PcapWriter;

    invoke-direct {v0, p0}, Lio/netty/handler/pcap/PcapWriter;-><init>(Lio/netty/handler/pcap/PcapWriteHandler;)V

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->pCapWriter:Lio/netty/handler/pcap/PcapWriter;

    .line 211
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 213
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    instance-of v0, v0, Lio/netty/channel/socket/SocketChannel;

    if-eqz v0, :cond_2

    .line 214
    sget-object v0, Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;->TCP:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    .line 218
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->parent()Lio/netty/channel/Channel;

    move-result-object v0

    instance-of v0, v0, Lio/netty/channel/socket/ServerSocketChannel;

    if-eqz v0, :cond_1

    .line 219
    iput-boolean v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->isServerPipeline:Z

    .line 220
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    .line 221
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    invoke-static {v0, v3}, Lio/netty/handler/pcap/PcapWriteHandler;->getLocalAddress(Lio/netty/channel/Channel;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    goto :goto_0

    .line 223
    :cond_1
    iput-boolean v2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->isServerPipeline:Z

    .line 224
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    .line 225
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-static {v0, v3}, Lio/netty/handler/pcap/PcapWriteHandler;->getLocalAddress(Lio/netty/channel/Channel;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    goto :goto_0

    .line 227
    :cond_2
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    instance-of v0, v0, Lio/netty/channel/socket/DatagramChannel;

    if-eqz v0, :cond_3

    .line 228
    sget-object v0, Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;->UDP:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    .line 230
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lio/netty/channel/socket/DatagramChannel;

    .line 234
    .local v0, "datagramChannel":Lio/netty/channel/socket/DatagramChannel;
    invoke-interface {v0}, Lio/netty/channel/socket/DatagramChannel;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 235
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    iput-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    .line 236
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    iget-object v4, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-static {v3, v4}, Lio/netty/handler/pcap/PcapWriteHandler;->getLocalAddress(Lio/netty/channel/Channel;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v3

    iput-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    .line 241
    .end local v0    # "datagramChannel":Lio/netty/channel/socket/DatagramChannel;
    :cond_3
    :goto_0
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    sget-object v3, Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;->TCP:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    if-ne v0, v3, :cond_4

    .line 242
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Initiating Fake TCP 3-Way Handshake"

    invoke-interface {v0, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 244
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 248
    .local v0, "tcpBuf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    .line 249
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    new-array v9, v1, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v3, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->SYN:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v3, v9, v2

    .line 248
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v9}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    .line 250
    iget-object v4, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v7

    move-object v3, p0

    move-object v6, v0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V

    .line 253
    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    .line 254
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    const/4 v3, 0x2

    new-array v9, v3, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v3, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->SYN:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v3, v9, v2

    sget-object v3, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ACK:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v3, v9, v1

    .line 253
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v3 .. v9}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    .line 255
    iget-object v4, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v7

    move-object v3, p0

    move-object v6, v0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V

    .line 258
    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    .line 259
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    new-array v9, v1, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v1, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ACK:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v1, v9, v2

    .line 258
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v3 .. v9}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    .line 260
    iget-object v4, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v7

    move-object v3, p0

    move-object v6, v0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 263
    nop

    .line 265
    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Finished Fake TCP 3-Way Handshake"

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 262
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 263
    throw v1

    .line 268
    .end local v0    # "tcpBuf":Lio/netty/buffer/ByteBuf;
    :cond_4
    :goto_1
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/netty/handler/pcap/State;->WRITING:Lio/netty/handler/pcap/State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method private logDiscard()V
    .locals 2

    .line 695
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Discarding pcap write because channel type is unknown. The channel this handler is registered on is not a SocketChannel or DatagramChannel, so the inference does not work. Please call forceTcpChannel or forceUdpChannel before registering the handler."

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 698
    return-void
.end method

.method private logTCP(ZIIILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Z)V
    .locals 7
    .param p1, "isWriteOperation"    # Z
    .param p2, "bytes"    # I
    .param p3, "sendSegmentNumber"    # I
    .param p4, "receiveSegmentNumber"    # I
    .param p5, "srcAddr"    # Ljava/net/InetSocketAddress;
    .param p6, "dstAddr"    # Ljava/net/InetSocketAddress;
    .param p7, "ackOnly"    # Z

    .line 633
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    if-eqz p7, :cond_0

    .line 635
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 636
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3, p6, p5}, [Ljava/lang/Object;

    move-result-object v1

    .line 635
    const-string v2, "Writing TCP ACK, isWriteOperation {}, Segment Number {}, Ack Number {}, Src Addr {}, Dst Addr {}"

    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 638
    :cond_0
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 639
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 640
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, p5

    move-object v6, p6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 638
    const-string v2, "Writing TCP Data of {} Bytes, isWriteOperation {}, Segment Number {}, Ack Number {}, Src Addr {}, Dst Addr {}"

    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    :cond_1
    :goto_0
    return-void
.end method

.method public static writeGlobalHeader(Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-static {p0}, Lio/netty/handler/pcap/PcapHeaders;->writeGlobalHeader(Ljava/io/OutputStream;)V

    .line 201
    return-void
.end method


# virtual methods
.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    invoke-direct {p0, p1}, Lio/netty/handler/pcap/PcapWriteHandler;->initializeIfNecessary(Lio/netty/channel/ChannelHandlerContext;)V

    .line 274
    invoke-super {p0, p1}, Lio/netty/channel/ChannelDuplexHandler;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 275
    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/netty/handler/pcap/State;->INIT:Lio/netty/handler/pcap/State;

    if-ne v0, v1, :cond_0

    .line 281
    invoke-direct {p0, p1}, Lio/netty/handler/pcap/PcapWriteHandler;->initializeIfNecessary(Lio/netty/channel/ChannelHandlerContext;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/netty/handler/pcap/State;->WRITING:Lio/netty/handler/pcap/State;

    if-ne v0, v1, :cond_3

    .line 286
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    sget-object v1, Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;->TCP:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    if-ne v0, v1, :cond_1

    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/pcap/PcapWriteHandler;->handleTCP(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    sget-object v1, Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;->UDP:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    if-ne v0, v1, :cond_2

    .line 289
    invoke-direct {p0, p1, p2}, Lio/netty/handler/pcap/PcapWriteHandler;->handleUDP(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    goto :goto_0

    .line 291
    :cond_2
    invoke-direct {p0}, Lio/netty/handler/pcap/PcapWriteHandler;->logDiscard()V

    .line 294
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelDuplexHandler;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 295
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 725
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/netty/handler/pcap/State;->CLOSED:Lio/netty/handler/pcap/State;

    if-ne v0, v1, :cond_0

    .line 726
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "PcapWriterHandler is already closed"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 728
    :cond_0
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->pCapWriter:Lio/netty/handler/pcap/PcapWriter;

    invoke-virtual {v0}, Lio/netty/handler/pcap/PcapWriter;->close()V

    .line 729
    invoke-virtual {p0}, Lio/netty/handler/pcap/PcapWriteHandler;->markClosed()V

    .line 730
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "PcapWriterHandler is now closed"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 732
    :goto_0
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    sget-object v1, Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;->TCP:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    if-ne v0, v1, :cond_0

    .line 608
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 612
    .local v0, "tcpBuf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    iget v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    iget v4, p0, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    .line 613
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    const/4 v1, 0x2

    new-array v7, v1, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v1, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->RST:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const/4 v2, 0x0

    aput-object v1, v7, v2

    sget-object v1, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ACK:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const/4 v2, 0x1

    aput-object v1, v7, v2

    .line 612
    const/4 v2, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    .line 614
    iget-object v2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v5

    move-object v1, p0

    move-object v4, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 617
    nop

    .line 619
    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Sent Fake TCP RST to close connection"

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 617
    throw v1

    .line 622
    .end local v0    # "tcpBuf":Lio/netty/buffer/ByteBuf;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/netty/handler/pcap/PcapWriteHandler;->close()V

    .line 623
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 624
    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 12
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    sget-object v1, Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;->TCP:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    if-ne v0, v1, :cond_0

    .line 573
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Starting Fake TCP FIN+ACK Flow to close connection"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 575
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    .line 576
    .local v0, "byteBufAllocator":Lio/netty/buffer/ByteBufAllocator;
    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v8

    .line 580
    .local v8, "tcpBuf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    iget v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    iget v4, p0, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    .line 581
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    const/4 v9, 0x2

    new-array v7, v9, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v1, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->FIN:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const/4 v10, 0x0

    aput-object v1, v7, v10

    sget-object v1, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ACK:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const/4 v11, 0x1

    aput-object v1, v7, v11

    .line 580
    const/4 v2, 0x0

    move-object v1, v8

    invoke-static/range {v1 .. v7}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    .line 582
    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    move-object v2, p0

    move-object v5, v8

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V

    .line 585
    iget v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    iget v4, p0, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    .line 586
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    new-array v7, v9, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v1, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->FIN:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v1, v7, v10

    sget-object v1, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ACK:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v1, v7, v11

    .line 585
    const/4 v2, 0x0

    move-object v1, v8

    invoke-static/range {v1 .. v7}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    .line 587
    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    move-object v2, p0

    move-object v5, v8

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V

    .line 590
    iget v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    add-int/lit8 v3, v1, 0x1

    iget v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    add-int/lit8 v4, v1, 0x1

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    .line 591
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    new-array v7, v11, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v1, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ACK:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v1, v7, v10

    .line 590
    const/4 v2, 0x0

    move-object v1, v8

    invoke-static/range {v1 .. v7}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    .line 592
    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    move-object v2, p0

    move-object v5, v8

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    invoke-virtual {v8}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 595
    nop

    .line 597
    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Finished Fake TCP FIN+ACK Flow to close connection"

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 594
    :catchall_0
    move-exception v1

    invoke-virtual {v8}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 595
    throw v1

    .line 600
    .end local v0    # "byteBufAllocator":Lio/netty/buffer/ByteBufAllocator;
    .end local v8    # "tcpBuf":Lio/netty/buffer/ByteBuf;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/netty/handler/pcap/PcapWriteHandler;->close()V

    .line 601
    invoke-super {p0, p1}, Lio/netty/channel/ChannelDuplexHandler;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    .line 602
    return-void
.end method

.method public isWriting()Z
    .locals 2

    .line 658
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/netty/handler/pcap/State;->WRITING:Lio/netty/handler/pcap/State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method markClosed()V
    .locals 2

    .line 684
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/netty/handler/pcap/State;->CLOSED:Lio/netty/handler/pcap/State;

    if-eq v0, v1, :cond_0

    .line 685
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/netty/handler/pcap/State;->CLOSED:Lio/netty/handler/pcap/State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 687
    :cond_0
    return-void
.end method

.method outputStream()Ljava/io/OutputStream;
    .locals 1

    .line 646
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method pCapWriter()Lio/netty/handler/pcap/PcapWriter;
    .locals 1

    .line 691
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->pCapWriter:Lio/netty/handler/pcap/PcapWriter;

    return-object v0
.end method

.method public pause()V
    .locals 3

    .line 669
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/netty/handler/pcap/State;->WRITING:Lio/netty/handler/pcap/State;

    sget-object v2, Lio/netty/handler/pcap/State;->PAUSED:Lio/netty/handler/pcap/State;

    invoke-static {v0, v1, v2}, Lio/ktor/network/selector/ActorSelectorManager$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    return-void

    .line 670
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State must be \'STARTED\' to pause but current state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resume()V
    .locals 3

    .line 678
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/netty/handler/pcap/State;->PAUSED:Lio/netty/handler/pcap/State;

    sget-object v2, Lio/netty/handler/pcap/State;->WRITING:Lio/netty/handler/pcap/State;

    invoke-static {v0, v1, v2}, Lio/ktor/network/selector/ActorSelectorManager$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    return-void

    .line 679
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State must be \'PAUSED\' to resume but current state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method sharedOutputStream()Z
    .locals 1

    .line 650
    iget-boolean v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->sharedOutputStream:Z

    return v0
.end method

.method state()Lio/netty/handler/pcap/State;
    .locals 1

    .line 662
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/pcap/State;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PcapWriteHandler{captureZeroByte="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->captureZeroByte:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", writePcapGlobalHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->writePcapGlobalHeader:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sharedOutputStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->sharedOutputStream:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sendSegmentNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", receiveSegmentNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", initiatorAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatorAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", handlerAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isServerPipeline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->isServerPipeline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/netty/handler/pcap/State;->INIT:Lio/netty/handler/pcap/State;

    if-ne v0, v1, :cond_0

    .line 301
    invoke-direct {p0, p1}, Lio/netty/handler/pcap/PcapWriteHandler;->initializeIfNecessary(Lio/netty/channel/ChannelHandlerContext;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/netty/handler/pcap/State;->WRITING:Lio/netty/handler/pcap/State;

    if-ne v0, v1, :cond_3

    .line 306
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    sget-object v1, Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;->TCP:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    if-ne v0, v1, :cond_1

    .line 307
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/pcap/PcapWriteHandler;->handleTCP(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    sget-object v1, Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;->UDP:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    if-ne v0, v1, :cond_2

    .line 309
    invoke-direct {p0, p1, p2}, Lio/netty/handler/pcap/PcapWriteHandler;->handleUDP(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    goto :goto_0

    .line 311
    :cond_2
    invoke-direct {p0}, Lio/netty/handler/pcap/PcapWriteHandler;->logDiscard()V

    .line 314
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lio/netty/channel/ChannelDuplexHandler;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 315
    return-void
.end method
