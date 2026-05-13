.class final Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;
.super Ljava/lang/Object;
.source "OpenSslClientSessionCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/OpenSslClientSessionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HostPort"
.end annotation


# instance fields
.field private final hash:I

.field private final host:Ljava/lang/String;

.field private final port:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;->host:Ljava/lang/String;

    .line 111
    iput p2, p0, Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;->port:I

    .line 113
    invoke-static {p1}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p2

    iput v0, p0, Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;->hash:I

    .line 114
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 123
    instance-of v0, p1, Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 124
    return v1

    .line 126
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;

    .line 127
    .local v0, "other":Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;
    iget v2, p0, Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;->port:I

    iget v3, v0, Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;->port:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;->host:Ljava/lang/String;

    iget-object v3, v0, Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 118
    iget v0, p0, Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;->hash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HostPort{host=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/handler/ssl/OpenSslClientSessionCache$HostPort;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
