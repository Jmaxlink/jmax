.class final Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;
.super Ljava/lang/Object;
.source "NetUtilInitializations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/NetUtilInitializations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NetworkIfaceAndInetAddress"
.end annotation


# instance fields
.field private final address:Ljava/net/InetAddress;

.field private final iface:Ljava/net/NetworkInterface;


# direct methods
.method constructor <init>(Ljava/net/NetworkInterface;Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "iface"    # Ljava/net/NetworkInterface;
    .param p2, "address"    # Ljava/net/InetAddress;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;->iface:Ljava/net/NetworkInterface;

    .line 177
    iput-object p2, p0, Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;->address:Ljava/net/InetAddress;

    .line 178
    return-void
.end method


# virtual methods
.method public address()Ljava/net/InetAddress;
    .locals 1

    .line 185
    iget-object v0, p0, Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public iface()Ljava/net/NetworkInterface;
    .locals 1

    .line 181
    iget-object v0, p0, Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;->iface:Ljava/net/NetworkInterface;

    return-object v0
.end method
