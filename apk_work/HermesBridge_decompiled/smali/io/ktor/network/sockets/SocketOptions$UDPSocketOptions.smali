.class public final Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;
.super Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;
.source "SocketOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/sockets/SocketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UDPSocketOptions"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0008\u0000\u0012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\r\u0010\u000c\u001a\u00020\u0000H\u0010\u00a2\u0006\u0002\u0008\rJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0014R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;",
        "Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;",
        "customOptions",
        "",
        "",
        "(Ljava/util/Map;)V",
        "broadcast",
        "",
        "getBroadcast",
        "()Z",
        "setBroadcast",
        "(Z)V",
        "copy",
        "copy$ktor_network",
        "copyCommon",
        "",
        "from",
        "Lio/ktor/network/sockets/SocketOptions;",
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
.field private broadcast:Z


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

    .line 136
    invoke-direct {p0, p1}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;-><init>(Ljava/util/Map;)V

    .line 134
    return-void
.end method


# virtual methods
.method public bridge synthetic copy$ktor_network()Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;
    .locals 1

    .line 134
    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;->copy$ktor_network()Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;

    move-result-object v0

    check-cast v0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    return-object v0
.end method

.method public copy$ktor_network()Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;
    .locals 4

    .line 151
    new-instance v0, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;->getCustomOptions()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;-><init>(Ljava/util/Map;)V

    move-object v1, v0

    .local v1, "$this$copy_u24lambda_u240":Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;
    const/4 v2, 0x0

    .line 152
    .local v2, "$i$a$-apply-SocketOptions$UDPSocketOptions$copy$1":I
    move-object v3, p0

    check-cast v3, Lio/ktor/network/sockets/SocketOptions;

    invoke-virtual {v1, v3}, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;->copyCommon(Lio/ktor/network/sockets/SocketOptions;)V

    .line 153
    nop

    .line 151
    .end local v1    # "$this$copy_u24lambda_u240":Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;
    .end local v2    # "$i$a$-apply-SocketOptions$UDPSocketOptions$copy$1":I
    return-object v0
.end method

.method public bridge synthetic copy$ktor_network()Lio/ktor/network/sockets/SocketOptions;
    .locals 1

    .line 134
    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;->copy$ktor_network()Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;

    move-result-object v0

    check-cast v0, Lio/ktor/network/sockets/SocketOptions;

    return-object v0
.end method

.method protected copyCommon(Lio/ktor/network/sockets/SocketOptions;)V
    .locals 1
    .param p1, "from"    # Lio/ktor/network/sockets/SocketOptions;

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-super {p0, p1}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->copyCommon(Lio/ktor/network/sockets/SocketOptions;)V

    .line 145
    instance-of v0, p1, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;

    if-eqz v0, :cond_0

    .line 146
    move-object v0, p1

    check-cast v0, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;

    iget-boolean v0, v0, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;->broadcast:Z

    iput-boolean v0, p0, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;->broadcast:Z

    .line 148
    :cond_0
    return-void
.end method

.method public final getBroadcast()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;->broadcast:Z

    return v0
.end method

.method public final setBroadcast(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 141
    iput-boolean p1, p0, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;->broadcast:Z

    return-void
.end method
