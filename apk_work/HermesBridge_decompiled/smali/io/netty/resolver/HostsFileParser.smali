.class public final Lio/netty/resolver/HostsFileParser;
.super Ljava/lang/Object;
.source "HostsFileParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method private static hostsFileEntries(Lio/netty/resolver/HostsFileEntriesProvider;)Lio/netty/resolver/HostsFileEntries;
    .locals 3
    .param p0, "provider"    # Lio/netty/resolver/HostsFileEntriesProvider;

    .line 108
    sget-object v0, Lio/netty/resolver/HostsFileEntriesProvider;->EMPTY:Lio/netty/resolver/HostsFileEntriesProvider;

    if-ne p0, v0, :cond_0

    sget-object v0, Lio/netty/resolver/HostsFileEntries;->EMPTY:Lio/netty/resolver/HostsFileEntries;

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/resolver/HostsFileEntries;

    .line 109
    invoke-virtual {p0}, Lio/netty/resolver/HostsFileEntriesProvider;->ipv4Entries()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lio/netty/resolver/HostsFileParser;->toMapWithSingleValue(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 110
    invoke-virtual {p0}, Lio/netty/resolver/HostsFileEntriesProvider;->ipv6Entries()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lio/netty/resolver/HostsFileParser;->toMapWithSingleValue(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/netty/resolver/HostsFileEntries;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 108
    :goto_0
    return-object v0
.end method

.method public static parse()Lio/netty/resolver/HostsFileEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-static {}, Lio/netty/resolver/HostsFileEntriesProvider;->parser()Lio/netty/resolver/HostsFileEntriesProvider$Parser;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/resolver/HostsFileEntriesProvider$Parser;->parse()Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object v0

    invoke-static {v0}, Lio/netty/resolver/HostsFileParser;->hostsFileEntries(Lio/netty/resolver/HostsFileEntriesProvider;)Lio/netty/resolver/HostsFileEntries;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/File;)Lio/netty/resolver/HostsFileEntries;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-static {}, Lio/netty/resolver/HostsFileEntriesProvider;->parser()Lio/netty/resolver/HostsFileEntriesProvider$Parser;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/charset/Charset;

    invoke-interface {v0, p0, v1}, Lio/netty/resolver/HostsFileEntriesProvider$Parser;->parse(Ljava/io/File;[Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object v0

    invoke-static {v0}, Lio/netty/resolver/HostsFileParser;->hostsFileEntries(Lio/netty/resolver/HostsFileEntriesProvider;)Lio/netty/resolver/HostsFileEntries;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parse(Ljava/io/File;[Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntries;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsets"    # [Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-static {}, Lio/netty/resolver/HostsFileEntriesProvider;->parser()Lio/netty/resolver/HostsFileEntriesProvider$Parser;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/netty/resolver/HostsFileEntriesProvider$Parser;->parse(Ljava/io/File;[Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object v0

    invoke-static {v0}, Lio/netty/resolver/HostsFileParser;->hostsFileEntries(Lio/netty/resolver/HostsFileEntriesProvider;)Lio/netty/resolver/HostsFileEntries;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/Reader;)Lio/netty/resolver/HostsFileEntries;
    .locals 1
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-static {}, Lio/netty/resolver/HostsFileEntriesProvider;->parser()Lio/netty/resolver/HostsFileEntriesProvider$Parser;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/resolver/HostsFileEntriesProvider$Parser;->parse(Ljava/io/Reader;)Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object v0

    invoke-static {v0}, Lio/netty/resolver/HostsFileParser;->hostsFileEntries(Lio/netty/resolver/HostsFileEntriesProvider;)Lio/netty/resolver/HostsFileEntries;

    move-result-object v0

    return-object v0
.end method

.method public static parseSilently()Lio/netty/resolver/HostsFileEntries;
    .locals 1

    .line 42
    invoke-static {}, Lio/netty/resolver/HostsFileEntriesProvider;->parser()Lio/netty/resolver/HostsFileEntriesProvider$Parser;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/resolver/HostsFileEntriesProvider$Parser;->parseSilently()Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object v0

    invoke-static {v0}, Lio/netty/resolver/HostsFileParser;->hostsFileEntries(Lio/netty/resolver/HostsFileEntriesProvider;)Lio/netty/resolver/HostsFileEntries;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseSilently([Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntries;
    .locals 1
    .param p0, "charsets"    # [Ljava/nio/charset/Charset;

    .line 53
    invoke-static {}, Lio/netty/resolver/HostsFileEntriesProvider;->parser()Lio/netty/resolver/HostsFileEntriesProvider$Parser;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/resolver/HostsFileEntriesProvider$Parser;->parseSilently([Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object v0

    invoke-static {v0}, Lio/netty/resolver/HostsFileParser;->hostsFileEntries(Lio/netty/resolver/HostsFileEntriesProvider;)Lio/netty/resolver/HostsFileEntries;

    move-result-object v0

    return-object v0
.end method

.method private static toMapWithSingleValue(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 114
    .local p0, "fromMapWithListValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/net/InetAddress;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 115
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/net/InetAddress;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 116
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/net/InetAddress;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 117
    .local v3, "value":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 118
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/net/InetAddress;>;>;"
    .end local v3    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :cond_0
    goto :goto_0

    .line 121
    :cond_1
    return-object v0
.end method
