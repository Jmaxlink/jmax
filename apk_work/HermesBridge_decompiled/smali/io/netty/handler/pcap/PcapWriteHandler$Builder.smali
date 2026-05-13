.class public final Lio/netty/handler/pcap/PcapWriteHandler$Builder;
.super Ljava/lang/Object;
.source "PcapWriteHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/pcap/PcapWriteHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private captureZeroByte:Z

.field private channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

.field private handlerAddr:Ljava/net/InetSocketAddress;

.field private initiatorAddr:Ljava/net/InetSocketAddress;

.field private isServerPipeline:Z

.field private sharedOutputStream:Z

.field private writePcapGlobalHeader:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->writePcapGlobalHeader:Z

    .line 756
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/pcap/PcapWriteHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/pcap/PcapWriteHandler$1;

    .line 745
    invoke-direct {p0}, Lio/netty/handler/pcap/PcapWriteHandler$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/pcap/PcapWriteHandler$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/pcap/PcapWriteHandler$Builder;

    .line 745
    iget-boolean v0, p0, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->captureZeroByte:Z

    return v0
.end method

.method static synthetic access$100(Lio/netty/handler/pcap/PcapWriteHandler$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/pcap/PcapWriteHandler$Builder;

    .line 745
    iget-boolean v0, p0, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->sharedOutputStream:Z

    return v0
.end method

.method static synthetic access$200(Lio/netty/handler/pcap/PcapWriteHandler$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/pcap/PcapWriteHandler$Builder;

    .line 745
    iget-boolean v0, p0, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->writePcapGlobalHeader:Z

    return v0
.end method

.method static synthetic access$300(Lio/netty/handler/pcap/PcapWriteHandler$Builder;)Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/pcap/PcapWriteHandler$Builder;

    .line 745
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    return-object v0
.end method

.method static synthetic access$400(Lio/netty/handler/pcap/PcapWriteHandler$Builder;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/pcap/PcapWriteHandler$Builder;

    .line 745
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->handlerAddr:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method static synthetic access$500(Lio/netty/handler/pcap/PcapWriteHandler$Builder;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/pcap/PcapWriteHandler$Builder;

    .line 745
    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->initiatorAddr:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method static synthetic access$600(Lio/netty/handler/pcap/PcapWriteHandler$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/pcap/PcapWriteHandler$Builder;

    .line 745
    iget-boolean v0, p0, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->isServerPipeline:Z

    return v0
.end method


# virtual methods
.method public build(Ljava/io/OutputStream;)Lio/netty/handler/pcap/PcapWriteHandler;
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 842
    const-string v0, "outputStream"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 843
    new-instance v0, Lio/netty/handler/pcap/PcapWriteHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/netty/handler/pcap/PcapWriteHandler;-><init>(Lio/netty/handler/pcap/PcapWriteHandler$Builder;Ljava/io/OutputStream;Lio/netty/handler/pcap/PcapWriteHandler$1;)V

    return-object v0
.end method

.method public captureZeroByte(Z)Lio/netty/handler/pcap/PcapWriteHandler$Builder;
    .locals 0
    .param p1, "captureZeroByte"    # Z

    .line 766
    iput-boolean p1, p0, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->captureZeroByte:Z

    .line 767
    return-object p0
.end method

.method public forceTcpChannel(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Z)Lio/netty/handler/pcap/PcapWriteHandler$Builder;
    .locals 1
    .param p1, "serverAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "clientAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "isServerPipeline"    # Z

    .line 810
    sget-object v0, Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;->TCP:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    .line 811
    const-string v0, "serverAddress"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->handlerAddr:Ljava/net/InetSocketAddress;

    .line 812
    const-string v0, "clientAddress"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->initiatorAddr:Ljava/net/InetSocketAddress;

    .line 813
    iput-boolean p3, p0, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->isServerPipeline:Z

    .line 814
    return-object p0
.end method

.method public forceUdpChannel(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Lio/netty/handler/pcap/PcapWriteHandler$Builder;
    .locals 1
    .param p1, "localAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "remoteAddress"    # Ljava/net/InetSocketAddress;

    .line 829
    sget-object v0, Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;->UDP:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    .line 830
    const-string v0, "remoteAddress"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->handlerAddr:Ljava/net/InetSocketAddress;

    .line 831
    const-string v0, "localAddress"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->initiatorAddr:Ljava/net/InetSocketAddress;

    .line 832
    return-object p0
.end method

.method public sharedOutputStream(Z)Lio/netty/handler/pcap/PcapWriteHandler$Builder;
    .locals 0
    .param p1, "sharedOutputStream"    # Z

    .line 782
    iput-boolean p1, p0, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->sharedOutputStream:Z

    .line 783
    return-object p0
.end method

.method public writePcapGlobalHeader(Z)Lio/netty/handler/pcap/PcapWriteHandler$Builder;
    .locals 0
    .param p1, "writePcapGlobalHeader"    # Z

    .line 795
    iput-boolean p1, p0, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->writePcapGlobalHeader:Z

    .line 796
    return-object p0
.end method
