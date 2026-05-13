.class final Lio/netty/handler/pcap/PcapWriteHandler$WildcardAddressHolder;
.super Ljava/lang/Object;
.source "PcapWriteHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/pcap/PcapWriteHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WildcardAddressHolder"
.end annotation


# static fields
.field static final wildcard4:Ljava/net/InetAddress;

.field static final wildcard6:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 853
    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lio/netty/handler/pcap/PcapWriteHandler$WildcardAddressHolder;->wildcard4:Ljava/net/InetAddress;

    .line 854
    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lio/netty/handler/pcap/PcapWriteHandler$WildcardAddressHolder;->wildcard6:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    nop

    .line 859
    return-void

    .line 855
    :catch_0
    move-exception v0

    .line 857
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
