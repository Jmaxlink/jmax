.class public final Lio/ktor/network/sockets/InetSocketAddress;
.super Lio/ktor/network/sockets/SocketAddress;
.source "SocketAddressJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u000f\u0008\u0000\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u0086\u0002J\t\u0010\u0011\u001a\u00020\u0005H\u0086\u0002J\u001a\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\u0005H\u0016J\u0008\u0010\u0018\u001a\u00020\u0003H\u0016R\u0014\u0010\u0007\u001a\u00020\u0008X\u0090\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Lio/ktor/network/sockets/InetSocketAddress;",
        "Lio/ktor/network/sockets/SocketAddress;",
        "hostname",
        "",
        "port",
        "",
        "(Ljava/lang/String;I)V",
        "address",
        "Ljava/net/InetSocketAddress;",
        "(Ljava/net/InetSocketAddress;)V",
        "getAddress$ktor_network",
        "()Ljava/net/InetSocketAddress;",
        "getHostname",
        "()Ljava/lang/String;",
        "getPort",
        "()I",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "ktor-network"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final address:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    const-string v0, "hostname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lio/ktor/network/sockets/InetSocketAddress;-><init>(Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetSocketAddress;

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/ktor/network/sockets/SocketAddress;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    iput-object p1, p0, Lio/ktor/network/sockets/InetSocketAddress;->address:Ljava/net/InetSocketAddress;

    .line 13
    return-void
.end method

.method public static synthetic copy$default(Lio/ktor/network/sockets/InetSocketAddress;Ljava/lang/String;IILjava/lang/Object;)Lio/ktor/network/sockets/InetSocketAddress;
    .locals 0

    .line 29
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 34
    invoke-virtual {p0}, Lio/ktor/network/sockets/InetSocketAddress;->getHostname()Ljava/lang/String;

    move-result-object p1

    .line 29
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 37
    invoke-virtual {p0}, Lio/ktor/network/sockets/InetSocketAddress;->getPort()I

    move-result p2

    .line 29
    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/ktor/network/sockets/InetSocketAddress;->copy(Ljava/lang/String;I)Lio/ktor/network/sockets/InetSocketAddress;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/ktor/network/sockets/InetSocketAddress;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()I
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/ktor/network/sockets/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public final copy(Ljava/lang/String;I)Lio/ktor/network/sockets/InetSocketAddress;
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    const-string v0, "hostname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lio/ktor/network/sockets/InetSocketAddress;

    .line 33
    nop

    .line 34
    nop

    .line 32
    invoke-direct {v0, p1, p2}, Lio/ktor/network/sockets/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 35
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 38
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 41
    :cond_2
    const-string v1, "null cannot be cast to non-null type io.ktor.network.sockets.InetSocketAddress"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lio/ktor/network/sockets/InetSocketAddress;

    .line 43
    invoke-virtual {p0}, Lio/ktor/network/sockets/InetSocketAddress;->getAddress$ktor_network()Ljava/net/InetSocketAddress;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Lio/ktor/network/sockets/InetSocketAddress;

    invoke-virtual {v3}, Lio/ktor/network/sockets/InetSocketAddress;->getAddress$ktor_network()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 45
    :cond_3
    return v0
.end method

.method public getAddress$ktor_network()Ljava/net/InetSocketAddress;
    .locals 1

    .line 14
    iget-object v0, p0, Lio/ktor/network/sockets/InetSocketAddress;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getAddress$ktor_network()Ljava/net/SocketAddress;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/ktor/network/sockets/InetSocketAddress;->getAddress$ktor_network()Ljava/net/InetSocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    return-object v0
.end method

.method public final getHostname()Ljava/lang/String;
    .locals 2

    .line 18
    invoke-virtual {p0}, Lio/ktor/network/sockets/InetSocketAddress;->getAddress$ktor_network()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "address.hostName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPort()I
    .locals 1

    .line 20
    invoke-virtual {p0}, Lio/ktor/network/sockets/InetSocketAddress;->getAddress$ktor_network()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/ktor/network/sockets/InetSocketAddress;->getAddress$ktor_network()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    invoke-virtual {p0}, Lio/ktor/network/sockets/InetSocketAddress;->getAddress$ktor_network()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "address.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
