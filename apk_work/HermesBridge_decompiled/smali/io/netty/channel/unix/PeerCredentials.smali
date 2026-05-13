.class public final Lio/netty/channel/unix/PeerCredentials;
.super Ljava/lang/Object;
.source "PeerCredentials.java"


# instance fields
.field private final gids:[I

.field private final pid:I

.field private final uid:I


# direct methods
.method varargs constructor <init>(II[I)V
    .locals 1
    .param p1, "p"    # I
    .param p2, "u"    # I
    .param p3, "gids"    # [I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lio/netty/channel/unix/PeerCredentials;->pid:I

    .line 39
    iput p2, p0, Lio/netty/channel/unix/PeerCredentials;->uid:I

    .line 40
    if-nez p3, :cond_0

    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_INTS:[I

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lio/netty/channel/unix/PeerCredentials;->gids:[I

    .line 41
    return-void
.end method


# virtual methods
.method public gids()[I
    .locals 1

    .line 58
    iget-object v0, p0, Lio/netty/channel/unix/PeerCredentials;->gids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public pid()I
    .locals 1

    .line 50
    iget v0, p0, Lio/netty/channel/unix/PeerCredentials;->pid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "UserCredentials[pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/channel/unix/PeerCredentials;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/channel/unix/PeerCredentials;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; gids=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Lio/netty/channel/unix/PeerCredentials;->gids:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 66
    iget-object v1, p0, Lio/netty/channel/unix/PeerCredentials;->gids:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lio/netty/channel/unix/PeerCredentials;->gids:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 68
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/netty/channel/unix/PeerCredentials;->gids:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public uid()I
    .locals 1

    .line 54
    iget v0, p0, Lio/netty/channel/unix/PeerCredentials;->uid:I

    return v0
.end method
