.class final Lio/netty/handler/pcap/UDPPacket;
.super Ljava/lang/Object;
.source "UDPPacket.java"


# static fields
.field private static final UDP_HEADER_SIZE:S = 0x8s


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method static writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;II)V
    .locals 1
    .param p0, "byteBuf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "payload"    # Lio/netty/buffer/ByteBuf;
    .param p2, "srcPort"    # I
    .param p3, "dstPort"    # I

    .line 37
    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 38
    invoke-virtual {p0, p3}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 39
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 41
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 42
    return-void
.end method
