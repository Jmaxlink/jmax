.class final Lio/netty/handler/pcap/IPPacket;
.super Ljava/lang/Object;
.source "IPPacket.java"


# static fields
.field private static final IPV6_VERSION_TRAFFIC_FLOW:I = 0x3938700

.field private static final MAX_TTL:B = -0x1t

.field private static final TCP:B = 0x6t

.field private static final UDP:B = 0x11t

.field private static final V4_HEADER_SIZE:S = 0x14s


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static writePacketv4(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)V
    .locals 2
    .param p0, "byteBuf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "payload"    # Lio/netty/buffer/ByteBuf;
    .param p2, "protocol"    # I
    .param p3, "srcAddress"    # I
    .param p4, "dstAddress"    # I

    .line 87
    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 89
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 90
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 91
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 92
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 93
    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 94
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 95
    invoke-virtual {p0, p3}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 96
    invoke-virtual {p0, p4}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 97
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 98
    return-void
.end method

.method private static writePacketv6(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I[B[B)V
    .locals 1
    .param p0, "byteBuf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "payload"    # Lio/netty/buffer/ByteBuf;
    .param p2, "protocol"    # I
    .param p3, "srcAddress"    # [B
    .param p4, "dstAddress"    # [B

    .line 103
    const v0, 0x3938700

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 104
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 105
    and-int/lit16 v0, p2, 0xff

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 106
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 107
    invoke-virtual {p0, p3}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 108
    invoke-virtual {p0, p4}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 109
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 110
    return-void
.end method

.method static writeTCPv4(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;II)V
    .locals 1
    .param p0, "byteBuf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "payload"    # Lio/netty/buffer/ByteBuf;
    .param p2, "srcAddress"    # I
    .param p3, "dstAddress"    # I

    .line 69
    const/4 v0, 0x6

    invoke-static {p0, p1, v0, p2, p3}, Lio/netty/handler/pcap/IPPacket;->writePacketv4(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)V

    .line 70
    return-void
.end method

.method static writeTCPv6(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;[B[B)V
    .locals 1
    .param p0, "byteBuf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "payload"    # Lio/netty/buffer/ByteBuf;
    .param p2, "srcAddress"    # [B
    .param p3, "dstAddress"    # [B

    .line 81
    const/4 v0, 0x6

    invoke-static {p0, p1, v0, p2, p3}, Lio/netty/handler/pcap/IPPacket;->writePacketv6(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I[B[B)V

    .line 82
    return-void
.end method

.method static writeUDPv4(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;II)V
    .locals 1
    .param p0, "byteBuf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "payload"    # Lio/netty/buffer/ByteBuf;
    .param p2, "srcAddress"    # I
    .param p3, "dstAddress"    # I

    .line 45
    const/16 v0, 0x11

    invoke-static {p0, p1, v0, p2, p3}, Lio/netty/handler/pcap/IPPacket;->writePacketv4(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)V

    .line 46
    return-void
.end method

.method static writeUDPv6(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;[B[B)V
    .locals 1
    .param p0, "byteBuf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "payload"    # Lio/netty/buffer/ByteBuf;
    .param p2, "srcAddress"    # [B
    .param p3, "dstAddress"    # [B

    .line 57
    const/16 v0, 0x11

    invoke-static {p0, p1, v0, p2, p3}, Lio/netty/handler/pcap/IPPacket;->writePacketv6(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I[B[B)V

    .line 58
    return-void
.end method
