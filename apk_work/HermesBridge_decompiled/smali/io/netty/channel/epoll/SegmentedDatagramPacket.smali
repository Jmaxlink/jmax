.class public final Lio/netty/channel/epoll/SegmentedDatagramPacket;
.super Lio/netty/channel/unix/SegmentedDatagramPacket;
.source "SegmentedDatagramPacket.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBuf;ILjava/net/InetSocketAddress;)V
    .locals 0
    .param p1, "data"    # Lio/netty/buffer/ByteBuf;
    .param p2, "segmentSize"    # I
    .param p3, "recipient"    # Ljava/net/InetSocketAddress;

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/unix/SegmentedDatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;ILjava/net/InetSocketAddress;)V

    .line 37
    invoke-static {}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->checkIsSupported()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBuf;ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V
    .locals 0
    .param p1, "data"    # Lio/netty/buffer/ByteBuf;
    .param p2, "segmentSize"    # I
    .param p3, "recipient"    # Ljava/net/InetSocketAddress;
    .param p4, "sender"    # Ljava/net/InetSocketAddress;

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/channel/unix/SegmentedDatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    .line 50
    invoke-static {}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->checkIsSupported()V

    .line 51
    return-void
.end method

.method private static checkIsSupported()V
    .locals 1

    .line 107
    invoke-static {}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static isSupported()Z
    .locals 1

    .line 57
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


# virtual methods
.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->copy()Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/channel/epoll/SegmentedDatagramPacket;
    .locals 5

    .line 64
    new-instance v0, Lio/netty/channel/epoll/SegmentedDatagramPacket;

    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->segmentSize()I

    move-result v2

    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->recipient()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->sender()Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/channel/epoll/SegmentedDatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/channel/socket/DatagramPacket;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->copy()Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/channel/unix/SegmentedDatagramPacket;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->copy()Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->duplicate()Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/channel/epoll/SegmentedDatagramPacket;
    .locals 5

    .line 69
    new-instance v0, Lio/netty/channel/epoll/SegmentedDatagramPacket;

    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->segmentSize()I

    move-result v2

    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->recipient()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->sender()Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/channel/epoll/SegmentedDatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/channel/socket/DatagramPacket;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->duplicate()Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/channel/unix/SegmentedDatagramPacket;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->duplicate()Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/channel/epoll/SegmentedDatagramPacket;
    .locals 4
    .param p1, "content"    # Lio/netty/buffer/ByteBuf;

    .line 79
    new-instance v0, Lio/netty/channel/epoll/SegmentedDatagramPacket;

    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->segmentSize()I

    move-result v1

    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->recipient()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->sender()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/netty/channel/epoll/SegmentedDatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    return-object v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/channel/socket/DatagramPacket;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/channel/unix/SegmentedDatagramPacket;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->retain()Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->retain(I)Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/channel/AddressedEnvelope;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->retain()Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/channel/AddressedEnvelope;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->retain(I)Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/channel/epoll/SegmentedDatagramPacket;
    .locals 0

    .line 84
    invoke-super {p0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->retain()Lio/netty/channel/unix/SegmentedDatagramPacket;

    .line 85
    return-object p0
.end method

.method public retain(I)Lio/netty/channel/epoll/SegmentedDatagramPacket;
    .locals 0
    .param p1, "increment"    # I

    .line 90
    invoke-super {p0, p1}, Lio/netty/channel/unix/SegmentedDatagramPacket;->retain(I)Lio/netty/channel/unix/SegmentedDatagramPacket;

    .line 91
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/channel/socket/DatagramPacket;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->retain()Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/channel/socket/DatagramPacket;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->retain(I)Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/channel/unix/SegmentedDatagramPacket;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->retain()Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/channel/unix/SegmentedDatagramPacket;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->retain(I)Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->retain()Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->retain(I)Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->retainedDuplicate()Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/channel/epoll/SegmentedDatagramPacket;
    .locals 5

    .line 74
    new-instance v0, Lio/netty/channel/epoll/SegmentedDatagramPacket;

    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->segmentSize()I

    move-result v2

    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->recipient()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->sender()Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/channel/epoll/SegmentedDatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/channel/socket/DatagramPacket;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->retainedDuplicate()Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/channel/unix/SegmentedDatagramPacket;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->retainedDuplicate()Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->touch()Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->touch(Ljava/lang/Object;)Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/channel/AddressedEnvelope;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->touch()Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/channel/AddressedEnvelope;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->touch(Ljava/lang/Object;)Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/channel/epoll/SegmentedDatagramPacket;
    .locals 0

    .line 96
    invoke-super {p0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->touch()Lio/netty/channel/unix/SegmentedDatagramPacket;

    .line 97
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/channel/epoll/SegmentedDatagramPacket;
    .locals 0
    .param p1, "hint"    # Ljava/lang/Object;

    .line 102
    invoke-super {p0, p1}, Lio/netty/channel/unix/SegmentedDatagramPacket;->touch(Ljava/lang/Object;)Lio/netty/channel/unix/SegmentedDatagramPacket;

    .line 103
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/channel/socket/DatagramPacket;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->touch()Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/channel/socket/DatagramPacket;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->touch(Ljava/lang/Object;)Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/channel/unix/SegmentedDatagramPacket;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->touch()Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/channel/unix/SegmentedDatagramPacket;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->touch(Ljava/lang/Object;)Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->touch()Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/SegmentedDatagramPacket;->touch(Ljava/lang/Object;)Lio/netty/channel/epoll/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method
