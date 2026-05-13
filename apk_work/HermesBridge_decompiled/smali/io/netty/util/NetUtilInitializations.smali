.class final Lio/netty/util/NetUtilInitializations;
.super Ljava/lang/Object;
.source "NetUtilInitializations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lio/netty/util/NetUtilInitializations;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/NetUtilInitializations;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method static createLocalhost4()Ljava/net/Inet4Address;
    .locals 3

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 46
    .local v0, "LOCALHOST4_BYTES":[B
    const/4 v1, 0x0

    .line 48
    .local v1, "localhost4":Ljava/net/Inet4Address;
    :try_start_0
    const-string v2, "localhost"

    invoke-static {v2, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v2

    check-cast v2, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 52
    goto :goto_0

    .line 49
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 54
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    :array_0
    .array-data 1
        0x7ft
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method static createLocalhost6()Ljava/net/Inet6Address;
    .locals 3

    .line 58
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 60
    .local v0, "LOCALHOST6_BYTES":[B
    const/4 v1, 0x0

    .line 62
    .local v1, "localhost6":Ljava/net/Inet6Address;
    :try_start_0
    const-string v2, "localhost"

    invoke-static {v2, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v2

    check-cast v2, Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 66
    goto :goto_0

    .line 63
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 68
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    nop

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
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method static determineLoopback(Ljava/util/Collection;Ljava/net/Inet4Address;Ljava/net/Inet6Address;)Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;
    .locals 10
    .param p1, "localhost4"    # Ljava/net/Inet4Address;
    .param p2, "localhost6"    # Ljava/net/Inet6Address;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/NetworkInterface;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet6Address;",
            ")",
            "Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;"
        }
    .end annotation

    .line 95
    .local p0, "networkInterfaces":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/NetworkInterface;>;"
    const-string v0, "Failed to find the loopback interface"

    const-string v1, "Using hard-coded IPv4 localhost address: {}"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v2, "ifaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 98
    .local v4, "iface":Ljava/net/NetworkInterface;
    invoke-static {v4}, Lio/netty/util/internal/SocketUtils;->addressesFromNetworkInterface(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v4    # "iface":Ljava/net/NetworkInterface;
    :cond_0
    goto :goto_0

    .line 106
    :cond_1
    const/4 v3, 0x0

    .line 107
    .local v3, "loopbackIface":Ljava/net/NetworkInterface;
    const/4 v4, 0x0

    .line 108
    .local v4, "loopbackAddr":Ljava/net/InetAddress;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 109
    .local v6, "iface":Ljava/net/NetworkInterface;
    invoke-static {v6}, Lio/netty/util/internal/SocketUtils;->addressesFromNetworkInterface(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    move-result-object v7

    .local v7, "i":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 110
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    .line 111
    .local v8, "addr":Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 113
    move-object v3, v6

    .line 114
    move-object v4, v8

    .line 115
    goto :goto_3

    .line 117
    .end local v8    # "addr":Ljava/net/InetAddress;
    :cond_2
    goto :goto_2

    .line 118
    .end local v6    # "iface":Ljava/net/NetworkInterface;
    .end local v7    # "i":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_3
    goto :goto_1

    .line 121
    :cond_4
    :goto_3
    if-nez v3, :cond_8

    .line 123
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 124
    .restart local v6    # "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 125
    invoke-static {v6}, Lio/netty/util/internal/SocketUtils;->addressesFromNetworkInterface(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    move-result-object v7

    .line 126
    .restart local v7    # "i":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 128
    move-object v3, v6

    .line 129
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    move-object v4, v5

    .line 130
    goto :goto_5

    .line 133
    .end local v6    # "iface":Ljava/net/NetworkInterface;
    .end local v7    # "i":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_5
    goto :goto_4

    .line 135
    :cond_6
    :goto_5
    if-nez v3, :cond_7

    .line 136
    sget-object v5, Lio/netty/util/NetUtilInitializations;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v5, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_7
    goto :goto_6

    .line 138
    :catch_0
    move-exception v5

    .line 139
    .local v5, "e":Ljava/net/SocketException;
    sget-object v6, Lio/netty/util/NetUtilInitializations;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v6, v0, v5}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .end local v5    # "e":Ljava/net/SocketException;
    :cond_8
    :goto_6
    if-eqz v3, :cond_9

    .line 145
    sget-object v0, Lio/netty/util/NetUtilInitializations;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 147
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v1, v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 145
    const-string v5, "Loopback interface: {} ({}, {})"

    invoke-interface {v0, v5, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 151
    :cond_9
    if-nez v4, :cond_c

    .line 153
    :try_start_1
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 154
    sget-object v0, Lio/netty/util/NetUtilInitializations;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "Using hard-coded IPv6 localhost address: {}"

    invoke-interface {v0, v5, p2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    move-object v0, p2

    move-object v4, v0

    .line 160
    :cond_a
    if-nez v4, :cond_c

    .line 161
    goto :goto_7

    .line 160
    :catchall_0
    move-exception v0

    if-nez v4, :cond_b

    .line 161
    sget-object v5, Lio/netty/util/NetUtilInitializations;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v5, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    move-object v4, p1

    .line 164
    :cond_b
    throw v0

    .line 157
    :catch_1
    move-exception v0

    .line 160
    if-nez v4, :cond_c

    .line 161
    :goto_7
    sget-object v0, Lio/netty/util/NetUtilInitializations;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    move-object v4, p1

    .line 168
    :cond_c
    :goto_8
    new-instance v0, Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;

    invoke-direct {v0, v3, v4}, Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;-><init>(Ljava/net/NetworkInterface;Ljava/net/InetAddress;)V

    return-object v0
.end method

.method static networkInterfaces()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "networkInterfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 75
    .local v1, "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-eqz v1, :cond_1

    .line 76
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v1    # "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isAndroid()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    throw v1

    .line 80
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 81
    .local v1, "e":Ljava/net/SocketException;
    sget-object v2, Lio/netty/util/NetUtilInitializations;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Failed to retrieve the list of available network interfaces"

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .end local v1    # "e":Ljava/net/SocketException;
    :cond_1
    nop

    .line 89
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
