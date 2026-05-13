.class public final Lio/netty/channel/epoll/VSockAddress;
.super Ljava/net/SocketAddress;
.source "VSockAddress.java"


# static fields
.field public static final VMADDR_CID_ANY:I = -0x1

.field public static final VMADDR_CID_HOST:I = 0x2

.field public static final VMADDR_CID_HYPERVISOR:I = 0x0

.field public static final VMADDR_CID_LOCAL:I = 0x1

.field public static final VMADDR_PORT_ANY:I = -0x1

.field private static final serialVersionUID:J = 0x775c839c7386d79dL


# instance fields
.field private final cid:I

.field private final port:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "cid"    # I
    .param p2, "port"    # I

    .line 39
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 40
    iput p1, p0, Lio/netty/channel/epoll/VSockAddress;->cid:I

    .line 41
    iput p2, p0, Lio/netty/channel/epoll/VSockAddress;->port:I

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 63
    return v0

    .line 65
    :cond_0
    instance-of v1, p1, Lio/netty/channel/epoll/VSockAddress;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 66
    return v2

    .line 69
    :cond_1
    move-object v1, p1

    check-cast v1, Lio/netty/channel/epoll/VSockAddress;

    .line 71
    .local v1, "that":Lio/netty/channel/epoll/VSockAddress;
    iget v3, p0, Lio/netty/channel/epoll/VSockAddress;->cid:I

    iget v4, v1, Lio/netty/channel/epoll/VSockAddress;->cid:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lio/netty/channel/epoll/VSockAddress;->port:I

    iget v4, v1, Lio/netty/channel/epoll/VSockAddress;->port:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCid()I
    .locals 1

    .line 45
    iget v0, p0, Lio/netty/channel/epoll/VSockAddress;->cid:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .line 49
    iget v0, p0, Lio/netty/channel/epoll/VSockAddress;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 76
    iget v0, p0, Lio/netty/channel/epoll/VSockAddress;->cid:I

    .line 77
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lio/netty/channel/epoll/VSockAddress;->port:I

    add-int/2addr v1, v2

    .line 78
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VSockAddress{cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/channel/epoll/VSockAddress;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/channel/epoll/VSockAddress;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
