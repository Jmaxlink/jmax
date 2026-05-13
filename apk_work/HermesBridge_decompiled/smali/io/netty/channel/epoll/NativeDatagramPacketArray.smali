.class final Lio/netty/channel/epoll/NativeDatagramPacketArray;
.super Ljava/lang/Object;
.source "NativeDatagramPacketArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;,
        Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;
    }
.end annotation


# instance fields
.field private count:I

.field private final iovArray:Lio/netty/channel/unix/IovArray;

.field private final ipv4Bytes:[B

.field private final packets:[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

.field private final processor:Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget v0, Lio/netty/channel/unix/Limits;->UIO_MAX_IOV:I

    new-array v0, v0, [Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

    iput-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->packets:[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

    .line 45
    new-instance v0, Lio/netty/channel/unix/IovArray;

    invoke-direct {v0}, Lio/netty/channel/unix/IovArray;-><init>()V

    iput-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->iovArray:Lio/netty/channel/unix/IovArray;

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->ipv4Bytes:[B

    .line 49
    new-instance v0, Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;-><init>(Lio/netty/channel/epoll/NativeDatagramPacketArray;Lio/netty/channel/epoll/NativeDatagramPacketArray$1;)V

    iput-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->processor:Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->packets:[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 55
    iget-object v1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->packets:[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

    new-instance v2, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

    invoke-direct {v2, p0}, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;-><init>(Lio/netty/channel/epoll/NativeDatagramPacketArray;)V

    aput-object v2, v1, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic access$400(Lio/netty/channel/epoll/NativeDatagramPacketArray;Lio/netty/buffer/ByteBuf;IIILjava/net/InetSocketAddress;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/epoll/NativeDatagramPacketArray;
    .param p1, "x1"    # Lio/netty/buffer/ByteBuf;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/net/InetSocketAddress;

    .line 38
    invoke-direct/range {p0 .. p5}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->add0(Lio/netty/buffer/ByteBuf;IIILjava/net/InetSocketAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lio/netty/channel/epoll/NativeDatagramPacketArray;)[B
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/epoll/NativeDatagramPacketArray;

    .line 38
    iget-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->ipv4Bytes:[B

    return-object v0
.end method

.method static synthetic access$600([BIII[B)Ljava/net/InetSocketAddress;
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->newAddress([BIII[B)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method private add0(Lio/netty/buffer/ByteBuf;IIILjava/net/InetSocketAddress;)Z
    .locals 10
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "index"    # I
    .param p3, "len"    # I
    .param p4, "segmentLen"    # I
    .param p5, "recipient"    # Ljava/net/InetSocketAddress;

    .line 64
    iget v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->count:I

    iget-object v1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->packets:[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 67
    return v2

    .line 69
    :cond_0
    const/4 v0, 0x1

    if-nez p3, :cond_1

    .line 70
    return v0

    .line 72
    :cond_1
    iget-object v1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->iovArray:Lio/netty/channel/unix/IovArray;

    invoke-virtual {v1}, Lio/netty/channel/unix/IovArray;->count()I

    move-result v1

    .line 73
    .local v1, "offset":I
    sget v3, Lio/netty/channel/unix/Limits;->IOV_MAX:I

    if-eq v1, v3, :cond_3

    iget-object v3, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->iovArray:Lio/netty/channel/unix/IovArray;

    invoke-virtual {v3, p1, p2, p3}, Lio/netty/channel/unix/IovArray;->add(Lio/netty/buffer/ByteBuf;II)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 77
    :cond_2
    iget-object v2, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->packets:[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

    iget v3, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->count:I

    aget-object v2, v2, v3

    .line 78
    .local v2, "p":Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
    iget-object v3, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->iovArray:Lio/netty/channel/unix/IovArray;

    invoke-virtual {v3, v1}, Lio/netty/channel/unix/IovArray;->memoryAddress(I)J

    move-result-wide v5

    iget-object v3, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->iovArray:Lio/netty/channel/unix/IovArray;

    invoke-virtual {v3}, Lio/netty/channel/unix/IovArray;->count()I

    move-result v3

    sub-int v7, v3, v1

    move-object v4, v2

    move v8, p4

    move-object v9, p5

    invoke-static/range {v4 .. v9}, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->access$100(Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;JIILjava/net/InetSocketAddress;)V

    .line 80
    iget v3, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->count:I

    add-int/2addr v3, v0

    iput v3, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->count:I

    .line 81
    return v0

    .line 75
    .end local v2    # "p":Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
    :cond_3
    :goto_0
    return v2
.end method

.method private static newAddress([BIII[B)Ljava/net/InetSocketAddress;
    .locals 2
    .param p0, "addr"    # [B
    .param p1, "addrLen"    # I
    .param p2, "port"    # I
    .param p3, "scopeId"    # I
    .param p4, "ipv4Bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 150
    array-length v0, p4

    if-ne p1, v0, :cond_0

    .line 151
    const/4 v0, 0x0

    invoke-static {p0, v0, p4, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    invoke-static {p4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .local v0, "address":Ljava/net/InetAddress;
    goto :goto_0

    .line 154
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p0, p3}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v0

    .line 156
    .restart local v0    # "address":Ljava/net/InetAddress;
    :goto_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v0, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v1
.end method


# virtual methods
.method add(Lio/netty/channel/ChannelOutboundBuffer;ZI)V
    .locals 1
    .param p1, "buffer"    # Lio/netty/channel/ChannelOutboundBuffer;
    .param p2, "connected"    # Z
    .param p3, "maxMessagesPerWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->processor:Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;

    invoke-static {v0, p2}, Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;->access$202(Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;Z)Z

    .line 86
    iget-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->processor:Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;

    invoke-static {v0, p3}, Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;->access$302(Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;I)I

    .line 87
    iget-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->processor:Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;

    invoke-virtual {p1, v0}, Lio/netty/channel/ChannelOutboundBuffer;->forEachFlushedMessage(Lio/netty/channel/ChannelOutboundBuffer$MessageProcessor;)V

    .line 88
    return-void
.end method

.method addWritable(Lio/netty/buffer/ByteBuf;II)Z
    .locals 6
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "index"    # I
    .param p3, "len"    # I

    .line 60
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->add0(Lio/netty/buffer/ByteBuf;IIILjava/net/InetSocketAddress;)Z

    move-result v0

    return v0
.end method

.method clear()V
    .locals 1

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->count:I

    .line 106
    iget-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->iovArray:Lio/netty/channel/unix/IovArray;

    invoke-virtual {v0}, Lio/netty/channel/unix/IovArray;->clear()V

    .line 107
    return-void
.end method

.method count()I
    .locals 1

    .line 94
    iget v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->count:I

    return v0
.end method

.method packets()[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
    .locals 1

    .line 101
    iget-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->packets:[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

    return-object v0
.end method

.method release()V
    .locals 1

    .line 110
    iget-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->iovArray:Lio/netty/channel/unix/IovArray;

    invoke-virtual {v0}, Lio/netty/channel/unix/IovArray;->release()V

    .line 111
    return-void
.end method
