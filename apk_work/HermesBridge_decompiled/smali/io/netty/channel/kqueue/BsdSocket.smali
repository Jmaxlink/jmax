.class final Lio/netty/channel/kqueue/BsdSocket;
.super Lio/netty/channel/unix/Socket;
.source "BsdSocket.java"


# static fields
.field private static final APPLE_SND_LOW_AT_MAX:I = 0x20000

.field static final BSD_SND_LOW_AT_MAX:I

.field private static final FREEBSD_SND_LOW_AT_MAX:I = 0x8000

.field private static final UNSPECIFIED_SOURCE_INTERFACE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const/high16 v0, 0x20000

    const v1, 0x8000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lio/netty/channel/kqueue/BsdSocket;->BSD_SND_LOW_AT_MAX:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "fd"    # I

    .line 54
    invoke-direct {p0, p1}, Lio/netty/channel/unix/Socket;-><init>(I)V

    .line 55
    return-void
.end method

.method private static native connectx(IIZ[BIIZ[BIIIJII)I
.end method

.method private static native getAcceptFilter(I)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getPeerCredentials(I)Lio/netty/channel/unix/PeerCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getSndLowAt(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpNoPush(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isTcpFastOpen(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static newSocketDgram()Lio/netty/channel/kqueue/BsdSocket;
    .locals 2

    .line 205
    new-instance v0, Lio/netty/channel/kqueue/BsdSocket;

    invoke-static {}, Lio/netty/channel/kqueue/BsdSocket;->newSocketDgram0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/kqueue/BsdSocket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketDgram(Lio/netty/channel/socket/InternetProtocolFamily;)Lio/netty/channel/kqueue/BsdSocket;
    .locals 2
    .param p0, "protocol"    # Lio/netty/channel/socket/InternetProtocolFamily;

    .line 209
    new-instance v0, Lio/netty/channel/kqueue/BsdSocket;

    invoke-static {p0}, Lio/netty/channel/kqueue/BsdSocket;->newSocketDgram0(Lio/netty/channel/socket/InternetProtocolFamily;)I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/kqueue/BsdSocket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketDomain()Lio/netty/channel/kqueue/BsdSocket;
    .locals 2

    .line 213
    new-instance v0, Lio/netty/channel/kqueue/BsdSocket;

    invoke-static {}, Lio/netty/channel/kqueue/BsdSocket;->newSocketDomain0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/kqueue/BsdSocket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketDomainDgram()Lio/netty/channel/kqueue/BsdSocket;
    .locals 2

    .line 217
    new-instance v0, Lio/netty/channel/kqueue/BsdSocket;

    invoke-static {}, Lio/netty/channel/kqueue/BsdSocket;->newSocketDomainDgram0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/kqueue/BsdSocket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketStream()Lio/netty/channel/kqueue/BsdSocket;
    .locals 2

    .line 197
    new-instance v0, Lio/netty/channel/kqueue/BsdSocket;

    invoke-static {}, Lio/netty/channel/kqueue/BsdSocket;->newSocketStream0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/kqueue/BsdSocket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketStream(Lio/netty/channel/socket/InternetProtocolFamily;)Lio/netty/channel/kqueue/BsdSocket;
    .locals 2
    .param p0, "protocol"    # Lio/netty/channel/socket/InternetProtocolFamily;

    .line 201
    new-instance v0, Lio/netty/channel/kqueue/BsdSocket;

    invoke-static {p0}, Lio/netty/channel/kqueue/BsdSocket;->newSocketStream0(Lio/netty/channel/socket/InternetProtocolFamily;)I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/kqueue/BsdSocket;-><init>(I)V

    return-object v0
.end method

.method private static native sendFile(ILio/netty/channel/DefaultFileRegion;JJJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setAcceptFilter(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setSndLowAt(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpFastOpen(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpNoPush(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method connectx(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/channel/unix/IovArray;Z)I
    .locals 32
    .param p1, "source"    # Ljava/net/InetSocketAddress;
    .param p2, "destination"    # Ljava/net/InetSocketAddress;
    .param p3, "data"    # Lio/netty/channel/unix/IovArray;
    .param p4, "tcpFastOpen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "Destination InetSocketAddress cannot be null."

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    const/4 v2, 0x0

    if-eqz p4, :cond_0

    sget v4, Lio/netty/channel/kqueue/Native;->CONNECT_TCP_FASTOPEN:I

    move v15, v4

    goto :goto_0

    :cond_0
    move v15, v2

    .line 130
    .local v15, "flags":I
    :goto_0
    if-nez p1, :cond_1

    .line 131
    const/4 v4, 0x0

    .line 132
    .local v4, "sourceIPv6":Z
    const/4 v5, 0x0

    .line 133
    .local v5, "sourceAddress":[B
    const/4 v6, 0x0

    .line 134
    .local v6, "sourceScopeId":I
    const/4 v7, 0x0

    move-object/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    .local v7, "sourcePort":I
    goto :goto_2

    .line 136
    .end local v4    # "sourceIPv6":Z
    .end local v5    # "sourceAddress":[B
    .end local v6    # "sourceScopeId":I
    .end local v7    # "sourcePort":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 137
    .local v4, "sourceInetAddress":Ljava/net/InetAddress;
    invoke-static {v0, v4}, Lio/netty/channel/kqueue/BsdSocket;->useIpv6(Lio/netty/channel/unix/Socket;Ljava/net/InetAddress;)Z

    move-result v5

    .line 138
    .local v5, "sourceIPv6":Z
    instance-of v6, v4, Ljava/net/Inet6Address;

    if-eqz v6, :cond_2

    .line 139
    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    .line 140
    .local v6, "sourceAddress":[B
    move-object v7, v4

    check-cast v7, Ljava/net/Inet6Address;

    invoke-virtual {v7}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v7

    .local v7, "sourceScopeId":I
    goto :goto_1

    .line 143
    .end local v6    # "sourceAddress":[B
    .end local v7    # "sourceScopeId":I
    :cond_2
    const/4 v6, 0x0

    .line 144
    .local v6, "sourceScopeId":I
    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    invoke-static {v7}, Lio/netty/channel/unix/NativeInetAddress;->ipv4MappedIpv6Address([B)[B

    move-result-object v7

    move-object/from16 v31, v7

    move v7, v6

    move-object/from16 v6, v31

    .line 146
    .local v6, "sourceAddress":[B
    .restart local v7    # "sourceScopeId":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    move v4, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    .line 149
    .end local v5    # "sourceIPv6":Z
    .end local v6    # "sourceAddress":[B
    .end local v7    # "sourceScopeId":I
    .local v4, "sourceIPv6":Z
    .local v20, "sourceAddress":[B
    .local v21, "sourceScopeId":I
    .local v22, "sourcePort":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    .line 150
    .local v14, "destinationInetAddress":Ljava/net/InetAddress;
    invoke-static {v0, v14}, Lio/netty/channel/kqueue/BsdSocket;->useIpv6(Lio/netty/channel/unix/Socket;Ljava/net/InetAddress;)Z

    move-result v23

    .line 153
    .local v23, "destinationIPv6":Z
    instance-of v5, v14, Ljava/net/Inet6Address;

    if-eqz v5, :cond_3

    .line 154
    invoke-virtual {v14}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    .line 155
    .local v5, "destinationAddress":[B
    move-object v6, v14

    check-cast v6, Ljava/net/Inet6Address;

    invoke-virtual {v6}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v6

    move-object/from16 v24, v5

    move/from16 v25, v6

    .local v6, "destinationScopeId":I
    goto :goto_3

    .line 158
    .end local v5    # "destinationAddress":[B
    .end local v6    # "destinationScopeId":I
    :cond_3
    const/4 v6, 0x0

    .line 159
    .restart local v6    # "destinationScopeId":I
    invoke-virtual {v14}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    invoke-static {v5}, Lio/netty/channel/unix/NativeInetAddress;->ipv4MappedIpv6Address([B)[B

    move-result-object v5

    move-object/from16 v24, v5

    move/from16 v25, v6

    .line 161
    .end local v6    # "destinationScopeId":I
    .local v24, "destinationAddress":[B
    .local v25, "destinationScopeId":I
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v26

    .line 166
    .local v26, "destinationPort":I
    if-eqz v1, :cond_6

    invoke-virtual/range {p3 .. p3}, Lio/netty/channel/unix/IovArray;->count()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_4

    .line 171
    :cond_4
    invoke-virtual {v1, v2}, Lio/netty/channel/unix/IovArray;->memoryAddress(I)J

    move-result-wide v5

    .line 172
    .local v5, "iovAddress":J
    invoke-virtual/range {p3 .. p3}, Lio/netty/channel/unix/IovArray;->count()I

    move-result v2

    .line 173
    .local v2, "iovCount":I
    invoke-virtual/range {p3 .. p3}, Lio/netty/channel/unix/IovArray;->size()J

    move-result-wide v7

    .line 174
    .local v7, "size":J
    const-wide/32 v9, 0x7fffffff

    cmp-long v9, v7, v9

    if-gtz v9, :cond_5

    .line 177
    long-to-int v9, v7

    move-wide/from16 v27, v5

    move v13, v9

    .local v9, "iovDataLength":I
    goto :goto_5

    .line 175
    .end local v9    # "iovDataLength":I
    :cond_5
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IovArray.size() too big: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 167
    .end local v2    # "iovCount":I
    .end local v5    # "iovAddress":J
    .end local v7    # "size":J
    :cond_6
    :goto_4
    const-wide/16 v5, 0x0

    .line 168
    .restart local v5    # "iovAddress":J
    const/4 v2, 0x0

    .line 169
    .restart local v2    # "iovCount":I
    const/4 v9, 0x0

    move-wide/from16 v27, v5

    move v13, v9

    .line 180
    .end local v5    # "iovAddress":J
    .local v13, "iovDataLength":I
    .local v27, "iovAddress":J
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/kqueue/BsdSocket;->intValue()I

    move-result v5

    const/4 v6, 0x0

    move v7, v4

    move-object/from16 v8, v20

    move/from16 v9, v21

    move/from16 v10, v22

    move/from16 v11, v23

    move-object/from16 v12, v24

    move/from16 v29, v13

    .end local v13    # "iovDataLength":I
    .local v29, "iovDataLength":I
    move/from16 v13, v25

    move-object/from16 v30, v14

    .end local v14    # "destinationInetAddress":Ljava/net/InetAddress;
    .local v30, "destinationInetAddress":Ljava/net/InetAddress;
    move/from16 v14, v26

    move-wide/from16 v16, v27

    move/from16 v18, v2

    move/from16 v19, v29

    invoke-static/range {v5 .. v19}, Lio/netty/channel/kqueue/BsdSocket;->connectx(IIZ[BIIZ[BIIIJII)I

    move-result v5

    .line 184
    .local v5, "result":I
    sget v6, Lio/netty/channel/unix/Errors;->ERRNO_EINPROGRESS_NEGATIVE:I

    if-ne v5, v6, :cond_7

    .line 188
    move/from16 v9, v29

    .end local v29    # "iovDataLength":I
    .restart local v9    # "iovDataLength":I
    neg-int v6, v9

    return v6

    .line 190
    .end local v9    # "iovDataLength":I
    .restart local v29    # "iovDataLength":I
    :cond_7
    move/from16 v9, v29

    .end local v29    # "iovDataLength":I
    .restart local v9    # "iovDataLength":I
    if-gez v5, :cond_8

    .line 191
    const-string v6, "connectx"

    invoke-static {v6, v5}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v6

    return v6

    .line 193
    :cond_8
    return v5
.end method

.method getAcceptFilter()Lio/netty/channel/kqueue/AcceptFilter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lio/netty/channel/kqueue/BsdSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/kqueue/BsdSocket;->getAcceptFilter(I)[Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "result":[Ljava/lang/String;
    if-nez v0, :cond_0

    sget-object v1, Lio/netty/channel/kqueue/AcceptFilter;->PLATFORM_UNSUPPORTED:Lio/netty/channel/kqueue/AcceptFilter;

    goto :goto_0

    :cond_0
    new-instance v1, Lio/netty/channel/kqueue/AcceptFilter;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v3}, Lio/netty/channel/kqueue/AcceptFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method getPeerCredentials()Lio/netty/channel/unix/PeerCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lio/netty/channel/kqueue/BsdSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/kqueue/BsdSocket;->getPeerCredentials(I)Lio/netty/channel/unix/PeerCredentials;

    move-result-object v0

    return-object v0
.end method

.method getSndLowAt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lio/netty/channel/kqueue/BsdSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/kqueue/BsdSocket;->getSndLowAt(I)I

    move-result v0

    return v0
.end method

.method public isTcpFastOpen()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lio/netty/channel/kqueue/BsdSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/kqueue/BsdSocket;->isTcpFastOpen(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTcpNoPush()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lio/netty/channel/kqueue/BsdSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/kqueue/BsdSocket;->getTcpNoPush(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method sendFile(Lio/netty/channel/DefaultFileRegion;JJJ)J
    .locals 8
    .param p1, "src"    # Lio/netty/channel/DefaultFileRegion;
    .param p2, "baseOffset"    # J
    .param p4, "offset"    # J
    .param p6, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p1}, Lio/netty/channel/DefaultFileRegion;->open()V

    .line 99
    invoke-virtual {p0}, Lio/netty/channel/kqueue/BsdSocket;->intValue()I

    move-result v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v7}, Lio/netty/channel/kqueue/BsdSocket;->sendFile(ILio/netty/channel/DefaultFileRegion;JJJ)J

    move-result-wide v0

    .line 100
    .local v0, "res":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 101
    return-wide v0

    .line 103
    :cond_0
    const-string v2, "sendfile"

    long-to-int v3, v0

    invoke-static {v2, v3}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    return-wide v2
.end method

.method setAcceptFilter(Lio/netty/channel/kqueue/AcceptFilter;)V
    .locals 3
    .param p1, "acceptFilter"    # Lio/netty/channel/kqueue/AcceptFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lio/netty/channel/kqueue/BsdSocket;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/channel/kqueue/AcceptFilter;->filterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/netty/channel/kqueue/AcceptFilter;->filterArgs()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/netty/channel/kqueue/BsdSocket;->setAcceptFilter(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method setSndLowAt(I)V
    .locals 1
    .param p1, "lowAt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lio/netty/channel/kqueue/BsdSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/kqueue/BsdSocket;->setSndLowAt(II)V

    .line 67
    return-void
.end method

.method public setTcpFastOpen(Z)V
    .locals 1
    .param p1, "enableTcpFastOpen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lio/netty/channel/kqueue/BsdSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/kqueue/BsdSocket;->setTcpFastOpen(II)V

    .line 71
    return-void
.end method

.method setTcpNoPush(Z)V
    .locals 1
    .param p1, "tcpNoPush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lio/netty/channel/kqueue/BsdSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/kqueue/BsdSocket;->setTcpNoPush(II)V

    .line 63
    return-void
.end method
