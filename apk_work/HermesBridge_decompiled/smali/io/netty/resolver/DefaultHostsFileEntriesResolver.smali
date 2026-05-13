.class public final Lio/netty/resolver/DefaultHostsFileEntriesResolver;
.super Ljava/lang/Object;
.source "DefaultHostsFileEntriesResolver.java"

# interfaces
.implements Lio/netty/resolver/HostsFileEntriesResolver;


# static fields
.field private static final DEFAULT_REFRESH_INTERVAL:J

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final hostsFileParser:Lio/netty/resolver/HostsFileEntriesProvider$Parser;

.field private volatile inet4Entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile inet6Entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

.field private final refreshInterval:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    nop

    .line 39
    const-class v0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 49
    const-string v0, "io.netty.hostsFileRefreshInterval"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->DEFAULT_REFRESH_INTERVAL:J

    .line 52
    sget-object v0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget-wide v1, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->DEFAULT_REFRESH_INTERVAL:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "-Dio.netty.hostsFileRefreshInterval: {}"

    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 58
    invoke-static {}, Lio/netty/resolver/HostsFileEntriesProvider;->parser()Lio/netty/resolver/HostsFileEntriesProvider$Parser;

    move-result-object v0

    sget-wide v1, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->DEFAULT_REFRESH_INTERVAL:J

    invoke-direct {p0, v0, v1, v2}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;-><init>(Lio/netty/resolver/HostsFileEntriesProvider$Parser;J)V

    .line 59
    return-void
.end method

.method constructor <init>(Lio/netty/resolver/HostsFileEntriesProvider$Parser;J)V
    .locals 3
    .param p1, "hostsFileParser"    # Lio/netty/resolver/HostsFileEntriesProvider$Parser;
    .param p2, "refreshInterval"    # J

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

    .line 63
    iput-object p1, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->hostsFileParser:Lio/netty/resolver/HostsFileEntriesProvider$Parser;

    .line 64
    const-string v0, "refreshInterval"

    invoke-static {p2, p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->refreshInterval:J

    .line 65
    invoke-static {p1}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->parseEntries(Lio/netty/resolver/HostsFileEntriesProvider$Parser;)Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object v0

    .line 66
    .local v0, "entries":Lio/netty/resolver/HostsFileEntriesProvider;
    invoke-virtual {v0}, Lio/netty/resolver/HostsFileEntriesProvider;->ipv4Entries()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet4Entries:Ljava/util/Map;

    .line 67
    invoke-virtual {v0}, Lio/netty/resolver/HostsFileEntriesProvider;->ipv6Entries()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet6Entries:Ljava/util/Map;

    .line 68
    return-void
.end method

.method private static allAddresses(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 127
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    if-eqz p1, :cond_1

    .line 130
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    :cond_1
    return-object v0
.end method

.method private ensureHostsFileEntriesAreFresh()V
    .locals 8

    .line 106
    iget-wide v0, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->refreshInterval:J

    .line 107
    .local v0, "interval":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    iget-object v2, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 111
    .local v2, "last":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 112
    .local v4, "currentTime":J
    sub-long v6, v4, v2

    cmp-long v6, v6, v0

    if-lez v6, :cond_1

    .line 113
    iget-object v6, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 114
    iget-object v6, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->hostsFileParser:Lio/netty/resolver/HostsFileEntriesProvider$Parser;

    invoke-static {v6}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->parseEntries(Lio/netty/resolver/HostsFileEntriesProvider$Parser;)Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object v6

    .line 115
    .local v6, "entries":Lio/netty/resolver/HostsFileEntriesProvider;
    invoke-virtual {v6}, Lio/netty/resolver/HostsFileEntriesProvider;->ipv4Entries()Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet4Entries:Ljava/util/Map;

    .line 116
    invoke-virtual {v6}, Lio/netty/resolver/HostsFileEntriesProvider;->ipv6Entries()Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet6Entries:Ljava/util/Map;

    .line 119
    .end local v6    # "entries":Lio/netty/resolver/HostsFileEntriesProvider;
    :cond_1
    return-void
.end method

.method private static firstAddress(Ljava/util/List;)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/net/InetAddress;"
        }
    .end annotation

    .line 136
    .local p0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static parseEntries(Lio/netty/resolver/HostsFileEntriesProvider$Parser;)Lio/netty/resolver/HostsFileEntriesProvider;
    .locals 3
    .param p0, "parser"    # Lio/netty/resolver/HostsFileEntriesProvider$Parser;

    .line 140
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sget-object v0, Lio/netty/util/CharsetUtil;->UTF_16:Ljava/nio/charset/Charset;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget-object v0, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-interface {p0, v1}, Lio/netty/resolver/HostsFileEntriesProvider$Parser;->parseSilently([Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    invoke-interface {p0}, Lio/netty/resolver/HostsFileEntriesProvider$Parser;->parseSilently()Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public address(Ljava/lang/String;Lio/netty/resolver/ResolvedAddressTypes;)Ljava/net/InetAddress;
    .locals 1
    .param p1, "inetHost"    # Ljava/lang/String;
    .param p2, "resolvedAddressTypes"    # Lio/netty/resolver/ResolvedAddressTypes;

    .line 72
    invoke-virtual {p0, p1, p2}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->addresses(Ljava/lang/String;Lio/netty/resolver/ResolvedAddressTypes;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->firstAddress(Ljava/util/List;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public addresses(Ljava/lang/String;Lio/netty/resolver/ResolvedAddressTypes;)Ljava/util/List;
    .locals 4
    .param p1, "inetHost"    # Ljava/lang/String;
    .param p2, "resolvedAddressTypes"    # Lio/netty/resolver/ResolvedAddressTypes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/resolver/ResolvedAddressTypes;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "normalized":Ljava/lang/String;
    invoke-direct {p0}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->ensureHostsFileEntriesAreFresh()V

    .line 87
    sget-object v1, Lio/netty/resolver/DefaultHostsFileEntriesResolver$1;->$SwitchMap$io$netty$resolver$ResolvedAddressTypes:[I

    invoke-virtual {p2}, Lio/netty/resolver/ResolvedAddressTypes;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ResolvedAddressTypes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :pswitch_0
    iget-object v1, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet6Entries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 98
    .local v1, "allInet6Addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v2, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet4Entries:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v1, v2}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->allAddresses(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 99
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 98
    :goto_0
    return-object v2

    .line 93
    .end local v1    # "allInet6Addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :pswitch_1
    iget-object v1, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet4Entries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 94
    .local v1, "allInet4Addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v2, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet6Entries:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v1, v2}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->allAddresses(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 95
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 94
    :goto_1
    return-object v2

    .line 91
    .end local v1    # "allInet4Addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :pswitch_2
    iget-object v1, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet6Entries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1

    .line 89
    :pswitch_3
    iget-object v1, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet4Entries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inetHost"    # Ljava/lang/String;

    .line 123
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
