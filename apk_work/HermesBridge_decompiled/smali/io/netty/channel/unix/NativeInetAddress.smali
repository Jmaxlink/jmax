.class public final Lio/netty/channel/unix/NativeInetAddress;
.super Ljava/lang/Object;
.source "NativeInetAddress.java"


# static fields
.field private static final IPV4_MAPPED_IPV6_PREFIX:[B


# instance fields
.field final address:[B

.field final scopeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/netty/channel/unix/NativeInetAddress;->IPV4_MAPPED_IPV6_PREFIX:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "address"    # [B

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/unix/NativeInetAddress;-><init>([BI)V

    .line 49
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "address"    # [B
    .param p2, "scopeId"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lio/netty/channel/unix/NativeInetAddress;->address:[B

    .line 44
    iput p2, p0, Lio/netty/channel/unix/NativeInetAddress;->scopeId:I

    .line 45
    return-void
.end method

.method public static address([BII)Ljava/net/InetSocketAddress;
    .locals 4
    .param p0, "addr"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 72
    add-int v0, p1, p2

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Lio/netty/channel/unix/NativeInetAddress;->decodeInt([BI)I

    move-result v0

    .line 76
    .local v0, "port":I
    const/4 v2, 0x0

    sparse-switch p2, :sswitch_data_0

    .line 97
    :try_start_0
    new-instance v1, Ljava/lang/Error;

    goto :goto_1

    .line 91
    :sswitch_0
    const/16 v1, 0x10

    new-array v3, v1, [B

    .line 92
    .local v3, "ipv6":[B
    invoke-static {p0, p1, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x8

    invoke-static {p0, v1}, Lio/netty/channel/unix/NativeInetAddress;->decodeInt([BI)I

    move-result v1

    .line 94
    .local v1, "scopeId":I
    const/4 v2, 0x0

    invoke-static {v2, v3, v1}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v2

    .line 95
    .local v2, "address":Ljava/net/InetAddress;
    goto :goto_0

    .line 81
    .end local v1    # "scopeId":I
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v3    # "ipv6":[B
    :sswitch_1
    new-array v3, v1, [B

    .line 82
    .local v3, "ipv4":[B
    invoke-static {p0, p1, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    move-object v2, v1

    .line 84
    .restart local v2    # "address":Ljava/net/InetAddress;
    nop

    .line 99
    .end local v3    # "ipv4":[B
    :goto_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v1

    .line 100
    .end local v2    # "address":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    goto :goto_2

    .line 97
    :goto_1
    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    .end local v0    # "port":I
    .end local p0    # "addr":[B
    .end local p1    # "offset":I
    .end local p2    # "len":I
    throw v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .restart local v0    # "port":I
    .local v1, "e":Ljava/net/UnknownHostException;
    .restart local p0    # "addr":[B
    .restart local p1    # "offset":I
    .restart local p2    # "len":I
    :goto_2
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Should never happen"

    invoke-direct {v2, v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public static copyIpv4MappedIpv6Address([B[B)V
    .locals 3
    .param p0, "ipv4"    # [B
    .param p1, "ipv6"    # [B

    .line 66
    sget-object v0, Lio/netty/channel/unix/NativeInetAddress;->IPV4_MAPPED_IPV6_PREFIX:[B

    sget-object v1, Lio/netty/channel/unix/NativeInetAddress;->IPV4_MAPPED_IPV6_PREFIX:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    const/16 v0, 0xc

    array-length v1, p0

    invoke-static {p0, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    return-void
.end method

.method static decodeInt([BI)I
    .locals 2
    .param p0, "addr"    # [B
    .param p1, "index"    # I

    .line 106
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static ipv4MappedIpv6Address([B)[B
    .locals 1
    .param p0, "ipv4"    # [B

    .line 60
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 61
    .local v0, "address":[B
    invoke-static {p0, v0}, Lio/netty/channel/unix/NativeInetAddress;->copyIpv4MappedIpv6Address([B[B)V

    .line 62
    return-object v0
.end method

.method public static newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;
    .locals 3
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 33
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 34
    .local v0, "bytes":[B
    instance-of v1, p0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_0

    .line 35
    new-instance v1, Lio/netty/channel/unix/NativeInetAddress;

    move-object v2, p0

    check-cast v2, Ljava/net/Inet6Address;

    invoke-virtual {v2}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lio/netty/channel/unix/NativeInetAddress;-><init>([BI)V

    return-object v1

    .line 38
    :cond_0
    new-instance v1, Lio/netty/channel/unix/NativeInetAddress;

    invoke-static {v0}, Lio/netty/channel/unix/NativeInetAddress;->ipv4MappedIpv6Address([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/channel/unix/NativeInetAddress;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public address()[B
    .locals 1

    .line 52
    iget-object v0, p0, Lio/netty/channel/unix/NativeInetAddress;->address:[B

    return-object v0
.end method

.method public scopeId()I
    .locals 1

    .line 56
    iget v0, p0, Lio/netty/channel/unix/NativeInetAddress;->scopeId:I

    return v0
.end method
