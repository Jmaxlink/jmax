.class final Lio/netty/handler/pcap/TCPPacket;
.super Ljava/lang/Object;
.source "TCPPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/pcap/TCPPacket$TCPFlag;
    }
.end annotation


# static fields
.field private static final OFFSET:S = 0x5000s


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static varargs writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V
    .locals 1
    .param p0, "byteBuf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "payload"    # Lio/netty/buffer/ByteBuf;
    .param p2, "segmentNumber"    # I
    .param p3, "ackNumber"    # I
    .param p4, "srcPort"    # I
    .param p5, "dstPort"    # I
    .param p6, "tcpFlags"    # [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    .line 42
    invoke-virtual {p0, p4}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 43
    invoke-virtual {p0, p5}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 44
    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 45
    invoke-virtual {p0, p3}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 46
    invoke-static {p6}, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->getFlag([Lio/netty/handler/pcap/TCPPacket$TCPFlag;)I

    move-result v0

    or-int/lit16 v0, v0, 0x5000

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 47
    const v0, 0xffff

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 51
    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 54
    :cond_0
    return-void
.end method
