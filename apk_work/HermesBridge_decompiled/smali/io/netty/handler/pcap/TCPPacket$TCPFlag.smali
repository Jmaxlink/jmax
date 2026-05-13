.class final enum Lio/netty/handler/pcap/TCPPacket$TCPFlag;
.super Ljava/lang/Enum;
.source "TCPPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/pcap/TCPPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TCPFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/pcap/TCPPacket$TCPFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/pcap/TCPPacket$TCPFlag;

.field public static final enum ACK:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

.field public static final enum CWR:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

.field public static final enum ECE:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

.field public static final enum FIN:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

.field public static final enum PSH:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

.field public static final enum RST:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

.field public static final enum SYN:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

.field public static final enum URG:Lio/netty/handler/pcap/TCPPacket$TCPFlag;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 57
    new-instance v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const-string v1, "FIN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/pcap/TCPPacket$TCPFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->FIN:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    .line 58
    new-instance v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const-string v1, "SYN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lio/netty/handler/pcap/TCPPacket$TCPFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->SYN:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    .line 59
    new-instance v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const-string v1, "RST"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/pcap/TCPPacket$TCPFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->RST:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    .line 60
    new-instance v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const/4 v1, 0x3

    const/16 v2, 0x8

    const-string v4, "PSH"

    invoke-direct {v0, v4, v1, v2}, Lio/netty/handler/pcap/TCPPacket$TCPFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->PSH:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    .line 61
    new-instance v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const-string v1, "ACK"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v3, v2}, Lio/netty/handler/pcap/TCPPacket$TCPFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ACK:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    .line 62
    new-instance v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const/4 v1, 0x5

    const/16 v2, 0x20

    const-string v3, "URG"

    invoke-direct {v0, v3, v1, v2}, Lio/netty/handler/pcap/TCPPacket$TCPFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->URG:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    .line 63
    new-instance v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const/4 v1, 0x6

    const/16 v2, 0x40

    const-string v3, "ECE"

    invoke-direct {v0, v3, v1, v2}, Lio/netty/handler/pcap/TCPPacket$TCPFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ECE:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    .line 64
    new-instance v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const/4 v1, 0x7

    const/16 v2, 0x80

    const-string v3, "CWR"

    invoke-direct {v0, v3, v1, v2}, Lio/netty/handler/pcap/TCPPacket$TCPFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->CWR:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    .line 56
    sget-object v4, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->FIN:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v5, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->SYN:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v6, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->RST:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v7, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->PSH:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v8, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ACK:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v9, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->URG:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v10, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ECE:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v11, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->CWR:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    filled-new-array/range {v4 .. v11}, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    move-result-object v0

    sput-object v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->$VALUES:[Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->value:I

    .line 70
    return-void
.end method

.method static varargs getFlag([Lio/netty/handler/pcap/TCPPacket$TCPFlag;)I
    .locals 5
    .param p0, "tcpFlags"    # [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "flags":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 76
    .local v3, "tcpFlag":Lio/netty/handler/pcap/TCPPacket$TCPFlag;
    iget v4, v3, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->value:I

    or-int/2addr v0, v4

    .line 75
    .end local v3    # "tcpFlag":Lio/netty/handler/pcap/TCPPacket$TCPFlag;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/pcap/TCPPacket$TCPFlag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 56
    const-class v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    return-object v0
.end method

.method public static values()[Lio/netty/handler/pcap/TCPPacket$TCPFlag;
    .locals 1

    .line 56
    sget-object v0, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->$VALUES:[Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    invoke-virtual {v0}, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    return-object v0
.end method
