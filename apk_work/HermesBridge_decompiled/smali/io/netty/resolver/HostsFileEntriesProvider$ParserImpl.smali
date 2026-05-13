.class final Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;
.super Ljava/lang/Object;
.source "HostsFileEntriesProvider.java"

# interfaces
.implements Lio/netty/resolver/HostsFileEntriesProvider$Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/resolver/HostsFileEntriesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParserImpl"
.end annotation


# static fields
.field static final INSTANCE:Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;

.field private static final WHITESPACES:Ljava/util/regex/Pattern;

.field private static final WINDOWS_DEFAULT_SYSTEM_ROOT:Ljava/lang/String; = "C:\\Windows"

.field private static final WINDOWS_HOSTS_FILE_RELATIVE_PATH:Ljava/lang/String; = "\\system32\\drivers\\etc\\hosts"

.field private static final X_PLATFORMS_HOSTS_FILE_PATH:Ljava/lang/String; = "/etc/hosts"

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    const-string v0, "[ \t]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;->WHITESPACES:Ljava/util/regex/Pattern;

    .line 165
    const-class v0, Lio/netty/resolver/HostsFileEntriesProvider$Parser;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 167
    new-instance v0, Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;

    invoke-direct {v0}, Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;-><init>()V

    sput-object v0, Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;->INSTANCE:Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    return-void
.end method

.method private static locateHostsFile()Ljava/io/File;
    .locals 3

    .line 306
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemRoot"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\system32\\drivers\\etc\\hosts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, "hostsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 309
    new-instance v1, Ljava/io/File;

    const-string v2, "C:\\Windows\\system32\\drivers\\etc\\hosts"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 312
    .end local v0    # "hostsFile":Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/hosts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .restart local v0    # "hostsFile":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public parse()Lio/netty/resolver/HostsFileEntriesProvider;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-static {}, Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;->locateHostsFile()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/charset/Charset;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;->parse(Ljava/io/File;[Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object v0

    return-object v0
.end method

.method public varargs parse(Ljava/io/File;[Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charsets"    # [Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    const-string v0, "file"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    const-string v0, "charsets"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 188
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/charset/Charset;

    aput-object v0, v2, v1

    move-object p2, v2

    .line 190
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 192
    .local v2, "charset":Ljava/nio/charset/Charset;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 195
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {p0, v3}, Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;->parse(Ljava/io/Reader;)Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object v4

    .line 196
    .local v4, "entries":Lio/netty/resolver/HostsFileEntriesProvider;
    sget-object v5, Lio/netty/resolver/HostsFileEntriesProvider;->EMPTY:Lio/netty/resolver/HostsFileEntriesProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, v5, :cond_1

    .line 197
    nop

    .line 200
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 197
    return-object v4

    .line 200
    .end local v4    # "entries":Lio/netty/resolver/HostsFileEntriesProvider;
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 201
    nop

    .line 191
    .end local v2    # "charset":Ljava/nio/charset/Charset;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .restart local v2    # "charset":Ljava/nio/charset/Charset;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 201
    throw v0

    .line 204
    .end local v2    # "charset":Ljava/nio/charset/Charset;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :cond_2
    sget-object v0, Lio/netty/resolver/HostsFileEntriesProvider;->EMPTY:Lio/netty/resolver/HostsFileEntriesProvider;

    return-object v0
.end method

.method public parse(Ljava/io/Reader;)Lio/netty/resolver/HostsFileEntriesProvider;
    .locals 14
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    const-string v0, "Failed to close a reader"

    const-string v1, "reader"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 212
    .local v1, "buff":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v2, "ipv4Entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/net/InetAddress;>;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 215
    .local v3, "ipv6Entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/net/InetAddress;>;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_9

    .line 217
    const/16 v4, 0x23

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 218
    .local v4, "commentPosition":I
    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v4, v6, :cond_0

    .line 219
    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 222
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 223
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 224
    goto :goto_0

    .line 228
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v6, "lineParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v8, Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;->WHITESPACES:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v10, v7

    :goto_1
    if-ge v10, v9, :cond_3

    aget-object v11, v8, v10

    .line 230
    .local v11, "s":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 231
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v11    # "s":Ljava/lang/String;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 236
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_4

    .line 238
    goto :goto_0

    .line 241
    :cond_4
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lio/netty/util/NetUtil;->createByteArrayFromIpAddressString(Ljava/lang/String;)[B

    move-result-object v7

    .line 243
    .local v7, "ipBytes":[B
    if-nez v7, :cond_5

    .line 245
    goto :goto_0

    .line 249
    :cond_5
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 250
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 251
    .local v9, "hostname":Ljava/lang/String;
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 252
    .local v10, "hostnameLower":Ljava/lang/String;
    invoke-static {v9, v7}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v11

    .line 254
    .local v11, "address":Ljava/net/InetAddress;
    instance-of v12, v11, Ljava/net/Inet4Address;

    if-eqz v12, :cond_6

    .line 255
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 256
    .local v12, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    if-nez v12, :cond_7

    .line 257
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v13

    .line 258
    invoke-interface {v2, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 261
    .end local v12    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :cond_6
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 262
    .restart local v12    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    if-nez v12, :cond_7

    .line 263
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v13

    .line 264
    invoke-interface {v3, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_7
    :goto_3
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    nop

    .end local v9    # "hostname":Ljava/lang/String;
    .end local v10    # "hostnameLower":Ljava/lang/String;
    .end local v11    # "address":Ljava/net/InetAddress;
    .end local v12    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 269
    .end local v4    # "commentPosition":I
    .end local v6    # "lineParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "ipBytes":[B
    .end local v8    # "i":I
    :cond_8
    goto/16 :goto_0

    .line 270
    :cond_9
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lio/netty/resolver/HostsFileEntriesProvider;->EMPTY:Lio/netty/resolver/HostsFileEntriesProvider;

    goto :goto_4

    :cond_a
    new-instance v4, Lio/netty/resolver/HostsFileEntriesProvider;

    invoke-direct {v4, v2, v3}, Lio/netty/resolver/HostsFileEntriesProvider;-><init>(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :goto_4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    goto :goto_5

    .line 276
    :catch_0
    move-exception v6

    .line 277
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v7, v0, v6}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    .end local v6    # "e":Ljava/io/IOException;
    :goto_5
    return-object v4

    .line 274
    .end local v2    # "ipv4Entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/net/InetAddress;>;>;"
    .end local v3    # "ipv6Entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/net/InetAddress;>;>;"
    .end local v5    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 275
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 278
    goto :goto_6

    .line 276
    :catch_1
    move-exception v3

    .line 277
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4, v0, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    .end local v3    # "e":Ljava/io/IOException;
    :goto_6
    throw v2
.end method

.method public varargs parse([Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;
    .locals 1
    .param p1, "charsets"    # [Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-static {}, Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;->locateHostsFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;->parse(Ljava/io/File;[Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object v0

    return-object v0
.end method

.method public parseSilently()Lio/netty/resolver/HostsFileEntriesProvider;
    .locals 4

    .line 284
    invoke-static {}, Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;->locateHostsFile()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/charset/Charset;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;->parseSilently(Ljava/io/File;[Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object v0

    return-object v0
.end method

.method public varargs parseSilently(Ljava/io/File;[Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charsets"    # [Ljava/nio/charset/Charset;

    .line 295
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;->parse(Ljava/io/File;[Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    sget-object v1, Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load and parse hosts file at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    :cond_0
    sget-object v1, Lio/netty/resolver/HostsFileEntriesProvider;->EMPTY:Lio/netty/resolver/HostsFileEntriesProvider;

    return-object v1
.end method

.method public varargs parseSilently([Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;
    .locals 1
    .param p1, "charsets"    # [Ljava/nio/charset/Charset;

    .line 289
    invoke-static {}, Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;->locateHostsFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/netty/resolver/HostsFileEntriesProvider$ParserImpl;->parseSilently(Ljava/io/File;[Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object v0

    return-object v0
.end method
