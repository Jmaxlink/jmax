.class public Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;
.super Lio/ktor/network/sockets/SocketOptions;
.source "SocketOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/sockets/SocketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerSocketOptions"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u001d\u0008\u0000\u0012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\r\u0010\u000f\u001a\u00020\u0000H\u0010\u00a2\u0006\u0002\u0008\u0010J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0001H\u0014J\r\u0010\u0014\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008\u0016J\r\u0010\u0017\u001a\u00020\u0018H\u0000\u00a2\u0006\u0002\u0008\u0019R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000b\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;",
        "Lio/ktor/network/sockets/SocketOptions;",
        "customOptions",
        "",
        "",
        "(Ljava/util/Map;)V",
        "receiveBufferSize",
        "",
        "getReceiveBufferSize",
        "()I",
        "setReceiveBufferSize",
        "(I)V",
        "sendBufferSize",
        "getSendBufferSize",
        "setSendBufferSize",
        "copy",
        "copy$ktor_network",
        "copyCommon",
        "",
        "from",
        "tcp",
        "Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;",
        "tcp$ktor_network",
        "udp",
        "Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;",
        "udp$ktor_network",
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
.field private receiveBufferSize:I

.field private sendBufferSize:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1, "customOptions"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "customOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/ktor/network/sockets/SocketOptions;-><init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->sendBufferSize:I

    .line 101
    iput v0, p0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->receiveBufferSize:I

    .line 89
    return-void
.end method


# virtual methods
.method public copy$ktor_network()Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;
    .locals 4

    .line 113
    new-instance v0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->getCustomOptions()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;-><init>(Ljava/util/Map;)V

    move-object v1, v0

    .local v1, "$this$copy_u24lambda_u240":Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;
    const/4 v2, 0x0

    .line 114
    .local v2, "$i$a$-apply-SocketOptions$PeerSocketOptions$copy$1":I
    move-object v3, p0

    check-cast v3, Lio/ktor/network/sockets/SocketOptions;

    invoke-virtual {v1, v3}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->copyCommon(Lio/ktor/network/sockets/SocketOptions;)V

    .line 115
    nop

    .line 113
    .end local v1    # "$this$copy_u24lambda_u240":Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;
    .end local v2    # "$i$a$-apply-SocketOptions$PeerSocketOptions$copy$1":I
    return-object v0
.end method

.method public bridge synthetic copy$ktor_network()Lio/ktor/network/sockets/SocketOptions;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->copy$ktor_network()Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    move-result-object v0

    check-cast v0, Lio/ktor/network/sockets/SocketOptions;

    return-object v0
.end method

.method protected copyCommon(Lio/ktor/network/sockets/SocketOptions;)V
    .locals 1
    .param p1, "from"    # Lio/ktor/network/sockets/SocketOptions;

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-super {p0, p1}, Lio/ktor/network/sockets/SocketOptions;->copyCommon(Lio/ktor/network/sockets/SocketOptions;)V

    .line 106
    instance-of v0, p1, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    if-eqz v0, :cond_0

    .line 107
    move-object v0, p1

    check-cast v0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    iget v0, v0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->sendBufferSize:I

    iput v0, p0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->sendBufferSize:I

    .line 108
    move-object v0, p1

    check-cast v0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    iget v0, v0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->receiveBufferSize:I

    iput v0, p0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->receiveBufferSize:I

    .line 110
    :cond_0
    return-void
.end method

.method public final getReceiveBufferSize()I
    .locals 1

    .line 101
    iget v0, p0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->receiveBufferSize:I

    return v0
.end method

.method public final getSendBufferSize()I
    .locals 1

    .line 96
    iget v0, p0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->sendBufferSize:I

    return v0
.end method

.method public final setReceiveBufferSize(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 101
    iput p1, p0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->receiveBufferSize:I

    return-void
.end method

.method public final setSendBufferSize(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 96
    iput p1, p0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->sendBufferSize:I

    return-void
.end method

.method public final tcp$ktor_network()Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;
    .locals 4

    .line 119
    new-instance v0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->getCustomOptions()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;-><init>(Ljava/util/Map;)V

    move-object v1, v0

    .local v1, "$this$tcp_u24lambda_u241":Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;
    const/4 v2, 0x0

    .line 120
    .local v2, "$i$a$-apply-SocketOptions$PeerSocketOptions$tcp$1":I
    move-object v3, p0

    check-cast v3, Lio/ktor/network/sockets/SocketOptions;

    invoke-virtual {p0, v3}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->copyCommon(Lio/ktor/network/sockets/SocketOptions;)V

    .line 121
    nop

    .line 119
    .end local v1    # "$this$tcp_u24lambda_u241":Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;
    .end local v2    # "$i$a$-apply-SocketOptions$PeerSocketOptions$tcp$1":I
    return-object v0
.end method

.method public final udp$ktor_network()Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;
    .locals 4

    .line 125
    new-instance v0, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->getCustomOptions()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;-><init>(Ljava/util/Map;)V

    move-object v1, v0

    .local v1, "$this$udp_u24lambda_u242":Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;
    const/4 v2, 0x0

    .line 126
    .local v2, "$i$a$-apply-SocketOptions$PeerSocketOptions$udp$1":I
    move-object v3, p0

    check-cast v3, Lio/ktor/network/sockets/SocketOptions;

    invoke-virtual {p0, v3}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->copyCommon(Lio/ktor/network/sockets/SocketOptions;)V

    .line 127
    nop

    .line 125
    .end local v1    # "$this$udp_u24lambda_u242":Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;
    .end local v2    # "$i$a$-apply-SocketOptions$PeerSocketOptions$udp$1":I
    return-object v0
.end method
