.class public final Lio/netty/channel/epoll/EpollDatagramChannel;
.super Lio/netty/channel/epoll/AbstractEpollChannel;
.source "EpollDatagramChannel.java"

# interfaces
.implements Lio/netty/channel/socket/DatagramChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EXPECTED_TYPES:Ljava/lang/String;

.field private static final METADATA:Lio/netty/channel/ChannelMetadata;


# instance fields
.field private final config:Lio/netty/channel/epoll/EpollDatagramChannelConfig;

.field private volatile connected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    nop

    .line 57
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/netty/channel/ChannelMetadata;-><init>(ZI)V

    sput-object v0, Lio/netty/channel/epoll/EpollDatagramChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/channel/socket/DatagramPacket;

    .line 59
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lio/netty/channel/AddressedEnvelope;

    .line 60
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lio/netty/buffer/ByteBuf;

    .line 61
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Ljava/net/InetSocketAddress;

    .line 62
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/buffer/ByteBuf;

    .line 63
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollDatagramChannel;->EXPECTED_TYPES:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;-><init>(Lio/netty/channel/socket/InternetProtocolFamily;)V

    .line 85
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "fd"    # I

    .line 100
    new-instance v0, Lio/netty/channel/epoll/LinuxSocket;

    invoke-direct {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;-><init>(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/netty/channel/epoll/EpollDatagramChannel;-><init>(Lio/netty/channel/epoll/LinuxSocket;Z)V

    .line 101
    return-void
.end method

.method private constructor <init>(Lio/netty/channel/epoll/LinuxSocket;Z)V
    .locals 1
    .param p1, "fd"    # Lio/netty/channel/epoll/LinuxSocket;
    .param p2, "active"    # Z

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lio/netty/channel/epoll/AbstractEpollChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/epoll/LinuxSocket;Z)V

    .line 105
    new-instance v0, Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;-><init>(Lio/netty/channel/epoll/EpollDatagramChannel;)V

    iput-object v0, p0, Lio/netty/channel/epoll/EpollDatagramChannel;->config:Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    .line 106
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/socket/InternetProtocolFamily;)V
    .locals 2
    .param p1, "family"    # Lio/netty/channel/socket/InternetProtocolFamily;

    .line 92
    invoke-static {p1}, Lio/netty/channel/epoll/LinuxSocket;->newSocketDgram(Lio/netty/channel/socket/InternetProtocolFamily;)Lio/netty/channel/epoll/LinuxSocket;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/netty/channel/epoll/EpollDatagramChannel;-><init>(Lio/netty/channel/epoll/LinuxSocket;Z)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/epoll/EpollDatagramChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/epoll/EpollDatagramChannel;
    .param p1, "x1"    # Ljava/net/InetAddress;
    .param p2, "x2"    # Ljava/net/NetworkInterface;
    .param p3, "x3"    # Ljava/net/InetAddress;
    .param p4, "x4"    # Lio/netty/channel/ChannelPromise;

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/channel/epoll/EpollDatagramChannel;->joinGroup0(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$100(Lio/netty/channel/epoll/EpollDatagramChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/epoll/EpollDatagramChannel;
    .param p1, "x1"    # Ljava/net/InetAddress;
    .param p2, "x2"    # Ljava/net/NetworkInterface;
    .param p3, "x3"    # Ljava/net/InetAddress;
    .param p4, "x4"    # Lio/netty/channel/ChannelPromise;

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/channel/epoll/EpollDatagramChannel;->leaveGroup0(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$200(Lio/netty/channel/epoll/EpollDatagramChannel;)Lio/netty/channel/epoll/NativeDatagramPacketArray;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/epoll/EpollDatagramChannel;

    .line 56
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->cleanDatagramPacketArray()Lio/netty/channel/epoll/NativeDatagramPacketArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lio/netty/channel/epoll/EpollDatagramChannel;Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;Lio/netty/channel/epoll/NativeDatagramPacketArray;Lio/netty/buffer/ByteBuf;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/epoll/EpollDatagramChannel;
    .param p1, "x1"    # Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .param p2, "x2"    # Lio/netty/channel/epoll/NativeDatagramPacketArray;
    .param p3, "x3"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/epoll/EpollDatagramChannel;->recvmsg(Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;Lio/netty/channel/epoll/NativeDatagramPacketArray;Lio/netty/buffer/ByteBuf;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lio/netty/channel/epoll/EpollDatagramChannel;Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;Lio/netty/buffer/ByteBuf;I)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/epoll/EpollDatagramChannel;
    .param p1, "x1"    # Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .param p2, "x2"    # Lio/netty/buffer/ByteBuf;
    .param p3, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/epoll/EpollDatagramChannel;->connectedRead(Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;Lio/netty/buffer/ByteBuf;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lio/netty/channel/epoll/EpollDatagramChannel;Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;Lio/netty/channel/epoll/NativeDatagramPacketArray;Lio/netty/buffer/ByteBuf;II)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/epoll/EpollDatagramChannel;
    .param p1, "x1"    # Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .param p2, "x2"    # Lio/netty/channel/epoll/NativeDatagramPacketArray;
    .param p3, "x3"    # Lio/netty/buffer/ByteBuf;
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct/range {p0 .. p5}, Lio/netty/channel/epoll/EpollDatagramChannel;->scatteringRead(Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;Lio/netty/channel/epoll/NativeDatagramPacketArray;Lio/netty/buffer/ByteBuf;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lio/netty/channel/epoll/EpollDatagramChannel;Lio/netty/channel/unix/Errors$NativeIoException;)Ljava/io/IOException;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/epoll/EpollDatagramChannel;
    .param p1, "x1"    # Lio/netty/channel/unix/Errors$NativeIoException;

    .line 56
    invoke-direct {p0, p1}, Lio/netty/channel/epoll/EpollDatagramChannel;->translateForConnected(Lio/netty/channel/unix/Errors$NativeIoException;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method private static addDatagramPacketToOut(Lio/netty/channel/socket/DatagramPacket;Lio/netty/util/internal/RecyclableArrayList;)V
    .locals 7
    .param p0, "packet"    # Lio/netty/channel/socket/DatagramPacket;
    .param p1, "out"    # Lio/netty/util/internal/RecyclableArrayList;

    .line 628
    instance-of v0, p0, Lio/netty/channel/unix/SegmentedDatagramPacket;

    if-eqz v0, :cond_1

    .line 629
    move-object v0, p0

    check-cast v0, Lio/netty/channel/unix/SegmentedDatagramPacket;

    .line 631
    .local v0, "segmentedDatagramPacket":Lio/netty/channel/unix/SegmentedDatagramPacket;
    invoke-virtual {v0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 632
    .local v1, "content":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->recipient()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 633
    .local v2, "recipient":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->sender()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    .line 634
    .local v3, "sender":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->segmentSize()I

    move-result v4

    .line 636
    .local v4, "segmentSize":I
    :cond_0
    new-instance v5, Lio/netty/channel/socket/DatagramPacket;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v1, v6}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    invoke-direct {v5, v6, v2, v3}, Lio/netty/channel/socket/DatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    invoke-virtual {p1, v5}, Lio/netty/util/internal/RecyclableArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 640
    invoke-virtual {v0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->release()Z

    .line 641
    .end local v0    # "segmentedDatagramPacket":Lio/netty/channel/unix/SegmentedDatagramPacket;
    .end local v1    # "content":Lio/netty/buffer/ByteBuf;
    .end local v2    # "recipient":Ljava/net/InetSocketAddress;
    .end local v3    # "sender":Ljava/net/InetSocketAddress;
    .end local v4    # "segmentSize":I
    goto :goto_0

    .line 642
    :cond_1
    invoke-virtual {p1, p0}, Lio/netty/util/internal/RecyclableArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    :goto_0
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

    .line 422
    .local p0, "envelope":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<**>;"
    invoke-interface {p0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    .line 423
    invoke-interface {p0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    new-instance v0, Ljava/nio/channels/UnresolvedAddressException;

    invoke-direct {v0}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    throw v0

    .line 426
    :cond_1
    :goto_0
    return-void
.end method

.method private cleanDatagramPacketArray()Lio/netty/channel/epoll/NativeDatagramPacketArray;
    .locals 1

    .line 777
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    check-cast v0, Lio/netty/channel/epoll/EpollEventLoop;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollEventLoop;->cleanDatagramPacketArray()Lio/netty/channel/epoll/NativeDatagramPacketArray;

    move-result-object v0

    return-object v0
.end method

.method private connectedRead(Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;Lio/netty/buffer/ByteBuf;I)Z
    .locals 6
    .param p1, "allocHandle"    # Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .param p2, "byteBuf"    # Lio/netty/buffer/ByteBuf;
    .param p3, "maxDatagramPacketSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 579
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v0

    :goto_0
    nop

    .line 581
    .local v0, "writable":I
    invoke-virtual {p1, v0}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->attemptedBytesRead(I)V

    .line 583
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    .line 585
    .local v1, "writerIndex":I
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 586
    iget-object v2, p0, Lio/netty/channel/epoll/EpollDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v3

    add-int v5, v1, v0

    invoke-virtual {v2, v3, v4, v1, v5}, Lio/netty/channel/epoll/LinuxSocket;->recvAddress(JII)I

    move-result v2

    .local v2, "localReadAmount":I
    goto :goto_1

    .line 588
    .end local v2    # "localReadAmount":I
    :cond_1
    invoke-virtual {p2, v1, v0}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 589
    .local v2, "buf":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lio/netty/channel/epoll/EpollDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lio/netty/channel/epoll/LinuxSocket;->recv(Ljava/nio/ByteBuffer;II)I

    move-result v3

    move v2, v3

    .line 592
    .local v2, "localReadAmount":I
    :goto_1
    if-gtz v2, :cond_3

    .line 593
    invoke-virtual {p1, v2}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    nop

    .line 610
    if-eqz p2, :cond_2

    .line 611
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 596
    :cond_2
    const/4 v3, 0x0

    return v3

    .line 598
    :cond_3
    add-int v3, v1, v2

    :try_start_1
    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 600
    if-gtz p3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v0

    :goto_2
    invoke-virtual {p1, v3}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 603
    new-instance v3, Lio/netty/channel/socket/DatagramPacket;

    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-direct {v3, p2, v4, v5}, Lio/netty/channel/socket/DatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    .line 604
    .local v3, "packet":Lio/netty/channel/socket/DatagramPacket;
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->incMessagesRead(I)V

    .line 606
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v5

    invoke-interface {v5, v3}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    const/4 p2, 0x0

    .line 608
    nop

    .line 610
    if-eqz p2, :cond_5

    .line 611
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 608
    :cond_5
    return v4

    .line 610
    .end local v0    # "writable":I
    .end local v1    # "writerIndex":I
    .end local v2    # "localReadAmount":I
    .end local v3    # "packet":Lio/netty/channel/socket/DatagramPacket;
    :catchall_0
    move-exception v0

    if-eqz p2, :cond_6

    .line 611
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 613
    :cond_6
    throw v0
.end method

.method private doWriteMessage(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 402
    instance-of v0, p1, Lio/netty/channel/AddressedEnvelope;

    if-eqz v0, :cond_0

    .line 404
    move-object v0, p1

    check-cast v0, Lio/netty/channel/AddressedEnvelope;

    .line 406
    .local v0, "envelope":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;>;"
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 407
    .local v1, "data":Lio/netty/buffer/ByteBuf;
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 408
    .local v0, "remoteAddress":Ljava/net/InetSocketAddress;
    goto :goto_0

    .line 409
    .end local v0    # "remoteAddress":Ljava/net/InetSocketAddress;
    .end local v1    # "data":Lio/netty/buffer/ByteBuf;
    :cond_0
    move-object v1, p1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 410
    .restart local v1    # "data":Lio/netty/buffer/ByteBuf;
    const/4 v0, 0x0

    .line 413
    .restart local v0    # "remoteAddress":Ljava/net/InetSocketAddress;
    :goto_0
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    .line 414
    .local v2, "dataLen":I
    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 415
    return v3

    .line 418
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v0, v4}, Lio/netty/channel/epoll/EpollDatagramChannel;->doWriteOrSendBytes(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;Z)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    return v3
.end method

.method public static isSegmentedDatagramPacketSupported()Z
    .locals 1

    .line 74
    invoke-static {}, Lio/netty/channel/epoll/Epoll;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_SENDMMSG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_UDP_SEGMENT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private joinGroup0(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 195
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/channel/epoll/LinuxSocket;->joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)V

    .line 199
    invoke-interface {p4}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/IOException;
    invoke-interface {p4, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 203
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private leaveGroup0(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 263
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/channel/epoll/LinuxSocket;->leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)V

    .line 267
    invoke-interface {p4}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/io/IOException;
    invoke-interface {p4, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 271
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static processPacket(Lio/netty/channel/ChannelPipeline;Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;ILio/netty/channel/socket/DatagramPacket;)V
    .locals 2
    .param p0, "pipeline"    # Lio/netty/channel/ChannelPipeline;
    .param p1, "handle"    # Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .param p2, "bytesRead"    # I
    .param p3, "packet"    # Lio/netty/channel/socket/DatagramPacket;

    .line 660
    const/4 v0, 0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 661
    invoke-virtual {p1, v0}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->incMessagesRead(I)V

    .line 662
    invoke-interface {p0, p3}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 663
    return-void
.end method

.method private static processPacketList(Lio/netty/channel/ChannelPipeline;Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;ILio/netty/util/internal/RecyclableArrayList;)V
    .locals 3
    .param p0, "pipeline"    # Lio/netty/channel/ChannelPipeline;
    .param p1, "handle"    # Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .param p2, "bytesRead"    # I
    .param p3, "packetList"    # Lio/netty/util/internal/RecyclableArrayList;

    .line 667
    invoke-virtual {p3}, Lio/netty/util/internal/RecyclableArrayList;->size()I

    move-result v0

    .line 668
    .local v0, "messagesRead":I
    const/4 v1, 0x1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead(I)V

    .line 669
    invoke-virtual {p1, v0}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->incMessagesRead(I)V

    .line 670
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 671
    sget-object v2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p3, v1, v2}, Lio/netty/util/internal/RecyclableArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 670
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 673
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private recvmsg(Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;Lio/netty/channel/epoll/NativeDatagramPacketArray;Lio/netty/buffer/ByteBuf;)Z
    .locals 8
    .param p1, "allocHandle"    # Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .param p2, "array"    # Lio/netty/channel/epoll/NativeDatagramPacketArray;
    .param p3, "byteBuf"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 677
    const/4 v0, 0x0

    .line 679
    .local v0, "datagramPackets":Lio/netty/util/internal/RecyclableArrayList;
    :try_start_0
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v1

    .line 681
    .local v1, "writable":I
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v2

    invoke-virtual {p2, p3, v2, v1}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->addWritable(Lio/netty/buffer/ByteBuf;II)Z

    move-result v2

    .line 682
    .local v2, "added":Z
    if-eqz v2, :cond_2

    .line 684
    invoke-virtual {p1, v1}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->attemptedBytesRead(I)V

    .line 686
    invoke-virtual {p2}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->packets()[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 688
    .local v3, "msg":Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
    iget-object v5, p0, Lio/netty/channel/epoll/EpollDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v5, v3}, Lio/netty/channel/epoll/LinuxSocket;->recvmsg(Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;)I

    move-result v5

    .line 689
    .local v5, "bytesReceived":I
    invoke-virtual {v3}, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->hasSender()Z

    move-result v6

    if-nez v6, :cond_0

    .line 690
    const/4 v6, -0x1

    invoke-virtual {p1, v6}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    nop

    .line 712
    invoke-static {p3, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->releaseAndRecycle(Lio/netty/buffer/ByteBuf;Lio/netty/util/internal/RecyclableArrayList;)V

    .line 691
    return v4

    .line 693
    :cond_0
    :try_start_1
    invoke-virtual {p3, v5}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 694
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    .line 695
    .local v4, "local":Ljava/net/InetSocketAddress;
    invoke-virtual {v3, p3, v4}, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->newDatagramPacket(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;)Lio/netty/channel/socket/DatagramPacket;

    move-result-object v6

    .line 696
    .local v6, "packet":Lio/netty/channel/socket/DatagramPacket;
    instance-of v7, v6, Lio/netty/channel/unix/SegmentedDatagramPacket;

    if-nez v7, :cond_1

    .line 697
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v7

    invoke-static {v7, p1, v5, v6}, Lio/netty/channel/epoll/EpollDatagramChannel;->processPacket(Lio/netty/channel/ChannelPipeline;Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;ILio/netty/channel/socket/DatagramPacket;)V

    goto :goto_0

    .line 702
    :cond_1
    invoke-static {}, Lio/netty/util/internal/RecyclableArrayList;->newInstance()Lio/netty/util/internal/RecyclableArrayList;

    move-result-object v7

    move-object v0, v7

    .line 703
    invoke-static {v6, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->addDatagramPacketToOut(Lio/netty/channel/socket/DatagramPacket;Lio/netty/util/internal/RecyclableArrayList;)V

    .line 705
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v7

    invoke-static {v7, p1, v5, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->processPacketList(Lio/netty/channel/ChannelPipeline;Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;ILio/netty/util/internal/RecyclableArrayList;)V

    .line 706
    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    const/4 v0, 0x0

    .line 710
    :goto_0
    nop

    .line 712
    invoke-static {p3, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->releaseAndRecycle(Lio/netty/buffer/ByteBuf;Lio/netty/util/internal/RecyclableArrayList;)V

    .line 710
    const/4 v7, 0x1

    return v7

    .line 682
    .end local v3    # "msg":Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
    .end local v4    # "local":Ljava/net/InetSocketAddress;
    .end local v5    # "bytesReceived":I
    .end local v6    # "packet":Lio/netty/channel/socket/DatagramPacket;
    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "datagramPackets":Lio/netty/util/internal/RecyclableArrayList;
    .end local p1    # "allocHandle":Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .end local p2    # "array":Lio/netty/channel/epoll/NativeDatagramPacketArray;
    .end local p3    # "byteBuf":Lio/netty/buffer/ByteBuf;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 712
    .end local v1    # "writable":I
    .end local v2    # "added":Z
    .restart local v0    # "datagramPackets":Lio/netty/util/internal/RecyclableArrayList;
    .restart local p1    # "allocHandle":Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .restart local p2    # "array":Lio/netty/channel/epoll/NativeDatagramPacketArray;
    .restart local p3    # "byteBuf":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v1

    invoke-static {p3, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->releaseAndRecycle(Lio/netty/buffer/ByteBuf;Lio/netty/util/internal/RecyclableArrayList;)V

    .line 713
    throw v1
.end method

.method private static releaseAndRecycle(Lio/netty/buffer/ByteBuf;Lio/netty/util/internal/RecyclableArrayList;)V
    .locals 2
    .param p0, "byteBuf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "packetList"    # Lio/netty/util/internal/RecyclableArrayList;

    .line 647
    if-eqz p0, :cond_0

    .line 648
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 650
    :cond_0
    if-eqz p1, :cond_2

    .line 651
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lio/netty/util/internal/RecyclableArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 652
    invoke-virtual {p1, v0}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 656
    :cond_2
    return-void
.end method

.method private scatteringRead(Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;Lio/netty/channel/epoll/NativeDatagramPacketArray;Lio/netty/buffer/ByteBuf;II)Z
    .locals 9
    .param p1, "allocHandle"    # Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;
    .param p2, "array"    # Lio/netty/channel/epoll/NativeDatagramPacketArray;
    .param p3, "byteBuf"    # Lio/netty/buffer/ByteBuf;
    .param p4, "datagramSize"    # I
    .param p5, "numDatagram"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 718
    const/4 v0, 0x0

    .line 720
    .local v0, "datagramPackets":Lio/netty/util/internal/RecyclableArrayList;
    :try_start_0
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    .line 721
    .local v1, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p5, :cond_1

    .line 722
    invoke-virtual {p2, p3, v1, p4}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->addWritable(Lio/netty/buffer/ByteBuf;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 723
    goto :goto_1

    .line 721
    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, p4

    goto :goto_0

    .line 727
    .end local v2    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p1, v2}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->attemptedBytesRead(I)V

    .line 729
    invoke-virtual {p2}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->packets()[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

    move-result-object v2

    .line 731
    .local v2, "packets":[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
    iget-object v3, p0, Lio/netty/channel/epoll/EpollDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {p2}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->count()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Lio/netty/channel/epoll/LinuxSocket;->recvmmsg([Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I

    move-result v3

    .line 732
    .local v3, "received":I
    if-nez v3, :cond_2

    .line 733
    const/4 v4, -0x1

    invoke-virtual {p1, v4}, Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;->lastBytesRead(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    nop

    .line 772
    invoke-static {p3, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->releaseAndRecycle(Lio/netty/buffer/ByteBuf;Lio/netty/util/internal/RecyclableArrayList;)V

    .line 734
    return v5

    .line 737
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    .line 740
    .local v4, "local":Ljava/net/InetSocketAddress;
    mul-int v6, v3, p4

    .line 741
    .local v6, "bytesReceived":I
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p3, v7}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 743
    const/4 v7, 0x1

    if-ne v3, v7, :cond_3

    .line 745
    aget-object v5, v2, v5

    invoke-virtual {v5, p3, v4}, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->newDatagramPacket(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;)Lio/netty/channel/socket/DatagramPacket;

    move-result-object v5

    .line 746
    .local v5, "packet":Lio/netty/channel/socket/DatagramPacket;
    instance-of v8, v5, Lio/netty/channel/unix/SegmentedDatagramPacket;

    if-nez v8, :cond_3

    .line 747
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v8

    invoke-static {v8, p1, p4, v5}, Lio/netty/channel/epoll/EpollDatagramChannel;->processPacket(Lio/netty/channel/ChannelPipeline;Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;ILio/netty/channel/socket/DatagramPacket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    nop

    .line 772
    invoke-static {p3, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->releaseAndRecycle(Lio/netty/buffer/ByteBuf;Lio/netty/util/internal/RecyclableArrayList;)V

    .line 748
    return v7

    .line 754
    .end local v5    # "packet":Lio/netty/channel/socket/DatagramPacket;
    :cond_3
    :try_start_2
    invoke-static {}, Lio/netty/util/internal/RecyclableArrayList;->newInstance()Lio/netty/util/internal/RecyclableArrayList;

    move-result-object v5

    move-object v0, v5

    .line 755
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_4

    .line 756
    aget-object v8, v2, v5

    invoke-virtual {v8, p3, v4}, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->newDatagramPacket(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;)Lio/netty/channel/socket/DatagramPacket;

    move-result-object v8

    .line 760
    .local v8, "packet":Lio/netty/channel/socket/DatagramPacket;
    invoke-virtual {p3, p4}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 761
    invoke-static {v8, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->addDatagramPacketToOut(Lio/netty/channel/socket/DatagramPacket;Lio/netty/util/internal/RecyclableArrayList;)V

    .line 755
    .end local v8    # "packet":Lio/netty/channel/socket/DatagramPacket;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 764
    .end local v5    # "i":I
    :cond_4
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 765
    const/4 p3, 0x0

    .line 767
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v5

    invoke-static {v5, p1, v6, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->processPacketList(Lio/netty/channel/ChannelPipeline;Lio/netty/channel/epoll/EpollRecvByteAllocatorHandle;ILio/netty/util/internal/RecyclableArrayList;)V

    .line 768
    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 769
    const/4 v0, 0x0

    .line 770
    nop

    .line 772
    invoke-static {p3, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->releaseAndRecycle(Lio/netty/buffer/ByteBuf;Lio/netty/util/internal/RecyclableArrayList;)V

    .line 770
    return v7

    .line 772
    .end local v1    # "offset":I
    .end local v2    # "packets":[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
    .end local v3    # "received":I
    .end local v4    # "local":Ljava/net/InetSocketAddress;
    .end local v6    # "bytesReceived":I
    :catchall_0
    move-exception v1

    invoke-static {p3, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->releaseAndRecycle(Lio/netty/buffer/ByteBuf;Lio/netty/util/internal/RecyclableArrayList;)V

    .line 773
    throw v1
.end method

.method private translateForConnected(Lio/netty/channel/unix/Errors$NativeIoException;)Ljava/io/IOException;
    .locals 2
    .param p1, "e"    # Lio/netty/channel/unix/Errors$NativeIoException;

    .line 618
    invoke-virtual {p1}, Lio/netty/channel/unix/Errors$NativeIoException;->expectedErr()I

    move-result v0

    sget v1, Lio/netty/channel/unix/Errors;->ERROR_ECONNREFUSED_NEGATIVE:I

    if-ne v0, v1, :cond_0

    .line 619
    new-instance v0, Ljava/net/PortUnreachableException;

    invoke-virtual {p1}, Lio/netty/channel/unix/Errors$NativeIoException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;)V

    .line 620
    .local v0, "error":Ljava/net/PortUnreachableException;
    invoke-virtual {v0, p1}, Ljava/net/PortUnreachableException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 621
    return-object v0

    .line 623
    .end local v0    # "error":Ljava/net/PortUnreachableException;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public block(Ljava/net/InetAddress;Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "sourceToBlock"    # Ljava/net/InetAddress;

    .line 294
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->block(Ljava/net/InetAddress;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public block(Ljava/net/InetAddress;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "sourceToBlock"    # Ljava/net/InetAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 301
    nop

    .line 303
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 301
    invoke-virtual {p0, p1, v0, p2, p3}, Lio/netty/channel/epoll/EpollDatagramChannel;->block(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 305
    :catchall_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Throwable;
    invoke-interface {p3, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 308
    .end local v0    # "e":Ljava/lang/Throwable;
    return-object p3
.end method

.method public block(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "sourceToBlock"    # Ljava/net/InetAddress;

    .line 277
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->block(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public block(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "sourceToBlock"    # Ljava/net/InetAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 284
    const-string v0, "multicastAddress"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 285
    const-string v0, "sourceToBlock"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 286
    const-string v0, "networkInterface"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 288
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multicast block not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 289
    return-object p4
.end method

.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->config()Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/epoll/EpollChannelConfig;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->config()Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public config()Lio/netty/channel/epoll/EpollDatagramChannelConfig;
    .locals 1

    .line 477
    iget-object v0, p0, Lio/netty/channel/epoll/EpollDatagramChannel;->config:Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->config()Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method protected doBind(Ljava/net/SocketAddress;)V
    .locals 4
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 319
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 320
    .local v0, "socketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lio/netty/channel/epoll/EpollDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v1}, Lio/netty/channel/epoll/LinuxSocket;->family()Lio/netty/channel/socket/InternetProtocolFamily;

    move-result-object v1

    sget-object v2, Lio/netty/channel/socket/InternetProtocolFamily;->IPv6:Lio/netty/channel/socket/InternetProtocolFamily;

    if-ne v1, v2, :cond_0

    .line 323
    new-instance v1, Ljava/net/InetSocketAddress;

    sget-object v2, Lio/netty/channel/epoll/LinuxSocket;->INET6_ANY:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object p1, v1

    .line 327
    .end local v0    # "socketAddress":Ljava/net/InetSocketAddress;
    :cond_0
    invoke-super {p0, p1}, Lio/netty/channel/epoll/AbstractEpollChannel;->doBind(Ljava/net/SocketAddress;)V

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/epoll/EpollDatagramChannel;->active:Z

    .line 329
    return-void
.end method

.method protected doClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 498
    invoke-super {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->doClose()V

    .line 499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/epoll/EpollDatagramChannel;->connected:Z

    .line 500
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

    .line 489
    invoke-super {p0, p1, p2}, Lio/netty/channel/epoll/AbstractEpollChannel;->doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/epoll/EpollDatagramChannel;->connected:Z

    .line 491
    return v0

    .line 493
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

    .line 482
    iget-object v0, p0, Lio/netty/channel/epoll/EpollDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->disconnect()V

    .line 483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/epoll/EpollDatagramChannel;->active:Z

    iput-boolean v0, p0, Lio/netty/channel/epoll/EpollDatagramChannel;->connected:Z

    .line 484
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->resetCachedAddresses()V

    .line 485
    return-void
.end method

.method protected doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .locals 8
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 333
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->maxMessagesPerWrite()I

    move-result v0

    .line 334
    .local v0, "maxMessagesPerWrite":I
    :goto_0
    if-lez v0, :cond_9

    .line 335
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v1

    .line 336
    .local v1, "msg":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 338
    goto :goto_5

    .line 343
    :cond_0
    :try_start_0
    sget-boolean v2, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_SENDMMSG:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->size()I

    move-result v2

    if-gt v2, v3, :cond_2

    .line 345
    :cond_1
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lio/netty/channel/unix/SegmentedDatagramPacket;

    if-eqz v2, :cond_5

    .line 346
    :cond_2
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->cleanDatagramPacketArray()Lio/netty/channel/epoll/NativeDatagramPacketArray;

    move-result-object v2

    .line 347
    .local v2, "array":Lio/netty/channel/epoll/NativeDatagramPacketArray;
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->isConnected()Z

    move-result v4

    invoke-virtual {v2, p1, v4, v0}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->add(Lio/netty/channel/ChannelOutboundBuffer;ZI)V

    .line 348
    invoke-virtual {v2}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->count()I

    move-result v4

    .line 350
    .local v4, "cnt":I
    if-lt v4, v3, :cond_5

    .line 352
    const/4 v3, 0x0

    .line 353
    .local v3, "offset":I
    invoke-virtual {v2}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->packets()[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

    move-result-object v5

    .line 355
    .local v5, "packets":[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
    iget-object v6, p0, Lio/netty/channel/epoll/EpollDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v6, v5, v3, v4}, Lio/netty/channel/epoll/LinuxSocket;->sendmmsg([Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I

    move-result v6

    .line 356
    .local v6, "send":I
    if-nez v6, :cond_3

    .line 358
    goto :goto_5

    .line 360
    :cond_3
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_4

    .line 361
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 360
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 363
    .end local v7    # "i":I
    :cond_4
    sub-int/2addr v0, v6

    .line 364
    goto :goto_0

    .line 367
    .end local v2    # "array":Lio/netty/channel/epoll/NativeDatagramPacketArray;
    .end local v3    # "offset":I
    .end local v4    # "cnt":I
    .end local v5    # "packets":[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
    .end local v6    # "send":I
    :cond_5
    const/4 v2, 0x0

    .line 368
    .local v2, "done":Z
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->config()Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->getWriteSpinCount()I

    move-result v3

    .local v3, "i":I
    :goto_2
    if-lez v3, :cond_7

    .line 369
    invoke-direct {p0, v1}, Lio/netty/channel/epoll/EpollDatagramChannel;->doWriteMessage(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 370
    const/4 v2, 0x1

    .line 371
    goto :goto_3

    .line 368
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 375
    .end local v3    # "i":I
    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    .line 376
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    add-int/lit8 v0, v0, -0x1

    .line 387
    .end local v2    # "done":Z
    goto :goto_4

    .line 379
    .restart local v2    # "done":Z
    :cond_8
    goto :goto_5

    .line 381
    .end local v2    # "done":Z
    :catch_0
    move-exception v2

    .line 382
    .local v2, "e":Ljava/io/IOException;
    add-int/lit8 v0, v0, -0x1

    .line 386
    invoke-virtual {p1, v2}, Lio/netty/channel/ChannelOutboundBuffer;->remove(Ljava/lang/Throwable;)Z

    .line 388
    .end local v1    # "msg":Ljava/lang/Object;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4
    goto :goto_0

    .line 390
    :cond_9
    :goto_5
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 392
    sget v1, Lio/netty/channel/epoll/Native;->EPOLLOUT:I

    invoke-virtual {p0, v1}, Lio/netty/channel/epoll/EpollDatagramChannel;->clearFlag(I)V

    goto :goto_6

    .line 395
    :cond_a
    sget v1, Lio/netty/channel/epoll/Native;->EPOLLOUT:I

    invoke-virtual {p0, v1}, Lio/netty/channel/epoll/EpollDatagramChannel;->setFlag(I)V

    .line 397
    :goto_6
    return-void
.end method

.method protected filterOutboundMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "msg"    # Ljava/lang/Object;

    .line 430
    instance-of v0, p1, Lio/netty/channel/unix/SegmentedDatagramPacket;

    const-string v1, "unsupported message type: "

    if-eqz v0, :cond_2

    .line 431
    sget-boolean v0, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_UDP_SEGMENT:Z

    if-eqz v0, :cond_1

    .line 435
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/SegmentedDatagramPacket;

    .line 436
    .local v0, "packet":Lio/netty/channel/unix/SegmentedDatagramPacket;
    invoke-static {v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->checkUnresolved(Lio/netty/channel/AddressedEnvelope;)V

    .line 438
    invoke-virtual {v0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 439
    .local v1, "content":Lio/netty/buffer/ByteBuf;
    invoke-static {v1}, Lio/netty/channel/unix/UnixChannelUtil;->isBufferCopyNeededForWrite(Lio/netty/buffer/ByteBuf;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    invoke-virtual {p0, v0, v1}, Lio/netty/channel/epoll/EpollDatagramChannel;->newDirectBuffer(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/netty/channel/unix/SegmentedDatagramPacket;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 439
    :goto_0
    return-object v2

    .line 432
    .end local v0    # "packet":Lio/netty/channel/unix/SegmentedDatagramPacket;
    .end local v1    # "content":Lio/netty/buffer/ByteBuf;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 433
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/netty/channel/epoll/EpollDatagramChannel;->EXPECTED_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_2
    instance-of v0, p1, Lio/netty/channel/socket/DatagramPacket;

    if-eqz v0, :cond_4

    .line 443
    move-object v0, p1

    check-cast v0, Lio/netty/channel/socket/DatagramPacket;

    .line 444
    .local v0, "packet":Lio/netty/channel/socket/DatagramPacket;
    invoke-static {v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->checkUnresolved(Lio/netty/channel/AddressedEnvelope;)V

    .line 446
    invoke-virtual {v0}, Lio/netty/channel/socket/DatagramPacket;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 447
    .restart local v1    # "content":Lio/netty/buffer/ByteBuf;
    invoke-static {v1}, Lio/netty/channel/unix/UnixChannelUtil;->isBufferCopyNeededForWrite(Lio/netty/buffer/ByteBuf;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lio/netty/channel/socket/DatagramPacket;

    .line 448
    invoke-virtual {p0, v0, v1}, Lio/netty/channel/epoll/EpollDatagramChannel;->newDirectBuffer(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/channel/socket/DatagramPacket;->recipient()Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v3, v4}, Lio/netty/channel/socket/DatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;)V

    goto :goto_1

    :cond_3
    move-object v2, p1

    .line 447
    :goto_1
    return-object v2

    .line 451
    .end local v0    # "packet":Lio/netty/channel/socket/DatagramPacket;
    .end local v1    # "content":Lio/netty/buffer/ByteBuf;
    :cond_4
    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_6

    .line 452
    move-object v0, p1

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 453
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-static {v0}, Lio/netty/channel/unix/UnixChannelUtil;->isBufferCopyNeededForWrite(Lio/netty/buffer/ByteBuf;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->newDirectBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    return-object v1

    .line 456
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_6
    instance-of v0, p1, Lio/netty/channel/AddressedEnvelope;

    if-eqz v0, :cond_9

    .line 458
    move-object v0, p1

    check-cast v0, Lio/netty/channel/AddressedEnvelope;

    .line 459
    .local v0, "e":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<Ljava/lang/Object;Ljava/net/SocketAddress;>;"
    invoke-static {v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->checkUnresolved(Lio/netty/channel/AddressedEnvelope;)V

    .line 461
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lio/netty/buffer/ByteBuf;

    if-eqz v2, :cond_9

    .line 462
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_9

    .line 464
    :cond_7
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 465
    .restart local v1    # "content":Lio/netty/buffer/ByteBuf;
    invoke-static {v1}, Lio/netty/channel/unix/UnixChannelUtil;->isBufferCopyNeededForWrite(Lio/netty/buffer/ByteBuf;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lio/netty/channel/DefaultAddressedEnvelope;

    .line 467
    invoke-virtual {p0, v0, v1}, Lio/netty/channel/epoll/EpollDatagramChannel;->newDirectBuffer(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v3, v4}, Lio/netty/channel/DefaultAddressedEnvelope;-><init>(Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_3

    :cond_8
    move-object v2, v0

    .line 465
    :goto_3
    return-object v2

    .line 471
    .end local v0    # "e":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<Ljava/lang/Object;Ljava/net/SocketAddress;>;"
    .end local v1    # "content":Lio/netty/buffer/ByteBuf;
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 472
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/netty/channel/epoll/EpollDatagramChannel;->EXPECTED_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isActive()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lio/netty/channel/epoll/EpollDatagramChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/netty/channel/epoll/EpollDatagramChannel;->config:Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->getActiveOnOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lio/netty/channel/epoll/EpollDatagramChannel;->active:Z

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

    .line 130
    iget-boolean v0, p0, Lio/netty/channel/epoll/EpollDatagramChannel;->connected:Z

    return v0
.end method

.method public bridge synthetic isOpen()Z
    .locals 1

    .line 56
    invoke-super {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public joinGroup(Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;

    .line 135
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->joinGroup(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public joinGroup(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->config()Lio/netty/channel/epoll/EpollDatagramChannelConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollDatagramChannelConfig;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    .line 142
    .local v0, "iface":Ljava/net/NetworkInterface;
    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v1

    move-object v0, v1

    .line 145
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lio/netty/channel/epoll/EpollDatagramChannel;->joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 146
    .end local v0    # "iface":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    return-object p2
.end method

.method public joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;

    .line 168
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 8
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 176
    const-string v0, "multicastAddress"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    const-string v0, "networkInterface"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/channel/epoll/EpollDatagramChannel;->joinGroup0(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    new-instance v7, Lio/netty/channel/epoll/EpollDatagramChannel$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/netty/channel/epoll/EpollDatagramChannel$1;-><init>(Lio/netty/channel/epoll/EpollDatagramChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v7}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 189
    :goto_0
    return-object p4
.end method

.method public joinGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;

    .line 155
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->joinGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public joinGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 162
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p3}, Lio/netty/channel/epoll/EpollDatagramChannel;->joinGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public leaveGroup(Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;

    .line 207
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->leaveGroup(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public leaveGroup(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 213
    nop

    .line 214
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 213
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lio/netty/channel/epoll/EpollDatagramChannel;->leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/io/IOException;
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 218
    .end local v0    # "e":Ljava/io/IOException;
    return-object p2
.end method

.method public leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;

    .line 237
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 8
    .param p1, "multicastAddress"    # Ljava/net/InetAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 244
    const-string v0, "multicastAddress"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 245
    const-string v0, "networkInterface"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 247
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/channel/epoll/EpollDatagramChannel;->leaveGroup0(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    new-instance v7, Lio/netty/channel/epoll/EpollDatagramChannel$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/netty/channel/epoll/EpollDatagramChannel$2;-><init>(Lio/netty/channel/epoll/EpollDatagramChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v7}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 257
    :goto_0
    return-object p4
.end method

.method public leaveGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;

    .line 224
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/channel/epoll/EpollDatagramChannel;->leaveGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public leaveGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "multicastAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 231
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p3}, Lio/netty/channel/epoll/EpollDatagramChannel;->leaveGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 115
    invoke-super {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 120
    sget-object v0, Lio/netty/channel/epoll/EpollDatagramChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method protected bridge synthetic newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->newUnsafe()Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;

    move-result-object v0

    return-object v0
.end method

.method protected newUnsafe()Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;
    .locals 1

    .line 313
    new-instance v0, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;

    invoke-direct {v0, p0}, Lio/netty/channel/epoll/EpollDatagramChannel$EpollDatagramChannelUnsafe;-><init>(Lio/netty/channel/epoll/EpollDatagramChannel;)V

    return-object v0
.end method

.method public remoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 110
    invoke-super {p0}, Lio/netty/channel/epoll/AbstractEpollChannel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollDatagramChannel;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method
