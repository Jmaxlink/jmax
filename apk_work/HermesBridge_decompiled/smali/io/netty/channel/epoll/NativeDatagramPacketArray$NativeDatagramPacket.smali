.class public final Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
.super Ljava/lang/Object;
.source "NativeDatagramPacketArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/epoll/NativeDatagramPacketArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NativeDatagramPacket"
.end annotation


# instance fields
.field private count:I

.field private memoryAddress:J

.field private final recipientAddr:[B

.field private recipientAddrLen:I

.field private recipientPort:I

.field private recipientScopeId:I

.field private segmentSize:I

.field private final senderAddr:[B

.field private senderAddrLen:I

.field private senderPort:I

.field private senderScopeId:I

.field final synthetic this$0:Lio/netty/channel/epoll/NativeDatagramPacketArray;


# direct methods
.method public constructor <init>(Lio/netty/channel/epoll/NativeDatagramPacketArray;)V
    .locals 2
    .param p1, "this$0"    # Lio/netty/channel/epoll/NativeDatagramPacketArray;

    .line 164
    iput-object p1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->this$0:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->senderAddr:[B

    .line 178
    new-array v0, v0, [B

    iput-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->recipientAddr:[B

    return-void
.end method

.method static synthetic access$100(Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;JIILjava/net/InetSocketAddress;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/net/InetSocketAddress;

    .line 164
    invoke-direct/range {p0 .. p5}, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->init(JIILjava/net/InetSocketAddress;)V

    return-void
.end method

.method private init(JIILjava/net/InetSocketAddress;)V
    .locals 5
    .param p1, "memoryAddress"    # J
    .param p3, "count"    # I
    .param p4, "segmentSize"    # I
    .param p5, "recipient"    # Ljava/net/InetSocketAddress;

    .line 186
    iput-wide p1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->memoryAddress:J

    .line 187
    iput p3, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->count:I

    .line 188
    iput p4, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->segmentSize:I

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->senderScopeId:I

    .line 191
    iput v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->senderPort:I

    .line 192
    iput v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->senderAddrLen:I

    .line 194
    if-nez p5, :cond_0

    .line 195
    iput v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->recipientScopeId:I

    .line 196
    iput v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->recipientPort:I

    .line 197
    iput v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->recipientAddrLen:I

    goto :goto_1

    .line 199
    :cond_0
    invoke-virtual {p5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 200
    .local v1, "address":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_1

    .line 201
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    iget-object v3, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->recipientAddr:[B

    iget-object v4, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->recipientAddr:[B

    array-length v4, v4

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    move-object v0, v1

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v0

    iput v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->recipientScopeId:I

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    iget-object v3, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->recipientAddr:[B

    invoke-static {v2, v3}, Lio/netty/channel/unix/NativeInetAddress;->copyIpv4MappedIpv6Address([B[B)V

    .line 205
    iput v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->recipientScopeId:I

    .line 207
    :goto_0
    iget-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->recipientAddr:[B

    array-length v0, v0

    iput v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->recipientAddrLen:I

    .line 208
    invoke-virtual {p5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->recipientPort:I

    .line 210
    .end local v1    # "address":Ljava/net/InetAddress;
    :goto_1
    return-void
.end method


# virtual methods
.method hasSender()Z
    .locals 1

    .line 213
    iget v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->senderPort:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method newDatagramPacket(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;)Lio/netty/channel/socket/DatagramPacket;
    .locals 6
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p2, "recipient"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->senderAddr:[B

    iget v1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->senderAddrLen:I

    iget v2, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->senderPort:I

    iget v3, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->senderScopeId:I

    iget-object v4, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->this$0:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    invoke-static {v4}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->access$500(Lio/netty/channel/epoll/NativeDatagramPacketArray;)[B

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->access$600([BIII[B)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 218
    .local v0, "sender":Ljava/net/InetSocketAddress;
    iget v1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->recipientAddrLen:I

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->recipientAddr:[B

    iget v2, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->recipientAddrLen:I

    iget v3, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->recipientPort:I

    iget v4, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->recipientScopeId:I

    iget-object v5, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->this$0:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    invoke-static {v5}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->access$500(Lio/netty/channel/epoll/NativeDatagramPacketArray;)[B

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->access$600([BIII[B)Ljava/net/InetSocketAddress;

    move-result-object p2

    .line 223
    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    iget v2, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->count:I

    invoke-virtual {p1, v1, v2}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 226
    .local v1, "slice":Lio/netty/buffer/ByteBuf;
    iget v2, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->segmentSize:I

    if-lez v2, :cond_1

    .line 227
    new-instance v2, Lio/netty/channel/unix/SegmentedDatagramPacket;

    iget v3, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->segmentSize:I

    invoke-direct {v2, v1, v3, p2, v0}, Lio/netty/channel/unix/SegmentedDatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    return-object v2

    .line 229
    :cond_1
    new-instance v2, Lio/netty/channel/socket/DatagramPacket;

    invoke-direct {v2, v1, p2, v0}, Lio/netty/channel/socket/DatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    return-object v2
.end method
