.class public Lio/netty/channel/unix/DomainSocketAddress;
.super Ljava/net/SocketAddress;
.source "DomainSocketAddress.java"


# static fields
.field private static final serialVersionUID:J = -0x603cb654a0a28d5dL


# instance fields
.field private final socketPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/unix/DomainSocketAddress;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "socketPath"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 32
    const-string v0, "socketPath"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/netty/channel/unix/DomainSocketAddress;->socketPath:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 53
    if-ne p0, p1, :cond_0

    .line 54
    const/4 v0, 0x1

    return v0

    .line 56
    :cond_0
    instance-of v0, p1, Lio/netty/channel/unix/DomainSocketAddress;

    if-nez v0, :cond_1

    .line 57
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_1
    move-object v0, p1

    check-cast v0, Lio/netty/channel/unix/DomainSocketAddress;

    iget-object v0, v0, Lio/netty/channel/unix/DomainSocketAddress;->socketPath:Ljava/lang/String;

    iget-object v1, p0, Lio/netty/channel/unix/DomainSocketAddress;->socketPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 65
    iget-object v0, p0, Lio/netty/channel/unix/DomainSocketAddress;->socketPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/netty/channel/unix/DomainSocketAddress;->socketPath:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lio/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
