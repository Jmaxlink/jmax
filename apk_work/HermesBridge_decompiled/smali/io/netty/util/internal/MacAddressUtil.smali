.class public final Lio/netty/util/internal/MacAddressUtil;
.super Ljava/lang/Object;
.source "MacAddressUtil.java"


# static fields
.field private static final EUI48_MAC_ADDRESS_LENGTH:I = 0x6

.field private static final EUI64_MAC_ADDRESS_LENGTH:I = 0x8

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lio/netty/util/internal/MacAddressUtil;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/MacAddressUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bestAvailableMac()[B
    .locals 12

    .line 49
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    .line 50
    .local v0, "bestMacAddr":[B
    sget-object v1, Lio/netty/util/NetUtil;->LOCALHOST4:Ljava/net/Inet4Address;

    .line 53
    .local v1, "bestInetAddr":Ljava/net/InetAddress;
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 54
    .local v2, "ifaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/NetworkInterface;Ljava/net/InetAddress;>;"
    sget-object v3, Lio/netty/util/NetUtil;->NETWORK_INTERFACES:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 56
    .local v4, "iface":Ljava/net/NetworkInterface;
    invoke-static {v4}, Lio/netty/util/internal/SocketUtils;->addressesFromNetworkInterface(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    move-result-object v5

    .line 57
    .local v5, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 58
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 59
    .local v6, "a":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-nez v7, :cond_0

    .line 60
    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .end local v4    # "iface":Ljava/net/NetworkInterface;
    .end local v5    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v6    # "a":Ljava/net/InetAddress;
    :cond_0
    goto :goto_0

    .line 65
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 66
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/NetworkInterface;Ljava/net/InetAddress;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 67
    .local v5, "iface":Ljava/net/NetworkInterface;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 68
    .local v6, "inetAddr":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->isVirtual()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 69
    goto :goto_1

    .line 74
    :cond_2
    :try_start_0
    invoke-static {v5}, Lio/netty/util/internal/SocketUtils;->hardwareAddressFromNetworkInterface(Ljava/net/NetworkInterface;)[B

    move-result-object v7
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .local v7, "macAddr":[B
    nop

    .line 80
    const/4 v8, 0x0

    .line 81
    .local v8, "replace":Z
    invoke-static {v0, v7}, Lio/netty/util/internal/MacAddressUtil;->compareAddresses([B[B)I

    move-result v9

    .line 82
    .local v9, "res":I
    if-gez v9, :cond_3

    .line 84
    const/4 v8, 0x1

    goto :goto_2

    .line 85
    :cond_3
    if-nez v9, :cond_5

    .line 87
    invoke-static {v1, v6}, Lio/netty/util/internal/MacAddressUtil;->compareAddresses(Ljava/net/InetAddress;Ljava/net/InetAddress;)I

    move-result v9

    .line 88
    if-gez v9, :cond_4

    .line 90
    const/4 v8, 0x1

    goto :goto_2

    .line 91
    :cond_4
    if-nez v9, :cond_5

    .line 93
    array-length v10, v0

    array-length v11, v7

    if-ge v10, v11, :cond_5

    .line 94
    const/4 v8, 0x1

    .line 99
    :cond_5
    :goto_2
    if-eqz v8, :cond_6

    .line 100
    move-object v0, v7

    .line 101
    move-object v1, v6

    .line 103
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/NetworkInterface;Ljava/net/InetAddress;>;"
    .end local v5    # "iface":Ljava/net/NetworkInterface;
    .end local v6    # "inetAddr":Ljava/net/InetAddress;
    .end local v7    # "macAddr":[B
    .end local v8    # "replace":Z
    .end local v9    # "res":I
    :cond_6
    goto :goto_1

    .line 75
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/NetworkInterface;Ljava/net/InetAddress;>;"
    .restart local v5    # "iface":Ljava/net/NetworkInterface;
    .restart local v6    # "inetAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v7

    .line 76
    .local v7, "e":Ljava/net/SocketException;
    sget-object v8, Lio/netty/util/internal/MacAddressUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v9, "Failed to get the hardware address of a network interface: {}"

    invoke-interface {v8, v9, v5, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    goto :goto_1

    .line 105
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/NetworkInterface;Ljava/net/InetAddress;>;"
    .end local v5    # "iface":Ljava/net/NetworkInterface;
    .end local v6    # "inetAddr":Ljava/net/InetAddress;
    .end local v7    # "e":Ljava/net/SocketException;
    :cond_7
    sget-object v3, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    if-ne v0, v3, :cond_8

    .line 106
    const/4 v3, 0x0

    return-object v3

    .line 109
    :cond_8
    array-length v3, v0

    const/4 v4, 0x6

    const/16 v5, 0x8

    if-ne v3, v4, :cond_9

    .line 110
    new-array v3, v5, [B

    .line 111
    .local v3, "newAddr":[B
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v0, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    const/4 v4, -0x1

    aput-byte v4, v3, v5

    .line 113
    const/4 v4, 0x4

    const/4 v6, -0x2

    aput-byte v6, v3, v4

    .line 114
    const/4 v4, 0x5

    invoke-static {v0, v5, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    move-object v0, v3

    .line 116
    .end local v3    # "newAddr":[B
    goto :goto_3

    .line 118
    :cond_9
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 121
    :goto_3
    return-object v0
.end method

.method private static compareAddresses(Ljava/net/InetAddress;Ljava/net/InetAddress;)I
    .locals 2
    .param p0, "current"    # Ljava/net/InetAddress;
    .param p1, "candidate"    # Ljava/net/InetAddress;

    .line 248
    invoke-static {p0}, Lio/netty/util/internal/MacAddressUtil;->scoreAddress(Ljava/net/InetAddress;)I

    move-result v0

    invoke-static {p1}, Lio/netty/util/internal/MacAddressUtil;->scoreAddress(Ljava/net/InetAddress;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static compareAddresses([B[B)I
    .locals 6
    .param p0, "current"    # [B
    .param p1, "candidate"    # [B

    .line 202
    const/4 v0, 0x1

    if-eqz p1, :cond_8

    array-length v1, p1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 207
    :cond_0
    const/4 v1, 0x1

    .line 208
    .local v1, "onlyZeroAndOne":Z
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-byte v5, p1, v4

    .line 209
    .local v5, "b":B
    if-eqz v5, :cond_1

    if-eq v5, v0, :cond_1

    .line 210
    const/4 v1, 0x0

    .line 211
    goto :goto_1

    .line 208
    .end local v5    # "b":B
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 215
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 216
    return v0

    .line 220
    :cond_3
    aget-byte v2, p1, v3

    and-int/2addr v2, v0

    if-eqz v2, :cond_4

    .line 221
    return v0

    .line 225
    :cond_4
    aget-byte v2, p1, v3

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    .line 226
    array-length v0, p0

    if-eqz v0, :cond_5

    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    .line 228
    return v3

    .line 231
    :cond_5
    const/4 v0, -0x1

    return v0

    .line 234
    :cond_6
    array-length v2, p0

    if-eqz v2, :cond_7

    aget-byte v2, p0, v3

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_7

    .line 236
    return v0

    .line 239
    :cond_7
    return v3

    .line 203
    .end local v1    # "onlyZeroAndOne":Z
    :cond_8
    :goto_2
    return v0
.end method

.method public static defaultMachineId()[B
    .locals 4

    .line 129
    invoke-static {}, Lio/netty/util/internal/MacAddressUtil;->bestAvailableMac()[B

    move-result-object v0

    .line 130
    .local v0, "bestMacAddr":[B
    if-nez v0, :cond_0

    .line 131
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 132
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->threadLocalRandom()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 133
    sget-object v1, Lio/netty/util/internal/MacAddressUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 135
    invoke-static {v0}, Lio/netty/util/internal/MacAddressUtil;->formatAddress([B)Ljava/lang/String;

    move-result-object v2

    .line 133
    const-string v3, "Failed to find a usable hardware address from the network interfaces; using random bytes: {}"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    :cond_0
    return-object v0
.end method

.method public static formatAddress([B)Ljava/lang/String;
    .locals 7
    .param p0, "addr"    # [B

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 191
    .local v0, "buf":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    .line 192
    .local v4, "b":B
    and-int/lit16 v5, v4, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02x:"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseMAC(Ljava/lang/String;)[B
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    sparse-switch v0, :sswitch_data_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not supported [MAC-48, EUI-48, EUI-64]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :sswitch_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 156
    .local v0, "separator":C
    invoke-static {v0}, Lio/netty/util/internal/MacAddressUtil;->validateMacSeparator(C)V

    .line 157
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 158
    .local v1, "machineId":[B
    goto :goto_0

    .line 150
    .end local v0    # "separator":C
    .end local v1    # "machineId":[B
    :sswitch_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 151
    .restart local v0    # "separator":C
    invoke-static {v0}, Lio/netty/util/internal/MacAddressUtil;->validateMacSeparator(C)V

    .line 152
    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 153
    .restart local v1    # "machineId":[B
    nop

    .line 163
    :goto_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 164
    .local v2, "end":I
    const/4 v3, 0x0

    .line 165
    .local v3, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 166
    add-int/lit8 v5, v3, 0x2

    .line 167
    .local v5, "sIndex":I
    invoke-static {p0, v3}, Lio/netty/util/internal/StringUtil;->decodeHexByte(Ljava/lang/CharSequence;I)B

    move-result v6

    aput-byte v6, v1, v4

    .line 168
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v0, :cond_0

    .line 165
    .end local v5    # "sIndex":I
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    .line 169
    .restart local v5    # "sIndex":I
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expected separator \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but got \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 170
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' at index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 174
    .end local v4    # "i":I
    .end local v5    # "sIndex":I
    :cond_1
    invoke-static {p0, v3}, Lio/netty/util/internal/StringUtil;->decodeHexByte(Ljava/lang/CharSequence;I)B

    move-result v4

    aput-byte v4, v1, v2

    .line 176
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method private static scoreAddress(Ljava/net/InetAddress;)I
    .locals 1
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 252
    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    const/4 v0, 0x1

    return v0

    .line 258
    :cond_1
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    const/4 v0, 0x2

    return v0

    .line 261
    :cond_2
    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    const/4 v0, 0x3

    return v0

    .line 265
    :cond_3
    const/4 v0, 0x4

    return v0

    .line 253
    :cond_4
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static validateMacSeparator(C)V
    .locals 3
    .param p0, "separator"    # C

    .line 180
    const/16 v0, 0x3a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported separator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: [:-])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    :goto_0
    return-void
.end method
